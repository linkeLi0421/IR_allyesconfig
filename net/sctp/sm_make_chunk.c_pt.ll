; ModuleID = '/llk/IR_all_yes/net/sctp/sm_make_chunk.c_pt.bc'
source_filename = "../net/sctp/sm_make_chunk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon, %struct.list_head, ptr, %union.anon.154, %union.sctp_params, %union.anon.155, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.154 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.155 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.0, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
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
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.159, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.159 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.sctp_stream = type { %struct.anon.169, %struct.anon.174, i16, i16, ptr, %union.anon.176, ptr }
%struct.anon.169 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.170, i32, ptr, i8 }
%union.anon.170 = type { i32 }
%struct.anon.174 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.175, i32, i32, i32, i8, i8 }
%union.anon.175 = type { i32 }
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.99, i32, %struct.spinlock }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.165 }
%union.anon.165 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.122, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.110, %union.anon.112, %union.anon.113, i16, i8, i8, i32, %union.anon.115, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon.110 = type { i64 }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.115 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.122 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.123 = type { ptr }
%union.anon.124 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.sctp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.sctp_cookie_param = type { %struct.sctp_paramhdr, [0 x i8] }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.167, %struct.anon.168, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.167 = type { i32, i8, i8, i8 }
%struct.anon.168 = type { i16, i16, i16, i8, i8 }
%struct.sctp_gap_ack_block = type { i16, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.116, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.88, %union.anon.89 }
%union.anon.88 = type { ptr }
%union.anon.89 = type { i64 }
%union.anon.116 = type { ptr }
%struct.sctp_hmac = type { i16, ptr, i16 }
%struct.sctp_datahdr = type { i32, i16, i16, i32, [0 x i8] }
%struct.sctp_signed_cookie = type <{ [32 x i8], i32, %struct.sctp_cookie }>
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.sctp_supported_ext_param = type { %struct.sctp_paramhdr, [0 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.109, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.109 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sctp_hmac_algo_param = type { %struct.sctp_paramhdr, [0 x i16] }
%struct.sctp_cookie_preserve_param = type { %struct.sctp_paramhdr, i32 }
%struct.sctp_supported_addrs_param = type { %struct.sctp_paramhdr, [0 x i16] }
%struct.sctp_adaptation_ind_param = type { %struct.sctp_paramhdr, i32 }
%union.sctp_addr_param = type { %struct.sctp_ipv6addr_param }
%struct.sctp_ipv6addr_param = type { %struct.sctp_paramhdr, %struct.in6_addr }
%struct.sctp_addip_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_addiphdr }
%struct.sctp_addiphdr = type { i32, [0 x i8] }
%struct.sctp_errhdr = type { i16, i16, [0 x i8] }
%struct.sctp_addip_param = type { %struct.sctp_paramhdr, i32 }
%struct.sctp_sockaddr_entry = type { %struct.list_head, %struct.callback_head, %union.sctp_addr, i8, i8 }
%struct.sctp_fwdtsn_skip = type { i16, i16 }
%struct.sctp_reconf_chunk = type { %struct.sctp_chunkhdr, [0 x i8] }
%struct.sctp_shared_key = type { %struct.list_head, ptr, %struct.refcount_struct, i16, i8 }
%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sctp_make_sack.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sctp_make_sack\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/sctp/sm_make_chunk.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: sackCTSNAck sent:0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sctp: %s: sackCTSNAck sent:0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@sctp_make_violation_paramlen.error = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"The following parameter had invalid length:\00", [52 x i8] zeroinitializer }, align 32
@sctp_make_violation_max_retrans.error = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Association exceeded its max_retrans count\00", [53 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sctp_chunk_cachep = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@sctp_chunkify.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sctp_chunkify\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: chunkifying skb:%p w/o an sk\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sctp: %s: chunkifying skb:%p w/o an sk\0A\00", [56 x i8] zeroinitializer }, align 32
@sctp_dbg_objcnt_chunk = external dso_local global %struct.atomic_t, align 4
@sctp_make_asconf_update_ip.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 2, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sctp_make_asconf_update_ip\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s: picked same-scope del_pending addr, totallen for all addresses is %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"sctp: %s: picked same-scope del_pending addr, totallen for all addresses is %d\0A\00", [48 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@sctp_verify_param.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 2, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_verify_param\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unrecognized param:%d for chunk:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sctp: %s: unrecognized param:%d for chunk:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@__sctp_mtu_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/sctp/sctp.h\00", [40 x i8] zeroinitializer }, align 32
@sctp_process_param.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 2, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_process_param\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: unimplemented SCTP_HOST_NAME_ADDRESS\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sctp: %s: unimplemented SCTP_HOST_NAME_ADDRESS\0A\00", [48 x i8] zeroinitializer }, align 32
@sctp_process_param.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 2, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ignoring param:%d for association:%p.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sctp: %s: ignoring param:%d for association:%p.\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1004, i64 1017, i64 1018]
@__sancov_gen_cov_switch_values.22 = internal global [18 x i64] [i64 16, i64 16, i64 1, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 32768, i64 32770, i64 32771, i64 32772, i64 32776, i64 49152, i64 49156, i64 49158]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 15, i64 128, i64 193]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [18 x i64] [i64 16, i64 16, i64 1, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 32768, i64 32770, i64 32771, i64 32772, i64 32776, i64 49152, i64 49156, i64 49158]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 16, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 8, i64 15, i64 64, i64 128, i64 130, i64 192, i64 193]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 16, i64 5, i64 6, i64 49153, i64 49154, i64 49155, i64 49156, i64 49157, i64 49158]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 16, i64 49153, i64 49154, i64 49156]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 16, i64 49153, i64 49154, i64 49156]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 49155, i64 49157]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8, i64 161]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 49153, i64 49154]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 16, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 20]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 16, i64 13, i64 14, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 20]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 13, i64 16]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 16, i64 13, i64 14, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 20]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 13, i64 16]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 768, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1104, i32 20 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1126, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1386, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 2894, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 230, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 214, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 2280, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/net/sctp/sctp.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 591, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 2593, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [28 x i8] c"../net/sctp/sm_make_chunk.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 2751, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sctp_make_violation_paramlen.error, ptr @sctp_make_violation_max_retrans.error, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_make_violation_paramlen.error to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_make_violation_max_retrans.error to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_chunk_iif(ptr nocapture noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %af = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %af, align 4
  %skb_iif = getelementptr inbounds %struct.sctp_af, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_iif, align 4
  %call = tail call i32 %5(ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_init_cause(ptr nocapture noundef %chunk, i16 noundef zeroext %cause_code, i32 noundef %paylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %paylen to i16
  %conv = add i16 %0, 4
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %1 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skb, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %entry.skb_tailroom.exit_crit_edge

entry.skb_tailroom.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %entry.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %entry.skb_tailroom.exit_crit_edge ]
  %conv1 = zext i16 %conv to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv1)
  %cmp = icmp slt i32 %cond.i, %conv1
  br i1 %cmp, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %9 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %12 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %call.i.i = tail call ptr @skb_put(ptr noundef %2, i32 noundef %sub.i) #11
  %13 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %15, i32 noundef 4) #11
  %16 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %cause_code, ptr %call.i19.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %17 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %conv, ptr %err.sroa.5.0.call.i19.i.sroa_idx, align 1
  %18 = trunc i32 %and.i to i16
  %conv5.i = add i16 %18, 4
  %19 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv5.i, ptr %length7.i, align 2
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 9
  %26 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %27 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i19.i, ptr %subh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_tailroom.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -28, %skb_tailroom.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_addto_chunk(ptr nocapture noundef %chunk, i32 noundef %len, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 3
  %and = and i32 %add, 131068
  %sub = sub nsw i32 %and, %conv
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %5, i32 noundef %sub) #11
  %6 = call ptr @memset(ptr %call.i, i32 0, i32 %sub)
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %call.i19 = tail call ptr @skb_put(ptr noundef %8, i32 noundef %len) #11
  %9 = call ptr @memcpy(ptr %call.i19, ptr %data, i32 %len)
  %add4 = add i32 %and, %len
  %conv5 = trunc i32 %add4 to i16
  %10 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chunk_hdr, align 4
  %length7 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %length7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv5, ptr %length7, align 2
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i, align 8
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 9
  %17 = ptrtoint ptr %chunk_end to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %chunk_end, align 4
  ret ptr %call.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_init(ptr noundef %asoc, ptr noundef %bp, i32 noundef %gfp, i32 noundef %vparam_len) local_unnamed_addr #0 align 64 {
entry:
  %addrs_len = alloca i32, align 4
  %extensions = alloca [5 x i8], align 1
  %types = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ep1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %0 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addrs_len) #11
  %2 = ptrtoint ptr %addrs_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %addrs_len, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %extensions) #11
  %3 = call ptr @memset(ptr %extensions, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %types) #11
  %4 = ptrtoint ptr %types to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %types, align 2, !annotation !56
  %5 = getelementptr inbounds [2 x i16], ptr %types, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !56
  %call = call i32 @sctp_bind_addrs_to_raw(ptr noundef %bp, ptr noundef nonnull %addrs_len, i32 noundef %gfp) #11
  %coerce.val.ip = inttoptr i32 %call to ptr
  %c = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4
  %7 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c, align 8
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 43
  %9 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rwnd, align 4
  %sinit_num_ostreams = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 5
  %11 = ptrtoint ptr %sinit_num_ostreams to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sinit_num_ostreams, align 8
  %sinit_max_instreams = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %sinit_max_instreams to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sinit_max_instreams, align 2
  %initial_tsn = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 7
  %15 = ptrtoint ptr %initial_tsn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %initial_tsn, align 4
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %17 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk, align 4
  %pf = getelementptr inbounds %struct.sctp_sock, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pf, align 4
  %supported_addrs = getelementptr inbounds %struct.sctp_pf, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %supported_addrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %supported_addrs, align 4
  %call8 = call i32 %22(ptr noundef %18, ptr noundef nonnull %types) #11
  %23 = ptrtoint ptr %addrs_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addrs_len, align 4
  %add = add i32 %24, 16
  %mul = shl i32 %call8, 1
  %add10 = add i32 %mul, 7
  %and = and i32 %add10, -4
  %add11 = add i32 %add, %and
  %25 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep1, align 4
  %ecn_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %ecn_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %ecn_enable, align 2
  %add13 = add i32 %add11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not390 = icmp slt i8 %bf.load, 0
  %spec.select = select i1 %tobool.not390, i32 %add13, i32 %add11
  %28 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not = icmp eq i8 %28, 0
  %add19 = add i32 %spec.select, 4
  %chunksize.1 = select i1 %tobool17.not, i32 %spec.select, i32 %add19
  %29 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool25.not = icmp eq i8 %29, 0
  br i1 %tobool25.not, label %entry.if.end30_crit_edge, label %if.then26

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %30 = getelementptr inbounds [5 x i8], ptr %extensions, i32 0, i32 1
  %31 = ptrtoint ptr %extensions to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -63, ptr %extensions, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -128, ptr %30, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %entry.if.end30_crit_edge
  %num_ext.0 = phi i32 [ 2, %if.then26 ], [ 0, %entry.if.end30_crit_edge ]
  %33 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool35.not = icmp eq i8 %33, 0
  br i1 %tobool35.not, label %if.end30.if.end39_crit_edge, label %if.then36

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx37 = getelementptr [5 x i8], ptr %extensions, i32 0, i32 %num_ext.0
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -126, ptr %arrayidx37, align 1
  %add38 = or i32 %num_ext.0, 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end30.if.end39_crit_edge
  %num_ext.1 = phi i32 [ %add38, %if.then36 ], [ %num_ext.0, %if.end30.if.end39_crit_edge ]
  %adaptation_ind = getelementptr inbounds %struct.sctp_sock, ptr %18, i32 0, i32 35
  %35 = ptrtoint ptr %adaptation_ind to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %adaptation_ind, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool40.not = icmp eq i32 %36, 0
  %add42 = add i32 %chunksize.1, 8
  %spec.select242 = select i1 %tobool40.not, i32 %chunksize.1, i32 %add42
  %37 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool48.not = icmp eq i8 %37, 0
  br i1 %tobool48.not, label %if.end39.if.end52_crit_edge, label %if.then49

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx50 = getelementptr [5 x i8], ptr %extensions, i32 0, i32 %num_ext.1
  %38 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 64, ptr %arrayidx50, align 1
  %add51 = add nsw i32 %num_ext.1, 1
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end39.if.end52_crit_edge
  %num_ext.2 = phi i32 [ %add51, %if.then49 ], [ %num_ext.1, %if.end39.if.end52_crit_edge ]
  %add53 = add i32 %spec.select242, %vparam_len
  %auth_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %1, i32 0, i32 13
  %39 = ptrtoint ptr %auth_enable to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load54 = load i8, ptr %auth_enable, align 2
  %40 = and i8 %bf.load54, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool57.not = icmp eq i8 %40, 0
  br i1 %tobool57.not, label %if.end52.if.end85_crit_edge, label %if.then58

if.end52.if.end85_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %add59 = add i32 %add53, 36
  %length = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 14, i32 2
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool63.not = icmp eq i16 %42, 0
  %auth_hmacs61 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 14
  %conv = zext i16 %42 to i32
  %add66 = add nuw nsw i32 %conv, 3
  %and67 = and i32 %add66, 131068
  %auth_hmacs.0 = select i1 %tobool63.not, ptr null, ptr %auth_hmacs61
  %add68 = select i1 %tobool63.not, i32 0, i32 %and67
  %chunksize.3 = add i32 %add59, %add68
  %length73 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 15, i32 2
  %43 = ptrtoint ptr %length73 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %length73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool74.not = icmp eq i16 %44, 0
  %auth_chunks71 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 15
  %conv77 = zext i16 %44 to i32
  %add78 = add nuw nsw i32 %conv77, 3
  %and79 = and i32 %add78, 131068
  %add80 = select i1 %tobool74.not, i32 0, i32 %and79
  %chunksize.4 = add i32 %chunksize.3, %add80
  %auth_chunks.0 = select i1 %tobool74.not, ptr null, ptr %auth_chunks71
  %arrayidx83 = getelementptr [5 x i8], ptr %extensions, i32 0, i32 %num_ext.2
  %45 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 15, ptr %arrayidx83, align 1
  %add84 = add nsw i32 %num_ext.2, 1
  br label %if.end85

if.end85:                                         ; preds = %if.then58, %if.end52.if.end85_crit_edge
  %auth_hmacs.1 = phi ptr [ %auth_hmacs.0, %if.then58 ], [ null, %if.end52.if.end85_crit_edge ]
  %chunksize.5 = phi i32 [ %chunksize.4, %if.then58 ], [ %add53, %if.end52.if.end85_crit_edge ]
  %num_ext.3 = phi i32 [ %add84, %if.then58 ], [ %num_ext.2, %if.end52.if.end85_crit_edge ]
  %auth_chunks.1 = phi ptr [ %auth_chunks.0, %if.then58 ], [ null, %if.end52.if.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ext.3)
  %tobool86.not = icmp eq i32 %num_ext.3, 0
  %add89 = add i32 %num_ext.3, 7
  %and90 = and i32 %add89, -4
  %add91 = select i1 %tobool86.not, i32 0, i32 %and90
  %chunksize.6 = add i32 %add91, %chunksize.5
  %call.i = call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %chunksize.6, i32 noundef %gfp) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end85.nodata_crit_edge, label %if.then.i

if.end85.nodata_crit_edge:                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i:                                        ; preds = %if.end85
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %46 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %48 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %50 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %51 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i.i = icmp eq i16 %51, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %47, i32 0, i32 75
  %52 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %shkey.i.i, align 8
  %54 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %54, align 4
  call void @sctp_auth_shkey_hold(ptr noundef %53) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %47, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end96_crit_edge, label %cond.true.i.i

if.end.i.i.if.end96_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %47, i32 0, i32 3
  %56 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sk.i.i, align 4
  br label %if.end96

if.end96:                                         ; preds = %cond.true.i.i, %if.end.i.i.if.end96_crit_edge
  %cond.i.i = phi ptr [ %57, %cond.true.i.i ], [ null, %if.end.i.i.if.end96_crit_edge ]
  %58 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %cond.i.i, ptr %58, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %60 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 4, i32 0, i32 1
  %63 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %64 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %67 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %68 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = call ptr @skb_put(ptr noundef %69, i32 noundef %sub.i) #11
  %70 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %71 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = call ptr @skb_put(ptr noundef %72, i32 noundef 16) #11
  %73 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %8, ptr %call.i19.i, align 1
  %init.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %74 = ptrtoint ptr %init.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %10, ptr %init.sroa.5.0.call.i19.i.sroa_idx, align 1
  %init.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 8
  %75 = ptrtoint ptr %init.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %12, ptr %init.sroa.7.0.call.i19.i.sroa_idx, align 1
  %init.sroa.9.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 10
  %76 = ptrtoint ptr %init.sroa.9.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %14, ptr %init.sroa.9.0.call.i19.i.sroa_idx, align 1
  %init.sroa.11.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 12
  %77 = ptrtoint ptr %init.sroa.11.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %16, ptr %init.sroa.11.0.call.i19.i.sroa_idx, align 1
  %78 = trunc i32 %and.i to i16
  %conv5.i = add i16 %78, 16
  %79 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv5.i, ptr %length7.i, align 2
  %82 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %86 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %87 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i19.i, ptr %subh, align 4
  %88 = ptrtoint ptr %addrs_len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addrs_len, align 4
  %90 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i244 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %length.i244 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %length.i244, align 2
  %conv.i245 = zext i16 %92 to i32
  %add.i246 = add nuw nsw i32 %conv.i245, 3
  %and.i247 = and i32 %add.i246, 131068
  %sub.i248 = sub nsw i32 %and.i247, %conv.i245
  %call.i.i250 = call ptr @skb_put(ptr noundef %83, i32 noundef %sub.i248) #11
  %93 = call ptr @memset(ptr %call.i.i250, i32 0, i32 %sub.i248)
  %94 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i251 = call ptr @skb_put(ptr noundef %95, i32 noundef %89) #11
  %96 = call ptr @memcpy(ptr %call.i19.i251, ptr %coerce.val.ip, i32 %89)
  %add4.i252 = add i32 %and.i247, %89
  %conv5.i253 = trunc i32 %add4.i252 to i16
  %97 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i254 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %length7.i254 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv5.i253, ptr %length7.i254, align 2
  %100 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i255 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 16
  %102 = ptrtoint ptr %tail.i.i255 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tail.i.i255, align 8
  %104 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %chunk_end.i, align 4
  %param_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 7
  %105 = ptrtoint ptr %param_hdr to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i19.i251, ptr %param_hdr, align 4
  %106 = trunc i32 %mul to i16
  %conv102 = add i16 %106, 4
  %107 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i258 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %length.i258 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %length.i258, align 2
  %conv.i259 = zext i16 %109 to i32
  %add.i260 = add nuw nsw i32 %conv.i259, 3
  %and.i261 = and i32 %add.i260, 131068
  %sub.i262 = sub nsw i32 %and.i261, %conv.i259
  %call.i.i264 = call ptr @skb_put(ptr noundef %101, i32 noundef %sub.i262) #11
  %110 = call ptr @memset(ptr %call.i.i264, i32 0, i32 %sub.i262)
  %111 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i265 = call ptr @skb_put(ptr noundef %112, i32 noundef 4) #11
  %113 = ptrtoint ptr %call.i19.i265 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 12, ptr %call.i19.i265, align 1
  %sat.sroa.5.0.call.i19.i265.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i265, i32 2
  %114 = ptrtoint ptr %sat.sroa.5.0.call.i19.i265.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %conv102, ptr %sat.sroa.5.0.call.i19.i265.sroa_idx, align 1
  %115 = trunc i32 %and.i261 to i16
  %conv5.i267 = add i16 %115, 4
  %116 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i268 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %length7.i268 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv5.i267, ptr %length7.i268, align 2
  %119 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i269 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 16
  %121 = ptrtoint ptr %tail.i.i269 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tail.i.i269, align 8
  %123 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %chunk_end.i, align 4
  %124 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i272 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %length.i272 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %length.i272, align 2
  %conv.i273 = zext i16 %126 to i32
  %add.i274 = add nuw nsw i32 %conv.i273, 3
  %and.i275 = and i32 %add.i274, 131068
  %sub.i276 = sub nsw i32 %and.i275, %conv.i273
  %call.i.i278 = call ptr @skb_put(ptr noundef %120, i32 noundef %sub.i276) #11
  %127 = call ptr @memset(ptr %call.i.i278, i32 0, i32 %sub.i276)
  %128 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i279 = call ptr @skb_put(ptr noundef %129, i32 noundef %mul) #11
  %130 = call ptr @memcpy(ptr %call.i19.i279, ptr %types, i32 %mul)
  %add4.i280 = add i32 %and.i275, %mul
  %conv5.i281 = trunc i32 %add4.i280 to i16
  %131 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i282 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %length7.i282 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv5.i281, ptr %length7.i282, align 2
  %134 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i283 = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 16
  %136 = ptrtoint ptr %tail.i.i283 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tail.i.i283, align 8
  %138 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %chunk_end.i, align 4
  %139 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ep1, align 4
  %ecn_enable109 = getelementptr inbounds %struct.sctp_endpoint, ptr %140, i32 0, i32 13
  %141 = ptrtoint ptr %ecn_enable109 to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load110 = load i8, ptr %ecn_enable109, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load110)
  %tobool112.not = icmp sgt i8 %bf.load110, -1
  br i1 %tobool112.not, label %if.end96.if.end115_crit_edge, label %if.then113

if.end96.if.end115_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then113:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i286 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %length.i286 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %length.i286, align 2
  %conv.i287 = zext i16 %145 to i32
  %add.i288 = add nuw nsw i32 %conv.i287, 3
  %and.i289 = and i32 %add.i288, 131068
  %sub.i290 = sub nsw i32 %and.i289, %conv.i287
  %call.i.i292 = call ptr @skb_put(ptr noundef %135, i32 noundef %sub.i290) #11
  %146 = call ptr @memset(ptr %call.i.i292, i32 0, i32 %sub.i290)
  %147 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i293 = call ptr @skb_put(ptr noundef %148, i32 noundef 4) #11
  %149 = ptrtoint ptr %call.i19.i293 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 -2147483644, ptr %call.i19.i293, align 1
  %150 = trunc i32 %and.i289 to i16
  %conv5.i295 = add i16 %150, 4
  %151 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i296 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %length7.i296 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv5.i295, ptr %length7.i296, align 2
  %154 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i297 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 16
  %156 = ptrtoint ptr %tail.i.i297 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tail.i.i297, align 8
  %158 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %chunk_end.i, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end96.if.end115_crit_edge
  br i1 %tobool86.not, label %if.end115.if.end127_crit_edge, label %if.then117

if.end115.if.end127_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %159 = trunc i32 %num_ext.3 to i16
  %conv121 = add i16 %159, 4
  %160 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i300 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %length.i300 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %length.i300, align 2
  %conv.i301 = zext i16 %163 to i32
  %add.i302 = add nuw nsw i32 %conv.i301, 3
  %and.i303 = and i32 %add.i302, 131068
  %sub.i304 = sub nsw i32 %and.i303, %conv.i301
  %164 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i306 = call ptr @skb_put(ptr noundef %165, i32 noundef %sub.i304) #11
  %166 = call ptr @memset(ptr %call.i.i306, i32 0, i32 %sub.i304)
  %167 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i307 = call ptr @skb_put(ptr noundef %168, i32 noundef 4) #11
  %169 = ptrtoint ptr %call.i19.i307 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 2)
  store i16 -32760, ptr %call.i19.i307, align 1
  %ext_param.sroa.5.0.call.i19.i307.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i307, i32 2
  %170 = ptrtoint ptr %ext_param.sroa.5.0.call.i19.i307.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %170, i32 2)
  store i16 %conv121, ptr %ext_param.sroa.5.0.call.i19.i307.sroa_idx, align 1
  %171 = trunc i32 %and.i303 to i16
  %conv5.i309 = add i16 %171, 4
  %172 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i310 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %length7.i310 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv5.i309, ptr %length7.i310, align 2
  %175 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i311 = getelementptr inbounds %struct.sk_buff, ptr %176, i32 0, i32 16
  %177 = ptrtoint ptr %tail.i.i311 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tail.i.i311, align 8
  %179 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %chunk_end.i, align 4
  %180 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i314 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %length.i314 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %length.i314, align 2
  %call.i316 = call ptr @skb_put(ptr noundef %176, i32 noundef %num_ext.3) #11
  %183 = call ptr @memcpy(ptr %call.i316, ptr %extensions, i32 %num_ext.3)
  %conv1.i = add i16 %182, %159
  %184 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %chunk_hdr.i, align 4
  %length3.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %length3.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv1.i, ptr %length3.i, align 2
  %187 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i318 = getelementptr inbounds %struct.sk_buff, ptr %188, i32 0, i32 16
  %189 = ptrtoint ptr %tail.i.i318 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tail.i.i318, align 8
  %191 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %chunk_end.i, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then117, %if.end115.if.end127_crit_edge
  %192 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ep1, align 4
  %prsctp_enable129 = getelementptr inbounds %struct.sctp_endpoint, ptr %193, i32 0, i32 13
  %194 = ptrtoint ptr %prsctp_enable129 to i32
  call void @__asan_load1_noabort(i32 %194)
  %bf.load130 = load i8, ptr %prsctp_enable129, align 2
  %195 = and i8 %bf.load130, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool133.not = icmp eq i8 %195, 0
  br i1 %tobool133.not, label %if.end127.if.end136_crit_edge, label %if.then134

if.end127.if.end136_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then134:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  %196 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i321 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %length.i321 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %length.i321, align 2
  %conv.i322 = zext i16 %199 to i32
  %add.i323 = add nuw nsw i32 %conv.i322, 3
  %and.i324 = and i32 %add.i323, 131068
  %sub.i325 = sub nsw i32 %and.i324, %conv.i322
  %200 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i327 = call ptr @skb_put(ptr noundef %201, i32 noundef %sub.i325) #11
  %202 = call ptr @memset(ptr %call.i.i327, i32 0, i32 %sub.i325)
  %203 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i328 = call ptr @skb_put(ptr noundef %204, i32 noundef 4) #11
  %205 = ptrtoint ptr %call.i19.i328 to i32
  call void @__asan_storeN_noabort(i32 %205, i32 4)
  store i32 -1073741820, ptr %call.i19.i328, align 1
  %206 = trunc i32 %and.i324 to i16
  %conv5.i330 = add i16 %206, 4
  %207 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i331 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %length7.i331 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv5.i330, ptr %length7.i331, align 2
  %210 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i332 = getelementptr inbounds %struct.sk_buff, ptr %211, i32 0, i32 16
  %212 = ptrtoint ptr %tail.i.i332 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %tail.i.i332, align 8
  %214 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %213, ptr %chunk_end.i, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end127.if.end136_crit_edge
  %215 = ptrtoint ptr %adaptation_ind to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %adaptation_ind, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool138.not = icmp eq i32 %216, 0
  br i1 %tobool138.not, label %if.end136.if.end147_crit_edge, label %if.then139

if.end136.if.end147_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  %217 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i335 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %length.i335 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %length.i335, align 2
  %conv.i336 = zext i16 %220 to i32
  %add.i337 = add nuw nsw i32 %conv.i336, 3
  %and.i338 = and i32 %add.i337, 131068
  %sub.i339 = sub nsw i32 %and.i338, %conv.i336
  %221 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i341 = call ptr @skb_put(ptr noundef %222, i32 noundef %sub.i339) #11
  %223 = call ptr @memset(ptr %call.i.i341, i32 0, i32 %sub.i339)
  %224 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i342 = call ptr @skb_put(ptr noundef %225, i32 noundef 8) #11
  %226 = ptrtoint ptr %call.i19.i342 to i32
  call void @__asan_storeN_noabort(i32 %226, i32 2)
  store i16 -16378, ptr %call.i19.i342, align 1
  %aiparam.sroa.5.0.call.i19.i342.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i342, i32 2
  %227 = ptrtoint ptr %aiparam.sroa.5.0.call.i19.i342.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %227, i32 2)
  store i16 8, ptr %aiparam.sroa.5.0.call.i19.i342.sroa_idx, align 1
  %aiparam.sroa.7.0.call.i19.i342.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i342, i32 4
  %228 = ptrtoint ptr %aiparam.sroa.7.0.call.i19.i342.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %228, i32 4)
  store i32 %216, ptr %aiparam.sroa.7.0.call.i19.i342.sroa_idx, align 1
  %229 = trunc i32 %and.i338 to i16
  %conv5.i344 = add i16 %229, 8
  %230 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i345 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %length7.i345 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv5.i344, ptr %length7.i345, align 2
  %233 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i346 = getelementptr inbounds %struct.sk_buff, ptr %234, i32 0, i32 16
  %235 = ptrtoint ptr %tail.i.i346 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %tail.i.i346, align 8
  %237 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %236, ptr %chunk_end.i, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then139, %if.end136.if.end147_crit_edge
  %238 = ptrtoint ptr %auth_enable to i32
  call void @__asan_load1_noabort(i32 %238)
  %bf.load149 = load i8, ptr %auth_enable, align 2
  %239 = and i8 %bf.load149, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool152.not = icmp eq i8 %239, 0
  br i1 %tobool152.not, label %if.end147.nodata_crit_edge, label %if.then153

if.end147.nodata_crit_edge:                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then153:                                       ; preds = %if.end147
  %auth_random = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 13
  %240 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i349 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %length.i349 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %length.i349, align 2
  %conv.i350 = zext i16 %243 to i32
  %add.i351 = add nuw nsw i32 %conv.i350, 3
  %and.i352 = and i32 %add.i351, 131068
  %sub.i353 = sub nsw i32 %and.i352, %conv.i350
  %244 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i355 = call ptr @skb_put(ptr noundef %245, i32 noundef %sub.i353) #11
  %246 = call ptr @memset(ptr %call.i.i355, i32 0, i32 %sub.i353)
  %247 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i356 = call ptr @skb_put(ptr noundef %248, i32 noundef 36) #11
  %249 = call ptr @memcpy(ptr %call.i19.i356, ptr %auth_random, i32 36)
  %250 = trunc i32 %and.i352 to i16
  %conv5.i358 = add i16 %250, 36
  %251 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i359 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %252, i32 0, i32 2
  %253 = ptrtoint ptr %length7.i359 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv5.i358, ptr %length7.i359, align 2
  %254 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i360 = getelementptr inbounds %struct.sk_buff, ptr %255, i32 0, i32 16
  %256 = ptrtoint ptr %tail.i.i360 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %tail.i.i360, align 8
  %258 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %257, ptr %chunk_end.i, align 4
  %tobool157.not = icmp eq ptr %auth_hmacs.1, null
  br i1 %tobool157.not, label %if.then153.if.end162_crit_edge, label %if.then158

if.then153.if.end162_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162

if.then158:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  %length159 = getelementptr inbounds %struct.sctp_paramhdr, ptr %auth_hmacs.1, i32 0, i32 1
  %259 = ptrtoint ptr %length159 to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %length159, align 2
  %conv160 = zext i16 %260 to i32
  %261 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i363 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %length.i363 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %length.i363, align 2
  %conv.i364 = zext i16 %264 to i32
  %add.i365 = add nuw nsw i32 %conv.i364, 3
  %and.i366 = and i32 %add.i365, 131068
  %sub.i367 = sub nsw i32 %and.i366, %conv.i364
  %call.i.i369 = call ptr @skb_put(ptr noundef %255, i32 noundef %sub.i367) #11
  %265 = call ptr @memset(ptr %call.i.i369, i32 0, i32 %sub.i367)
  %266 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i370 = call ptr @skb_put(ptr noundef %267, i32 noundef %conv160) #11
  %268 = call ptr @memcpy(ptr %call.i19.i370, ptr %auth_hmacs.1, i32 %conv160)
  %269 = trunc i32 %and.i366 to i16
  %conv5.i372 = add i16 %260, %269
  %270 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i373 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %length7.i373 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %conv5.i372, ptr %length7.i373, align 2
  %273 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i374 = getelementptr inbounds %struct.sk_buff, ptr %274, i32 0, i32 16
  %275 = ptrtoint ptr %tail.i.i374 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %tail.i.i374, align 8
  %277 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %276, ptr %chunk_end.i, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %if.then153.if.end162_crit_edge
  %tobool163.not = icmp eq ptr %auth_chunks.1, null
  br i1 %tobool163.not, label %if.end162.nodata_crit_edge, label %if.then164

if.end162.nodata_crit_edge:                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then164:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  %length165 = getelementptr inbounds %struct.sctp_paramhdr, ptr %auth_chunks.1, i32 0, i32 1
  %278 = ptrtoint ptr %length165 to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %length165, align 2
  %conv166 = zext i16 %279 to i32
  %280 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i377 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %281, i32 0, i32 2
  %282 = ptrtoint ptr %length.i377 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %length.i377, align 2
  %conv.i378 = zext i16 %283 to i32
  %add.i379 = add nuw nsw i32 %conv.i378, 3
  %and.i380 = and i32 %add.i379, 131068
  %sub.i381 = sub nsw i32 %and.i380, %conv.i378
  %284 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i383 = call ptr @skb_put(ptr noundef %285, i32 noundef %sub.i381) #11
  %286 = call ptr @memset(ptr %call.i.i383, i32 0, i32 %sub.i381)
  %287 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i384 = call ptr @skb_put(ptr noundef %288, i32 noundef %conv166) #11
  %289 = call ptr @memcpy(ptr %call.i19.i384, ptr %auth_chunks.1, i32 %conv166)
  %290 = trunc i32 %and.i380 to i16
  %conv5.i386 = add i16 %279, %290
  %291 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i387 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %length7.i387 to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %conv5.i386, ptr %length7.i387, align 2
  %294 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i388 = getelementptr inbounds %struct.sk_buff, ptr %295, i32 0, i32 16
  %296 = ptrtoint ptr %tail.i.i388 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %tail.i.i388, align 8
  %298 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %297, ptr %chunk_end.i, align 4
  br label %nodata

nodata:                                           ; preds = %if.then164, %if.end162.nodata_crit_edge, %if.end147.nodata_crit_edge, %if.end85.nodata_crit_edge
  call void @kfree(ptr noundef %coerce.val.ip) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %types) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %extensions) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addrs_len) #11
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_bind_addrs_to_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_init_ack(ptr noundef %asoc, ptr nocapture noundef readonly %chunk, i32 noundef %gfp, i32 noundef %unkparam_len) local_unnamed_addr #0 align 64 {
entry:
  %extensions = alloca [5 x i8], align 1
  %addrs_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %extensions) #11
  %0 = getelementptr inbounds [5 x i8], ptr %extensions, i32 0, i32 1
  %1 = call ptr @memset(ptr %extensions, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addrs_len) #11
  %2 = ptrtoint ptr %addrs_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addrs_len, align 4, !annotation !56
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6
  %call = call i32 @sctp_bind_addrs_to_raw(ptr noundef %bind_addr, ptr noundef nonnull %addrs_len, i32 noundef %gfp) #11
  %coerce.val.ip = inttoptr i32 %call to ptr
  %c = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c, align 8
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 43
  %5 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rwnd, align 4
  %sinit_num_ostreams = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 5
  %7 = ptrtoint ptr %sinit_num_ostreams to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sinit_num_ostreams, align 8
  %sinit_max_instreams = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %sinit_max_instreams to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sinit_max_instreams, align 2
  %initial_tsn = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 7
  %11 = ptrtoint ptr %initial_tsn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %initial_tsn, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %13 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep, align 4
  %15 = ptrtoint ptr %addrs_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addrs_len, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %17 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %20 to i32
  %add.i = add i32 %16, 144
  %add2.i = add i32 %add.i, %conv.i
  %rem.i = srem i32 %add2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %sub.i = sub nsw i32 32, %rem.i
  %add4.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %bodysize.0.i = add i32 %add4.i, %add2.i
  %add5.i = add i32 %bodysize.0.i, 40
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add5.i, i32 noundef 2848) #14
  %tobool6.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool6.not.i, label %entry.nomem_cookie_crit_edge, label %if.end8.i

entry.nomem_cookie_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem_cookie

if.end8.i:                                        ; preds = %entry
  %body.i = getelementptr inbounds %struct.sctp_cookie_param, ptr %call9.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 7, ptr %call9.i.i.i, align 128
  %conv9.i = trunc i32 %add5.i to i16
  %length11.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %call9.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %length11.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv9.i, ptr %length11.i, align 2
  %c.i = getelementptr inbounds %struct.sctp_cookie_param, ptr %call9.i.i.i, i32 10
  %23 = call ptr @memcpy(ptr %c.i, ptr %c, i32 144)
  %raw_addr_list_len.i = getelementptr inbounds %struct.sctp_cookie_param, ptr %call9.i.i.i, i32 44
  %24 = ptrtoint ptr %raw_addr_list_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %16, ptr %raw_addr_list_len.i, align 16
  %prsctp_capable.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %25 = ptrtoint ptr %prsctp_capable.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %prsctp_capable.i, align 2
  %bf.lshr.i = lshr i16 %bf.load.i, 10
  %26 = trunc i16 %bf.lshr.i to i8
  %conv14.i = and i8 %26, 1
  %prsctp_capable16.i = getelementptr inbounds %struct.sctp_cookie_param, ptr %call9.i.i.i, i32 25, i32 0, i32 1
  %27 = ptrtoint ptr %prsctp_capable16.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv14.i, ptr %prsctp_capable16.i, align 2
  %adaptation_ind.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 14
  %28 = ptrtoint ptr %adaptation_ind.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adaptation_ind.i, align 8
  %adaptation_ind19.i = getelementptr inbounds %struct.sctp_cookie_param, ptr %call9.i.i.i, i32 26
  %30 = ptrtoint ptr %adaptation_ind19.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %adaptation_ind19.i, align 8
  %cookie_life.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 8
  %31 = ptrtoint ptr %cookie_life.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cookie_life.i, align 8
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %add21.i = add i64 %call.i.i, %32
  %expiration.i = getelementptr inbounds %struct.sctp_cookie_param, ptr %call9.i.i.i, i32 14
  %33 = ptrtoint ptr %expiration.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add21.i, ptr %expiration.i, align 8
  %peer_init.i = getelementptr inbounds %struct.sctp_cookie_param, ptr %call9.i.i.i, i32 45
  %34 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chunk_hdr.i, align 4
  %length26.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %length26.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %length26.i, align 2
  %conv27.i = zext i16 %37 to i32
  %38 = call ptr @memcpy(ptr %peer_init.i, ptr %35, i32 %conv27.i)
  %39 = load i16, ptr %length26.i, align 2
  %conv33.i = zext i16 %39 to i32
  %add.ptr.i = getelementptr i8, ptr %peer_init.i, i32 %conv33.i
  %40 = call ptr @memcpy(ptr %add.ptr.i, ptr %coerce.val.ip, i32 %16)
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %14, i32 0, i32 3
  %41 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk.i, align 4
  %hmac.i = getelementptr inbounds %struct.sctp_sock, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %hmac.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hmac.i, align 8
  %tobool35.not.i = icmp eq ptr %44, null
  br i1 %tobool35.not.i, label %if.end8.i.if.end_crit_edge, label %if.then36.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then36.i:                                      ; preds = %if.end8.i
  %secret_key.i = getelementptr inbounds %struct.sctp_endpoint, ptr %14, i32 0, i32 4
  %call42.i = call i32 @crypto_shash_setkey(ptr noundef nonnull %44, ptr noundef %secret_key.i, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %cond.end.i, label %if.then36.i.nomem_cookie.sink.split_crit_edge

if.then36.i.nomem_cookie.sink.split_crit_edge:    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem_cookie.sink.split

cond.end.i:                                       ; preds = %if.then36.i
  %call46.i = call i32 @crypto_shash_tfm_digest(ptr noundef nonnull %44, ptr noundef %c.i, i32 noundef %bodysize.0.i, ptr noundef %body.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.not.i, label %cond.end.i.if.end_crit_edge, label %cond.end.i.nomem_cookie.sink.split_crit_edge

cond.end.i.nomem_cookie.sink.split_crit_edge:     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem_cookie.sink.split

cond.end.i.if.end_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %cond.end.i.if.end_crit_edge, %if.end8.i.if.end_crit_edge
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %45 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk, align 4
  %47 = ptrtoint ptr %addrs_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addrs_len, align 4
  %add = add i32 %unkparam_len, 16
  %add9 = add i32 %add, %add5.i
  %add10 = add i32 %add9, %48
  %49 = ptrtoint ptr %prsctp_capable.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load = load i16, ptr %prsctp_capable.i, align 2
  %add13 = add i32 %add10, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load)
  %tobool11.not400 = icmp slt i16 %bf.load, 0
  %spec.select = select i1 %tobool11.not400, i32 %add13, i32 %add10
  %50 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool18.not = icmp eq i16 %50, 0
  %add20 = add i32 %spec.select, 4
  %chunksize.1 = select i1 %tobool18.not, i32 %spec.select, i32 %add20
  %51 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool26.not = icmp eq i16 %51, 0
  br i1 %tobool26.not, label %if.end.if.end31_crit_edge, label %if.then27

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %extensions to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -63, ptr %extensions, align 1
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -128, ptr %0, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end.if.end31_crit_edge
  %num_ext.0 = phi i32 [ 2, %if.then27 ], [ 0, %if.end.if.end31_crit_edge ]
  %54 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool36.not = icmp eq i16 %54, 0
  br i1 %tobool36.not, label %if.end31.if.end40_crit_edge, label %if.then37

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx38 = getelementptr [5 x i8], ptr %extensions, i32 0, i32 %num_ext.0
  %55 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -126, ptr %arrayidx38, align 1
  %add39 = or i32 %num_ext.0, 1
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end31.if.end40_crit_edge
  %num_ext.1 = phi i32 [ %add39, %if.then37 ], [ %num_ext.0, %if.end31.if.end40_crit_edge ]
  %adaptation_ind = getelementptr inbounds %struct.sctp_sock, ptr %46, i32 0, i32 35
  %56 = ptrtoint ptr %adaptation_ind to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %adaptation_ind, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool41.not = icmp eq i32 %57, 0
  %add43 = add i32 %chunksize.1, 8
  %spec.select253 = select i1 %tobool41.not, i32 %chunksize.1, i32 %add43
  %58 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool49.not = icmp eq i16 %58, 0
  br i1 %tobool49.not, label %if.end40.if.end53_crit_edge, label %if.then50

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx51 = getelementptr [5 x i8], ptr %extensions, i32 0, i32 %num_ext.1
  %59 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 64, ptr %arrayidx51, align 1
  %add52 = add nsw i32 %num_ext.1, 1
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end40.if.end53_crit_edge
  %num_ext.2 = phi i32 [ %add52, %if.then50 ], [ %num_ext.1, %if.end40.if.end53_crit_edge ]
  %60 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool58.not = icmp eq i16 %60, 0
  br i1 %tobool58.not, label %if.end53.if.end89_crit_edge, label %if.then59

if.end53.if.end89_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %auth_random61 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 13
  %length = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 13, i32 2
  %61 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %length, align 2
  %conv = zext i16 %62 to i32
  %add62 = add i32 %spec.select253, %conv
  %length66 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 14, i32 2
  %63 = ptrtoint ptr %length66 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %length66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool67.not = icmp eq i16 %64, 0
  %auth_hmacs64 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 14
  %conv70 = zext i16 %64 to i32
  %add71 = add nuw nsw i32 %conv70, 3
  %and = and i32 %add71, 131068
  %auth_hmacs.0 = select i1 %tobool67.not, ptr null, ptr %auth_hmacs64
  %add72 = select i1 %tobool67.not, i32 0, i32 %and
  %chunksize.3 = add i32 %add62, %add72
  %length77 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 15, i32 2
  %65 = ptrtoint ptr %length77 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %length77, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool78.not = icmp eq i16 %66, 0
  %auth_chunks75 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 15
  %conv81 = zext i16 %66 to i32
  %add82 = add nuw nsw i32 %conv81, 3
  %and83 = and i32 %add82, 131068
  %add84 = select i1 %tobool78.not, i32 0, i32 %and83
  %chunksize.4 = add i32 %chunksize.3, %add84
  %auth_chunks.0 = select i1 %tobool78.not, ptr null, ptr %auth_chunks75
  %arrayidx87 = getelementptr [5 x i8], ptr %extensions, i32 0, i32 %num_ext.2
  %67 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 15, ptr %arrayidx87, align 1
  %add88 = add nsw i32 %num_ext.2, 1
  br label %if.end89

if.end89:                                         ; preds = %if.then59, %if.end53.if.end89_crit_edge
  %auth_random.0 = phi ptr [ %auth_random61, %if.then59 ], [ null, %if.end53.if.end89_crit_edge ]
  %auth_hmacs.1 = phi ptr [ %auth_hmacs.0, %if.then59 ], [ null, %if.end53.if.end89_crit_edge ]
  %chunksize.5 = phi i32 [ %chunksize.4, %if.then59 ], [ %spec.select253, %if.end53.if.end89_crit_edge ]
  %num_ext.3 = phi i32 [ %add88, %if.then59 ], [ %num_ext.2, %if.end53.if.end89_crit_edge ]
  %auth_chunks.1 = phi ptr [ %auth_chunks.0, %if.then59 ], [ null, %if.end53.if.end89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ext.3)
  %tobool90.not = icmp eq i32 %num_ext.3, 0
  %add93 = add i32 %num_ext.3, 7
  %and94 = and i32 %add93, -4
  %add95 = select i1 %tobool90.not, i32 0, i32 %and94
  %chunksize.6 = add i32 %add95, %chunksize.5
  %call.i = call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %chunksize.6, i32 noundef %gfp) #11
  %tobool.not.i254 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i254, label %if.end89.nomem_cookie.sink.split_crit_edge, label %if.then.i

if.end89.nomem_cookie.sink.split_crit_edge:       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem_cookie.sink.split

if.then.i:                                        ; preds = %if.end89
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %68 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %70 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %72 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %73 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %69, i32 0, i32 75
  %74 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shkey.i.i, align 8
  %76 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %76, align 4
  call void @sctp_auth_shkey_hold(ptr noundef %75) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %69, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end100_crit_edge, label %cond.true.i.i

if.end.i.i.if.end100_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %69, i32 0, i32 3
  %78 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sk.i.i, align 4
  br label %if.end100

if.end100:                                        ; preds = %cond.true.i.i, %if.end.i.i.if.end100_crit_edge
  %cond.i.i = phi ptr [ %79, %cond.true.i.i ], [ null, %if.end.i.i.if.end100_crit_edge ]
  %80 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %cond.i.i, ptr %80, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 17
  %82 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 4, i32 0, i32 1
  %85 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %86 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %transport, align 4
  %tobool101.not = icmp eq ptr %87, null
  br i1 %tobool101.not, label %if.end100.if.end106_crit_edge, label %if.then102

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %87, i32 0, i32 6
  %call104 = call ptr @sctp_assoc_lookup_paddr(ptr noundef %asoc, ptr noundef %ipaddr) #11
  %transport105 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %88 = ptrtoint ptr %transport105 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call104, ptr %transport105, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.end100.if.end106_crit_edge
  %chunk_hdr.i255 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %89 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i256 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %length.i256 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %length.i256, align 2
  %conv.i257 = zext i16 %92 to i32
  %add.i258 = add nuw nsw i32 %conv.i257, 3
  %and.i = and i32 %add.i258, 131068
  %sub.i259 = sub nsw i32 %and.i, %conv.i257
  %93 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i260 = call ptr @skb_put(ptr noundef %94, i32 noundef %sub.i259) #11
  %95 = call ptr @memset(ptr %call.i.i260, i32 0, i32 %sub.i259)
  %96 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = call ptr @skb_put(ptr noundef %97, i32 noundef 16) #11
  %98 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %4, ptr %call.i19.i, align 1
  %initack.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %99 = ptrtoint ptr %initack.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %6, ptr %initack.sroa.5.0.call.i19.i.sroa_idx, align 1
  %initack.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 8
  %100 = ptrtoint ptr %initack.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %8, ptr %initack.sroa.7.0.call.i19.i.sroa_idx, align 1
  %initack.sroa.9.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 10
  %101 = ptrtoint ptr %initack.sroa.9.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %10, ptr %initack.sroa.9.0.call.i19.i.sroa_idx, align 1
  %initack.sroa.11.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 12
  %102 = ptrtoint ptr %initack.sroa.11.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %12, ptr %initack.sroa.11.0.call.i19.i.sroa_idx, align 1
  %103 = trunc i32 %and.i to i16
  %conv5.i = add i16 %103, 16
  %104 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv5.i, ptr %length7.i, align 2
  %107 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 16
  %109 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %111 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %112 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i19.i, ptr %subh, align 4
  %113 = ptrtoint ptr %addrs_len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %addrs_len, align 4
  %115 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i263 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %length.i263 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %length.i263, align 2
  %conv.i264 = zext i16 %117 to i32
  %add.i265 = add nuw nsw i32 %conv.i264, 3
  %and.i266 = and i32 %add.i265, 131068
  %sub.i267 = sub nsw i32 %and.i266, %conv.i264
  %call.i.i269 = call ptr @skb_put(ptr noundef %108, i32 noundef %sub.i267) #11
  %118 = call ptr @memset(ptr %call.i.i269, i32 0, i32 %sub.i267)
  %119 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i270 = call ptr @skb_put(ptr noundef %120, i32 noundef %114) #11
  %121 = call ptr @memcpy(ptr %call.i19.i270, ptr %coerce.val.ip, i32 %114)
  %add4.i271 = add i32 %and.i266, %114
  %conv5.i272 = trunc i32 %add4.i271 to i16
  %122 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i273 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %length7.i273 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv5.i272, ptr %length7.i273, align 2
  %125 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i274 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 16
  %127 = ptrtoint ptr %tail.i.i274 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tail.i.i274, align 8
  %129 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %chunk_end.i, align 4
  %param_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 7
  %130 = ptrtoint ptr %param_hdr to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i19.i270, ptr %param_hdr, align 4
  %131 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i277 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %length.i277 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %length.i277, align 2
  %conv.i278 = zext i16 %133 to i32
  %add.i279 = add nuw nsw i32 %conv.i278, 3
  %and.i280 = and i32 %add.i279, 131068
  %sub.i281 = sub nsw i32 %and.i280, %conv.i278
  %call.i.i283 = call ptr @skb_put(ptr noundef %126, i32 noundef %sub.i281) #11
  %134 = call ptr @memset(ptr %call.i.i283, i32 0, i32 %sub.i281)
  %135 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i284 = call ptr @skb_put(ptr noundef %136, i32 noundef %add5.i) #11
  %137 = call ptr @memcpy(ptr %call.i19.i284, ptr %call9.i.i.i, i32 %add5.i)
  %add4.i285 = add i32 %and.i280, %add5.i
  %conv5.i286 = trunc i32 %add4.i285 to i16
  %138 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i287 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %length7.i287 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv5.i286, ptr %length7.i287, align 2
  %141 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i288 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 16
  %143 = ptrtoint ptr %tail.i.i288 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tail.i.i288, align 8
  %145 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %chunk_end.i, align 4
  %146 = ptrtoint ptr %prsctp_capable.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %bf.load112 = load i16, ptr %prsctp_capable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load112)
  %tobool114.not = icmp sgt i16 %bf.load112, -1
  br i1 %tobool114.not, label %if.end106.if.end117_crit_edge, label %if.then115

if.end106.if.end117_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then115:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i291 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %length.i291 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %length.i291, align 2
  %conv.i292 = zext i16 %150 to i32
  %add.i293 = add nuw nsw i32 %conv.i292, 3
  %and.i294 = and i32 %add.i293, 131068
  %sub.i295 = sub nsw i32 %and.i294, %conv.i292
  %call.i.i297 = call ptr @skb_put(ptr noundef %142, i32 noundef %sub.i295) #11
  %151 = call ptr @memset(ptr %call.i.i297, i32 0, i32 %sub.i295)
  %152 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i298 = call ptr @skb_put(ptr noundef %153, i32 noundef 4) #11
  %154 = ptrtoint ptr %call.i19.i298 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 -2147483644, ptr %call.i19.i298, align 1
  %155 = trunc i32 %and.i294 to i16
  %conv5.i300 = add i16 %155, 4
  %156 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i301 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %length7.i301 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv5.i300, ptr %length7.i301, align 2
  %159 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i302 = getelementptr inbounds %struct.sk_buff, ptr %160, i32 0, i32 16
  %161 = ptrtoint ptr %tail.i.i302 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tail.i.i302, align 8
  %163 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %chunk_end.i, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end106.if.end117_crit_edge
  br i1 %tobool90.not, label %if.end117.if.end128_crit_edge, label %if.then119

if.end117.if.end128_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  %164 = trunc i32 %num_ext.3 to i16
  %conv122 = add i16 %164, 4
  %165 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i305 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %length.i305 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %length.i305, align 2
  %conv.i306 = zext i16 %168 to i32
  %add.i307 = add nuw nsw i32 %conv.i306, 3
  %and.i308 = and i32 %add.i307, 131068
  %sub.i309 = sub nsw i32 %and.i308, %conv.i306
  %169 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i311 = call ptr @skb_put(ptr noundef %170, i32 noundef %sub.i309) #11
  %171 = call ptr @memset(ptr %call.i.i311, i32 0, i32 %sub.i309)
  %172 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i312 = call ptr @skb_put(ptr noundef %173, i32 noundef 4) #11
  %174 = ptrtoint ptr %call.i19.i312 to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 -32760, ptr %call.i19.i312, align 1
  %ext_param.sroa.5.0.call.i19.i312.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i312, i32 2
  %175 = ptrtoint ptr %ext_param.sroa.5.0.call.i19.i312.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 %conv122, ptr %ext_param.sroa.5.0.call.i19.i312.sroa_idx, align 1
  %176 = trunc i32 %and.i308 to i16
  %conv5.i314 = add i16 %176, 4
  %177 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i315 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %length7.i315 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv5.i314, ptr %length7.i315, align 2
  %180 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i316 = getelementptr inbounds %struct.sk_buff, ptr %181, i32 0, i32 16
  %182 = ptrtoint ptr %tail.i.i316 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %tail.i.i316, align 8
  %184 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %183, ptr %chunk_end.i, align 4
  %185 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i319 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %length.i319 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %length.i319, align 2
  %call.i321 = call ptr @skb_put(ptr noundef %181, i32 noundef %num_ext.3) #11
  %188 = call ptr @memcpy(ptr %call.i321, ptr %extensions, i32 %num_ext.3)
  %conv1.i = add i16 %187, %164
  %189 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %chunk_hdr.i255, align 4
  %length3.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %length3.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv1.i, ptr %length3.i, align 2
  %192 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i323 = getelementptr inbounds %struct.sk_buff, ptr %193, i32 0, i32 16
  %194 = ptrtoint ptr %tail.i.i323 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %tail.i.i323, align 8
  %196 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %195, ptr %chunk_end.i, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then119, %if.end117.if.end128_crit_edge
  %197 = ptrtoint ptr %prsctp_capable.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %bf.load131 = load i16, ptr %prsctp_capable.i, align 2
  %198 = and i16 %bf.load131, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %tobool134.not = icmp eq i16 %198, 0
  br i1 %tobool134.not, label %if.end128.if.end137_crit_edge, label %if.then135

if.end128.if.end137_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then135:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %199 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i326 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %length.i326 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %length.i326, align 2
  %conv.i327 = zext i16 %202 to i32
  %add.i328 = add nuw nsw i32 %conv.i327, 3
  %and.i329 = and i32 %add.i328, 131068
  %sub.i330 = sub nsw i32 %and.i329, %conv.i327
  %203 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i332 = call ptr @skb_put(ptr noundef %204, i32 noundef %sub.i330) #11
  %205 = call ptr @memset(ptr %call.i.i332, i32 0, i32 %sub.i330)
  %206 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i333 = call ptr @skb_put(ptr noundef %207, i32 noundef 4) #11
  %208 = ptrtoint ptr %call.i19.i333 to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 -1073741820, ptr %call.i19.i333, align 1
  %209 = trunc i32 %and.i329 to i16
  %conv5.i335 = add i16 %209, 4
  %210 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i336 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %length7.i336 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv5.i335, ptr %length7.i336, align 2
  %213 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i337 = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 16
  %215 = ptrtoint ptr %tail.i.i337 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %tail.i.i337, align 8
  %217 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %216, ptr %chunk_end.i, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.end128.if.end137_crit_edge
  %218 = ptrtoint ptr %adaptation_ind to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %adaptation_ind, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool139.not = icmp eq i32 %219, 0
  br i1 %tobool139.not, label %if.end137.if.end148_crit_edge, label %if.then140

if.end137.if.end148_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  %220 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i340 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %length.i340 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %length.i340, align 2
  %conv.i341 = zext i16 %223 to i32
  %add.i342 = add nuw nsw i32 %conv.i341, 3
  %and.i343 = and i32 %add.i342, 131068
  %sub.i344 = sub nsw i32 %and.i343, %conv.i341
  %224 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i346 = call ptr @skb_put(ptr noundef %225, i32 noundef %sub.i344) #11
  %226 = call ptr @memset(ptr %call.i.i346, i32 0, i32 %sub.i344)
  %227 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i347 = call ptr @skb_put(ptr noundef %228, i32 noundef 8) #11
  %229 = ptrtoint ptr %call.i19.i347 to i32
  call void @__asan_storeN_noabort(i32 %229, i32 2)
  store i16 -16378, ptr %call.i19.i347, align 1
  %aiparam.sroa.5.0.call.i19.i347.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i347, i32 2
  %230 = ptrtoint ptr %aiparam.sroa.5.0.call.i19.i347.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %230, i32 2)
  store i16 8, ptr %aiparam.sroa.5.0.call.i19.i347.sroa_idx, align 1
  %aiparam.sroa.7.0.call.i19.i347.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i347, i32 4
  %231 = ptrtoint ptr %aiparam.sroa.7.0.call.i19.i347.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %231, i32 4)
  store i32 %219, ptr %aiparam.sroa.7.0.call.i19.i347.sroa_idx, align 1
  %232 = trunc i32 %and.i343 to i16
  %conv5.i349 = add i16 %232, 8
  %233 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i350 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %length7.i350 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %conv5.i349, ptr %length7.i350, align 2
  %236 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i351 = getelementptr inbounds %struct.sk_buff, ptr %237, i32 0, i32 16
  %238 = ptrtoint ptr %tail.i.i351 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %tail.i.i351, align 8
  %240 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %239, ptr %chunk_end.i, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then140, %if.end137.if.end148_crit_edge
  %241 = ptrtoint ptr %prsctp_capable.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %bf.load151 = load i16, ptr %prsctp_capable.i, align 2
  %242 = and i16 %bf.load151, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %tobool154.not = icmp eq i16 %242, 0
  br i1 %tobool154.not, label %if.end148.if.end171_crit_edge, label %if.then155

if.end148.if.end171_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.then155:                                       ; preds = %if.end148
  %length156 = getelementptr inbounds %struct.sctp_paramhdr, ptr %auth_random.0, i32 0, i32 1
  %243 = ptrtoint ptr %length156 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %length156, align 2
  %conv157 = zext i16 %244 to i32
  %245 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i354 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %246, i32 0, i32 2
  %247 = ptrtoint ptr %length.i354 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %length.i354, align 2
  %conv.i355 = zext i16 %248 to i32
  %add.i356 = add nuw nsw i32 %conv.i355, 3
  %and.i357 = and i32 %add.i356, 131068
  %sub.i358 = sub nsw i32 %and.i357, %conv.i355
  %249 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i360 = call ptr @skb_put(ptr noundef %250, i32 noundef %sub.i358) #11
  %251 = call ptr @memset(ptr %call.i.i360, i32 0, i32 %sub.i358)
  %252 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i361 = call ptr @skb_put(ptr noundef %253, i32 noundef %conv157) #11
  %254 = call ptr @memcpy(ptr %call.i19.i361, ptr %auth_random.0, i32 %conv157)
  %255 = trunc i32 %and.i357 to i16
  %conv5.i363 = add i16 %244, %255
  %256 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i364 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %length7.i364 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %conv5.i363, ptr %length7.i364, align 2
  %259 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i365 = getelementptr inbounds %struct.sk_buff, ptr %260, i32 0, i32 16
  %261 = ptrtoint ptr %tail.i.i365 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %tail.i.i365, align 8
  %263 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %262, ptr %chunk_end.i, align 4
  %tobool159.not = icmp eq ptr %auth_hmacs.1, null
  br i1 %tobool159.not, label %if.then155.if.end164_crit_edge, label %if.then160

if.then155.if.end164_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then160:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  %length161 = getelementptr inbounds %struct.sctp_paramhdr, ptr %auth_hmacs.1, i32 0, i32 1
  %264 = ptrtoint ptr %length161 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %length161, align 2
  %conv162 = zext i16 %265 to i32
  %266 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i368 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %267, i32 0, i32 2
  %268 = ptrtoint ptr %length.i368 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %length.i368, align 2
  %conv.i369 = zext i16 %269 to i32
  %add.i370 = add nuw nsw i32 %conv.i369, 3
  %and.i371 = and i32 %add.i370, 131068
  %sub.i372 = sub nsw i32 %and.i371, %conv.i369
  %call.i.i374 = call ptr @skb_put(ptr noundef %260, i32 noundef %sub.i372) #11
  %270 = call ptr @memset(ptr %call.i.i374, i32 0, i32 %sub.i372)
  %271 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i375 = call ptr @skb_put(ptr noundef %272, i32 noundef %conv162) #11
  %273 = call ptr @memcpy(ptr %call.i19.i375, ptr %auth_hmacs.1, i32 %conv162)
  %274 = trunc i32 %and.i371 to i16
  %conv5.i377 = add i16 %265, %274
  %275 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i378 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %276, i32 0, i32 2
  %277 = ptrtoint ptr %length7.i378 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %conv5.i377, ptr %length7.i378, align 2
  %278 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i379 = getelementptr inbounds %struct.sk_buff, ptr %279, i32 0, i32 16
  %280 = ptrtoint ptr %tail.i.i379 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %tail.i.i379, align 8
  %282 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %281, ptr %chunk_end.i, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %if.then155.if.end164_crit_edge
  %tobool165.not = icmp eq ptr %auth_chunks.1, null
  br i1 %tobool165.not, label %if.end164.if.end171_crit_edge, label %if.then166

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.then166:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  %length167 = getelementptr inbounds %struct.sctp_paramhdr, ptr %auth_chunks.1, i32 0, i32 1
  %283 = ptrtoint ptr %length167 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %length167, align 2
  %conv168 = zext i16 %284 to i32
  %285 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %chunk_hdr.i255, align 4
  %length.i382 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %length.i382 to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %length.i382, align 2
  %conv.i383 = zext i16 %288 to i32
  %add.i384 = add nuw nsw i32 %conv.i383, 3
  %and.i385 = and i32 %add.i384, 131068
  %sub.i386 = sub nsw i32 %and.i385, %conv.i383
  %289 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i388 = call ptr @skb_put(ptr noundef %290, i32 noundef %sub.i386) #11
  %291 = call ptr @memset(ptr %call.i.i388, i32 0, i32 %sub.i386)
  %292 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i389 = call ptr @skb_put(ptr noundef %293, i32 noundef %conv168) #11
  %294 = call ptr @memcpy(ptr %call.i19.i389, ptr %auth_chunks.1, i32 %conv168)
  %295 = trunc i32 %and.i385 to i16
  %conv5.i391 = add i16 %284, %295
  %296 = ptrtoint ptr %chunk_hdr.i255 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %chunk_hdr.i255, align 4
  %length7.i392 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %297, i32 0, i32 2
  %298 = ptrtoint ptr %length7.i392 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv5.i391, ptr %length7.i392, align 2
  %299 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i393 = getelementptr inbounds %struct.sk_buff, ptr %300, i32 0, i32 16
  %301 = ptrtoint ptr %tail.i.i393 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %tail.i.i393, align 8
  %303 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %302, ptr %chunk_end.i, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.end164.if.end171_crit_edge, %if.end148.if.end171_crit_edge
  %304 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %asoc, ptr %asoc1.i.i, align 4
  br label %nomem_cookie.sink.split

nomem_cookie.sink.split:                          ; preds = %if.end171, %if.end89.nomem_cookie.sink.split_crit_edge, %cond.end.i.nomem_cookie.sink.split_crit_edge, %if.then36.i.nomem_cookie.sink.split_crit_edge
  %retval1.0.ph = phi ptr [ null, %cond.end.i.nomem_cookie.sink.split_crit_edge ], [ null, %if.then36.i.nomem_cookie.sink.split_crit_edge ], [ %call.i, %if.end89.nomem_cookie.sink.split_crit_edge ], [ %call.i, %if.end171 ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %nomem_cookie

nomem_cookie:                                     ; preds = %nomem_cookie.sink.split, %entry.nomem_cookie_crit_edge
  %retval1.0 = phi ptr [ null, %entry.nomem_cookie_crit_edge ], [ %retval1.0.ph, %nomem_cookie.sink.split ]
  call void @kfree(ptr noundef %coerce.val.ip) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addrs_len) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %extensions) #11
  ret ptr %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_assoc_lookup_paddr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_cookie_echo(ptr noundef %asoc, ptr noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie2 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 16
  %0 = ptrtoint ptr %cookie2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie2, align 4
  %cookie_len4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 17
  %2 = ptrtoint ptr %cookie_len4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie_len4, align 8
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 10, i8 noundef zeroext 0, i32 noundef %3, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nodata_crit_edge, label %if.then.i

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %8 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %9 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 75
  %10 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shkey.i.i, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %11) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %15, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.i.i, ptr %16, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %25 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %26 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %27, i32 noundef %sub.i) #11
  %28 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %29 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %30, i32 noundef %3) #11
  %31 = call ptr @memcpy(ptr %call.i19.i, ptr %1, i32 %3)
  %add4.i = add i32 %and.i, %3
  %conv5.i = trunc i32 %add4.i to i16
  %32 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv5.i, ptr %length7.i, align 2
  %35 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %40 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i19.i, ptr %subh, align 4
  %tobool6.not = icmp eq ptr %chunk, null
  br i1 %tobool6.not, label %if.end.nodata_crit_edge, label %if.then7

if.end.nodata_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %41 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %transport, align 4
  %transport8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %43 = ptrtoint ptr %transport8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %transport8, align 4
  br label %nodata

nodata:                                           ; preds = %if.then7, %if.end.nodata_crit_edge, %entry.nodata_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_cookie_ack(ptr noundef %asoc, ptr noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 11, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.sctp_make_control.exit_crit_edge, label %cond.true.i.i

if.end.i.i.sctp_make_control.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %sctp_make_control.exit

sctp_make_control.exit:                           ; preds = %cond.true.i.i, %if.end.i.i.sctp_make_control.exit_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.sctp_make_control.exit_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %tobool2.not = icmp eq ptr %chunk, null
  br i1 %tobool2.not, label %sctp_make_control.exit.if.end_crit_edge, label %land.lhs.true3

sctp_make_control.exit.if.end_crit_edge:          ; preds = %sctp_make_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3:                                   ; preds = %sctp_make_control.exit
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %18 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transport, align 4
  %tobool4.not = icmp eq ptr %19, null
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %19, i32 0, i32 6
  %call6 = tail call ptr @sctp_assoc_lookup_paddr(ptr noundef %asoc, ptr noundef %ipaddr) #11
  %transport7 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %transport7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6, ptr %transport7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %sctp_make_control.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_cwr(ptr noundef %asoc, i32 noundef %lowest_tsn, ptr noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 13, i8 noundef zeroext 0, i32 noundef 4, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nodata_crit_edge, label %if.then.i

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %22 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %23, i32 noundef %sub.i) #11
  %24 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %25 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef 4) #11
  %27 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %lowest_tsn, ptr %call.i19.i, align 1
  %28 = trunc i32 %and.i to i16
  %conv5.i = add i16 %28, 4
  %29 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i, ptr %length7.i, align 2
  %32 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %36 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i19.i, ptr %subh, align 4
  %tobool4.not = icmp eq ptr %chunk, null
  br i1 %tobool4.not, label %if.end.nodata_crit_edge, label %if.then5

if.end.nodata_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %38 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transport, align 4
  %transport6 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %40 = ptrtoint ptr %transport6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %transport6, align 4
  br label %nodata

nodata:                                           ; preds = %if.then5, %if.end.nodata_crit_edge, %entry.nodata_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_ecne(ptr noundef %asoc, i32 noundef %lowest_tsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 12, i8 noundef zeroext 0, i32 noundef 4, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nodata_crit_edge, label %if.then.i

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %22 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %23, i32 noundef %sub.i) #11
  %24 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %25 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef 4) #11
  %27 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %lowest_tsn, ptr %call.i19.i, align 1
  %28 = trunc i32 %and.i to i16
  %conv5.i = add i16 %28, 4
  %29 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i, ptr %length7.i, align 2
  %32 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %36 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i19.i, ptr %subh, align 4
  br label %nodata

nodata:                                           ; preds = %if.end, %entry.nodata_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_datafrag_empty(ptr noundef %asoc, ptr nocapture noundef readonly %sinfo, i32 noundef %len, i8 noundef zeroext %flags, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sinfo_ppid = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 3
  %0 = ptrtoint ptr %sinfo_ppid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sinfo_ppid, align 4
  %2 = ptrtoint ptr %sinfo to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sinfo, align 4
  %sinfo_flags = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 2
  %4 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sinfo_flags, align 4
  %6 = trunc i16 %5 to i8
  %7 = shl i8 %6, 2
  %8 = and i8 %7, 4
  %9 = or i8 %8, %flags
  %add = add i32 %len, 12
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 0, i8 noundef zeroext %9, i32 noundef %add, i32 noundef %gfp) #11
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %15, i32 noundef %sub.i) #11
  %16 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %17 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %18, i32 noundef 12) #11
  %19 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %call.i19.i, align 1
  %dp.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %20 = ptrtoint ptr %dp.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %3, ptr %dp.sroa.5.0.call.i19.i.sroa_idx, align 1
  %dp.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 6
  %21 = ptrtoint ptr %dp.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 0, ptr %dp.sroa.7.0.call.i19.i.sroa_idx, align 1
  %dp.sroa.8.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 8
  %22 = ptrtoint ptr %dp.sroa.8.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %1, ptr %dp.sroa.8.0.call.i19.i.sroa_idx, align 1
  %23 = trunc i32 %and.i to i16
  %conv5.i = add i16 %23, 12
  %24 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv5.i, ptr %length7.i, align 2
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i19.i, ptr %subh, align 4
  %sinfo8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 12
  %33 = call ptr @memcpy(ptr %sinfo8, ptr %sinfo, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_sack(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  %gabs = alloca [16 x %struct.sctp_gap_ack_block], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %gabs) #11
  %0 = call ptr @memset(ptr %gabs, i32 0, i32 64)
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 2
  %1 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_make_sack.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_make_sack, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_make_sack.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %2) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = call zeroext i16 @sctp_tsnmap_num_gabs(ptr noundef %tsn_map, ptr noundef nonnull %gabs) #11
  %num_dup_tsns.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 6
  %3 = ptrtoint ptr %num_dup_tsns.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_dup_tsns.i, align 4
  %a_rwnd = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 44
  %5 = ptrtoint ptr %a_rwnd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %a_rwnd, align 8
  %conv = zext i16 %call6 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 12
  %conv10 = zext i16 %4 to i32
  %mul11 = shl nuw nsw i32 %conv10, 2
  %add12 = add nuw nsw i32 %add, %mul11
  %call.i = call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef %add12, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.nodata_crit_edge, label %if.then.i

do.end.nodata_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i:                                        ; preds = %do.end
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %7 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %11 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %12 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 75
  %13 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shkey.i.i, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %15, align 4
  call void @sctp_auth_shkey_hold(ptr noundef %14) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end16_crit_edge, label %cond.true.i.i

if.end.i.i.if.end16_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk.i.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %cond.true.i.i, %if.end.i.i.if.end16_crit_edge
  %cond.i.i = phi ptr [ %18, %cond.true.i.i ], [ null, %if.end.i.i.if.end16_crit_edge ]
  %19 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cond.i.i, ptr %19, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %last_data_from = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 9
  %25 = ptrtoint ptr %last_data_from to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %last_data_from, align 4
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %27 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %transport, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %31 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %32 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = call ptr @skb_put(ptr noundef %33, i32 noundef %sub.i) #11
  %34 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %35 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = call ptr @skb_put(ptr noundef %36, i32 noundef 12) #11
  %37 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %2, ptr %call.i19.i, align 1
  %sack.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %38 = ptrtoint ptr %sack.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %6, ptr %sack.sroa.5.0.call.i19.i.sroa_idx, align 1
  %sack.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 8
  %39 = ptrtoint ptr %sack.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %call6, ptr %sack.sroa.7.0.call.i19.i.sroa_idx, align 1
  %sack.sroa.9.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 10
  %40 = ptrtoint ptr %sack.sroa.9.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %4, ptr %sack.sroa.9.0.call.i19.i.sroa_idx, align 1
  %41 = trunc i32 %and.i to i16
  %conv5.i = add i16 %41, 12
  %42 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv5.i, ptr %length7.i, align 2
  %45 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %49 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %50 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i19.i, ptr %subh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call6)
  %tobool19.not = icmp eq i16 %call6, 0
  br i1 %tobool19.not, label %if.end16.if.end25_crit_edge, label %if.then20

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i92 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %length.i92 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %length.i92, align 2
  %conv.i93 = zext i16 %54 to i32
  %add.i94 = add nuw nsw i32 %conv.i93, 3
  %and.i95 = and i32 %add.i94, 131068
  %sub.i96 = sub nsw i32 %and.i95, %conv.i93
  %call.i.i98 = call ptr @skb_put(ptr noundef %46, i32 noundef %sub.i96) #11
  %55 = call ptr @memset(ptr %call.i.i98, i32 0, i32 %sub.i96)
  %56 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i99 = call ptr @skb_put(ptr noundef %57, i32 noundef %mul) #11
  %58 = call ptr @memcpy(ptr %call.i19.i99, ptr %gabs, i32 %mul)
  %add4.i100 = add nuw nsw i32 %and.i95, %mul
  %conv5.i101 = trunc i32 %add4.i100 to i16
  %59 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i102 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %length7.i102 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv5.i101, ptr %length7.i102, align 2
  %62 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i.i103 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i103, align 8
  %66 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %chunk_end.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end16.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool26.not = icmp eq i16 %4, 0
  br i1 %tobool26.not, label %if.end25.if.end34_crit_edge, label %if.then27

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %conv28 = zext i16 %4 to i64
  %idupchunks = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 85, i32 8
  %67 = ptrtoint ptr %idupchunks to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %idupchunks, align 8
  %add29 = add i64 %68, %conv28
  store i64 %add29, ptr %idupchunks, align 8
  %69 = ptrtoint ptr %num_dup_tsns.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %num_dup_tsns.i, align 4
  %dup_tsns.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 7
  %70 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i107 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %length.i107 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %length.i107, align 2
  %conv.i108 = zext i16 %73 to i32
  %add.i109 = add nuw nsw i32 %conv.i108, 3
  %and.i110 = and i32 %add.i109, 131068
  %sub.i111 = sub nsw i32 %and.i110, %conv.i108
  %74 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i113 = call ptr @skb_put(ptr noundef %75, i32 noundef %sub.i111) #11
  %76 = call ptr @memset(ptr %call.i.i113, i32 0, i32 %sub.i111)
  %77 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i114 = call ptr @skb_put(ptr noundef %78, i32 noundef %mul11) #11
  %79 = call ptr @memcpy(ptr %call.i19.i114, ptr %dup_tsns.i, i32 %mul11)
  %add4.i115 = add nuw nsw i32 %and.i110, %mul11
  %conv5.i116 = trunc i32 %add4.i115 to i16
  %80 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i117 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %length7.i117 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv5.i116, ptr %length7.i117, align 2
  %83 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i118 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %tail.i.i118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tail.i.i118, align 8
  %87 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %chunk_end.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end25.if.end34_crit_edge
  %sack_generation = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %88 = ptrtoint ptr %sack_generation to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load = load i16, ptr %sack_generation, align 2
  %bf.lshr = lshr i16 %bf.load, 5
  %89 = and i16 %bf.lshr, 1
  %bf.value = xor i16 %89, 1
  %bf.shl = shl nuw nsw i16 %bf.value, 5
  %bf.clear37 = and i16 %bf.load, -33
  %bf.set = or i16 %bf.shl, %bf.clear37
  store i16 %bf.set, ptr %sack_generation, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.value)
  %cmp = icmp eq i16 %bf.value, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end34.nodata_crit_edge

if.end34.nodata_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

for.cond.preheader:                               ; preds = %if.end34
  %90 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %90)
  %trans.0121 = load ptr, ptr %peer, align 8
  %cmp45.not122 = icmp eq ptr %trans.0121, %peer
  br i1 %cmp45.not122, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %trans.0123 = phi ptr [ %trans.0, %for.body.for.body_crit_edge ], [ %trans.0121, %for.cond.preheader.for.body_crit_edge ]
  %sack_generation49 = getelementptr inbounds %struct.sctp_transport, ptr %trans.0123, i32 0, i32 3
  %91 = ptrtoint ptr %sack_generation49 to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load50 = load i8, ptr %sack_generation49, align 4
  %bf.clear51 = and i8 %bf.load50, -9
  store i8 %bf.clear51, ptr %sack_generation49, align 4
  %92 = ptrtoint ptr %trans.0123 to i32
  call void @__asan_load4_noabort(i32 %92)
  %trans.0 = load ptr, ptr %trans.0123, align 8
  %cmp45.not = icmp eq ptr %trans.0, %peer
  br i1 %cmp45.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %93 = ptrtoint ptr %sack_generation to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load60 = load i16, ptr %sack_generation, align 2
  %bf.set62 = or i16 %bf.load60, 32
  store i16 %bf.set62, ptr %sack_generation, align 2
  br label %nodata

nodata:                                           ; preds = %for.end, %if.end34.nodata_crit_edge, %do.end.nodata_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %gabs) #11
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sctp_tsnmap_num_gabs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_shutdown(ptr noundef %asoc, ptr noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 2
  %0 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 7, i8 noundef zeroext 0, i32 noundef 4, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nodata_crit_edge, label %if.then.i

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %6 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %7 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 75
  %8 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shkey.i.i, align 8
  %10 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %9) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %13, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond.i.i, ptr %14, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %23 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %24 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %25, i32 noundef %sub.i) #11
  %26 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %27 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %28, i32 noundef 4) #11
  %29 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %1, ptr %call.i19.i, align 1
  %30 = trunc i32 %and.i to i16
  %conv5.i = add i16 %30, 4
  %31 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv5.i, ptr %length7.i, align 2
  %34 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %38 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %39 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i19.i, ptr %subh, align 4
  %tobool4.not = icmp eq ptr %chunk, null
  br i1 %tobool4.not, label %if.end.nodata_crit_edge, label %if.then5

if.end.nodata_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %40 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transport, align 4
  %transport6 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %42 = ptrtoint ptr %transport6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %transport6, align 4
  br label %nodata

nodata:                                           ; preds = %if.then5, %if.end.nodata_crit_edge, %entry.nodata_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_shutdown_ack(ptr noundef %asoc, ptr noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 8, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.sctp_make_control.exit_crit_edge, label %cond.true.i.i

if.end.i.i.sctp_make_control.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %sctp_make_control.exit

sctp_make_control.exit:                           ; preds = %cond.true.i.i, %if.end.i.i.sctp_make_control.exit_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.sctp_make_control.exit_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %tobool2.not = icmp eq ptr %chunk, null
  br i1 %tobool2.not, label %sctp_make_control.exit.if.end_crit_edge, label %if.then

sctp_make_control.exit.if.end_crit_edge:          ; preds = %sctp_make_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sctp_make_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %18 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transport, align 4
  %transport3 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %transport3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %transport3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sctp_make_control.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_shutdown_complete(ptr noundef %asoc, ptr noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  %conv2 = zext i1 %tobool.not to i8
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 14, i8 noundef zeroext %conv2, i32 noundef 0, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.sctp_make_control.exit_crit_edge, label %cond.true.i.i

if.end.i.i.sctp_make_control.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %sctp_make_control.exit

sctp_make_control.exit:                           ; preds = %cond.true.i.i, %if.end.i.i.sctp_make_control.exit_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.sctp_make_control.exit_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %tobool4.not = icmp eq ptr %chunk, null
  br i1 %tobool4.not, label %sctp_make_control.exit.if.end_crit_edge, label %if.then

sctp_make_control.exit.if.end_crit_edge:          ; preds = %sctp_make_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sctp_make_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %18 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transport, align 4
  %transport5 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %transport5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %transport5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sctp_make_control.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_abort(ptr noundef %asoc, ptr noundef readonly %chunk, i32 noundef %hint) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %chunk, null
  br i1 %tobool2.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %land.lhs.true4.if.end8_crit_edge, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %if.end8

if.end8:                                          ; preds = %if.else, %land.lhs.true4.if.end8_crit_edge, %entry.if.end8_crit_edge
  %flags.0 = phi i8 [ 0, %entry.if.end8_crit_edge ], [ 1, %if.else ], [ 0, %land.lhs.true4.if.end8_crit_edge ]
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 6, i8 noundef zeroext %flags.0, i32 noundef %hint, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8.if.end14_crit_edge, label %if.then.i

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then.i:                                        ; preds = %if.end8
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %8 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %9 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 75
  %10 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shkey.i.i, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %11) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.sctp_make_control.exit_crit_edge, label %cond.true.i.i

if.end.i.i.sctp_make_control.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i.i, align 4
  br label %sctp_make_control.exit

sctp_make_control.exit:                           ; preds = %cond.true.i.i, %if.end.i.i.sctp_make_control.exit_crit_edge
  %cond.i.i = phi ptr [ %15, %cond.true.i.i ], [ null, %if.end.i.i.sctp_make_control.exit_crit_edge ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.i.i, ptr %16, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %tobool11.not = icmp eq ptr %chunk, null
  br i1 %tobool11.not, label %sctp_make_control.exit.if.end14_crit_edge, label %if.then12

sctp_make_control.exit.if.end14_crit_edge:        ; preds = %sctp_make_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %sctp_make_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %22 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport, align 4
  %transport13 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %24 = ptrtoint ptr %transport13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %transport13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sctp_make_control.exit.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_abort_no_data(ptr noundef %asoc, ptr noundef readonly %chunk, i32 noundef %tsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %asoc, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  %tobool2.not.i = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr.i, align 4
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %land.lhs.true4.i.if.end8.i_crit_edge, label %land.lhs.true4.i.if.else.i_crit_edge

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %land.lhs.true4.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %flags.0.i = phi i8 [ 0, %entry.if.end8.i_crit_edge ], [ 1, %if.else.i ], [ 0, %land.lhs.true4.i.if.end8.i_crit_edge ]
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 6, i8 noundef zeroext %flags.0.i, i32 noundef 8, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.no_mem_crit_edge, label %if.then.i.i

if.end8.i.no_mem_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_mem

if.then.i.i:                                      ; preds = %if.end8.i
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %8 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %9 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 75
  %10 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shkey.i.i.i, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %11) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.sctp_make_control.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.sctp_make_control.exit.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i.i.i, align 4
  br label %sctp_make_control.exit.i

sctp_make_control.exit.i:                         ; preds = %cond.true.i.i.i, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %15, %cond.true.i.i.i ], [ null, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.i.i.i, ptr %16, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %tobool11.not.i = icmp eq ptr %chunk, null
  br i1 %tobool11.not.i, label %sctp_make_control.exit.i.if.end_crit_edge, label %if.then12.i

sctp_make_control.exit.i.if.end_crit_edge:        ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12.i:                                      ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %22 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport.i, align 4
  %transport13.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %transport13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %transport13.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12.i, %sctp_make_control.exit.i.if.end_crit_edge
  %25 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.sctp_init_cause.exit_crit_edge

if.end.sctp_init_cause.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i)
  %cmp.i14 = icmp slt i32 %sub.ptr.sub.i.i, 8
  br i1 %cmp.i14, label %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, label %if.end.i

skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

if.end.i:                                         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %36 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef %sub.i.i) #11
  %37 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %38 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %39, i32 noundef 4) #11
  %40 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 9, ptr %call.i19.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i, i32 2
  %41 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 8, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %42 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %42, 4
  %43 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %46 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %chunk_end.i.i, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %subh.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i19.i.i, ptr %subh.i, align 4
  br label %sctp_init_cause.exit

sctp_init_cause.exit:                             ; preds = %if.end.i, %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, %if.end.sctp_init_cause.exit_crit_edge
  %chunk_hdr.i15 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %chunk_hdr.i15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chunk_hdr.i15, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %55 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %56 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i17 = tail call ptr @skb_put(ptr noundef %57, i32 noundef %sub.i) #11
  %58 = call ptr @memset(ptr %call.i.i17, i32 0, i32 %sub.i)
  %59 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %60, i32 noundef 4) #11
  %61 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %tsn, ptr %call.i19.i, align 1
  %62 = trunc i32 %and.i to i16
  %conv5.i = add i16 %62, 4
  %63 = ptrtoint ptr %chunk_hdr.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chunk_hdr.i15, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i, ptr %length7.i, align 2
  %66 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i18 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i.i18 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i18, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %70 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %chunk_end.i, align 4
  br i1 %tobool11.not.i, label %sctp_init_cause.exit.no_mem_crit_edge, label %if.then5

sctp_init_cause.exit.no_mem_crit_edge:            ; preds = %sctp_init_cause.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_mem

if.then5:                                         ; preds = %sctp_init_cause.exit
  call void @__sanitizer_cov_trace_pc() #13
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %71 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %transport, align 4
  %transport6 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 19
  %73 = ptrtoint ptr %transport6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %transport6, align 4
  br label %no_mem

no_mem:                                           ; preds = %if.then5, %sctp_init_cause.exit.no_mem_crit_edge, %if.end8.i.no_mem_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_abort_user(ptr noundef %asoc, ptr noundef %msg, i32 noundef %paylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %paylen, 4
  %tobool.not.i = icmp eq ptr %asoc, null
  %spec.select = zext i1 %tobool.not.i to i8
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 6, i8 noundef zeroext %spec.select, i32 noundef %add, i32 noundef 2592) #11
  %tobool.not.i.i35 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i35, label %entry.cleanup_crit_edge, label %if.then.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %entry
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %5 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i.i, %if.end.i.i.i.if.end_crit_edge
  %cond.i.i.i = phi ptr [ %11, %cond.true.i.i.i ], [ null, %if.end.i.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i.i, ptr %12, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %paylen)
  %tobool2.not = icmp eq i32 %paylen, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.end8.i

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %paylen, i32 noundef 3264) #14
  %tobool5.not = icmp eq ptr %call9.i, null
  br i1 %tobool5.not, label %if.end8.i.err_payload_crit_edge, label %if.end7

if.end8.i.err_payload_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_payload

if.end7:                                          ; preds = %if.end8.i
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %paylen)
  %cmp9.i.i.i.i = icmp slt i32 %paylen, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end7
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !58

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %paylen, i1 noundef zeroext false) #11
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call9.i, i32 noundef %paylen, ptr noundef %msg_iter.i) #11
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %paylen)
  %cmp.i.i37 = icmp eq i32 %retval.0.i.i.i, %paylen
  br i1 %cmp.i.i37, label %copy_from_iter.exit.i.i.if.end11_crit_edge, label %err_copy, !prof !58

copy_from_iter.exit.i.i.if.end11_crit_edge:       ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %copy_from_iter.exit.i.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %payload.0 = phi ptr [ null, %if.end.if.end11_crit_edge ], [ %call9.i, %copy_from_iter.exit.i.i.if.end11_crit_edge ]
  %18 = trunc i32 %paylen to i16
  %conv.i = add i16 %18, 4
  %19 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb2.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end11.skb_tailroom.exit.i_crit_edge

if.end11.skb_tailroom.exit.i_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 17
  %23 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end11.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end11.skb_tailroom.exit.i_crit_edge ]
  %conv1.i = zext i16 %conv.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv1.i)
  %cmp.i39 = icmp slt i32 %cond.i.i, %conv1.i
  br i1 %cmp.i39, label %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, label %if.end.i40

skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

if.end.i40:                                       ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %30 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %20, i32 noundef %sub.i.i) #11
  %31 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %32 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %33, i32 noundef 4) #11
  %34 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 12, ptr %call.i19.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i, i32 2
  %35 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %conv.i, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %36 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %36, 4
  %37 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %40 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %chunk_end.i.i, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %subh.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i19.i.i, ptr %subh.i, align 4
  br label %sctp_init_cause.exit

sctp_init_cause.exit:                             ; preds = %if.end.i40, %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %46 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %length.i, align 2
  %conv.i41 = zext i16 %49 to i32
  %add.i = add nuw nsw i32 %conv.i41, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i41
  %50 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i43 = tail call ptr @skb_put(ptr noundef %51, i32 noundef %sub.i) #11
  %52 = call ptr @memset(ptr %call.i.i43, i32 0, i32 %sub.i)
  %53 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %54, i32 noundef %paylen) #11
  %55 = call ptr @memcpy(ptr %call.i19.i, ptr %payload.0, i32 %paylen)
  %add4.i = add i32 %and.i, %paylen
  %conv5.i = trunc i32 %add4.i to i16
  %56 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv5.i, ptr %length7.i, align 2
  %59 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i44 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 16
  %61 = ptrtoint ptr %tail.i.i44 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i44, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %chunk_end.i, align 4
  br i1 %tobool2.not, label %sctp_init_cause.exit.cleanup_crit_edge, label %if.then15

sctp_init_cause.exit.cleanup_crit_edge:           ; preds = %sctp_init_cause.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %sctp_init_cause.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %payload.0) #11
  br label %cleanup

err_copy:                                         ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %err_payload

err_payload:                                      ; preds = %err_copy, %if.end8.i.err_payload_crit_edge
  %msg.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 18
  %64 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msg.i, align 4
  %tobool.not.i45 = icmp eq ptr %65, null
  br i1 %tobool.not.i45, label %err_payload.sctp_chunk_free.exit_crit_edge, label %if.then.i46

err_payload.sctp_chunk_free.exit_crit_edge:       ; preds = %err_payload
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_chunk_free.exit

if.then.i46:                                      ; preds = %err_payload
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sctp_datamsg_put(ptr noundef nonnull %65) #11
  br label %sctp_chunk_free.exit

sctp_chunk_free.exit:                             ; preds = %if.then.i46, %err_payload.sctp_chunk_free.exit_crit_edge
  tail call void @sctp_chunk_put(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %sctp_chunk_free.exit, %if.then15, %sctp_init_cause.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.then15 ], [ %call.i.i, %sctp_init_cause.exit.cleanup_crit_edge ], [ null, %sctp_chunk_free.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_chunk_free(ptr noundef %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 18
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sctp_datamsg_put(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sctp_chunk_put(ptr noundef %chunk)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_abort_violation(ptr noundef %asoc, ptr noundef readonly %chunk, ptr nocapture noundef readonly %payload, i32 noundef %paylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add2 = add i32 %paylen, 8
  %tobool.not.i = icmp eq ptr %asoc, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  %tobool2.not.i = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr.i, align 4
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %land.lhs.true4.i.if.end8.i_crit_edge, label %land.lhs.true4.i.if.else.i_crit_edge

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %land.lhs.true4.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %flags.0.i = phi i8 [ 0, %entry.if.end8.i_crit_edge ], [ 1, %if.else.i ], [ 0, %land.lhs.true4.i.if.end8.i_crit_edge ]
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 6, i8 noundef zeroext %flags.0.i, i32 noundef %add2, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.end_crit_edge, label %if.then.i.i

if.end8.i.end_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.then.i.i:                                      ; preds = %if.end8.i
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %8 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %9 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 75
  %10 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shkey.i.i.i, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %11) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.sctp_make_control.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.sctp_make_control.exit.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i.i.i, align 4
  br label %sctp_make_control.exit.i

sctp_make_control.exit.i:                         ; preds = %cond.true.i.i.i, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %15, %cond.true.i.i.i ], [ null, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.i.i.i, ptr %16, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %tobool11.not.i = icmp eq ptr %chunk, null
  br i1 %tobool11.not.i, label %sctp_make_control.exit.i.if.end_crit_edge, label %if.then12.i

sctp_make_control.exit.i.if.end_crit_edge:        ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12.i:                                      ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %22 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport.i, align 4
  %transport13.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %transport13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %transport13.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12.i, %sctp_make_control.exit.i.if.end_crit_edge
  %25 = trunc i32 %paylen to i16
  %conv.i = add i16 %25, 8
  %26 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb2.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end.skb_tailroom.exit.i_crit_edge

if.end.skb_tailroom.exit.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 17
  %30 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end.skb_tailroom.exit.i_crit_edge ]
  %conv1.i = zext i16 %conv.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv1.i)
  %cmp.i18 = icmp slt i32 %cond.i.i, %conv1.i
  br i1 %cmp.i18, label %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, label %if.end.i

skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

if.end.i:                                         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %37 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %27, i32 noundef %sub.i.i) #11
  %38 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %39 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %40, i32 noundef 4) #11
  %41 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 13, ptr %call.i19.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i, i32 2
  %42 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %conv.i, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %43 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %43, 4
  %44 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %47 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %51 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %chunk_end.i.i, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %subh.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i19.i.i, ptr %subh.i, align 4
  br label %sctp_init_cause.exit

sctp_init_cause.exit:                             ; preds = %if.end.i, %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %53 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chunk_hdr, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 2
  %conv = zext i8 %56 to i16
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %54, i32 0, i32 2
  %57 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %length, align 2
  %chunk_hdr.i19 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %59 = ptrtoint ptr %chunk_hdr.i19 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chunk_hdr.i19, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %length.i, align 2
  %conv.i20 = zext i16 %62 to i32
  %add.i = add nuw nsw i32 %conv.i20, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i20
  %63 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i22 = tail call ptr @skb_put(ptr noundef %64, i32 noundef %sub.i) #11
  %65 = call ptr @memset(ptr %call.i.i22, i32 0, i32 %sub.i)
  %66 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %67, i32 noundef %paylen) #11
  %68 = call ptr @memcpy(ptr %call.i19.i, ptr %payload, i32 %paylen)
  %add4.i = add i32 %and.i, %paylen
  %conv5.i = trunc i32 %add4.i to i16
  %69 = ptrtoint ptr %chunk_hdr.i19 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chunk_hdr.i19, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv5.i, ptr %length7.i, align 2
  %72 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %tail.i.i23 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i23, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %chunk_end.i, align 4
  %77 = load ptr, ptr %chunk_hdr.i19, align 4
  %length.i25 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %length.i25 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %length.i25, align 2
  %call.i = tail call ptr @skb_put(ptr noundef %73, i32 noundef 4) #11
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %conv, ptr %call.i, align 1
  %phdr.sroa.5.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 2
  %81 = ptrtoint ptr %phdr.sroa.5.0.call.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %58, ptr %phdr.sroa.5.0.call.i.sroa_idx, align 1
  %conv1.i28 = add i16 %79, 4
  %82 = ptrtoint ptr %chunk_hdr.i19 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chunk_hdr.i19, align 4
  %length3.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %length3.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv1.i28, ptr %length3.i, align 2
  %85 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i29 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 16
  %87 = ptrtoint ptr %tail.i.i29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i29, align 8
  %89 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %chunk_end.i, align 4
  br label %end

end:                                              ; preds = %sctp_init_cause.exit, %if.end8.i.end_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_violation_paramlen(ptr noundef %asoc, ptr noundef readonly %chunk, ptr noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %asoc, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  %tobool2.not.i = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr.i, align 4
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %land.lhs.true4.i.if.end8.i_crit_edge, label %land.lhs.true4.i.if.else.i_crit_edge

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %land.lhs.true4.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %flags.0.i = phi i8 [ 0, %entry.if.end8.i_crit_edge ], [ 1, %if.else.i ], [ 0, %land.lhs.true4.i.if.end8.i_crit_edge ]
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 6, i8 noundef zeroext %flags.0.i, i32 noundef 52, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.nodata_crit_edge, label %if.then.i.i

if.end8.i.nodata_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i.i:                                      ; preds = %if.end8.i
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %8 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %9 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 75
  %10 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shkey.i.i.i, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %11) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.sctp_make_control.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.sctp_make_control.exit.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i.i.i, align 4
  br label %sctp_make_control.exit.i

sctp_make_control.exit.i:                         ; preds = %cond.true.i.i.i, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %15, %cond.true.i.i.i ], [ null, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.i.i.i, ptr %16, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %tobool11.not.i = icmp eq ptr %chunk, null
  br i1 %tobool11.not.i, label %sctp_make_control.exit.i.if.end_crit_edge, label %if.then12.i

sctp_make_control.exit.i.if.end_crit_edge:        ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12.i:                                      ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %22 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport.i, align 4
  %transport13.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %transport13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %transport13.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12.i, %sctp_make_control.exit.i.if.end_crit_edge
  %25 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.sctp_init_cause.exit_crit_edge

if.end.sctp_init_cause.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %sub.ptr.sub.i.i)
  %cmp.i9 = icmp slt i32 %sub.ptr.sub.i.i, 52
  br i1 %cmp.i9, label %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, label %if.end.i

skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

if.end.i:                                         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %36 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef %sub.i.i) #11
  %37 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %38 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %39, i32 noundef 4) #11
  %40 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 13, ptr %call.i19.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i, i32 2
  %41 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 52, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %42 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %42, 4
  %43 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %46 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %chunk_end.i.i, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %subh.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i19.i.i, ptr %subh.i, align 4
  br label %sctp_init_cause.exit

sctp_init_cause.exit:                             ; preds = %if.end.i, %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, %if.end.sctp_init_cause.exit_crit_edge
  %chunk_hdr.i10 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %chunk_hdr.i10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chunk_hdr.i10, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %55 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %56 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i12 = tail call ptr @skb_put(ptr noundef %57, i32 noundef %sub.i) #11
  %58 = call ptr @memset(ptr %call.i.i12, i32 0, i32 %sub.i)
  %59 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %60, i32 noundef 44) #11
  %61 = call ptr @memcpy(ptr %call.i19.i, ptr @sctp_make_violation_paramlen.error, i32 44)
  %62 = trunc i32 %and.i to i16
  %conv5.i = add i16 %62, 44
  %63 = ptrtoint ptr %chunk_hdr.i10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chunk_hdr.i10, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i, ptr %length7.i, align 2
  %66 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i13 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i.i13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i13, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %70 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %chunk_end.i, align 4
  %71 = load ptr, ptr %chunk_hdr.i10, align 4
  %length.i15 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %length.i15 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %length.i15, align 2
  %call.i = tail call ptr @skb_put(ptr noundef %67, i32 noundef 4) #11
  %tobool.not.i17 = icmp eq ptr %param, null
  br i1 %tobool.not.i17, label %sctp_init_cause.exit.sctp_addto_param.exit_crit_edge, label %if.then.i18

sctp_init_cause.exit.sctp_addto_param.exit_crit_edge: ; preds = %sctp_init_cause.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_addto_param.exit

if.then.i18:                                      ; preds = %sctp_init_cause.exit
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %param to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %param, align 1
  br label %sctp_addto_param.exit

sctp_addto_param.exit:                            ; preds = %if.then.i18, %sctp_init_cause.exit.sctp_addto_param.exit_crit_edge
  %storemerge = phi i32 [ %75, %if.then.i18 ], [ 0, %sctp_init_cause.exit.sctp_addto_param.exit_crit_edge ]
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %storemerge, ptr %call.i, align 1
  %conv1.i = add i16 %73, 4
  %77 = ptrtoint ptr %chunk_hdr.i10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %chunk_hdr.i10, align 4
  %length3.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %length3.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv1.i, ptr %length3.i, align 2
  %80 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 16
  %82 = ptrtoint ptr %tail.i.i20 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i20, align 8
  %84 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %chunk_end.i, align 4
  br label %nodata

nodata:                                           ; preds = %sctp_addto_param.exit, %if.end8.i.nodata_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_violation_max_retrans(ptr noundef %asoc, ptr noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %asoc, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  %tobool2.not.i = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr.i, align 4
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %land.lhs.true4.i.if.end8.i_crit_edge, label %land.lhs.true4.i.if.else.i_crit_edge

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %land.lhs.true4.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %flags.0.i = phi i8 [ 0, %entry.if.end8.i_crit_edge ], [ 1, %if.else.i ], [ 0, %land.lhs.true4.i.if.end8.i_crit_edge ]
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 6, i8 noundef zeroext %flags.0.i, i32 noundef 47, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.nodata_crit_edge, label %if.then.i.i

if.end8.i.nodata_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i.i:                                      ; preds = %if.end8.i
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %8 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %9 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 75
  %10 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shkey.i.i.i, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %11) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.sctp_make_control.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.sctp_make_control.exit.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i.i.i, align 4
  br label %sctp_make_control.exit.i

sctp_make_control.exit.i:                         ; preds = %cond.true.i.i.i, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %15, %cond.true.i.i.i ], [ null, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.i.i.i, ptr %16, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %tobool11.not.i = icmp eq ptr %chunk, null
  br i1 %tobool11.not.i, label %sctp_make_control.exit.i.if.end_crit_edge, label %if.then12.i

sctp_make_control.exit.i.if.end_crit_edge:        ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12.i:                                      ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %22 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport.i, align 4
  %transport13.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %transport13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %transport13.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12.i, %sctp_make_control.exit.i.if.end_crit_edge
  %25 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.sctp_init_cause.exit_crit_edge

if.end.sctp_init_cause.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub.ptr.sub.i.i)
  %cmp.i7 = icmp slt i32 %sub.ptr.sub.i.i, 47
  br i1 %cmp.i7, label %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, label %if.end.i

skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

if.end.i:                                         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %36 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef %sub.i.i) #11
  %37 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %38 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %39, i32 noundef 4) #11
  %40 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 13, ptr %call.i19.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i, i32 2
  %41 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 47, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %42 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %42, 4
  %43 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %46 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %chunk_end.i.i, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %subh.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i19.i.i, ptr %subh.i, align 4
  br label %sctp_init_cause.exit

sctp_init_cause.exit:                             ; preds = %if.end.i, %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, %if.end.sctp_init_cause.exit_crit_edge
  %chunk_hdr.i8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %chunk_hdr.i8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chunk_hdr.i8, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %55 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %56 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i10 = tail call ptr @skb_put(ptr noundef %57, i32 noundef %sub.i) #11
  %58 = call ptr @memset(ptr %call.i.i10, i32 0, i32 %sub.i)
  %59 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %60, i32 noundef 43) #11
  %61 = call ptr @memcpy(ptr %call.i19.i, ptr @sctp_make_violation_max_retrans.error, i32 43)
  %62 = trunc i32 %and.i to i16
  %conv5.i = add i16 %62, 43
  %63 = ptrtoint ptr %chunk_hdr.i8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chunk_hdr.i8, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i, ptr %length7.i, align 2
  %66 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i11 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i.i11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i11, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %70 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %chunk_end.i, align 4
  br label %nodata

nodata:                                           ; preds = %sctp_init_cause.exit, %if.end8.i.nodata_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_new_encap_port(ptr noundef %asoc, ptr noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %asoc, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  %tobool2.not.i = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr.i, align 4
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %land.lhs.true4.i.if.end8.i_crit_edge, label %land.lhs.true4.i.if.else.i_crit_edge

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %land.lhs.true4.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %flags.0.i = phi i8 [ 0, %entry.if.end8.i_crit_edge ], [ 1, %if.else.i ], [ 0, %land.lhs.true4.i.if.end8.i_crit_edge ]
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 6, i8 noundef zeroext %flags.0.i, i32 noundef 8, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.nodata_crit_edge, label %if.then.i.i

if.end8.i.nodata_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i.i:                                      ; preds = %if.end8.i
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %8 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %9 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 75
  %10 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shkey.i.i.i, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %11) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.sctp_make_control.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.sctp_make_control.exit.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i.i.i, align 4
  br label %sctp_make_control.exit.i

sctp_make_control.exit.i:                         ; preds = %cond.true.i.i.i, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %15, %cond.true.i.i.i ], [ null, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.i.i.i, ptr %16, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %tobool11.not.i = icmp eq ptr %chunk, null
  br i1 %tobool11.not.i, label %sctp_make_control.exit.i.if.end_crit_edge, label %if.then12.i

sctp_make_control.exit.i.if.end_crit_edge:        ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12.i:                                      ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %22 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport.i, align 4
  %transport13.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %transport13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %transport13.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12.i, %sctp_make_control.exit.i.if.end_crit_edge
  %25 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.sctp_init_cause.exit_crit_edge

if.end.sctp_init_cause.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i)
  %cmp.i10 = icmp slt i32 %sub.ptr.sub.i.i, 8
  br i1 %cmp.i10, label %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, label %if.end.i

skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

if.end.i:                                         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %36 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef %sub.i.i) #11
  %37 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %38 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %39, i32 noundef 4) #11
  %40 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 14, ptr %call.i19.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i, i32 2
  %41 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 8, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %42 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %42, 4
  %43 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %46 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %chunk_end.i.i, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %subh.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i19.i.i, ptr %subh.i, align 4
  br label %sctp_init_cause.exit

sctp_init_cause.exit:                             ; preds = %if.end.i, %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, %if.end.sctp_init_cause.exit_crit_edge
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %52 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb, align 4
  %encap_port = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 3, i32 32
  %54 = ptrtoint ptr %encap_port to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %encap_port, align 8
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %56 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %transport, align 4
  %encap_port3 = getelementptr inbounds %struct.sctp_transport, ptr %57, i32 0, i32 28
  %58 = ptrtoint ptr %encap_port3 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %encap_port3, align 8
  %chunk_hdr.i11 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %60 = ptrtoint ptr %chunk_hdr.i11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chunk_hdr.i11, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %63 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %64 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i13 = tail call ptr @skb_put(ptr noundef %65, i32 noundef %sub.i) #11
  %66 = call ptr @memset(ptr %call.i.i13, i32 0, i32 %sub.i)
  %67 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %68, i32 noundef 4) #11
  %69 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %55, ptr %call.i19.i, align 1
  %nep.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %70 = ptrtoint ptr %nep.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %59, ptr %nep.sroa.5.0.call.i19.i.sroa_idx, align 1
  %71 = trunc i32 %and.i to i16
  %conv5.i = add i16 %71, 4
  %72 = ptrtoint ptr %chunk_hdr.i11 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chunk_hdr.i11, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv5.i, ptr %length7.i, align 2
  %75 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %tail.i.i14 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i.i14, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %79 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %chunk_end.i, align 4
  br label %nodata

nodata:                                           ; preds = %sctp_init_cause.exit, %if.end8.i.nodata_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_heartbeat(ptr noundef %asoc, ptr noundef %transport, i32 noundef %probe_size) local_unnamed_addr #0 align 64 {
entry:
  %hbinfo.sroa.6 = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %hbinfo.sroa.6)
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 56, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nodata_crit_edge, label %if.then.i

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 6
  %18 = call ptr @memcpy(ptr %hbinfo.sroa.6, ptr %ipaddr, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %hb_nonce = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 49
  %20 = ptrtoint ptr %hb_nonce to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %hb_nonce, align 8
  %transport5 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %22 = ptrtoint ptr %transport5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transport, ptr %transport5, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %23 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %26 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %27 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %28, i32 noundef %sub.i) #11
  %29 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %30 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %31, i32 noundef 56) #11
  %32 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 1, ptr %call.i19.i, align 1
  %hbinfo.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %33 = ptrtoint ptr %hbinfo.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 56, ptr %hbinfo.sroa.5.0.call.i19.i.sroa_idx, align 1
  %hbinfo.sroa.6.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %34 = call ptr @memcpy(ptr %hbinfo.sroa.6.0.call.i19.i.sroa_idx, ptr %hbinfo.sroa.6, i32 28)
  %hbinfo.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 32
  %35 = ptrtoint ptr %hbinfo.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %19, ptr %hbinfo.sroa.7.0.call.i19.i.sroa_idx, align 1
  %hbinfo.sroa.8.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 36
  %36 = ptrtoint ptr %hbinfo.sroa.8.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %hbinfo.sroa.8.0.call.i19.i.sroa_idx, align 1
  %hbinfo.sroa.817.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 40
  %37 = ptrtoint ptr %hbinfo.sroa.817.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %21, ptr %hbinfo.sroa.817.0.call.i19.i.sroa_idx, align 1
  %hbinfo.sroa.9.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 48
  %38 = ptrtoint ptr %hbinfo.sroa.9.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %probe_size, ptr %hbinfo.sroa.9.0.call.i19.i.sroa_idx, align 1
  %hbinfo.sroa.10.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 52
  %39 = ptrtoint ptr %hbinfo.sroa.10.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %hbinfo.sroa.10.0.call.i19.i.sroa_idx, align 1
  %40 = trunc i32 %and.i to i16
  %conv5.i = add i16 %40, 56
  %41 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv5.i, ptr %length7.i, align 2
  %44 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %48 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %49 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i19.i, ptr %subh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %probe_size)
  %tobool7.not = icmp eq i32 %probe_size, 0
  %50 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load = load i16, ptr %auth.i.i, align 4
  %bf.shl = select i1 %tobool7.not, i16 0, i16 16
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %auth.i.i, align 4
  br label %nodata

nodata:                                           ; preds = %if.end, %entry.nodata_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %hbinfo.sroa.6)
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_heartbeat_ack(ptr noundef %asoc, ptr noundef readonly %chunk, ptr nocapture noundef readonly %payload, i32 noundef %paylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 5, i8 noundef zeroext 0, i32 noundef %paylen, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nodata_crit_edge, label %if.then.i

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %22 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %23, i32 noundef %sub.i) #11
  %24 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %25 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef %paylen) #11
  %27 = call ptr @memcpy(ptr %call.i19.i, ptr %payload, i32 %paylen)
  %add4.i = add i32 %and.i, %paylen
  %conv5.i = trunc i32 %add4.i to i16
  %28 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv5.i, ptr %length7.i, align 2
  %31 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %36 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i19.i, ptr %subh, align 4
  %tobool3.not = icmp eq ptr %chunk, null
  br i1 %tobool3.not, label %if.end.nodata_crit_edge, label %if.then4

if.end.nodata_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %37 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %transport, align 4
  %transport5 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 19
  %39 = ptrtoint ptr %transport5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %transport5, align 4
  br label %nodata

nodata:                                           ; preds = %if.then4, %if.end.nodata_crit_edge, %entry.nodata_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_pad(ptr noundef %asoc, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -124, i8 noundef zeroext 0, i32 noundef %len, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %18 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb2.i.i, align 4
  %call.i16 = tail call ptr @skb_put(ptr noundef %19, i32 noundef %len) #11
  %20 = call ptr @memset(ptr %call.i16, i32 0, i32 %len)
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length, align 2
  %25 = trunc i32 %len to i16
  %conv3 = add i16 %24, %25
  store i16 %conv3, ptr %length, align 2
  %26 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb2.i.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i, align 8
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %chunk_end to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %chunk_end, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_op_error(ptr noundef %asoc, ptr noundef readonly %chunk, i16 noundef zeroext %cause_code, ptr nocapture noundef readonly %payload, i32 noundef %paylen, i32 noundef %reserve_tail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %reserve_tail, %paylen
  %add.i = add i32 %add, 4
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 9, i8 noundef zeroext 0, i32 noundef %add.i, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.nodata_crit_edge, label %if.then.i.i

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then.i.i:                                      ; preds = %entry
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %5 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.sctp_make_control.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.sctp_make_control.exit.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i.i, align 4
  br label %sctp_make_control.exit.i

sctp_make_control.exit.i:                         ; preds = %cond.true.i.i.i, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %11, %cond.true.i.i.i ], [ null, %if.end.i.i.i.sctp_make_control.exit.i_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i.i, ptr %12, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %tobool2.not.i = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i, label %sctp_make_control.exit.i.if.end_crit_edge, label %if.then3.i

sctp_make_control.exit.i.if.end_crit_edge:        ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3.i:                                       ; preds = %sctp_make_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %18 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transport.i, align 4
  %transport4.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %transport4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %transport4.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %sctp_make_control.exit.i.if.end_crit_edge
  %21 = trunc i32 %add to i16
  %conv.i = add i16 %21, 4
  %22 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb2.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end.skb_tailroom.exit.i_crit_edge

if.end.skb_tailroom.exit.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end.skb_tailroom.exit.i_crit_edge ]
  %conv1.i = zext i16 %conv.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv1.i)
  %cmp.i = icmp slt i32 %cond.i.i, %conv1.i
  br i1 %cmp.i, label %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge, label %if.end.i

skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit

if.end.i:                                         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %23, i32 noundef %sub.i.i) #11
  %34 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %35 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %36, i32 noundef 4) #11
  %37 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %cause_code, ptr %call.i19.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i, i32 2
  %38 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv.i, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %39 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %39, 4
  %40 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %43 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %47 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %chunk_end.i.i, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %subh.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i19.i.i, ptr %subh.i, align 4
  br label %sctp_init_cause.exit

sctp_init_cause.exit:                             ; preds = %if.end.i, %skb_tailroom.exit.i.sctp_init_cause.exit_crit_edge
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %49 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %length.i, align 2
  %conv.i18 = zext i16 %52 to i32
  %add.i19 = add nuw nsw i32 %conv.i18, 3
  %and.i = and i32 %add.i19, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i18
  %53 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i21 = tail call ptr @skb_put(ptr noundef %54, i32 noundef %sub.i) #11
  %55 = call ptr @memset(ptr %call.i.i21, i32 0, i32 %sub.i)
  %56 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %57, i32 noundef %paylen) #11
  %58 = call ptr @memcpy(ptr %call.i19.i, ptr %payload, i32 %paylen)
  %add4.i = add i32 %and.i, %paylen
  %conv5.i = trunc i32 %add4.i to i16
  %59 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv5.i, ptr %length7.i, align 2
  %62 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i22 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i.i22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i22, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %66 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %chunk_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reserve_tail)
  %tobool5.not = icmp eq i32 %reserve_tail, 0
  br i1 %tobool5.not, label %sctp_init_cause.exit.nodata_crit_edge, label %if.then6

sctp_init_cause.exit.nodata_crit_edge:            ; preds = %sctp_init_cause.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.then6:                                         ; preds = %sctp_init_cause.exit
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i24 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %length.i24 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %length.i24, align 2
  %call.i = tail call ptr @skb_put(ptr noundef %63, i32 noundef %reserve_tail) #11
  %71 = call ptr @memset(ptr %call.i, i32 0, i32 %reserve_tail)
  %72 = trunc i32 %reserve_tail to i16
  %conv1.i26 = add i16 %70, %72
  %73 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chunk_hdr.i, align 4
  %length3.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %length3.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv1.i26, ptr %length3.i, align 2
  %76 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i27 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %tail.i.i27 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i.i27, align 8
  %80 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %chunk_end.i, align 4
  br label %nodata

nodata:                                           ; preds = %if.then6, %sctp_init_cause.exit.nodata_crit_edge, %entry.nodata_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_auth(ptr noundef %asoc, i16 noundef zeroext %key_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sctp_auth_asoc_get_hmac(ptr noundef %asoc) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !59

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hmac_len = getelementptr inbounds %struct.sctp_hmac, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %hmac_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hmac_len, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 4
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 15, i8 noundef zeroext 0, i32 noundef %add, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %6 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %7 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 75
  %8 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shkey.i.i, align 8
  %10 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %9) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end8_crit_edge, label %cond.true.i.i

if.end.i.i.if.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk.i.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %cond.true.i.i, %if.end.i.i.if.end8_crit_edge
  %cond.i.i = phi ptr [ %13, %cond.true.i.i ], [ null, %if.end.i.i.if.end8_crit_edge ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond.i.i, ptr %14, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %25 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %26 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %27, i32 noundef %sub.i) #11
  %28 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %29 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %30, i32 noundef 4) #11
  %31 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %key_id, ptr %call.i19.i, align 1
  %auth_hdr.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %32 = ptrtoint ptr %auth_hdr.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %21, ptr %auth_hdr.sroa.5.0.call.i19.i.sroa_idx, align 1
  %33 = trunc i32 %and.i to i16
  %conv5.i = add i16 %33, 4
  %34 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i, ptr %length7.i, align 2
  %37 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %41 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %42 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i19.i, ptr %subh, align 4
  %43 = ptrtoint ptr %hmac_len to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hmac_len, align 4
  %conv12 = zext i16 %44 to i32
  %call.i38 = tail call ptr @skb_put(ptr noundef %38, i32 noundef %conv12) #11
  %45 = call ptr @memset(ptr %call.i38, i32 0, i32 %conv12)
  %46 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chunk_hdr.i, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %length, align 2
  %50 = ptrtoint ptr %hmac_len to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hmac_len, align 4
  %add17 = add i16 %51, %49
  store i16 %add17, ptr %length, align 2
  %52 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb2.i.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i, align 8
  %56 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %chunk_end.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_auth_asoc_get_hmac(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_chunkify(ptr noundef %skb, ptr noundef %asoc, ptr noundef readnone %sk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sctp_chunk_cachep to i32))
  %0 = load ptr, ptr @sctp_chunk_cachep, align 4
  %or.i = or i32 %gfp, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or.i) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.nodata_crit_edge, label %if.end

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %sk, null
  br i1 %tobool2.not, label %do.body, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_chunkify.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_chunkify, %if.then8)) #11
          to label %if.end10 [label %if.then8], !srcloc !57

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_chunkify.__UNIQUE_ID_ddebug565, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %skb) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %if.end.if.end10_crit_edge
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call.i, ptr %call.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %prev.i, align 4
  %skb11 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %skb11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %skb, ptr %skb11, align 8
  %asoc12 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %asoc12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %asoc, ptr %asoc12, align 4
  %singleton = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %5 = ptrtoint ptr %singleton to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %singleton, align 4
  %bf.set = and i16 %bf.load, -4100
  %bf.clear14 = or i16 %bf.set, 4096
  store i16 %bf.clear14, ptr %singleton, align 4
  %6 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %6, align 8
  %prev.i26 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev.i26, align 4
  %frag_list = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %frag_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %frag_list, ptr %frag_list, align 8
  %prev.i27 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %frag_list, ptr %prev.i27, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_chunk, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_chunk, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_chunk, ptr nonnull @sctp_dbg_objcnt_chunk, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_chunk) #11, !srcloc !60
  %refcnt = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %refcnt, align 8
  br label %nodata

nodata:                                           ; preds = %if.end10, %entry.nodata_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sctp_init_addrs(ptr nocapture noundef writeonly %chunk, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dest) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %source = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 16
  %0 = call ptr @memcpy(ptr %source, ptr %src, i32 28)
  %dest1 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 17
  %1 = call ptr @memcpy(ptr %dest1, ptr %dest, i32 28)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @sctp_source(ptr noundef readonly %chunk) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 4
  %tobool.not = icmp eq ptr %1, null
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 6
  %source = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 16
  %retval.0 = select i1 %tobool.not, ptr %source, ptr %ipaddr
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_idata(ptr noundef %asoc, i8 noundef zeroext %flags, i32 noundef %paylen, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 64, i8 noundef zeroext %flags, i32 noundef %paylen, i32 noundef %gfp)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext %type, i8 noundef zeroext %flags, i32 noundef %paylen, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add2 = add i32 %paylen, 7
  %and = and i32 %add2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65532, i32 %and)
  %cmp = icmp sgt i32 %and, 65532
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef %and, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %type, ptr %call5, align 2
  %flags7 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %call5, i32 0, i32 1
  %1 = ptrtoint ptr %flags7 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %flags, ptr %flags7, align 1
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %call5, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4, ptr %length, align 2
  %tobool8.not = icmp eq ptr %asoc, null
  br i1 %tobool8.not, label %if.end4.cond.end_crit_edge, label %cond.true

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %sk9 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %3 = ptrtoint ptr %sk9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end4.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %if.end4.cond.end_crit_edge ]
  %call10 = tail call ptr @sctp_chunkify(ptr noundef nonnull %call.i, ptr noundef %asoc, ptr noundef %cond, i32 noundef %gfp)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %cleanup

if.end13:                                         ; preds = %cond.end
  %chunk_hdr14 = getelementptr inbounds %struct.sctp_chunk, ptr %call10, i32 0, i32 10
  %5 = ptrtoint ptr %chunk_hdr14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %chunk_hdr14, align 4
  %add.ptr = getelementptr i8, ptr %call5, i32 4
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %call10, i32 0, i32 9
  %6 = ptrtoint ptr %chunk_end to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %chunk_end, align 4
  %conv = zext i8 %type to i32
  %call15 = tail call i32 @sctp_auth_send_cid(i32 noundef %conv, ptr noundef %asoc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %auth = getelementptr inbounds %struct.sctp_chunk, ptr %call10, i32 0, i32 21
  %7 = ptrtoint ptr %auth to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %auth, align 4
  %bf.set = or i16 %bf.load, 64
  store i16 %bf.set, ptr %auth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.then17 ], [ %call10, %if.end13.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then12 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_datamsg_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_chunk_put(ptr noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !62
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !58

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !63
  %1 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %ch, align 4
  %cmp.i.not.i = icmp eq ptr %2, %ch
  br i1 %cmp.i.not.i, label %do.end7.i, label %do.body4.i, !prof !58

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/sm_make_chunk.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1500, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

do.end7.i:                                        ; preds = %if.then
  %3 = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 3
  %call.i.i12.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #11
  br i1 %call.i.i12.i, label %if.end.i.i.i, label %do.end7.i.sctp_chunk_destroy.exit_crit_edge

do.end7.i.sctp_chunk_destroy.exit_crit_edge:      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_chunk_destroy.exit

if.end.i.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %sctp_chunk_destroy.exit

sctp_chunk_destroy.exit:                          ; preds = %if.end.i.i.i, %do.end7.i.sctp_chunk_destroy.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i.i, align 4
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 5
  %12 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %13) #11
  %auth_chunk.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 20
  %14 = ptrtoint ptr %auth_chunk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %auth_chunk.i, align 4
  tail call void @consume_skb(ptr noundef %15) #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_chunk, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_chunk, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_chunk, ptr nonnull @sctp_dbg_objcnt_chunk, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_chunk) #11, !srcloc !65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sctp_chunk_cachep to i32))
  %17 = load ptr, ptr @sctp_chunk_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %ch) #11
  br label %if.end

if.end:                                           ; preds = %sctp_chunk_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_chunk_hold(ptr noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !66
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !59

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !58

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_user_addto_chunk(ptr nocapture noundef %chunk, i32 noundef %len, ptr noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %call = tail call ptr @skb_put(ptr noundef %1, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %entry
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !58

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__check_object_size(ptr noundef %call, i32 noundef %len, i1 noundef zeroext false) #11
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %call, i32 noundef %len, ptr noundef %from) #11
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %len)
  %cmp.i = icmp eq i32 %retval.0.i.i, %len
  br i1 %cmp.i, label %if.end, label %copy_from_iter_full.exit, !prof !58

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_revert(ptr noundef %from, i32 noundef %retval.0.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %2 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 2
  %6 = trunc i32 %len to i16
  %conv2 = add i16 %5, %6
  store i16 %conv2, ptr %length, align 2
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i, align 8
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 9
  %11 = ptrtoint ptr %chunk_end to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %chunk_end, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %copy_from_iter_full.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %copy_from_iter_full.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_chunk_assign_ssn(ptr nocapture noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %has_ssn = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 21
  %0 = ptrtoint ptr %has_ssn to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %has_ssn, align 4
  %1 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %2 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc, align 4
  %stream2 = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 60
  %msg3 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 18
  %4 = ptrtoint ptr %msg3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn45 = load ptr, ptr %5, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %5
  br i1 %cmp.not46, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %7 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subh, align 4
  %stream1 = getelementptr inbounds %struct.sctp_datahdr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stream1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %stream1, align 4
  %conv.i = zext i16 %10 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %.pn47 = phi ptr [ %.pn45, %for.body.lr.ph ], [ %.pn, %if.end16.for.body_crit_edge ]
  %chunk_hdr = getelementptr i8, ptr %.pn47, i32 28
  %11 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chunk_hdr, align 4
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else:                                          ; preds = %for.body
  %and10 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %call1.i44 = tail call ptr @__genradix_ptr(ptr noundef %stream2, i32 noundef %mul17.i.i) #11
  %15 = ptrtoint ptr %call1.i44 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %call1.i44, align 4
  br i1 %tobool11.not, label %if.else.if.end16_crit_edge, label %if.then12

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i16 %16, 1
  %17 = ptrtoint ptr %call1.i44 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %inc, ptr %call1.i44, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %ssn.0 = phi i16 [ %16, %if.then12 ], [ 0, %for.body.if.end16_crit_edge ], [ %16, %if.else.if.end16_crit_edge ]
  %subh17 = getelementptr i8, ptr %.pn47, i32 20
  %18 = ptrtoint ptr %subh17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subh17, align 4
  %ssn18 = getelementptr inbounds %struct.sctp_datahdr, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ssn18 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %ssn.0, ptr %ssn18, align 2
  %has_ssn19 = getelementptr i8, ptr %.pn47, i32 148
  %21 = ptrtoint ptr %has_ssn19 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load20 = load i16, ptr %has_ssn19, align 4
  %bf.set = or i16 %bf.load20, 8192
  store i16 %bf.set, ptr %has_ssn19, align 4
  %22 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %5
  br i1 %cmp.not, label %if.end16.cleanup_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_chunk_assign_tsn(ptr nocapture noundef %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %has_tsn = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 21
  %0 = ptrtoint ptr %has_tsn to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %has_tsn, align 4
  %1 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %2 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc, align 4
  %call = tail call i32 @sctp_association_get_next_tsn(ptr noundef %3) #11
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %4 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subh, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %5, align 4
  %7 = ptrtoint ptr %has_tsn to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load2 = load i16, ptr %has_tsn, align 4
  %bf.set = or i16 %bf.load2, 16384
  store i16 %bf.set, ptr %has_tsn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_association_get_next_tsn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_temp_asoc(ptr noundef %ep, ptr noundef %chunk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %0 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 6
  %source.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 16
  %retval.0.i = select i1 %tobool.not.i, ptr %source.i, ptr %ipaddr.i
  %call1 = tail call i32 @sctp_scope(ptr noundef %retval.0.i) #11
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %call2 = tail call ptr @sctp_association_new(ptr noundef %ep, ptr noundef %3, i32 noundef %call1, i32 noundef %gfp) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.nodata_crit_edge, label %if.end

entry.nodata_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nodata

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %temp = getelementptr inbounds %struct.sctp_association, ptr %call2, i32 0, i32 78
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %temp, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %temp, align 8
  %skb3 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %5 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb3, align 4
  %af = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 28
  %7 = ptrtoint ptr %af to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %af, align 4
  %from_skb = getelementptr inbounds %struct.sctp_af, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %from_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %from_skb, align 4
  %peer_addr = getelementptr inbounds %struct.sctp_association, ptr %call2, i32 0, i32 4, i32 8
  tail call void %10(ptr noundef %peer_addr, ptr noundef %6, i32 noundef 1) #11
  br label %nodata

nodata:                                           ; preds = %if.end, %entry.nodata_crit_edge
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_scope(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_association_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_unpack_cookie(ptr noundef %ep, ptr noundef readnone %asoc, ptr noundef %chunk, i32 noundef %gfp, ptr nocapture noundef writeonly %error, ptr nocapture noundef writeonly %errp) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skb2 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %0 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb2, align 4
  %digest3 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %digest3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %digest3, align 4
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %4 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 2
  %conv = zext i16 %7 to i32
  %sub = add nsw i32 %conv, -40
  call void @__sanitizer_cov_trace_const_cmp2(i16 187, i16 %7)
  %cmp = icmp ugt i16 %7, 187
  %8 = and i32 %sub, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end10, label %malformed

if.end10:                                         ; preds = %entry
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %9 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subh, align 4
  %c = getelementptr inbounds %struct.sctp_signed_cookie, ptr %10, i32 0, i32 2
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %11 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk, align 4
  %hmac = getelementptr inbounds %struct.sctp_sock, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %hmac to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hmac, align 8
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.end10.no_hmac_crit_edge, label %if.end13

if.end10.no_hmac_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_hmac

if.end13:                                         ; preds = %if.end10
  %secret_key = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 4
  %call18 = tail call i32 @crypto_shash_setkey(ptr noundef nonnull %14, ptr noundef %secret_key, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cond.end, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end:                                         ; preds = %if.end13
  %call20 = tail call i32 @crypto_shash_tfm_digest(ptr noundef nonnull %14, ptr noundef %c, i32 noundef %sub, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.cont, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1004, ptr %error, align 4
  br label %cleanup113

cleanup.cont:                                     ; preds = %cond.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %3, ptr noundef dereferenceable(20) %10, i32 20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool27.not = icmp eq i32 %bcmp, 0
  br i1 %tobool27.not, label %cleanup.cont.no_hmac_crit_edge, label %if.then28

cleanup.cont.no_hmac_crit_edge:                   ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_hmac

if.then28:                                        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1002, ptr %error, align 4
  br label %cleanup113

no_hmac:                                          ; preds = %cleanup.cont.no_hmac_crit_edge, %if.end10.no_hmac_crit_edge
  %sctp_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 11
  %17 = ptrtoint ptr %sctp_hdr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sctp_hdr, align 4
  %vtag = getelementptr inbounds %struct.sctphdr, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %vtag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vtag, align 4
  %21 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp30.not = icmp eq i32 %20, %22
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %no_hmac
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1006, ptr %error, align 4
  br label %cleanup113

if.end33:                                         ; preds = %no_hmac
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %18, align 4
  %sin_port = getelementptr inbounds %struct.sctp_signed_cookie, ptr %10, i32 0, i32 2, i32 8, i32 0, i32 1
  %26 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sin_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp37.not = icmp eq i16 %25, %27
  br i1 %cmp37.not, label %lor.lhs.false, label %if.end33.if.then44_crit_edge

if.end33.if.then44_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.end33
  %dest = getelementptr inbounds %struct.sctphdr, ptr %18, i32 0, i32 1
  %28 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dest, align 2
  %my_port = getelementptr inbounds %struct.sctp_signed_cookie, ptr %10, i32 0, i32 2, i32 9
  %30 = ptrtoint ptr %my_port to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %my_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp42.not = icmp eq i16 %29, %31
  br i1 %cmp42.not, label %if.end45, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.end33.if.then44_crit_edge
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1013, ptr %error, align 4
  br label %cleanup113

if.end45:                                         ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk, align 4
  %35 = getelementptr inbounds %struct.sock_common, ptr %34, i32 0, i32 13
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not = icmp eq i32 %38, 0
  br i1 %tobool.i.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %39, align 8
  br label %if.end52

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then49
  %kt.0 = phi i64 [ %41, %if.then49 ], [ %call.i, %if.else ]
  %tobool53.not = icmp eq ptr %asoc, null
  br i1 %tobool53.not, label %land.lhs.true, label %if.end52.if.end68_crit_edge

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end52
  %expiration = getelementptr inbounds %struct.sctp_signed_cookie, ptr %10, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %expiration to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %expiration, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %kt.0, i64 %43)
  %cmp.i.i = icmp sgt i64 %kt.0, %43
  br i1 %cmp.i.i, label %if.then56, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub58 = sub i64 %kt.0, %43
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub58)
  %cmp8.i.i = icmp slt i64 %sub58, 0
  %44 = tail call i64 @llvm.abs.i64(i64 %sub58, i1 false) #11
  %45 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %44, i32 0) #16, !srcloc !67
  %asmresult.i.i.i = extractvalue { i64, i32 } %45, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %45, 1
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %44, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #16, !srcloc !68
  %asmresult10.i.i.i = extractvalue { i64, i32 } %46, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %conv60 = trunc i64 %cond213.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #11
  %47 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv60, ptr %n, align 4
  %call61 = call ptr @sctp_make_op_error(ptr noundef null, ptr noundef %chunk, i16 noundef zeroext 3, ptr noundef nonnull %n, i32 noundef 4, i32 noundef 0)
  %48 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call61, ptr %errp, align 4
  %tobool62.not = icmp eq ptr %call61, null
  %. = select i1 %tobool62.not, i32 -1004, i32 -1003
  %49 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %., ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  br label %cleanup113

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %if.end52.if.end68_crit_edge
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %50 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %transport.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %51, i32 0, i32 6
  %source.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 16
  %retval.0.i = select i1 %tobool.not.i, ptr %source.i, ptr %ipaddr.i
  %call70 = tail call i32 @sctp_scope(ptr noundef %retval.0.i) #11
  %52 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk, align 4
  %call73 = tail call ptr @sctp_association_new(ptr noundef %ep, ptr noundef %53, i32 noundef %call70, i32 noundef %gfp) #11
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1004, ptr %error, align 4
  br label %cleanup113

if.end76:                                         ; preds = %if.end68
  %55 = ptrtoint ptr %sctp_hdr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sctp_hdr, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %56, align 4
  %port = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 5, i32 3
  %59 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %port, align 2
  %c79 = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 4
  %60 = call ptr @memcpy(ptr %c79, ptr %c, i32 144)
  %call80 = tail call i32 @sctp_assoc_set_bind_addr_from_cookie(ptr noundef nonnull %call73, ptr noundef %c, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then111, label %if.end84

if.end84:                                         ; preds = %if.end76
  %address_list = getelementptr inbounds %struct.sctp_ep_common, ptr %call73, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %address_list, align 4
  %cmp.i.not = icmp eq ptr %62, %address_list
  br i1 %cmp.i.not, label %if.then88, label %if.end84.if.end93_crit_edge

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %call73, i32 0, i32 6
  %dest91 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 17
  %call92 = tail call i32 @sctp_add_bind_addr(ptr noundef %bind_addr, ptr noundef %dest91, i32 noundef 28, i8 noundef zeroext 1, i32 noundef 2592) #11
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.end84.if.end93_crit_edge
  %initial_tsn = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 4, i32 7
  %63 = ptrtoint ptr %initial_tsn to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %initial_tsn, align 4
  %next_tsn = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 35
  %65 = ptrtoint ptr %next_tsn to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %next_tsn, align 8
  %sub96 = add i32 %64, -1
  %ctsn_ack_point = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 36
  %66 = ptrtoint ptr %ctsn_ack_point to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub96, ptr %ctsn_ack_point, align 4
  %addip_serial = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 69
  %67 = ptrtoint ptr %addip_serial to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %addip_serial, align 4
  %strreset_outseq = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 81
  %68 = ptrtoint ptr %strreset_outseq to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %64, ptr %strreset_outseq, align 4
  %adv_peer_ack_point = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 37
  %69 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub96, ptr %adv_peer_ack_point, align 8
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 4, i32 10
  %70 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %prsctp_capable, align 2
  %prsctp_capable105 = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 5, i32 12
  %72 = ptrtoint ptr %prsctp_capable105 to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load = load i16, ptr %prsctp_capable105, align 2
  %73 = and i8 %71, 1
  %bf.value = zext i8 %73 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 10
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %prsctp_capable105, align 2
  %adaptation_ind = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 4, i32 12
  %74 = ptrtoint ptr %adaptation_ind to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %adaptation_ind, align 8
  %adaptation_ind108 = getelementptr inbounds %struct.sctp_association, ptr %call73, i32 0, i32 5, i32 14
  %76 = ptrtoint ptr %adaptation_ind108 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %adaptation_ind108, align 8
  br label %cleanup113

if.then111:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1004, ptr %error, align 4
  tail call void @sctp_association_free(ptr noundef nonnull %call73) #11
  br label %cleanup113

malformed:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1005, ptr %error, align 4
  br label %cleanup113

cleanup113:                                       ; preds = %malformed, %if.then111, %if.end93, %if.then75, %if.then56, %if.then44, %if.then32, %if.then28, %cleanup
  %retval.0 = phi ptr [ %call73, %if.end93 ], [ null, %if.then111 ], [ null, %malformed ], [ null, %cleanup ], [ null, %if.then28 ], [ null, %if.then32 ], [ null, %if.then44 ], [ null, %if.then75 ], [ null, %if.then56 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_assoc_set_bind_addr_from_cookie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_add_bind_addr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_verify_init(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %ep, ptr noundef %asoc, i32 noundef %cid, ptr noundef %peer_init, ptr noundef %chunk, ptr nocapture noundef %errp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %init_hdr = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1
  %num_outbound_streams = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %num_outbound_streams to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_outbound_streams, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %num_inbound_streams = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %num_inbound_streams to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_inbound_streams, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp4 = icmp eq i16 %3, 0
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false6

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %init_hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %lor.lhs.false6.if.then_crit_edge, label %lor.lhs.false10

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %a_rwnd = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %a_rwnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a_rwnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %7)
  %cmp12 = icmp ult i32 %7, 1500
  br i1 %cmp12, label %lor.lhs.false10.if.then_crit_edge, label %if.end

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %errp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %errp, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.then2.i_crit_edge

if.then.if.then2.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.then.i:                                        ; preds = %if.then
  %call.i.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 9, i8 noundef zeroext 0, i32 noundef 4, i32 noundef 2592) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %asoc1.i.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %asoc1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asoc1.i.i.i.i, align 4
  %skb2.i.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %skb2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb2.i.i.i.i, align 4
  %auth.i.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i, i32 0, i32 21
  %14 = ptrtoint ptr %auth.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i.i.i = load i16, ptr %auth.i.i.i.i, align 4
  %15 = and i16 %bf.load.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i.i.i.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %11, i32 0, i32 75
  %16 = ptrtoint ptr %shkey.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shkey.i.i.i.i, align 8
  %18 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %18, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %17) #11
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.then.i.i.i.if.end.i.i.i.i_crit_edge
  %tobool3.not.i.i.i.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i.i.i.i, label %if.end.i.i.i.i.sctp_make_control.exit.i.i_crit_edge, label %cond.true.i.i.i.i

if.end.i.i.i.i.sctp_make_control.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i.i

cond.true.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %sk.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk.i.i.i.i, align 4
  br label %sctp_make_control.exit.i.i

sctp_make_control.exit.i.i:                       ; preds = %cond.true.i.i.i.i, %if.end.i.i.i.i.sctp_make_control.exit.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %21, %cond.true.i.i.i.i ], [ null, %if.end.i.i.i.i.sctp_make_control.exit.i.i_crit_edge ]
  %22 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cond.i.i.i.i, ptr %22, align 4
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %24 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i.i.i.i.i, align 4
  %destructor_arg.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %destructor_arg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i, ptr %destructor_arg.i.i.i.i, align 4
  %destructor.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %destructor.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i.i, label %sctp_make_control.exit.i.i.if.end.thread2.i_crit_edge, label %if.then3.i.i

sctp_make_control.exit.i.i.if.end.thread2.i_crit_edge: ; preds = %sctp_make_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread2.i

if.then3.i.i:                                     ; preds = %sctp_make_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %28 = ptrtoint ptr %transport.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transport.i.i, align 4
  %transport4.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %transport4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %transport4.i.i, align 4
  br label %if.end.thread2.i

if.end.thread2.i:                                 ; preds = %if.then3.i.i, %sctp_make_control.exit.i.i.if.end.thread2.i_crit_edge
  %31 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i, ptr %errp, align 4
  br label %if.then2.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %errp, align 4
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.thread2.i, %if.then.if.then2.i_crit_edge
  %33 = phi ptr [ %call.i.i.i, %if.end.thread2.i ], [ %9, %if.then.if.then2.i_crit_edge ]
  %skb.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_tailroom.exit.i.i:                            ; preds = %if.then2.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 4
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.cleanup_crit_edge, label %if.end.i.i

skb_tailroom.exit.i.i.cleanup_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %33, i32 0, i32 10
  %42 = ptrtoint ptr %chunk_hdr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chunk_hdr.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %length.i.i.i, align 2
  %conv.i.i.i = zext i16 %45 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %conv.i.i.i
  %call.i.i.i.i = tail call ptr @skb_put(ptr noundef %35, i32 noundef %sub.i.i.i) #11
  %46 = call ptr @memset(ptr %call.i.i.i.i, i32 0, i32 %sub.i.i.i)
  %47 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skb.i.i, align 4
  %call.i19.i.i.i = tail call ptr @skb_put(ptr noundef %48, i32 noundef 4) #11
  %49 = ptrtoint ptr %call.i19.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 7, ptr %call.i19.i.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i19.i.i.i, i32 2
  %50 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 4, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i.i, align 1
  %51 = trunc i32 %and.i.i.i to i16
  %conv5.i.i.i = add i16 %51, 4
  %52 = ptrtoint ptr %chunk_hdr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chunk_hdr.i.i.i, align 4
  %length7.i.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %length7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv5.i.i.i, ptr %length7.i.i.i, align 2
  %55 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i.i, align 8
  %chunk_end.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %33, i32 0, i32 9
  %59 = ptrtoint ptr %chunk_end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %chunk_end.i.i.i, align 4
  %subh.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %33, i32 0, i32 8
  %60 = ptrtoint ptr %subh.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i19.i.i.i, ptr %subh.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false10
  %params = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 1
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %peer_init, i32 0, i32 2
  %61 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %length, align 2
  %conv16 = zext i16 %62 to i32
  %add.ptr17 = getelementptr i8, ptr %peer_init, i32 %conv16
  %add.ptr15191 = getelementptr %struct.sctp_init_chunk, ptr %peer_init, i32 1, i32 1
  %cmp18.not192 = icmp ugt ptr %add.ptr15191, %add.ptr17
  br i1 %cmp18.not192, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %for.body.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %has_cookie.0.off0194 = phi i1 [ %spec.select, %for.body.land.lhs.true_crit_edge ], [ false, %if.end.land.lhs.true_crit_edge ]
  %param.sroa.0.0193 = phi ptr [ %add.ptr40, %for.body.land.lhs.true_crit_edge ], [ %params, %if.end.land.lhs.true_crit_edge ]
  %length24 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.0193, i32 0, i32 1
  %63 = ptrtoint ptr %length24 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %length24, align 2
  %conv25 = zext i16 %64 to i32
  %idx.neg = sub nsw i32 0, %conv25
  %add.ptr26 = getelementptr i8, ptr %add.ptr17, i32 %idx.neg
  %cmp27.not = icmp ule ptr %param.sroa.0.0193, %add.ptr26
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %64)
  %cmp31 = icmp ugt i16 %64, 3
  %or.cond = select i1 %cmp27.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.lhs.true
  %65 = ptrtoint ptr %param.sroa.0.0193 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %param.sroa.0.0193, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %66)
  %cmp34 = icmp eq i16 %66, 7
  %spec.select = select i1 %cmp34, i1 true, i1 %has_cookie.0.off0194
  %add = add nuw nsw i32 %conv25, 3
  %and = and i32 %add, 131068
  %add.ptr40 = getelementptr i8, ptr %param.sroa.0.0193, i32 %and
  %add.ptr15 = getelementptr i8, ptr %add.ptr40, i32 4
  %cmp18.not = icmp ugt ptr %add.ptr15, %add.ptr17
  br i1 %cmp18.not, label %for.body.for.end_crit_edge, label %for.body.land.lhs.true_crit_edge

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %param.sroa.0.0.lcssa = phi ptr [ %params, %if.end.for.end_crit_edge ], [ %add.ptr40, %for.body.for.end_crit_edge ], [ %param.sroa.0.0193, %land.lhs.true.for.end_crit_edge ]
  %has_cookie.0.off0.lcssa = phi i1 [ false, %if.end.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ], [ %has_cookie.0.off0194, %land.lhs.true.for.end_crit_edge ]
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 9
  %67 = ptrtoint ptr %chunk_end to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chunk_end, align 4
  %cmp41.not = icmp eq ptr %param.sroa.0.0.lcssa, %68
  br i1 %cmp41.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %for.end
  %69 = ptrtoint ptr %errp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %errp, align 4
  %tobool.not.i136 = icmp eq ptr %70, null
  br i1 %tobool.not.i136, label %if.then43.sctp_process_inv_paramlength.exit_crit_edge, label %if.then.i137

if.then43.sctp_process_inv_paramlength.exit_crit_edge: ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_process_inv_paramlength.exit

if.then.i137:                                     ; preds = %if.then43
  %msg.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %70, i32 0, i32 18
  %71 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %msg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %if.then.i137.sctp_chunk_free.exit.i_crit_edge, label %if.then.i.i

if.then.i137.sctp_chunk_free.exit.i_crit_edge:    ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_chunk_free.exit.i

if.then.i.i:                                      ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sctp_datamsg_put(ptr noundef nonnull %72) #11
  br label %sctp_chunk_free.exit.i

sctp_chunk_free.exit.i:                           ; preds = %if.then.i.i, %if.then.i137.sctp_chunk_free.exit.i_crit_edge
  tail call void @sctp_chunk_put(ptr noundef nonnull %70) #11
  br label %sctp_process_inv_paramlength.exit

sctp_process_inv_paramlength.exit:                ; preds = %sctp_chunk_free.exit.i, %if.then43.sctp_process_inv_paramlength.exit_crit_edge
  %call.i = tail call ptr @sctp_make_violation_paramlen(ptr noundef %asoc, ptr noundef %chunk, ptr noundef %param.sroa.0.0.lcssa) #11
  %73 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i, ptr %errp, align 4
  br label %cleanup

if.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cid)
  %cmp46 = icmp ne i32 %cid, 2
  %brmerge = select i1 %cmp46, i1 true, i1 %has_cookie.0.off0.lcssa
  br i1 %brmerge, label %for.cond55.preheader, label %if.then49

for.cond55.preheader:                             ; preds = %if.end45
  %74 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %length, align 2
  %conv60199 = zext i16 %75 to i32
  %add.ptr61200 = getelementptr i8, ptr %peer_init, i32 %conv60199
  %cmp62.not201 = icmp ugt ptr %add.ptr15191, %add.ptr61200
  br i1 %cmp62.not201, label %for.cond55.preheader.cleanup_crit_edge, label %for.cond55.preheader.land.lhs.true64_crit_edge

for.cond55.preheader.land.lhs.true64_crit_edge:   ; preds = %for.cond55.preheader
  br label %land.lhs.true64

for.cond55.preheader.cleanup_crit_edge:           ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49:                                        ; preds = %if.end45
  %76 = ptrtoint ptr %errp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %errp, align 4
  %tobool.not.i139 = icmp eq ptr %77, null
  br i1 %tobool.not.i139, label %if.then.i142, label %if.then49.if.then2.i168_crit_edge

if.then49.if.then2.i168_crit_edge:                ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i168

if.then.i142:                                     ; preds = %if.then49
  %call.i.i.i140 = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 9, i8 noundef zeroext 0, i32 noundef 12, i32 noundef 2592) #11
  %tobool.not.i.i.i141 = icmp eq ptr %call.i.i.i140, null
  br i1 %tobool.not.i.i.i141, label %if.end.i164, label %if.then.i.i.i148

if.then.i.i.i148:                                 ; preds = %if.then.i142
  %asoc1.i.i.i.i143 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i140, i32 0, i32 13
  %78 = ptrtoint ptr %asoc1.i.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %asoc1.i.i.i.i143, align 4
  %skb2.i.i.i.i144 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i140, i32 0, i32 5
  %80 = ptrtoint ptr %skb2.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skb2.i.i.i.i144, align 4
  %auth.i.i.i.i145 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i140, i32 0, i32 21
  %82 = ptrtoint ptr %auth.i.i.i.i145 to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load.i.i.i.i146 = load i16, ptr %auth.i.i.i.i145, align 4
  %83 = and i16 %bf.load.i.i.i.i146, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool.not.i.i.i.i147 = icmp eq i16 %83, 0
  br i1 %tobool.not.i.i.i.i147, label %if.then.i.i.i148.if.end.i.i.i.i152_crit_edge, label %if.then.i.i.i.i150

if.then.i.i.i148.if.end.i.i.i.i152_crit_edge:     ; preds = %if.then.i.i.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i152

if.then.i.i.i.i150:                               ; preds = %if.then.i.i.i148
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i.i149 = getelementptr inbounds %struct.sctp_association, ptr %79, i32 0, i32 75
  %84 = ptrtoint ptr %shkey.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %shkey.i.i.i.i149, align 8
  %86 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i140, i32 0, i32 6
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %85, ptr %86, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %85) #11
  br label %if.end.i.i.i.i152

if.end.i.i.i.i152:                                ; preds = %if.then.i.i.i.i150, %if.then.i.i.i148.if.end.i.i.i.i152_crit_edge
  %tobool3.not.i.i.i.i151 = icmp eq ptr %79, null
  br i1 %tobool3.not.i.i.i.i151, label %if.end.i.i.i.i152.sctp_make_control.exit.i.i160_crit_edge, label %cond.true.i.i.i.i154

if.end.i.i.i.i152.sctp_make_control.exit.i.i160_crit_edge: ; preds = %if.end.i.i.i.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i.i160

cond.true.i.i.i.i154:                             ; preds = %if.end.i.i.i.i152
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i.i153 = getelementptr inbounds %struct.sctp_ep_common, ptr %79, i32 0, i32 3
  %88 = ptrtoint ptr %sk.i.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sk.i.i.i.i153, align 4
  br label %sctp_make_control.exit.i.i160

sctp_make_control.exit.i.i160:                    ; preds = %cond.true.i.i.i.i154, %if.end.i.i.i.i152.sctp_make_control.exit.i.i160_crit_edge
  %cond.i.i.i.i155 = phi ptr [ %89, %cond.true.i.i.i.i154 ], [ null, %if.end.i.i.i.i152.sctp_make_control.exit.i.i160_crit_edge ]
  %90 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %cond.i.i.i.i155, ptr %90, align 4
  %end.i.i.i.i.i156 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 17
  %92 = ptrtoint ptr %end.i.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i.i.i.i.i156, align 4
  %destructor_arg.i.i.i.i157 = getelementptr inbounds %struct.skb_shared_info, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %destructor_arg.i.i.i.i157 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i.i.i140, ptr %destructor_arg.i.i.i.i157, align 4
  %destructor.i.i.i.i158 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 4, i32 0, i32 1
  %95 = ptrtoint ptr %destructor.i.i.i.i158 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i.i158, align 4
  %tobool2.not.i.i159 = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i.i159, label %sctp_make_control.exit.i.i160.if.end.thread5.i_crit_edge, label %if.then3.i.i163

sctp_make_control.exit.i.i160.if.end.thread5.i_crit_edge: ; preds = %sctp_make_control.exit.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread5.i

if.then3.i.i163:                                  ; preds = %sctp_make_control.exit.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i.i161 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %96 = ptrtoint ptr %transport.i.i161 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %transport.i.i161, align 4
  %transport4.i.i162 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i140, i32 0, i32 19
  %98 = ptrtoint ptr %transport4.i.i162 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %transport4.i.i162, align 4
  br label %if.end.thread5.i

if.end.thread5.i:                                 ; preds = %if.then3.i.i163, %sctp_make_control.exit.i.i160.if.end.thread5.i_crit_edge
  %99 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i.i.i140, ptr %errp, align 4
  br label %if.then2.i168

if.end.i164:                                      ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %errp, align 4
  br label %cleanup

if.then2.i168:                                    ; preds = %if.end.thread5.i, %if.then49.if.then2.i168_crit_edge
  %101 = phi ptr [ %call.i.i.i140, %if.end.thread5.i ], [ %77, %if.then49.if.then2.i168_crit_edge ]
  %skb.i.i165 = getelementptr inbounds %struct.sctp_chunk, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %skb.i.i165 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %skb.i.i165, align 4
  %data_len.i.i.i.i166 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %data_len.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_len.i.i.i.i166, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.i.not.i.i.i167 = icmp eq i32 %105, 0
  br i1 %tobool.i.not.i.i.i167, label %skb_tailroom.exit.i.i175, label %if.then2.i168.sctp_init_cause.exit.i_crit_edge

if.then2.i168.sctp_init_cause.exit.i_crit_edge:   ; preds = %if.then2.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit.i

skb_tailroom.exit.i.i175:                         ; preds = %if.then2.i168
  %end.i.i.i169 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 17
  %106 = ptrtoint ptr %end.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i.i.i169, align 4
  %tail.i.i.i170 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 16
  %108 = ptrtoint ptr %tail.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tail.i.i.i170, align 8
  %sub.ptr.lhs.cast.i.i.i171 = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i.i.i172 = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.i.i173 = sub i32 %sub.ptr.lhs.cast.i.i.i171, %sub.ptr.rhs.cast.i.i.i172
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub.ptr.sub.i.i.i173)
  %cmp.i.i174 = icmp slt i32 %sub.ptr.sub.i.i.i173, 10
  br i1 %cmp.i.i174, label %skb_tailroom.exit.i.i175.sctp_init_cause.exit.i_crit_edge, label %if.end.i.i190

skb_tailroom.exit.i.i175.sctp_init_cause.exit.i_crit_edge: ; preds = %skb_tailroom.exit.i.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_init_cause.exit.i

if.end.i.i190:                                    ; preds = %skb_tailroom.exit.i.i175
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i.i176 = getelementptr inbounds %struct.sctp_chunk, ptr %101, i32 0, i32 10
  %110 = ptrtoint ptr %chunk_hdr.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %chunk_hdr.i.i.i176, align 4
  %length.i.i.i177 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %length.i.i.i177 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %length.i.i.i177, align 2
  %conv.i.i.i178 = zext i16 %113 to i32
  %add.i.i.i179 = add nuw nsw i32 %conv.i.i.i178, 3
  %and.i.i.i180 = and i32 %add.i.i.i179, 131068
  %sub.i.i.i181 = sub nsw i32 %and.i.i.i180, %conv.i.i.i178
  %call.i.i.i.i182 = tail call ptr @skb_put(ptr noundef %103, i32 noundef %sub.i.i.i181) #11
  %114 = call ptr @memset(ptr %call.i.i.i.i182, i32 0, i32 %sub.i.i.i181)
  %115 = ptrtoint ptr %skb.i.i165 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %skb.i.i165, align 4
  %call.i19.i.i.i183 = tail call ptr @skb_put(ptr noundef %116, i32 noundef 4) #11
  %117 = ptrtoint ptr %call.i19.i.i.i183 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 2, ptr %call.i19.i.i.i183, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i.i184 = getelementptr inbounds i8, ptr %call.i19.i.i.i183, i32 2
  %118 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i.i184 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 10, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i.i184, align 1
  %119 = trunc i32 %and.i.i.i180 to i16
  %conv5.i.i.i185 = add i16 %119, 4
  %120 = ptrtoint ptr %chunk_hdr.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chunk_hdr.i.i.i176, align 4
  %length7.i.i.i186 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %length7.i.i.i186 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv5.i.i.i185, ptr %length7.i.i.i186, align 2
  %123 = ptrtoint ptr %skb.i.i165 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %skb.i.i165, align 4
  %tail.i.i.i.i187 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 16
  %125 = ptrtoint ptr %tail.i.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tail.i.i.i.i187, align 8
  %chunk_end.i.i.i188 = getelementptr inbounds %struct.sctp_chunk, ptr %101, i32 0, i32 9
  %127 = ptrtoint ptr %chunk_end.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %chunk_end.i.i.i188, align 4
  %subh.i.i189 = getelementptr inbounds %struct.sctp_chunk, ptr %101, i32 0, i32 8
  %128 = ptrtoint ptr %subh.i.i189 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i19.i.i.i183, ptr %subh.i.i189, align 4
  br label %sctp_init_cause.exit.i

sctp_init_cause.exit.i:                           ; preds = %if.end.i.i190, %skb_tailroom.exit.i.i175.sctp_init_cause.exit.i_crit_edge, %if.then2.i168.sctp_init_cause.exit.i_crit_edge
  %129 = ptrtoint ptr %errp to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %errp, align 4
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %130, i32 0, i32 10
  %131 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %134 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %skb.i1.i = getelementptr inbounds %struct.sctp_chunk, ptr %130, i32 0, i32 5
  %135 = ptrtoint ptr %skb.i1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %skb.i1.i, align 4
  %call.i.i2.i = tail call ptr @skb_put(ptr noundef %136, i32 noundef %sub.i.i) #11
  %137 = call ptr @memset(ptr %call.i.i2.i, i32 0, i32 %sub.i.i)
  %138 = ptrtoint ptr %skb.i1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %skb.i1.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %139, i32 noundef 6) #11
  %140 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 1, ptr %call.i19.i.i, align 1
  %report.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i, i32 4
  %141 = ptrtoint ptr %report.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 7, ptr %report.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %142 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %142, 6
  %143 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %146 = ptrtoint ptr %skb.i1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %skb.i1.i, align 4
  %tail.i.i3.i = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 16
  %148 = ptrtoint ptr %tail.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tail.i.i3.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %130, i32 0, i32 9
  %150 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %chunk_end.i.i, align 4
  br label %cleanup

land.lhs.true64:                                  ; preds = %for.inc85.land.lhs.true64_crit_edge, %for.cond55.preheader.land.lhs.true64_crit_edge
  %151 = phi i32 [ %conv60, %for.inc85.land.lhs.true64_crit_edge ], [ %conv60199, %for.cond55.preheader.land.lhs.true64_crit_edge ]
  %param.sroa.0.1202 = phi ptr [ %add.ptr90, %for.inc85.land.lhs.true64_crit_edge ], [ %params, %for.cond55.preheader.land.lhs.true64_crit_edge ]
  %152 = getelementptr i8, ptr %peer_init, i32 %151
  %length69 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.1202, i32 0, i32 1
  %153 = ptrtoint ptr %length69 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %length69, align 2
  %conv70 = zext i16 %154 to i32
  %idx.neg71 = sub nsw i32 0, %conv70
  %add.ptr72 = getelementptr i8, ptr %152, i32 %idx.neg71
  %cmp73.not = icmp ule ptr %param.sroa.0.1202, %add.ptr72
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %154)
  %cmp78 = icmp ugt i16 %154, 3
  %or.cond135 = select i1 %cmp73.not, i1 %cmp78, i1 false
  br i1 %or.cond135, label %for.body81, label %land.lhs.true64.cleanup.loopexit_crit_edge

land.lhs.true64.cleanup.loopexit_crit_edge:       ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

for.body81:                                       ; preds = %land.lhs.true64
  %155 = ptrtoint ptr %param.sroa.0.1202 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %155, 0
  %call82 = tail call fastcc i32 @sctp_verify_param(ptr noundef %net, ptr noundef %ep, ptr noundef %asoc, [1 x i32] %.fca.0.insert, i32 noundef %cid, ptr noundef %chunk, ptr noundef %errp)
  %156 = zext i32 %call82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call82, label %for.inc85 [
    i32 1018, label %for.body81.cleanup.loopexit_crit_edge
    i32 1004, label %for.body81.cleanup.loopexit_crit_edge211
    i32 1017, label %for.body81.cleanup_crit_edge
  ]

for.body81.cleanup_crit_edge:                     ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body81.cleanup.loopexit_crit_edge211:         ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

for.body81.cleanup.loopexit_crit_edge:            ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

for.inc85:                                        ; preds = %for.body81
  %157 = ptrtoint ptr %length69 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %length69, align 2
  %conv87 = zext i16 %158 to i32
  %add88 = add nuw nsw i32 %conv87, 3
  %and89 = and i32 %add88, 131068
  %add.ptr90 = getelementptr i8, ptr %param.sroa.0.1202, i32 %and89
  %add.ptr57 = getelementptr i8, ptr %add.ptr90, i32 4
  %159 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %length, align 2
  %conv60 = zext i16 %160 to i32
  %add.ptr61 = getelementptr i8, ptr %peer_init, i32 %conv60
  %cmp62.not = icmp ugt ptr %add.ptr57, %add.ptr61
  br i1 %cmp62.not, label %for.inc85.cleanup.loopexit_crit_edge, label %for.inc85.land.lhs.true64_crit_edge

for.inc85.land.lhs.true64_crit_edge:              ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true64

for.inc85.cleanup.loopexit_crit_edge:             ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.inc85.cleanup.loopexit_crit_edge, %for.body81.cleanup.loopexit_crit_edge, %for.body81.cleanup.loopexit_crit_edge211, %land.lhs.true64.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i32 [ 1, %land.lhs.true64.cleanup.loopexit_crit_edge ], [ 1, %for.inc85.cleanup.loopexit_crit_edge ], [ 0, %for.body81.cleanup.loopexit_crit_edge ], [ 0, %for.body81.cleanup.loopexit_crit_edge211 ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body81.cleanup_crit_edge, %sctp_init_cause.exit.i, %if.end.i164, %for.cond55.preheader.cleanup_crit_edge, %sctp_process_inv_paramlength.exit, %if.end.i.i, %skb_tailroom.exit.i.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %if.end.i
  %retval.0 = phi i32 [ 0, %sctp_process_inv_paramlength.exit ], [ 0, %if.end.i ], [ 0, %if.then2.i.cleanup_crit_edge ], [ 0, %skb_tailroom.exit.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.end.i164 ], [ 0, %sctp_init_cause.exit.i ], [ 1, %for.cond55.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.loopexit ], [ 1, %for.body81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_process_inv_paramlength(ptr noundef %asoc, ptr noundef %param, ptr noundef %chunk, ptr nocapture noundef %errp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %errp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %errp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %msg.i = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.sctp_chunk_free.exit_crit_edge, label %if.then.i

if.then.sctp_chunk_free.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_chunk_free.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sctp_datamsg_put(ptr noundef nonnull %3) #11
  br label %sctp_chunk_free.exit

sctp_chunk_free.exit:                             ; preds = %if.then.i, %if.then.sctp_chunk_free.exit_crit_edge
  tail call void @sctp_chunk_put(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %sctp_chunk_free.exit, %entry.if.end_crit_edge
  %call = tail call ptr @sctp_make_violation_paramlen(ptr noundef %asoc, ptr noundef %chunk, ptr noundef %param)
  %4 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %errp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_verify_param(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %ep, ptr noundef %asoc, [1 x i32] %param.coerce, i32 noundef %cid, ptr noundef %chunk, ptr nocapture noundef %err_chunk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %param.coerce.fca.0.extract = extractvalue [1 x i32] %param.coerce, 0
  %0 = inttoptr i32 %param.coerce.fca.0.extract to ptr
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %0, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %2, label %entry.do.body_crit_edge [
    i16 5, label %entry.sw.epilog_crit_edge
    i16 6, label %entry.sw.epilog_crit_edge151
    i16 9, label %entry.sw.epilog_crit_edge152
    i16 12, label %entry.sw.epilog_crit_edge153
    i16 7, label %entry.sw.epilog_crit_edge154
    i16 1, label %entry.sw.epilog_crit_edge155
    i16 8, label %entry.sw.epilog_crit_edge156
    i16 -32768, label %entry.sw.epilog_crit_edge157
    i16 -16378, label %entry.sw.epilog_crit_edge158
    i16 -32760, label %sw.bb2
    i16 -16380, label %sw.bb4
    i16 11, label %sw.bb13
    i16 -16384, label %sw.bb16
    i16 -32766, label %sw.bb23
    i16 -32765, label %sw.bb37
    i16 -32764, label %sw.bb52
  ]

entry.sw.epilog_crit_edge158:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge157:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge156:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge155:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge154:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge153:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge152:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge151:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb2:                                           ; preds = %entry
  %length.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length.i, align 2
  %sub.i = add i16 %5, -4
  %conv2.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp20.not.i = icmp eq i16 %sub.i, 0
  br i1 %cmp20.not.i, label %sw.bb2.for.end.i_crit_edge, label %sw.bb2.for.body.i_crit_edge

sw.bb2.for.body.i_crit_edge:                      ; preds = %sw.bb2
  br label %for.body.i

sw.bb2.for.end.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb2.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb2.for.body.i_crit_edge ]
  %have_auth.022.i = phi i32 [ %have_auth.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb2.for.body.i_crit_edge ]
  %have_asconf.021.i = phi i32 [ %have_asconf.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sctp_supported_ext_param, ptr %0, i32 0, i32 1, i32 %i.023.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %7, label %for.body.i.for.inc.i_crit_edge [
    i8 15, label %sw.bb.i
    i8 -63, label %for.body.i.sw.bb5.i_crit_edge
    i8 -128, label %for.body.i.sw.bb5.i_crit_edge159
  ]

for.body.i.sw.bb5.i_crit_edge159:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

for.body.i.sw.bb5.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb5.i:                                         ; preds = %for.body.i.sw.bb5.i_crit_edge, %for.body.i.sw.bb5.i_crit_edge159
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb5.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %have_asconf.1.i = phi i32 [ %have_asconf.021.i, %for.body.i.for.inc.i_crit_edge ], [ 1, %sw.bb5.i ], [ %have_asconf.021.i, %sw.bb.i ]
  %have_auth.1.i = phi i32 [ %have_auth.022.i, %for.body.i.for.inc.i_crit_edge ], [ %have_auth.022.i, %sw.bb5.i ], [ 1, %sw.bb.i ]
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.bb2.for.end.i_crit_edge
  %have_asconf.0.lcssa.i = phi i32 [ 0, %sw.bb2.for.end.i_crit_edge ], [ %have_asconf.1.i, %for.inc.i.for.end.i_crit_edge ]
  %have_auth.0.lcssa.i = phi i32 [ 0, %sw.bb2.for.end.i_crit_edge ], [ %have_auth.1.i, %for.inc.i.for.end.i_crit_edge ]
  %addip_noauth.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 37
  %9 = ptrtoint ptr %addip_noauth.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addip_noauth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %sctp_verify_ext_param.exit, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sctp_verify_ext_param.exit:                       ; preds = %for.end.i
  %asconf_enable.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %11 = ptrtoint ptr %asconf_enable.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %asconf_enable.i, align 2
  %12 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_auth.0.lcssa.i)
  %tobool8.not.i = icmp eq i32 %have_auth.0.lcssa.i, 0
  %or.cond.i = select i1 %tobool7.not.i, i1 %tobool8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_asconf.0.lcssa.i)
  %tobool10.not.i = icmp ne i32 %have_asconf.0.lcssa.i, 0
  %or.cond19.i = select i1 %or.cond.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond19.i, label %sctp_verify_ext_param.exit.cleanup_crit_edge, label %sctp_verify_ext_param.exit.sw.epilog_crit_edge

sctp_verify_ext_param.exit.sw.epilog_crit_edge:   ; preds = %sctp_verify_ext_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sctp_verify_ext_param.exit.cleanup_crit_edge:     ; preds = %sctp_verify_ext_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %asconf_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %13 = ptrtoint ptr %asconf_enable to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %asconf_enable, align 2
  %14 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %sw.bb4.do.body_crit_edge, label %if.end7

sw.bb4.do.body_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end7:                                          ; preds = %sw.bb4
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %16)
  %cmp = icmp ult i16 %16, 12
  br i1 %cmp, label %if.then10, label %if.end7.sw.epilog_crit_edge

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sctp_process_inv_paramlength(ptr noundef %asoc, ptr noundef %0, ptr noundef %chunk, ptr noundef %err_chunk)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %length.i135 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %17 = ptrtoint ptr %length.i135 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %length.i135, align 2
  %19 = ptrtoint ptr %err_chunk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %err_chunk, align 4
  %tobool.not.i136 = icmp eq ptr %20, null
  br i1 %tobool.not.i136, label %sw.bb13.sctp_process_hn_param.exit_crit_edge, label %if.then.i

sw.bb13.sctp_process_hn_param.exit_crit_edge:     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_process_hn_param.exit

if.then.i:                                        ; preds = %sw.bb13
  %msg.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then.i.sctp_chunk_free.exit.i_crit_edge, label %if.then.i.i

if.then.i.sctp_chunk_free.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_chunk_free.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sctp_datamsg_put(ptr noundef nonnull %22) #11
  br label %sctp_chunk_free.exit.i

sctp_chunk_free.exit.i:                           ; preds = %if.then.i.i, %if.then.i.sctp_chunk_free.exit.i_crit_edge
  tail call void @sctp_chunk_put(ptr noundef nonnull %20) #11
  br label %sctp_process_hn_param.exit

sctp_process_hn_param.exit:                       ; preds = %sctp_chunk_free.exit.i, %sw.bb13.sctp_process_hn_param.exit_crit_edge
  %conv.i = zext i16 %18 to i32
  %call.i = tail call ptr @sctp_make_op_error(ptr noundef %asoc, ptr noundef %chunk, i16 noundef zeroext 5, ptr noundef %0, i32 noundef %conv.i, i32 noundef 0) #11
  %23 = ptrtoint ptr %err_chunk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %err_chunk, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %prsctp_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %24 = ptrtoint ptr %prsctp_enable to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load17 = load i8, ptr %prsctp_enable, align 2
  %25 = and i8 %bf.load17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  br i1 %tobool20.not, label %sw.bb16.do.body_crit_edge, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb16.do.body_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb23:                                          ; preds = %entry
  %auth_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %26 = ptrtoint ptr %auth_enable to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load24 = load i8, ptr %auth_enable, align 2
  %27 = and i8 %bf.load24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool27.not = icmp eq i8 %27, 0
  br i1 %tobool27.not, label %sw.bb23.do.body_crit_edge, label %if.end29

sw.bb23.do.body_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end29:                                         ; preds = %sw.bb23
  %length30 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %28 = ptrtoint ptr %length30 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %length30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %29)
  %cmp32.not = icmp eq i16 %29, 36
  br i1 %cmp32.not, label %if.end29.sw.epilog_crit_edge, label %if.then34

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sctp_process_inv_paramlength(ptr noundef %asoc, ptr noundef %0, ptr noundef %chunk, ptr noundef %err_chunk)
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %auth_enable38 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %30 = ptrtoint ptr %auth_enable38 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load39 = load i8, ptr %auth_enable38, align 2
  %31 = and i8 %bf.load39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool42.not = icmp eq i8 %31, 0
  br i1 %tobool42.not, label %sw.bb37.do.body_crit_edge, label %if.end44

sw.bb37.do.body_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end44:                                         ; preds = %sw.bb37
  %length45 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %32 = ptrtoint ptr %length45 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %length45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %33)
  %cmp47 = icmp ugt i16 %33, 260
  br i1 %cmp47, label %if.then49, label %if.end44.sw.epilog_crit_edge

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sctp_process_inv_paramlength(ptr noundef %asoc, ptr noundef %0, ptr noundef %chunk, ptr noundef %err_chunk)
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  %auth_enable53 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %34 = ptrtoint ptr %auth_enable53 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load54 = load i8, ptr %auth_enable53, align 2
  %35 = and i8 %bf.load54, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool57.not = icmp eq i8 %35, 0
  br i1 %tobool57.not, label %sw.bb52.do.body_crit_edge, label %if.end59

sw.bb52.do.body_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end59:                                         ; preds = %sw.bb52
  %length60 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %36 = ptrtoint ptr %length60 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %length60, align 2
  %conv61 = zext i16 %37 to i32
  %sub62 = add nuw nsw i32 %conv61, 131068
  %shr = lshr i32 %sub62, 1
  %conv64 = and i32 %shr, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv64)
  %cmp65149.not = icmp eq i32 %conv64, 0
  br i1 %cmp65149.not, label %if.end59.if.then75_crit_edge, label %if.end59.for.body_crit_edge

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  br label %for.body

if.end59.if.then75_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc, %conv64
  br i1 %exitcond.not, label %for.cond.if.then75_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.if.then75_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end59.for.body_crit_edge
  %i.0150 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end59.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sctp_hmac_algo_param, ptr %0, i32 0, i32 1, i32 %i.0150
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp68 = icmp eq i16 %39, 1
  br i1 %cmp68, label %for.body.sw.epilog_crit_edge, label %for.cond

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then75:                                        ; preds = %for.cond.if.then75_crit_edge, %if.end59.if.then75_crit_edge
  tail call fastcc void @sctp_process_inv_paramlength(ptr noundef %asoc, ptr noundef %0, ptr noundef %chunk, ptr noundef %err_chunk)
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb52.do.body_crit_edge, %sw.bb37.do.body_crit_edge, %sw.bb23.do.body_crit_edge, %sw.bb16.do.body_crit_edge, %sw.bb4.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_verify_param.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_verify_param, %if.then82)) #11
          to label %do.end [label %if.then82], !srcloc !57

if.then82:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %0, align 2
  %conv84 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_verify_param.__UNIQUE_ID_ddebug566, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %conv84, i32 noundef %cid) #11
  br label %do.end

do.end:                                           ; preds = %if.then82, %do.body
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %0, align 2
  %44 = lshr i16 %43, 14
  %45 = zext i16 %44 to i32
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %45, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i139
    i32 2, label %do.end.sw.epilog_crit_edge
    i32 1, label %sw.bb2.i
    i32 3, label %do.end.sw.bb3.i_crit_edge
  ]

do.end.sw.bb3.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.i139:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb2.i, %do.end.sw.bb3.i_crit_edge
  %retval1.0.i = phi i32 [ 0, %do.end.sw.bb3.i_crit_edge ], [ 1017, %sw.bb2.i ]
  %47 = ptrtoint ptr %err_chunk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %err_chunk, align 4
  %tobool.not.i140 = icmp eq ptr %48, null
  br i1 %tobool.not.i140, label %if.then.i142, label %sw.bb3.i.if.end6.i_crit_edge

sw.bb3.i.if.end6.i_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then.i142:                                     ; preds = %sw.bb3.i
  %tobool.not.i.i141 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i.i141, label %if.then.i142.sctp_mtu_payload.exit.thread.i.i_crit_edge, label %if.end.i.i

if.then.i142.sctp_mtu_payload.exit.thread.i.i_crit_edge: ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_mtu_payload.exit.thread.i.i

if.end.i.i:                                       ; preds = %if.then.i142
  %pathmtu.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 26
  %49 = ptrtoint ptr %pathmtu.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pathmtu.i.i, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 1500) #11
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %52 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.if.end10.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.if.end10.i.i.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pf.i.i.i.i = getelementptr inbounds %struct.sctp_sock, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %pf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pf.i.i.i.i, align 4
  %af.i.i.i.i = getelementptr inbounds %struct.sctp_pf, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %af.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %af.i.i.i.i, align 4
  %net_header_len.i.i.i.i = getelementptr inbounds %struct.sctp_af, ptr %57, i32 0, i32 21
  %58 = ptrtoint ptr %net_header_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %net_header_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %59 to i32
  %udp_port.i.i.i.i = getelementptr inbounds %struct.sctp_sock, ptr %53, i32 0, i32 16
  %60 = ptrtoint ptr %udp_port.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %udp_port.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool3.not.i.i.i.i = icmp eq i16 %61, 0
  %spec.select3.v.i.i.i.i = select i1 %tobool3.not.i.i.i.i, i32 16, i32 24
  %spec.select3.i.i.i.i = add nuw nsw i32 %spec.select3.v.i.i.i.i, %conv.i.i.i.i
  br label %if.end10.i.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.then.i.i.i.i, %if.end.i.i.if.end10.i.i.i.i_crit_edge
  %overhead.0.i.i.i.i = phi i32 [ 56, %if.end.i.i.if.end10.i.i.i.i_crit_edge ], [ %spec.select3.i.i.i.i, %if.then.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool11.not.i.i.i.i = icmp ne i32 %51, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %overhead.0.i.i.i.i)
  %cmp.i.i.i.i = icmp ule i32 %51, %overhead.0.i.i.i.i
  %spec.select.i.i.i.i = select i1 %tobool11.not.i.i.i.i, i1 %cmp.i.i.i.i, i1 false
  br i1 %spec.select.i.i.i.i, label %land.rhs16.i.i.i.i, label %sctp_mtu_payload.exit.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end10.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__sctp_mtu_payload.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.sctp_mtu_payload.exit.thread.i.i_crit_edge, label %if.then23.i.i.i.i, !prof !58

land.rhs16.i.i.i.i.sctp_mtu_payload.exit.thread.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_mtu_payload.exit.thread.i.i

if.then23.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__sctp_mtu_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 591, i32 noundef 9, ptr noundef null) #11
  br label %sctp_mtu_payload.exit.thread.i.i

sctp_mtu_payload.exit.thread.i.i:                 ; preds = %if.then23.i.i.i.i, %land.rhs16.i.i.i.i.sctp_mtu_payload.exit.thread.i.i_crit_edge, %if.then.i142.sctp_mtu_payload.exit.thread.i.i_crit_edge
  %overhead.0.i.i21.ph.i.i = phi i32 [ %overhead.0.i.i.i.i, %land.rhs16.i.i.i.i.sctp_mtu_payload.exit.thread.i.i_crit_edge ], [ %overhead.0.i.i.i.i, %if.then23.i.i.i.i ], [ 56, %if.then.i142.sctp_mtu_payload.exit.thread.i.i_crit_edge ]
  %spec.select2.i.i.ph.i.i = phi i32 [ %overhead.0.i.i.i.i, %land.rhs16.i.i.i.i.sctp_mtu_payload.exit.thread.i.i_crit_edge ], [ %overhead.0.i.i.i.i, %if.then23.i.i.i.i ], [ 1500, %if.then.i142.sctp_mtu_payload.exit.thread.i.i_crit_edge ]
  %sub.i.i25.i.i = sub nsw i32 %spec.select2.i.i.ph.i.i, %overhead.0.i.i21.ph.i.i
  br label %62

sctp_mtu_payload.exit.i.i:                        ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool56.not.i.i.i.i = icmp eq i32 %51, 0
  %sub.i.i.i.i = sub nsw i32 %51, %overhead.0.i.i.i.i
  %spec.select.i.i = select i1 %tobool56.not.i.i.i.i, i32 %overhead.0.i.i.i.i, i32 %sub.i.i.i.i
  br label %62

62:                                               ; preds = %sctp_mtu_payload.exit.i.i, %sctp_mtu_payload.exit.thread.i.i
  %63 = phi i32 [ %sub.i.i25.i.i, %sctp_mtu_payload.exit.thread.i.i ], [ %spec.select.i.i, %sctp_mtu_payload.exit.i.i ]
  %add.i.i.i = add nsw i32 %63, 4
  %call.i.i.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext 9, i8 noundef zeroext 0, i32 noundef %add.i.i.i, i32 noundef 2592) #11
  %tobool.not.i.i10.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i10.i.i, label %sctp_make_op_error_limited.exit.i, label %if.then.i.i11.i.i

if.then.i.i11.i.i:                                ; preds = %62
  %asoc1.i.i.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i.i, i32 0, i32 13
  %64 = ptrtoint ptr %asoc1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %asoc1.i.i.i.i.i, align 4
  %skb2.i.i.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %skb2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb2.i.i.i.i.i, align 4
  %auth.i.i.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i.i, i32 0, i32 21
  %68 = ptrtoint ptr %auth.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i.i.i.i.i = load i16, ptr %auth.i.i.i.i.i, align 4
  %69 = and i16 %bf.load.i.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i.i.i.i.i = icmp eq i16 %69, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i11.i.i.if.end.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i11.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %65, i32 0, i32 75
  %70 = ptrtoint ptr %shkey.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shkey.i.i.i.i.i, align 8
  %72 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %72, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %71) #11
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i, %if.then.i.i11.i.i.if.end.i.i.i.i.i_crit_edge
  %tobool3.not.i.i.i.i.i = icmp eq ptr %65, null
  br i1 %tobool3.not.i.i.i.i.i, label %if.end.i.i.i.i.i.sctp_make_control.exit.i.i.i_crit_edge, label %cond.true.i.i.i.i.i

if.end.i.i.i.i.i.sctp_make_control.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_control.exit.i.i.i

cond.true.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %65, i32 0, i32 3
  %74 = ptrtoint ptr %sk.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sk.i.i.i.i.i, align 4
  br label %sctp_make_control.exit.i.i.i

sctp_make_control.exit.i.i.i:                     ; preds = %cond.true.i.i.i.i.i, %if.end.i.i.i.i.i.sctp_make_control.exit.i.i.i_crit_edge
  %cond.i.i.i.i.i = phi ptr [ %75, %cond.true.i.i.i.i.i ], [ null, %if.end.i.i.i.i.i.sctp_make_control.exit.i.i.i_crit_edge ]
  %76 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %cond.i.i.i.i.i, ptr %76, align 4
  %end.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 17
  %78 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i.i.i.i.i, align 4
  %destructor_arg.i.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %destructor_arg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i.i.i, ptr %destructor_arg.i.i.i.i.i, align 4
  %destructor.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 4, i32 0, i32 1
  %81 = ptrtoint ptr %destructor.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %chunk, null
  br i1 %tobool2.not.i.i.i, label %sctp_make_control.exit.i.i.i.sctp_make_op_error_limited.exit.thread.i_crit_edge, label %if.then3.i.i.i

sctp_make_control.exit.i.i.i.sctp_make_op_error_limited.exit.thread.i_crit_edge: ; preds = %sctp_make_control.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_make_op_error_limited.exit.thread.i

if.then3.i.i.i:                                   ; preds = %sctp_make_control.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %82 = ptrtoint ptr %transport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %transport.i.i.i, align 4
  %transport4.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i.i.i, i32 0, i32 19
  %84 = ptrtoint ptr %transport4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %transport4.i.i.i, align 4
  br label %sctp_make_op_error_limited.exit.thread.i

sctp_make_op_error_limited.exit.thread.i:         ; preds = %if.then3.i.i.i, %sctp_make_control.exit.i.i.i.sctp_make_op_error_limited.exit.thread.i_crit_edge
  %85 = ptrtoint ptr %err_chunk to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i.i.i.i, ptr %err_chunk, align 4
  br label %if.end6.i

sctp_make_op_error_limited.exit.i:                ; preds = %62
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %err_chunk to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %err_chunk, align 4
  br label %sw.epilog

if.end6.i:                                        ; preds = %sctp_make_op_error_limited.exit.thread.i, %sw.bb3.i.if.end6.i_crit_edge
  %87 = ptrtoint ptr %err_chunk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %err_chunk, align 4
  %length.i143 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %89 = ptrtoint ptr %length.i143 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %length.i143, align 2
  %conv.i.i = add i16 %90, 4
  %skb.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %88, i32 0, i32 5
  %91 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %skb.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i.not.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end6.i.skb_tailroom.exit.i.i_crit_edge

if.end6.i.skb_tailroom.exit.i.i_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 17
  %95 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 16
  %97 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %if.end6.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end6.i.skb_tailroom.exit.i.i_crit_edge ]
  %conv1.i.i = zext i16 %conv.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %conv1.i.i)
  %cmp.i.i = icmp slt i32 %cond.i.i.i, %conv1.i.i
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.sw.epilog_crit_edge, label %if.then10.i

skb_tailroom.exit.i.i.sw.epilog_crit_edge:        ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then10.i:                                      ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_hdr.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %88, i32 0, i32 10
  %99 = ptrtoint ptr %chunk_hdr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %chunk_hdr.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %length.i.i.i, align 2
  %conv.i.i.i = zext i16 %102 to i32
  %add.i.i22.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i22.i, 131068
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %conv.i.i.i
  %call.i.i.i23.i = tail call ptr @skb_put(ptr noundef %92, i32 noundef %sub.i.i.i) #11
  %103 = call ptr @memset(ptr %call.i.i.i23.i, i32 0, i32 %sub.i.i.i)
  %104 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %skb.i.i, align 4
  %call.i19.i.i.i = tail call ptr @skb_put(ptr noundef %105, i32 noundef 4) #11
  %106 = ptrtoint ptr %call.i19.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 8, ptr %call.i19.i.i.i, align 1
  %err.sroa.5.0.call.i19.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i19.i.i.i, i32 2
  %107 = ptrtoint ptr %err.sroa.5.0.call.i19.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %conv.i.i, ptr %err.sroa.5.0.call.i19.i.sroa_idx.i.i, align 1
  %108 = trunc i32 %and.i.i.i to i16
  %conv5.i.i.i = add i16 %108, 4
  %109 = ptrtoint ptr %chunk_hdr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %chunk_hdr.i.i.i, align 4
  %length7.i.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %length7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv5.i.i.i, ptr %length7.i.i.i, align 2
  %112 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %skb.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 16
  %114 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tail.i.i.i.i, align 8
  %chunk_end.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %88, i32 0, i32 9
  %116 = ptrtoint ptr %chunk_end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %chunk_end.i.i.i, align 4
  %subh.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %88, i32 0, i32 8
  %117 = ptrtoint ptr %subh.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i19.i.i.i, ptr %subh.i.i, align 4
  %118 = ptrtoint ptr %err_chunk to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %err_chunk, align 4
  %120 = ptrtoint ptr %length.i143 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %length.i143, align 2
  %conv12.i = zext i16 %121 to i32
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %119, i32 0, i32 10
  %122 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %length.i.i, align 2
  %conv.i25.i = zext i16 %125 to i32
  %add.i.i = add nuw nsw i32 %conv.i25.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i25.i
  %skb.i26.i = getelementptr inbounds %struct.sctp_chunk, ptr %119, i32 0, i32 5
  %126 = ptrtoint ptr %skb.i26.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %skb.i26.i, align 4
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %127, i32 noundef %sub.i.i) #11
  %128 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %129 = ptrtoint ptr %skb.i26.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %skb.i26.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %130, i32 noundef %conv12.i) #11
  %131 = call ptr @memcpy(ptr %call.i19.i.i, ptr %0, i32 %conv12.i)
  %132 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %121, %132
  %133 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %136 = ptrtoint ptr %skb.i26.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %skb.i26.i, align 4
  %tail.i.i27.i = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 16
  %138 = ptrtoint ptr %tail.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tail.i.i27.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %119, i32 0, i32 9
  %140 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %139, ptr %chunk_end.i.i, align 4
  br label %sw.epilog

entry.unreachabledefault.i:                       ; preds = %do.end
  unreachable

sw.epilog:                                        ; preds = %if.then10.i, %skb_tailroom.exit.i.i.sw.epilog_crit_edge, %sctp_make_op_error_limited.exit.i, %sw.bb.i139, %do.end.sw.epilog_crit_edge, %if.then75, %for.body.sw.epilog_crit_edge, %if.then49, %if.end44.sw.epilog_crit_edge, %if.then34, %if.end29.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %sctp_process_hn_param.exit, %if.then10, %if.end7.sw.epilog_crit_edge, %sctp_verify_ext_param.exit.sw.epilog_crit_edge, %for.end.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge151, %entry.sw.epilog_crit_edge152, %entry.sw.epilog_crit_edge153, %entry.sw.epilog_crit_edge154, %entry.sw.epilog_crit_edge155, %entry.sw.epilog_crit_edge156, %entry.sw.epilog_crit_edge157, %entry.sw.epilog_crit_edge158
  %retval1.0 = phi i32 [ 1018, %if.then75 ], [ 1018, %if.then49 ], [ 0, %if.end44.sw.epilog_crit_edge ], [ 1018, %if.then34 ], [ 0, %if.end29.sw.epilog_crit_edge ], [ 0, %sw.bb16.sw.epilog_crit_edge ], [ 1018, %sctp_process_hn_param.exit ], [ 1018, %if.then10 ], [ 0, %if.end7.sw.epilog_crit_edge ], [ 0, %sctp_verify_ext_param.exit.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge151 ], [ 0, %entry.sw.epilog_crit_edge152 ], [ 0, %entry.sw.epilog_crit_edge153 ], [ 0, %entry.sw.epilog_crit_edge154 ], [ 0, %entry.sw.epilog_crit_edge155 ], [ 0, %entry.sw.epilog_crit_edge156 ], [ 0, %entry.sw.epilog_crit_edge157 ], [ 0, %entry.sw.epilog_crit_edge158 ], [ %retval1.0.i, %if.then10.i ], [ 0, %do.end.sw.epilog_crit_edge ], [ 1017, %sw.bb.i139 ], [ 1004, %sctp_make_op_error_limited.exit.i ], [ %retval1.0.i, %skb_tailroom.exit.i.i.sw.epilog_crit_edge ], [ 0, %for.end.i.sw.epilog_crit_edge ], [ 0, %for.body.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sctp_verify_ext_param.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %sw.epilog ], [ 1018, %sctp_verify_ext_param.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_process_init(ptr noundef %asoc, ptr noundef %chunk, ptr noundef %peer_addr, ptr noundef %peer_init, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr) #11
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %0 = call ptr @memset(ptr %addr, i32 255, i32 28)
  %1 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skb, align 4
  %encap_port = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %encap_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %encap_port, align 8
  %encap_port1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 21
  %5 = ptrtoint ptr %encap_port1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %encap_port1, align 8
  %call = tail call ptr @sctp_assoc_add_peer(ptr noundef %asoc, ptr noundef %peer_addr, i32 noundef %gfp, i32 noundef 2) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %6 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transport.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %7, i32 0, i32 6
  %source.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 16
  %retval.0.i = select i1 %tobool.not.i, ptr %source.i, ptr %ipaddr.i
  %call3 = tail call i32 @sctp_cmp_addr_exact(ptr noundef %retval.0.i, ptr noundef %peer_addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  %init_hdr = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %peer_init, i32 0, i32 2
  %add.ptr7349 = getelementptr %struct.sctp_init_chunk, ptr %peer_init, i32 1, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length, align 2
  %conv350 = zext i16 %9 to i32
  %add.ptr8351 = getelementptr i8, ptr %peer_init, i32 %conv350
  %cmp.not352 = icmp ugt ptr %add.ptr7349, %add.ptr8351
  br i1 %cmp.not352, label %if.end.for.end_crit_edge, label %land.lhs.true.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.lr.ph:                              ; preds = %if.end
  %params = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 1
  %sctp_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %10 = phi i32 [ %conv350, %land.lhs.true.lr.ph ], [ %conv, %for.inc.land.lhs.true_crit_edge ]
  %param.sroa.0.0354 = phi ptr [ %params, %land.lhs.true.lr.ph ], [ %add.ptr52, %for.inc.land.lhs.true_crit_edge ]
  %src_match.1353 = phi i32 [ %spec.select, %land.lhs.true.lr.ph ], [ %src_match.3, %for.inc.land.lhs.true_crit_edge ]
  %11 = getelementptr i8, ptr %peer_init, i32 %10
  %length14 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.0354, i32 0, i32 1
  %12 = ptrtoint ptr %length14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length14, align 2
  %conv15 = zext i16 %13 to i32
  %idx.neg = sub nsw i32 0, %conv15
  %add.ptr16 = getelementptr i8, ptr %11, i32 %idx.neg
  %cmp17.not = icmp ule ptr %param.sroa.0.0354, %add.ptr16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp21 = icmp ugt i16 %13, 3
  %or.cond = select i1 %cmp17.not, i1 %cmp21, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_match.1353)
  %tobool23.not = icmp eq i32 %src_match.1353, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.body.if.end45_crit_edge

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

land.lhs.true24:                                  ; preds = %for.body
  %14 = ptrtoint ptr %param.sroa.0.0354 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %param.sroa.0.0354, align 2
  %.off = add i16 %15, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.then32, label %land.lhs.true24.if.end45_crit_edge

land.lhs.true24.if.end45_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then32:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %15)
  %switch.selectcmp.i = icmp eq i16 %15, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %15)
  %switch.selectcmp2.i = icmp eq i16 %15, 5
  %16 = select i1 %switch.selectcmp.i, i16 10, i16 0
  %conv35 = select i1 %switch.selectcmp2.i, i16 2, i16 %16
  %call36 = call ptr @sctp_get_af_specific(i16 noundef zeroext %conv35) #11
  %from_addr_param = getelementptr inbounds %struct.sctp_af, ptr %call36, i32 0, i32 10
  %17 = ptrtoint ptr %from_addr_param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %from_addr_param, align 4
  %19 = ptrtoint ptr %sctp_hdr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sctp_hdr, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %call37 = call zeroext i1 %18(ptr noundef nonnull %addr, ptr noundef %param.sroa.0.0354, i16 noundef zeroext %22, i32 noundef 0) #11
  br i1 %call37, label %if.end39, label %if.then32.for.inc_crit_edge

if.then32.for.inc_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transport.i, align 4
  %tobool.not.i342 = icmp eq ptr %24, null
  %ipaddr.i343 = getelementptr inbounds %struct.sctp_transport, ptr %24, i32 0, i32 6
  %retval.0.i345 = select i1 %tobool.not.i342, ptr %source.i, ptr %ipaddr.i343
  %call41 = call i32 @sctp_cmp_addr_exact(ptr noundef %retval.0.i345, ptr noundef nonnull %addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp ne i32 %call41, 0
  %spec.select339 = zext i1 %tobool42.not to i32
  br label %if.end45

if.end45:                                         ; preds = %if.end39, %land.lhs.true24.if.end45_crit_edge, %for.body.if.end45_crit_edge
  %src_match.2 = phi i32 [ 1, %for.body.if.end45_crit_edge ], [ 0, %land.lhs.true24.if.end45_crit_edge ], [ %spec.select339, %if.end39 ]
  %25 = ptrtoint ptr %param.sroa.0.0354 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %25, 0
  %call46 = call fastcc i32 @sctp_process_param(ptr noundef %asoc, [1 x i32] %.fca.0.insert, ptr noundef %peer_addr, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.clean_up_crit_edge, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end45.clean_up_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_up

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %if.then32.for.inc_crit_edge
  %src_match.3 = phi i32 [ %src_match.2, %if.end45.for.inc_crit_edge ], [ 0, %if.then32.for.inc_crit_edge ]
  %26 = ptrtoint ptr %length14 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %length14, align 2
  %conv51 = zext i16 %27 to i32
  %add = add nuw nsw i32 %conv51, 3
  %and = and i32 %add, 131068
  %add.ptr52 = getelementptr i8, ptr %param.sroa.0.0354, i32 %and
  %add.ptr7 = getelementptr i8, ptr %add.ptr52, i32 4
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %length, align 2
  %conv = zext i16 %29 to i32
  %add.ptr8 = getelementptr i8, ptr %peer_init, i32 %conv
  %cmp.not = icmp ugt ptr %add.ptr7, %add.ptr8
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %src_match.1.lcssa = phi i32 [ %spec.select, %if.end.for.end_crit_edge ], [ %src_match.3, %for.inc.for.end_crit_edge ], [ %src_match.1353, %land.lhs.true.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_match.1.lcssa)
  %tobool53.not = icmp eq i32 %src_match.1.lcssa, 0
  br i1 %tobool53.not, label %for.end.clean_up_crit_edge, label %if.end55

for.end.clean_up_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_up

if.end55:                                         ; preds = %for.end
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %auth_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %30 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %auth_capable, align 2
  %31 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool57.not = icmp eq i16 %31, 0
  br i1 %tobool57.not, label %if.end55.if.end69_crit_edge, label %land.lhs.true58

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

land.lhs.true58:                                  ; preds = %if.end55
  %peer_random = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 19
  %32 = ptrtoint ptr %peer_random to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peer_random, align 8
  %tobool60.not = icmp eq ptr %33, null
  br i1 %tobool60.not, label %land.lhs.true58.if.then64_crit_edge, label %lor.lhs.false61

land.lhs.true58.if.then64_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

lor.lhs.false61:                                  ; preds = %land.lhs.true58
  %peer_hmacs = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 21
  %34 = ptrtoint ptr %peer_hmacs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peer_hmacs, align 8
  %tobool63.not = icmp eq ptr %35, null
  br i1 %tobool63.not, label %lor.lhs.false61.if.then64_crit_edge, label %lor.lhs.false61.if.end69_crit_edge

lor.lhs.false61.if.end69_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

lor.lhs.false61.if.then64_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false61.if.then64_crit_edge, %land.lhs.true58.if.then64_crit_edge
  %bf.clear68 = and i16 %bf.load, -129
  %36 = ptrtoint ptr %auth_capable to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %bf.clear68, ptr %auth_capable, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %lor.lhs.false61.if.end69_crit_edge, %if.end55.if.end69_crit_edge
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %37 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net, align 8
  %addip_noauth = getelementptr inbounds %struct.net, ptr %38, i32 0, i32 38, i32 37
  %39 = ptrtoint ptr %addip_noauth to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addip_noauth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool70.not = icmp eq i32 %40, 0
  br i1 %tobool70.not, label %land.lhs.true71, label %if.end69.if.end94_crit_edge

if.end69.if.end94_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

land.lhs.true71:                                  ; preds = %if.end69
  %41 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load73 = load i16, ptr %auth_capable, align 2
  %42 = and i16 %bf.load73, 2176
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %42)
  %43 = icmp eq i16 %42, 2048
  br i1 %43, label %if.then85, label %land.lhs.true71.if.end94_crit_edge

land.lhs.true71.if.end94_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then85:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  %addip_disabled_mask = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 11
  %44 = ptrtoint ptr %addip_disabled_mask to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addip_disabled_mask, align 8
  %46 = or i16 %45, -16377
  store i16 %46, ptr %addip_disabled_mask, align 8
  %bf.clear92 = and i16 %bf.load73, -2049
  %47 = ptrtoint ptr %auth_capable to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %bf.clear92, ptr %auth_capable, align 2
  br label %clean_up

if.end94:                                         ; preds = %land.lhs.true71.if.end94_crit_edge, %if.end69.if.end94_crit_edge
  %48 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %peer, align 8
  %cmp.i.not359 = icmp eq ptr %49, %peer
  br i1 %cmp.i.not359, label %if.end94.for.end110_crit_edge, label %if.end94.for.body102_crit_edge

if.end94.for.body102_crit_edge:                   ; preds = %if.end94
  br label %for.body102

if.end94.for.end110_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end110

for.body102:                                      ; preds = %for.inc108.for.body102_crit_edge, %if.end94.for.body102_crit_edge
  %pos.0360 = phi ptr [ %temp.0361, %for.inc108.for.body102_crit_edge ], [ %49, %if.end94.for.body102_crit_edge ]
  %50 = ptrtoint ptr %pos.0360 to i32
  call void @__asan_load4_noabort(i32 %50)
  %temp.0361 = load ptr, ptr %pos.0360, align 4
  %state = getelementptr inbounds %struct.sctp_transport, ptr %pos.0360, i32 0, i32 37
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %52)
  %cmp104 = icmp eq i32 %52, 65535
  br i1 %cmp104, label %if.then106, label %for.body102.for.inc108_crit_edge

for.body102.for.inc108_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc108

if.then106:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #13
  call void @sctp_assoc_rm_peer(ptr noundef %asoc, ptr noundef %pos.0360) #11
  br label %for.inc108

for.inc108:                                       ; preds = %if.then106, %for.body102.for.inc108_crit_edge
  %cmp.i.not = icmp eq ptr %temp.0361, %peer
  br i1 %cmp.i.not, label %for.inc108.for.end110_crit_edge, label %for.inc108.for.body102_crit_edge

for.inc108.for.body102_crit_edge:                 ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body102

for.inc108.for.end110_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end110

for.end110:                                       ; preds = %for.inc108.for.end110_crit_edge, %if.end94.for.end110_crit_edge
  %53 = ptrtoint ptr %init_hdr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %init_hdr, align 4
  %i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 15
  %55 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %i, align 4
  %a_rwnd = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %a_rwnd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %a_rwnd, align 4
  %a_rwnd117 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 15, i32 1
  %58 = ptrtoint ptr %a_rwnd117 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %a_rwnd117, align 4
  %num_outbound_streams = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %num_outbound_streams to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_outbound_streams, align 4
  %num_outbound_streams121 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 15, i32 2
  %61 = ptrtoint ptr %num_outbound_streams121 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %num_outbound_streams121, align 4
  %num_inbound_streams = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %num_inbound_streams to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %num_inbound_streams, align 2
  %num_inbound_streams125 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 15, i32 3
  %64 = ptrtoint ptr %num_inbound_streams125 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %num_inbound_streams125, align 2
  %initial_tsn = getelementptr inbounds %struct.sctp_init_chunk, ptr %peer_init, i32 0, i32 1, i32 4
  %65 = ptrtoint ptr %initial_tsn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %initial_tsn, align 4
  %initial_tsn129 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 15, i32 4
  %67 = ptrtoint ptr %initial_tsn129 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %initial_tsn129, align 4
  %strreset_inseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 82
  %68 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %66, ptr %strreset_inseq, align 8
  %sinit_num_ostreams = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 5
  %69 = ptrtoint ptr %sinit_num_ostreams to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sinit_num_ostreams, align 8
  %71 = load i16, ptr %num_inbound_streams, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %71)
  %cmp137 = icmp ugt i16 %70, %71
  br i1 %cmp137, label %if.then139, label %for.end110.if.end144_crit_edge

for.end110.if.end144_crit_edge:                   ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

if.then139:                                       ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %sinit_num_ostreams to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %sinit_num_ostreams, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then139, %for.end110.if.end144_crit_edge
  %sinit_max_instreams = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 6
  %73 = ptrtoint ptr %sinit_max_instreams to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %sinit_max_instreams, align 2
  %75 = ptrtoint ptr %num_outbound_streams to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %num_outbound_streams, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %76)
  %cmp150 = icmp ugt i16 %74, %76
  br i1 %cmp150, label %if.then152, label %if.end144.if.end157_crit_edge

if.end144.if.end157_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then152:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %sinit_max_instreams to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %sinit_max_instreams, align 2
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %if.end144.if.end157_crit_edge
  %peer_vtag = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %peer_vtag to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %54, ptr %peer_vtag, align 4
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %rwnd to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %57, ptr %rwnd, align 8
  %80 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %80)
  %transport.0362 = load ptr, ptr %peer, align 8
  %cmp175.not363 = icmp eq ptr %transport.0362, %peer
  br i1 %cmp175.not363, label %if.end157.for.end188_crit_edge, label %if.end157.for.body178_crit_edge

if.end157.for.body178_crit_edge:                  ; preds = %if.end157
  br label %for.body178

if.end157.for.end188_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end188

for.body178:                                      ; preds = %for.body178.for.body178_crit_edge, %if.end157.for.body178_crit_edge
  %transport.0364 = phi ptr [ %transport.0, %for.body178.for.body178_crit_edge ], [ %transport.0362, %if.end157.for.body178_crit_edge ]
  %81 = ptrtoint ptr %a_rwnd117 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %a_rwnd117, align 4
  %ssthresh = getelementptr inbounds %struct.sctp_transport, ptr %transport.0364, i32 0, i32 14
  %83 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %ssthresh, align 8
  %84 = ptrtoint ptr %transport.0364 to i32
  call void @__asan_load4_noabort(i32 %84)
  %transport.0 = load ptr, ptr %transport.0364, align 8
  %cmp175.not = icmp eq ptr %transport.0, %peer
  br i1 %cmp175.not, label %for.body178.for.end188_crit_edge, label %for.body178.for.body178_crit_edge

for.body178.for.body178_crit_edge:                ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body178

for.body178.for.end188_crit_edge:                 ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end188

for.end188:                                       ; preds = %for.body178.for.end188_crit_edge, %if.end157.for.end188_crit_edge
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10
  %85 = ptrtoint ptr %initial_tsn129 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %initial_tsn129, align 4
  %call193 = call ptr @sctp_tsnmap_init(ptr noundef %tsn_map, i16 noundef zeroext 32, i32 noundef %86, i32 noundef %gfp) #11
  %tobool194.not = icmp eq ptr %call193, null
  br i1 %tobool194.not, label %for.end188.clean_up_crit_edge, label %if.end196

for.end188.clean_up_crit_edge:                    ; preds = %for.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_up

if.end196:                                        ; preds = %for.end188
  %stream = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %87 = ptrtoint ptr %sinit_num_ostreams to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sinit_num_ostreams, align 8
  %89 = ptrtoint ptr %sinit_max_instreams to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %sinit_max_instreams, align 2
  %call201 = call i32 @sctp_stream_init(ptr noundef %stream, i16 noundef zeroext %88, i16 noundef zeroext %90, i32 noundef %gfp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %if.end196.clean_up_crit_edge

if.end196.clean_up_crit_edge:                     ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_up

if.end204:                                        ; preds = %if.end196
  call void @sctp_assoc_update_frag_point(ptr noundef %asoc) #11
  %temp205 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 78
  %91 = ptrtoint ptr %temp205 to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load206 = load i8, ptr %temp205, align 8
  %92 = and i8 %bf.load206, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool209.not = icmp eq i8 %92, 0
  br i1 %tobool209.not, label %land.lhs.true210, label %if.end204.if.end214_crit_edge

if.end204.if.end214_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

land.lhs.true210:                                 ; preds = %if.end204
  %call211 = call i32 @sctp_assoc_set_id(ptr noundef %asoc, i32 noundef %gfp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %land.lhs.true210.if.end214_crit_edge, label %land.lhs.true210.clean_up_crit_edge

land.lhs.true210.clean_up_crit_edge:              ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_up

land.lhs.true210.if.end214_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

if.end214:                                        ; preds = %land.lhs.true210.if.end214_crit_edge, %if.end204.if.end214_crit_edge
  %93 = ptrtoint ptr %initial_tsn129 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %initial_tsn129, align 4
  %sub = add i32 %94, -1
  %addip_serial = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 18
  %95 = ptrtoint ptr %addip_serial to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub, ptr %addip_serial, align 4
  br label %cleanup

clean_up:                                         ; preds = %land.lhs.true210.clean_up_crit_edge, %if.end196.clean_up_crit_edge, %for.end188.clean_up_crit_edge, %if.then85, %for.end.clean_up_crit_edge, %if.end45.clean_up_crit_edge
  %peer219 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %96 = ptrtoint ptr %peer219 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %peer219, align 8
  %cmp.i346.not366 = icmp eq ptr %97, %peer219
  br i1 %cmp.i346.not366, label %clean_up.cleanup_crit_edge, label %clean_up.for.body229_crit_edge

clean_up.for.body229_crit_edge:                   ; preds = %clean_up
  br label %for.body229

clean_up.cleanup_crit_edge:                       ; preds = %clean_up
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body229:                                      ; preds = %for.inc238.for.body229_crit_edge, %clean_up.for.body229_crit_edge
  %pos.1367 = phi ptr [ %temp.1368, %for.inc238.for.body229_crit_edge ], [ %97, %clean_up.for.body229_crit_edge ]
  %98 = ptrtoint ptr %pos.1367 to i32
  call void @__asan_load4_noabort(i32 %98)
  %temp.1368 = load ptr, ptr %pos.1367, align 4
  %state233 = getelementptr inbounds %struct.sctp_transport, ptr %pos.1367, i32 0, i32 37
  %99 = ptrtoint ptr %state233 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp234.not = icmp eq i32 %100, 2
  br i1 %cmp234.not, label %for.body229.for.inc238_crit_edge, label %if.then236

for.body229.for.inc238_crit_edge:                 ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc238

if.then236:                                       ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #13
  call void @sctp_assoc_rm_peer(ptr noundef %asoc, ptr noundef %pos.1367) #11
  br label %for.inc238

for.inc238:                                       ; preds = %if.then236, %for.body229.for.inc238_crit_edge
  %cmp.i346.not = icmp eq ptr %temp.1368, %peer219
  br i1 %cmp.i346.not, label %for.inc238.cleanup_crit_edge, label %for.inc238.for.body229_crit_edge

for.inc238.for.body229_crit_edge:                 ; preds = %for.inc238
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body229

for.inc238.cleanup_crit_edge:                     ; preds = %for.inc238
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc238.cleanup_crit_edge, %clean_up.cleanup_crit_edge, %if.end214, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end214 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %clean_up.cleanup_crit_edge ], [ 0, %for.inc238.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_assoc_add_peer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_cmp_addr_exact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_af_specific(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_process_param(ptr noundef %asoc, [1 x i32] %param.coerce, ptr noundef %peer_addr, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %addr = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %param.coerce.fca.0.extract = extractvalue [1 x i32] %param.coerce, 0
  %0 = inttoptr i32 %param.coerce.fca.0.extract to ptr
  %ep1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %1 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep1, align 4
  %net2 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %3 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net2, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr) #11
  %5 = call ptr @memset(ptr %addr, i32 255, i32 28)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %7, label %entry.do.body237_crit_edge [
    i16 6, label %sw.bb
    i16 5, label %sw.bb7
    i16 9, label %sw.bb28
    i16 11, label %do.body
    i16 12, label %sw.bb42
    i16 7, label %sw.bb108
    i16 1, label %entry.sw.epilog255_crit_edge
    i16 8, label %entry.sw.epilog255_crit_edge361
    i16 -32768, label %sw.bb124
    i16 -16378, label %sw.bb135
    i16 -16380, label %sw.bb138
    i16 -32760, label %sw.bb166
    i16 -16384, label %sw.bb168
    i16 -32766, label %sw.bb180
    i16 -32764, label %sw.bb198
    i16 -32765, label %sw.bb217
  ]

entry.sw.epilog255_crit_edge361:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

entry.sw.epilog255_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

entry.do.body237_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body237

sw.bb:                                            ; preds = %entry
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %9 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %12)
  %cmp.not = icmp eq i16 %12, 10
  br i1 %cmp.not, label %sw.bb.do_addr_param_crit_edge, label %sw.bb.sw.epilog255_crit_edge

sw.bb.sw.epilog255_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

sw.bb.do_addr_param_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_addr_param

sw.bb7:                                           ; preds = %entry
  %sk9 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %13 = ptrtoint ptr %sk9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk9, align 4
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %16 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %sw.bb7.do_addr_param_crit_edge, label %sw.bb7.sw.epilog255_crit_edge

sw.bb7.sw.epilog255_crit_edge:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

sw.bb7.do_addr_param_crit_edge:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_addr_param

do_addr_param:                                    ; preds = %sw.bb7.do_addr_param_crit_edge, %sw.bb.do_addr_param_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %7)
  %switch.selectcmp.i = icmp eq i16 %7, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %switch.selectcmp2.i = icmp eq i16 %7, 5
  %17 = select i1 %switch.selectcmp.i, i16 10, i16 0
  %conv14 = select i1 %switch.selectcmp2.i, i16 2, i16 %17
  %call15 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %conv14) #11
  %from_addr_param = getelementptr inbounds %struct.sctp_af, ptr %call15, i32 0, i32 10
  %18 = ptrtoint ptr %from_addr_param to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %from_addr_param, align 4
  %port = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port, align 2
  %call16 = call zeroext i1 %19(ptr noundef nonnull %addr, ptr noundef %0, i16 noundef zeroext %21, i32 noundef 0) #11
  br i1 %call16, label %if.end18, label %do_addr_param.sw.epilog255_crit_edge

do_addr_param.sw.epilog255_crit_edge:             ; preds = %do_addr_param
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.end18:                                         ; preds = %do_addr_param
  %call19 = call i32 @sctp_scope(ptr noundef %peer_addr) #11
  %call20 = call i32 @sctp_in_scope(ptr noundef %4, ptr noundef nonnull %addr, i32 noundef %call19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end18.sw.epilog255_crit_edge, label %if.then22

if.end18.sw.epilog255_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.then22:                                        ; preds = %if.end18
  %call23 = call ptr @sctp_assoc_add_peer(ptr noundef %asoc, ptr noundef nonnull %addr, i32 noundef %gfp, i32 noundef 3) #11
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.then22.sw.epilog255_crit_edge

if.then22.sw.epilog255_crit_edge:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  %cookie_preserve_enable = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 38, i32 20
  %22 = ptrtoint ptr %cookie_preserve_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cookie_preserve_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %sw.bb28.sw.epilog255_crit_edge, label %if.end31

sw.bb28.sw.epilog255_crit_edge:                   ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.end31:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  %lifespan_increment = getelementptr inbounds %struct.sctp_cookie_preserve_param, ptr %0, i32 0, i32 1
  %24 = ptrtoint ptr %lifespan_increment to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lifespan_increment, align 4
  %cookie_life = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 8
  %26 = ptrtoint ptr %cookie_life to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cookie_life, align 8
  %conv32 = zext i32 %25 to i64
  %mul.i = mul nuw nsw i64 %conv32, 1000000
  %add.i = add i64 %mul.i, %27
  store i64 %add.i, ptr %cookie_life, align 8
  br label %sw.epilog255

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_process_param.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_process_param, %if.then40)) #11
          to label %sw.epilog255 [label %if.then40], !srcloc !57

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_process_param.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #11
  br label %sw.epilog255

sw.bb42:                                          ; preds = %entry
  %ipv4_address = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %28 = ptrtoint ptr %ipv4_address to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load44 = load i16, ptr %ipv4_address, align 2
  %bf.clear48 = and i16 %bf.load44, -24577
  store i16 %bf.clear48, ptr %ipv4_address, align 2
  %29 = ptrtoint ptr %peer_addr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %peer_addr, align 4
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %30, label %sw.bb42.if.end70_crit_edge [
    i16 10, label %sw.bb42.if.end70.sink.split_crit_edge
    i16 2, label %if.then63
  ]

sw.bb42.if.end70.sink.split_crit_edge:            ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.sink.split

sw.bb42.if.end70_crit_edge:                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then63:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.then63, %sw.bb42.if.end70.sink.split_crit_edge
  %.sink = phi i16 [ 16384, %if.then63 ], [ 8192, %sw.bb42.if.end70.sink.split_crit_edge ]
  %bf.set68 = or i16 %bf.clear48, %.sink
  %32 = ptrtoint ptr %ipv4_address to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %bf.set68, ptr %ipv4_address, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %sw.bb42.if.end70_crit_edge
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %length, align 2
  %sub = add i16 %34, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %sub)
  %cmp79354.not = icmp ult i16 %sub, 2
  br i1 %cmp79354.not, label %if.end70.sw.epilog255_crit_edge, label %for.body.lr.ph

if.end70.sw.epilog255_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

for.body.lr.ph:                                   ; preds = %if.end70
  %35 = lshr i16 %sub, 1
  %sk90 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %umax = zext i16 %35 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0355 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sctp_supported_addrs_param, ptr %0, i32 0, i32 1, i32 %i.0355
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %37, label %for.body.for.inc_crit_edge [
    i16 5, label %for.body.for.inc.sink.split_crit_edge
    i16 6, label %sw.bb88
    i16 11, label %sw.bb103
  ]

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb88:                                          ; preds = %for.body
  %39 = ptrtoint ptr %sk90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk90, align 4
  %skc_family92 = getelementptr inbounds %struct.sock_common, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %skc_family92 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %skc_family92, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %42)
  %cmp94 = icmp eq i16 %42, 10
  br i1 %cmp94, label %sw.bb88.for.inc.sink.split_crit_edge, label %sw.bb88.for.inc_crit_edge

sw.bb88.for.inc_crit_edge:                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb88.for.inc.sink.split_crit_edge:             ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb103:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.bb103, %sw.bb88.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.sink358 = phi i16 [ 4096, %sw.bb103 ], [ 16384, %for.body.for.inc.sink.split_crit_edge ], [ 8192, %sw.bb88.for.inc.sink.split_crit_edge ]
  %43 = ptrtoint ptr %ipv4_address to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load85 = load i16, ptr %ipv4_address, align 2
  %bf.set87 = or i16 %bf.load85, %.sink358
  store i16 %bf.set87, ptr %ipv4_address, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.bb88.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0355, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.sw.epilog255_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.sw.epilog255_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

sw.bb108:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %length109 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %44 = ptrtoint ptr %length109 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %length109, align 2
  %conv110 = zext i16 %45 to i32
  %sub111 = add nsw i32 %conv110, -4
  %cookie_len = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 17
  %46 = ptrtoint ptr %cookie_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub111, ptr %cookie_len, align 8
  %cookie = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 16
  %47 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cookie, align 4
  tail call void @kfree(ptr noundef %48) #11
  %body = getelementptr inbounds %struct.sctp_cookie_param, ptr %0, i32 0, i32 1
  %49 = ptrtoint ptr %cookie_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cookie_len, align 8
  %call116 = tail call ptr @kmemdup(ptr noundef %body, i32 noundef %50, i32 noundef %gfp) #11
  %51 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call116, ptr %cookie, align 4
  %tobool121.not = icmp ne ptr %call116, null
  br label %sw.epilog255

sw.bb124:                                         ; preds = %entry
  %ecn_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %2, i32 0, i32 13
  %52 = ptrtoint ptr %ecn_enable to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load126 = load i8, ptr %ecn_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load126)
  %tobool128.not = icmp sgt i8 %bf.load126, -1
  br i1 %tobool128.not, label %sw.bb124.do.body237_crit_edge, label %if.then129

sw.bb124.do.body237_crit_edge:                    ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body237

if.then129:                                       ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #13
  %ecn_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %53 = ptrtoint ptr %ecn_capable to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load131 = load i16, ptr %ecn_capable, align 2
  %bf.set133 = or i16 %bf.load131, -32768
  store i16 %bf.set133, ptr %ecn_capable, align 2
  br label %sw.epilog255

sw.bb135:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %adaptation_ind = getelementptr inbounds %struct.sctp_adaptation_ind_param, ptr %0, i32 0, i32 1
  %54 = ptrtoint ptr %adaptation_ind to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %adaptation_ind, align 4
  %adaptation_ind137 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 14
  %56 = ptrtoint ptr %adaptation_ind137 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %adaptation_ind137, align 8
  br label %sw.epilog255

sw.bb138:                                         ; preds = %entry
  %asconf_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %2, i32 0, i32 13
  %57 = ptrtoint ptr %asconf_enable to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load139 = load i8, ptr %asconf_enable, align 2
  %58 = and i8 %bf.load139, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool142.not = icmp eq i8 %58, 0
  br i1 %tobool142.not, label %sw.bb138.do.body237_crit_edge, label %if.end144

sw.bb138.do.body237_crit_edge:                    ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body237

if.end144:                                        ; preds = %sw.bb138
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %60)
  %switch.selectcmp.i347 = icmp eq i16 %60, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %60)
  %switch.selectcmp2.i349 = icmp eq i16 %60, 5
  %61 = select i1 %switch.selectcmp.i347, i16 10, i16 0
  %conv147 = select i1 %switch.selectcmp2.i349, i16 2, i16 %61
  %call148 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %conv147) #11
  %tobool149.not = icmp eq ptr %call148, null
  br i1 %tobool149.not, label %if.end144.sw.epilog255_crit_edge, label %if.end151

if.end144.sw.epilog255_crit_edge:                 ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.end151:                                        ; preds = %if.end144
  %from_addr_param152 = getelementptr inbounds %struct.sctp_af, ptr %call148, i32 0, i32 10
  %62 = ptrtoint ptr %from_addr_param152 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %from_addr_param152, align 4
  %port154 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 3
  %64 = ptrtoint ptr %port154 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %port154, align 2
  %call155 = call zeroext i1 %63(ptr noundef nonnull %addr, ptr noundef %add.ptr, i16 noundef zeroext %65, i32 noundef 0) #11
  br i1 %call155, label %if.end157, label %if.end151.sw.epilog255_crit_edge

if.end151.sw.epilog255_crit_edge:                 ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.end157:                                        ; preds = %if.end151
  %addr_valid = getelementptr inbounds %struct.sctp_af, ptr %call148, i32 0, i32 12
  %66 = ptrtoint ptr %addr_valid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr_valid, align 4
  %call158 = call i32 %67(ptr noundef nonnull %addr, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end157.sw.epilog255_crit_edge, label %if.end161

if.end157.sw.epilog255_crit_edge:                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.end161:                                        ; preds = %if.end157
  %call162 = call ptr @sctp_assoc_lookup_paddr(ptr noundef %asoc, ptr noundef nonnull %addr) #11
  %tobool163.not = icmp eq ptr %call162, null
  br i1 %tobool163.not, label %if.end161.sw.epilog255_crit_edge, label %if.end165

if.end161.sw.epilog255_crit_edge:                 ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.end165:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  call void @sctp_assoc_set_primary(ptr noundef %asoc, ptr noundef nonnull %call162) #11
  br label %sw.epilog255

sw.bb166:                                         ; preds = %entry
  %length.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %68 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %length.i, align 2
  %sub.i = add i16 %69, -4
  %conv2.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp67.not.i = icmp eq i16 %sub.i, 0
  br i1 %cmp67.not.i, label %sw.bb166.sw.epilog255_crit_edge, label %for.body.lr.ph.i

sw.bb166.sw.epilog255_crit_edge:                  ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

for.body.lr.ph.i:                                 ; preds = %sw.bb166
  %intl_capable.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %intl_enable.i = getelementptr inbounds %struct.sctp_endpoint, ptr %2, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sctp_supported_ext_param, ptr %0, i32 0, i32 1, i32 %i.068.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %71, label %for.body.i.for.inc.i_crit_edge [
    i8 -126, label %sw.bb.i
    i8 -64, label %sw.bb7.i
    i8 15, label %sw.bb19.i
    i8 -63, label %for.body.i.sw.bb31.i_crit_edge
    i8 -128, label %for.body.i.sw.bb31.i_crit_edge362
    i8 64, label %sw.bb43.i
  ]

for.body.i.sw.bb31.i_crit_edge362:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb31.i

for.body.i.sw.bb31.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb31.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  %73 = ptrtoint ptr %intl_enable.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i = load i8, ptr %intl_enable.i, align 2
  %74 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i, label %sw.bb.i.for.inc.i_crit_edge, label %sw.bb.i.for.inc.sink.split.i_crit_edge

sw.bb.i.for.inc.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb7.i:                                         ; preds = %for.body.i
  %75 = ptrtoint ptr %intl_enable.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load9.i = load i8, ptr %intl_enable.i, align 2
  %76 = and i8 %bf.load9.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool12.not.i = icmp eq i8 %76, 0
  br i1 %tobool12.not.i, label %sw.bb7.i.for.inc.i_crit_edge, label %sw.bb7.i.for.inc.sink.split.i_crit_edge

sw.bb7.i.for.inc.sink.split.i_crit_edge:          ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i

sw.bb7.i.for.inc.i_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb19.i:                                        ; preds = %for.body.i
  %77 = ptrtoint ptr %intl_enable.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load21.i = load i8, ptr %intl_enable.i, align 2
  %78 = and i8 %bf.load21.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool24.not.i = icmp eq i8 %78, 0
  br i1 %tobool24.not.i, label %sw.bb19.i.for.inc.i_crit_edge, label %sw.bb19.i.for.inc.sink.split.i_crit_edge

sw.bb19.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i

sw.bb19.i.for.inc.i_crit_edge:                    ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb31.i:                                        ; preds = %for.body.i.sw.bb31.i_crit_edge, %for.body.i.sw.bb31.i_crit_edge362
  %79 = ptrtoint ptr %intl_enable.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load33.i = load i8, ptr %intl_enable.i, align 2
  %80 = and i8 %bf.load33.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool36.not.i = icmp eq i8 %80, 0
  br i1 %tobool36.not.i, label %sw.bb31.i.for.inc.i_crit_edge, label %sw.bb31.i.for.inc.sink.split.i_crit_edge

sw.bb31.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i

sw.bb31.i.for.inc.i_crit_edge:                    ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb43.i:                                        ; preds = %for.body.i
  %81 = ptrtoint ptr %intl_enable.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load45.i = load i8, ptr %intl_enable.i, align 2
  %82 = and i8 %bf.load45.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool48.not.i = icmp eq i8 %82, 0
  br i1 %tobool48.not.i, label %sw.bb43.i.for.inc.i_crit_edge, label %sw.bb43.i.for.inc.sink.split.i_crit_edge

sw.bb43.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i

sw.bb43.i.for.inc.i_crit_edge:                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %sw.bb43.i.for.inc.sink.split.i_crit_edge, %sw.bb31.i.for.inc.sink.split.i_crit_edge, %sw.bb19.i.for.inc.sink.split.i_crit_edge, %sw.bb7.i.for.inc.sink.split.i_crit_edge, %sw.bb.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 512, %sw.bb.i.for.inc.sink.split.i_crit_edge ], [ 1024, %sw.bb7.i.for.inc.sink.split.i_crit_edge ], [ 128, %sw.bb19.i.for.inc.sink.split.i_crit_edge ], [ 2048, %sw.bb31.i.for.inc.sink.split.i_crit_edge ], [ 256, %sw.bb43.i.for.inc.sink.split.i_crit_edge ]
  %83 = ptrtoint ptr %intl_capable.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load5.i = load i16, ptr %intl_capable.i, align 2
  %bf.set.i = or i16 %bf.load5.i, %.sink.i
  store i16 %bf.set.i, ptr %intl_capable.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %sw.bb43.i.for.inc.i_crit_edge, %sw.bb31.i.for.inc.i_crit_edge, %sw.bb19.i.for.inc.i_crit_edge, %sw.bb7.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog255_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.sw.epilog255_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

sw.bb168:                                         ; preds = %entry
  %prsctp_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %2, i32 0, i32 13
  %84 = ptrtoint ptr %prsctp_enable to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load170 = load i8, ptr %prsctp_enable, align 2
  %85 = and i8 %bf.load170, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool173.not = icmp eq i8 %85, 0
  br i1 %tobool173.not, label %sw.bb168.do.body237_crit_edge, label %if.then174

sw.bb168.do.body237_crit_edge:                    ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body237

if.then174:                                       ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #13
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %86 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load176 = load i16, ptr %prsctp_capable, align 2
  %bf.set178 = or i16 %bf.load176, 1024
  store i16 %bf.set178, ptr %prsctp_capable, align 2
  br label %sw.epilog255

sw.bb180:                                         ; preds = %entry
  %auth_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %2, i32 0, i32 13
  %87 = ptrtoint ptr %auth_enable to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load181 = load i8, ptr %auth_enable, align 2
  %88 = and i8 %bf.load181, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool184.not = icmp eq i8 %88, 0
  br i1 %tobool184.not, label %sw.bb180.do.body237_crit_edge, label %if.end186

sw.bb180.do.body237_crit_edge:                    ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body237

if.end186:                                        ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #13
  %peer_random = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 19
  %89 = ptrtoint ptr %peer_random to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %peer_random, align 8
  tail call void @kfree(ptr noundef %90) #11
  %length188 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %91 = ptrtoint ptr %length188 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %length188, align 2
  %conv189 = zext i16 %92 to i32
  %call190 = tail call ptr @kmemdup(ptr noundef %0, i32 noundef %conv189, i32 noundef %gfp) #11
  %93 = ptrtoint ptr %peer_random to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call190, ptr %peer_random, align 8
  %tobool195.not = icmp ne ptr %call190, null
  br label %sw.epilog255

sw.bb198:                                         ; preds = %entry
  %auth_enable199 = getelementptr inbounds %struct.sctp_endpoint, ptr %2, i32 0, i32 13
  %94 = ptrtoint ptr %auth_enable199 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load200 = load i8, ptr %auth_enable199, align 2
  %95 = and i8 %bf.load200, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool203.not = icmp eq i8 %95, 0
  br i1 %tobool203.not, label %sw.bb198.do.body237_crit_edge, label %if.end205

sw.bb198.do.body237_crit_edge:                    ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body237

if.end205:                                        ; preds = %sw.bb198
  %peer_hmacs = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 21
  %96 = ptrtoint ptr %peer_hmacs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %peer_hmacs, align 8
  tail call void @kfree(ptr noundef %97) #11
  %length207 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %98 = ptrtoint ptr %length207 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %length207, align 2
  %conv208 = zext i16 %99 to i32
  %call209 = tail call ptr @kmemdup(ptr noundef %0, i32 noundef %conv208, i32 noundef %gfp) #11
  %100 = ptrtoint ptr %peer_hmacs to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call209, ptr %peer_hmacs, align 8
  %tobool214.not = icmp eq ptr %call209, null
  br i1 %tobool214.not, label %if.end205.sw.epilog255_crit_edge, label %if.end216

if.end205.sw.epilog255_crit_edge:                 ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog255

if.end216:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sctp_auth_asoc_set_default_hmac(ptr noundef %asoc, ptr noundef %0) #11
  br label %sw.epilog255

sw.bb217:                                         ; preds = %entry
  %auth_enable218 = getelementptr inbounds %struct.sctp_endpoint, ptr %2, i32 0, i32 13
  %101 = ptrtoint ptr %auth_enable218 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load219 = load i8, ptr %auth_enable218, align 2
  %102 = and i8 %bf.load219, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool222.not = icmp eq i8 %102, 0
  br i1 %tobool222.not, label %sw.bb217.do.body237_crit_edge, label %if.end224

sw.bb217.do.body237_crit_edge:                    ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body237

if.end224:                                        ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_pc() #13
  %peer_chunks = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 20
  %103 = ptrtoint ptr %peer_chunks to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %peer_chunks, align 4
  tail call void @kfree(ptr noundef %104) #11
  %length226 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %105 = ptrtoint ptr %length226 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %length226, align 2
  %conv227 = zext i16 %106 to i32
  %call228 = tail call ptr @kmemdup(ptr noundef %0, i32 noundef %conv227, i32 noundef %gfp) #11
  %107 = ptrtoint ptr %peer_chunks to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call228, ptr %peer_chunks, align 4
  %tobool233.not = icmp ne ptr %call228, null
  br label %sw.epilog255

do.body237:                                       ; preds = %sw.bb217.do.body237_crit_edge, %sw.bb198.do.body237_crit_edge, %sw.bb180.do.body237_crit_edge, %sw.bb168.do.body237_crit_edge, %sw.bb138.do.body237_crit_edge, %sw.bb124.do.body237_crit_edge, %entry.do.body237_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_process_param.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_process_param, %if.then249)) #11
          to label %sw.epilog255 [label %if.then249], !srcloc !57

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %0, align 2
  %conv251 = zext i16 %109 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_process_param.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17, i32 noundef %conv251, ptr noundef %asoc) #11
  br label %sw.epilog255

sw.epilog255:                                     ; preds = %if.then249, %do.body237, %if.end224, %if.end216, %if.end205.sw.epilog255_crit_edge, %if.end186, %if.then174, %for.inc.i.sw.epilog255_crit_edge, %sw.bb166.sw.epilog255_crit_edge, %if.end165, %if.end161.sw.epilog255_crit_edge, %if.end157.sw.epilog255_crit_edge, %if.end151.sw.epilog255_crit_edge, %if.end144.sw.epilog255_crit_edge, %sw.bb135, %if.then129, %sw.bb108, %for.inc.sw.epilog255_crit_edge, %if.end70.sw.epilog255_crit_edge, %if.then40, %do.body, %if.end31, %sw.bb28.sw.epilog255_crit_edge, %if.then22.sw.epilog255_crit_edge, %if.end18.sw.epilog255_crit_edge, %do_addr_param.sw.epilog255_crit_edge, %sw.bb7.sw.epilog255_crit_edge, %sw.bb.sw.epilog255_crit_edge, %entry.sw.epilog255_crit_edge, %entry.sw.epilog255_crit_edge361
  %retval3.0.shrunk = phi i1 [ true, %if.then249 ], [ true, %if.end216 ], [ true, %if.then174 ], [ true, %if.end165 ], [ true, %if.end161.sw.epilog255_crit_edge ], [ true, %if.end157.sw.epilog255_crit_edge ], [ true, %if.end151.sw.epilog255_crit_edge ], [ true, %if.end144.sw.epilog255_crit_edge ], [ true, %sw.bb135 ], [ true, %if.then129 ], [ true, %entry.sw.epilog255_crit_edge ], [ true, %entry.sw.epilog255_crit_edge361 ], [ true, %if.then40 ], [ true, %if.end31 ], [ true, %sw.bb28.sw.epilog255_crit_edge ], [ true, %sw.bb7.sw.epilog255_crit_edge ], [ true, %if.then22.sw.epilog255_crit_edge ], [ true, %if.end18.sw.epilog255_crit_edge ], [ true, %do_addr_param.sw.epilog255_crit_edge ], [ true, %sw.bb.sw.epilog255_crit_edge ], [ %tobool121.not, %sw.bb108 ], [ %tobool195.not, %if.end186 ], [ false, %if.end205.sw.epilog255_crit_edge ], [ %tobool233.not, %if.end224 ], [ true, %do.body ], [ true, %sw.bb166.sw.epilog255_crit_edge ], [ true, %do.body237 ], [ true, %if.end70.sw.epilog255_crit_edge ], [ true, %for.inc.sw.epilog255_crit_edge ], [ true, %for.inc.i.sw.epilog255_crit_edge ]
  %retval3.0 = zext i1 %retval3.0.shrunk to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog255, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval3.0, %sw.epilog255 ], [ 0, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_rm_peer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_tsnmap_init(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_stream_init(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_update_frag_point(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_assoc_set_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_generate_tag(ptr nocapture noundef readnone %ep) local_unnamed_addr #0 align 64 {
entry:
  %x = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #11
  %0 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x, align 4, !annotation !56
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  call void @get_random_bytes(ptr noundef nonnull %x, i32 noundef 4) #11
  %1 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_generate_tsn(ptr nocapture noundef readnone %ep) local_unnamed_addr #0 align 64 {
entry:
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #11
  %0 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retval1, align 4, !annotation !56
  call void @get_random_bytes(ptr noundef nonnull %retval1, i32 noundef 4) #11
  %1 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %retval1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #11
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_asconf_update_ip(ptr noundef %asoc, ptr noundef %laddr, ptr noundef %addrs, i32 noundef %addrcnt, i16 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %addr_param = alloca %union.sctp_addr_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %addr_param) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addrcnt)
  %cmp153 = icmp sgt i32 %addrcnt, 0
  %0 = call ptr @memset(ptr %addr_param, i32 255, i32 20)
  br i1 %cmp153, label %for.body.lr.ph, label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %asconf_addr_del_pending = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 71
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr_buf.0157 = phi ptr [ %addrs, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %del_pickup.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %del_pickup.1, %for.inc.for.body_crit_edge ]
  %i.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %totallen.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %totallen.1, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %addr_buf.0157 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr_buf.0157, align 4
  %call = call ptr @sctp_get_af_specific(i16 noundef zeroext %2) #11
  %to_addr_param = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %to_addr_param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %to_addr_param, align 4
  %call2 = call i32 %4(ptr noundef %addr_buf.0157, ptr noundef nonnull %addr_param) #11
  %add = add i32 %call2, 8
  %add3 = add i32 %add, %totallen.0154
  %sockaddr_len = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 22
  %5 = ptrtoint ptr %sockaddr_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sockaddr_len, align 4
  %add.ptr = getelementptr i8, ptr %addr_buf.0157, i32 %6
  %7 = ptrtoint ptr %asconf_addr_del_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asconf_addr_del_pending, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_pickup.0156)
  %tobool4.not = icmp eq i32 %del_pickup.0156, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %add6 = add i32 %add, %add3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_make_asconf_update_ip.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_make_asconf_update_ip, %if.then11)) #11
          to label %for.inc [label %if.then11], !srcloc !57

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_make_asconf_update_ip.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %add6) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %totallen.1 = phi i32 [ %add3, %land.lhs.true.for.inc_crit_edge ], [ %add6, %if.then11 ], [ %add3, %for.body.for.inc_crit_edge ], [ %add6, %if.then ]
  %del_pickup.1 = phi i32 [ 1, %land.lhs.true.for.inc_crit_edge ], [ 1, %if.then11 ], [ %del_pickup.0156, %for.body.for.inc_crit_edge ], [ 1, %if.then ]
  %inc = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc, %addrcnt
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call13 = call fastcc ptr @sctp_make_asconf(ptr noundef %asoc, ptr noundef %laddr, i32 noundef %totallen.1)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %for.cond17.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call13166 = call fastcc ptr @sctp_make_asconf(ptr noundef %asoc, ptr noundef %laddr, i32 noundef 0)
  br label %cleanup

for.cond17.preheader:                             ; preds = %for.end
  br i1 %cmp153, label %for.body19.lr.ph, label %for.cond17.preheader.for.end32_crit_edge

for.cond17.preheader.for.end32_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

for.body19.lr.ph:                                 ; preds = %for.cond17.preheader
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call13, i32 0, i32 10
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %call13, i32 0, i32 5
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call13, i32 0, i32 9
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.body19.lr.ph
  %addr_buf.1161 = phi ptr [ %addrs, %for.body19.lr.ph ], [ %add.ptr29, %for.body19.for.body19_crit_edge ]
  %i.1160 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc31, %for.body19.for.body19_crit_edge ]
  %9 = ptrtoint ptr %addr_buf.1161 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr_buf.1161, align 4
  %call21 = call ptr @sctp_get_af_specific(i16 noundef zeroext %10) #11
  %to_addr_param22 = getelementptr inbounds %struct.sctp_af, ptr %call21, i32 0, i32 11
  %11 = ptrtoint ptr %to_addr_param22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %to_addr_param22, align 4
  %call23 = call i32 %12(ptr noundef %addr_buf.1161, ptr noundef nonnull %addr_param) #11
  %13 = trunc i32 %call23 to i16
  %conv = add i16 %13, 8
  %14 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %18 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb.i, align 4
  %call.i.i = call ptr @skb_put(ptr noundef %19, i32 noundef %sub.i) #11
  %20 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %21 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb.i, align 4
  %call.i19.i = call ptr @skb_put(ptr noundef %22, i32 noundef 8) #11
  %23 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %flags, ptr %call.i19.i, align 1
  %param.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %24 = ptrtoint ptr %param.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv, ptr %param.sroa.7.0.call.i19.i.sroa_idx, align 1
  %param.sroa.10.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %25 = ptrtoint ptr %param.sroa.10.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %i.1160, ptr %param.sroa.10.0.call.i19.i.sroa_idx, align 1
  %26 = trunc i32 %and.i to i16
  %conv5.i = add i16 %26, 8
  %27 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv5.i, ptr %length7.i, align 2
  %30 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %34 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %chunk_end.i, align 4
  %35 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i108 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %length.i108 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %length.i108, align 2
  %conv.i109 = zext i16 %37 to i32
  %add.i110 = add nuw nsw i32 %conv.i109, 3
  %and.i111 = and i32 %add.i110, 131068
  %sub.i112 = sub nsw i32 %and.i111, %conv.i109
  %call.i.i114 = call ptr @skb_put(ptr noundef %31, i32 noundef %sub.i112) #11
  %38 = call ptr @memset(ptr %call.i.i114, i32 0, i32 %sub.i112)
  %39 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb.i, align 4
  %call.i19.i115 = call ptr @skb_put(ptr noundef %40, i32 noundef %call23) #11
  %41 = call ptr @memcpy(ptr %call.i19.i115, ptr %addr_param, i32 %call23)
  %add4.i116 = add i32 %and.i111, %call23
  %conv5.i117 = trunc i32 %add4.i116 to i16
  %42 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i118 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %length7.i118 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv5.i117, ptr %length7.i118, align 2
  %45 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skb.i, align 4
  %tail.i.i119 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %tail.i.i119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i119, align 8
  %49 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %chunk_end.i, align 4
  %sockaddr_len28 = getelementptr inbounds %struct.sctp_af, ptr %call21, i32 0, i32 22
  %50 = ptrtoint ptr %sockaddr_len28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sockaddr_len28, align 4
  %add.ptr29 = getelementptr i8, ptr %addr_buf.1161, i32 %51
  %inc31 = add nuw nsw i32 %i.1160, 1
  %exitcond163.not = icmp eq i32 %inc31, %addrcnt
  br i1 %exitcond163.not, label %for.body19.for.end32_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.body19.for.end32_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

for.end32:                                        ; preds = %for.body19.for.end32_crit_edge, %for.cond17.preheader.for.end32_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond17.preheader.for.end32_crit_edge ], [ %addrcnt, %for.body19.for.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16383, i16 %flags)
  %cmp34 = icmp ne i16 %flags, -16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_pickup.1)
  %tobool37.not = icmp eq i32 %del_pickup.1, 0
  %or.cond = select i1 %cmp34, i1 true, i1 %tobool37.not
  br i1 %or.cond, label %for.end32.cleanup_crit_edge, label %if.then38

for.end32.cleanup_crit_edge:                      ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then38:                                        ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #13
  %asconf_addr_del_pending39 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 71
  %52 = ptrtoint ptr %asconf_addr_del_pending39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asconf_addr_del_pending39, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 4
  %call41 = call ptr @sctp_get_af_specific(i16 noundef zeroext %55) #11
  %to_addr_param42 = getelementptr inbounds %struct.sctp_af, ptr %call41, i32 0, i32 11
  %56 = ptrtoint ptr %to_addr_param42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %to_addr_param42, align 4
  %call43 = call i32 %57(ptr noundef %53, ptr noundef nonnull %addr_param) #11
  %58 = trunc i32 %call43 to i16
  %conv47 = add i16 %58, 8
  %chunk_hdr.i121 = getelementptr inbounds %struct.sctp_chunk, ptr %call13, i32 0, i32 10
  %59 = ptrtoint ptr %chunk_hdr.i121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chunk_hdr.i121, align 4
  %length.i122 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %length.i122 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %length.i122, align 2
  %conv.i123 = zext i16 %62 to i32
  %add.i124 = add nuw nsw i32 %conv.i123, 3
  %and.i125 = and i32 %add.i124, 131068
  %sub.i126 = sub nsw i32 %and.i125, %conv.i123
  %skb.i127 = getelementptr inbounds %struct.sctp_chunk, ptr %call13, i32 0, i32 5
  %63 = ptrtoint ptr %skb.i127 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skb.i127, align 4
  %call.i.i128 = call ptr @skb_put(ptr noundef %64, i32 noundef %sub.i126) #11
  %65 = call ptr @memset(ptr %call.i.i128, i32 0, i32 %sub.i126)
  %66 = ptrtoint ptr %skb.i127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb.i127, align 4
  %call.i19.i129 = call ptr @skb_put(ptr noundef %67, i32 noundef 8) #11
  %68 = ptrtoint ptr %call.i19.i129 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 -16382, ptr %call.i19.i129, align 1
  %param.sroa.7.0.call.i19.i129.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i129, i32 2
  %69 = ptrtoint ptr %param.sroa.7.0.call.i19.i129.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %conv47, ptr %param.sroa.7.0.call.i19.i129.sroa_idx, align 1
  %param.sroa.10.0.call.i19.i129.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i129, i32 4
  %70 = ptrtoint ptr %param.sroa.10.0.call.i19.i129.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %i.1.lcssa, ptr %param.sroa.10.0.call.i19.i129.sroa_idx, align 1
  %71 = trunc i32 %and.i125 to i16
  %conv5.i131 = add i16 %71, 8
  %72 = ptrtoint ptr %chunk_hdr.i121 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chunk_hdr.i121, align 4
  %length7.i132 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %length7.i132 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv5.i131, ptr %length7.i132, align 2
  %75 = ptrtoint ptr %skb.i127 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skb.i127, align 4
  %tail.i.i133 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %tail.i.i133 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i.i133, align 8
  %chunk_end.i134 = getelementptr inbounds %struct.sctp_chunk, ptr %call13, i32 0, i32 9
  %79 = ptrtoint ptr %chunk_end.i134 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %chunk_end.i134, align 4
  %80 = load ptr, ptr %chunk_hdr.i121, align 4
  %length.i136 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %length.i136 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %length.i136, align 2
  %conv.i137 = zext i16 %82 to i32
  %add.i138 = add nuw nsw i32 %conv.i137, 3
  %and.i139 = and i32 %add.i138, 131068
  %sub.i140 = sub nsw i32 %and.i139, %conv.i137
  %call.i.i142 = call ptr @skb_put(ptr noundef %76, i32 noundef %sub.i140) #11
  %83 = call ptr @memset(ptr %call.i.i142, i32 0, i32 %sub.i140)
  %84 = ptrtoint ptr %skb.i127 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %skb.i127, align 4
  %call.i19.i143 = call ptr @skb_put(ptr noundef %85, i32 noundef %call43) #11
  %86 = call ptr @memcpy(ptr %call.i19.i143, ptr %addr_param, i32 %call43)
  %add4.i144 = add i32 %and.i139, %call43
  %conv5.i145 = trunc i32 %add4.i144 to i16
  %87 = ptrtoint ptr %chunk_hdr.i121 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chunk_hdr.i121, align 4
  %length7.i146 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %length7.i146 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv5.i145, ptr %length7.i146, align 2
  %90 = ptrtoint ptr %skb.i127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %skb.i127, align 4
  %tail.i.i147 = getelementptr inbounds %struct.sk_buff, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %tail.i.i147 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tail.i.i147, align 8
  %94 = ptrtoint ptr %chunk_end.i134 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %chunk_end.i134, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %for.end32.cleanup_crit_edge, %for.end.thread, %for.end.cleanup_crit_edge
  %call13171 = phi ptr [ %call13, %for.end32.cleanup_crit_edge ], [ %call13, %if.then38 ], [ null, %for.end.cleanup_crit_edge ], [ %call13166, %for.end.thread ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %addr_param) #11
  ret ptr %call13171
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sctp_make_asconf(ptr noundef %asoc, ptr noundef %addr, i32 noundef %vparam_len) unnamed_addr #0 align 64 {
entry:
  %addrparam = alloca %union.sctp_addr_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %addrparam) #11
  %0 = call ptr @memset(ptr %addrparam, i32 255, i32 20)
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr, align 4
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %2) #11
  %to_addr_param = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %to_addr_param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %to_addr_param, align 4
  %call2 = call i32 %4(ptr noundef %addr, ptr noundef nonnull %addrparam) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %vparam_len, 4
  %add3 = add i32 %add, %call2
  %call.i = call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -63, i8 noundef zeroext 0, i32 noundef %add3, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %9 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %10 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %6, i32 0, i32 75
  %11 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shkey.i.i, align 8
  %13 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %13, align 4
  call void @sctp_auth_shkey_hold(ptr noundef %12) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end7_crit_edge, label %cond.true.i.i

if.end.i.i.if.end7_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk.i.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %cond.true.i.i, %if.end.i.i.if.end7_crit_edge
  %cond.i.i = phi ptr [ %16, %cond.true.i.i ], [ null, %if.end.i.i.if.end7_crit_edge ]
  %17 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cond.i.i, ptr %17, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %addip_serial = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 69
  %23 = ptrtoint ptr %addip_serial to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addip_serial, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %addip_serial, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %28 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %29 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = call ptr @skb_put(ptr noundef %30, i32 noundef %sub.i) #11
  %31 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %32 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = call ptr @skb_put(ptr noundef %33, i32 noundef 4) #11
  %34 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %24, ptr %call.i19.i, align 1
  %35 = trunc i32 %and.i to i16
  %conv5.i = add i16 %35, 4
  %36 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv5.i, ptr %length7.i, align 2
  %39 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %44 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i19.i, ptr %subh, align 4
  %45 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i26 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %length.i26 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %length.i26, align 2
  %conv.i27 = zext i16 %47 to i32
  %add.i28 = add nuw nsw i32 %conv.i27, 3
  %and.i29 = and i32 %add.i28, 131068
  %sub.i30 = sub nsw i32 %and.i29, %conv.i27
  %call.i.i32 = call ptr @skb_put(ptr noundef %40, i32 noundef %sub.i30) #11
  %48 = call ptr @memset(ptr %call.i.i32, i32 0, i32 %sub.i30)
  %49 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i33 = call ptr @skb_put(ptr noundef %50, i32 noundef %call2) #11
  %51 = call ptr @memcpy(ptr %call.i19.i33, ptr %addrparam, i32 %call2)
  %add4.i34 = add i32 %and.i29, %call2
  %conv5.i35 = trunc i32 %add4.i34 to i16
  %52 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i36 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %length7.i36 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv5.i35, ptr %length7.i36, align 2
  %55 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i37 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %tail.i.i37 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i37, align 8
  %59 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %chunk_end.i, align 4
  %param_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 7
  %60 = ptrtoint ptr %param_hdr to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i19.i33, ptr %param_hdr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end7 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %addrparam) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_asconf_set_prim(ptr noundef %asoc, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %addrparam = alloca %union.sctp_addr_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %addrparam) #11
  %to_addr_param = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 11
  %2 = call ptr @memset(ptr %addrparam, i32 255, i32 20)
  %3 = ptrtoint ptr %to_addr_param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %to_addr_param, align 4
  %call2 = call i32 %4(ptr noundef %addr, ptr noundef nonnull %addrparam) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %call2, 8
  %call3 = call fastcc ptr @sctp_make_asconf(ptr noundef %asoc, ptr noundef %addr, i32 noundef %add)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %add to i16
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call3, i32 0, i32 10
  %5 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb.i, align 4
  %call.i.i = call ptr @skb_put(ptr noundef %10, i32 noundef %sub.i) #11
  %11 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %12 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb.i, align 4
  %call.i19.i = call ptr @skb_put(ptr noundef %13, i32 noundef 8) #11
  %14 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 -16380, ptr %call.i19.i, align 1
  %param.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %15 = ptrtoint ptr %param.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv, ptr %param.sroa.5.0.call.i19.i.sroa_idx, align 1
  %param.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %16 = ptrtoint ptr %param.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %param.sroa.7.0.call.i19.i.sroa_idx, align 1
  %17 = trunc i32 %and.i to i16
  %conv5.i = add i16 %17, 8
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv5.i, ptr %length7.i, align 2
  %21 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call3, i32 0, i32 9
  %25 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %chunk_end.i, align 4
  %26 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i25 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %length.i25 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %length.i25, align 2
  %conv.i26 = zext i16 %28 to i32
  %add.i27 = add nuw nsw i32 %conv.i26, 3
  %and.i28 = and i32 %add.i27, 131068
  %sub.i29 = sub nsw i32 %and.i28, %conv.i26
  %call.i.i31 = call ptr @skb_put(ptr noundef %22, i32 noundef %sub.i29) #11
  %29 = call ptr @memset(ptr %call.i.i31, i32 0, i32 %sub.i29)
  %30 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb.i, align 4
  %call.i19.i32 = call ptr @skb_put(ptr noundef %31, i32 noundef %call2) #11
  %32 = call ptr @memcpy(ptr %call.i19.i32, ptr %addrparam, i32 %call2)
  %add4.i33 = add i32 %and.i28, %call2
  %conv5.i34 = trunc i32 %add4.i33 to i16
  %33 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i35 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %length7.i35 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv5.i34, ptr %length7.i35, align 2
  %36 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb.i, align 4
  %tail.i.i36 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i36, align 8
  %40 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %chunk_end.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end6 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %addrparam) #11
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sctp_verify_asconf(ptr nocapture noundef readnone %asoc, ptr nocapture noundef readonly %chunk, i1 noundef zeroext %addr_param_needed, ptr nocapture noundef writeonly %errp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %params = getelementptr inbounds %struct.sctp_addip_chunk, ptr %1, i32 1
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %add.ptr1131 = getelementptr %struct.sctp_addip_chunk, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  %conv132 = zext i16 %3 to i32
  %add.ptr3133 = getelementptr i8, ptr %1, i32 %conv132
  %cmp.not134 = icmp ugt ptr %add.ptr1131, %add.ptr3133
  %.pre = xor i1 %addr_param_needed, true
  br i1 %cmp.not134, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %4 = phi i32 [ %conv, %for.inc.land.lhs.true_crit_edge ], [ %conv132, %entry.land.lhs.true_crit_edge ]
  %param.sroa.0.0136 = phi ptr [ %add.ptr62, %for.inc.land.lhs.true_crit_edge ], [ %params, %entry.land.lhs.true_crit_edge ]
  %addr_param_seen.0.off0135 = phi i1 [ %addr_param_seen.1.off0, %for.inc.land.lhs.true_crit_edge ], [ false, %entry.land.lhs.true_crit_edge ]
  %5 = getelementptr i8, ptr %1, i32 %4
  %length9 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.0136, i32 0, i32 1
  %6 = ptrtoint ptr %length9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length9, align 2
  %conv10 = zext i16 %7 to i32
  %idx.neg = sub nsw i32 0, %conv10
  %add.ptr11 = getelementptr i8, ptr %5, i32 %idx.neg
  %cmp12.not = icmp ule ptr %param.sroa.0.0136, %add.ptr11
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp16 = icmp ugt i16 %7, 3
  %or.cond = select i1 %cmp12.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %param.sroa.0.0136, ptr %errp, align 4
  %9 = ptrtoint ptr %param.sroa.0.0136 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %param.sroa.0.0136, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %10, label %for.body.cleanup79_crit_edge [
    i16 -16381, label %for.body.for.inc_crit_edge
    i16 5, label %sw.bb
    i16 6, label %sw.bb31
    i16 -16383, label %for.body.sw.bb43_crit_edge
    i16 -16382, label %for.body.sw.bb43_crit_edge142
    i16 -16380, label %for.body.sw.bb43_crit_edge143
    i16 -16379, label %for.body.sw.bb55_crit_edge
    i16 -16378, label %for.body.sw.bb55_crit_edge144
  ]

for.body.sw.bb55_crit_edge144:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb55

for.body.sw.bb55_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb55

for.body.sw.bb43_crit_edge143:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

for.body.sw.bb43_crit_edge142:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

for.body.sw.bb43_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.cleanup79_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp22.not = icmp eq i16 %7, 8
  %cmp27.not = icmp eq ptr %param.sroa.0.0136, %params
  %or.cond124 = select i1 %cmp22.not, i1 %cmp27.not, i1 false
  br i1 %or.cond124, label %sw.bb.for.inc_crit_edge, label %sw.bb.cleanup79_crit_edge

sw.bb.cleanup79_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb31:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %7)
  %cmp32.not = icmp eq i16 %7, 20
  %cmp39.not = icmp eq ptr %param.sroa.0.0136, %params
  %or.cond125 = select i1 %cmp32.not, i1 %cmp39.not, i1 false
  br i1 %or.cond125, label %sw.bb31.for.inc_crit_edge, label %sw.bb31.cleanup79_crit_edge

sw.bb31.cleanup79_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

sw.bb31.for.inc_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb43:                                          ; preds = %for.body.sw.bb43_crit_edge, %for.body.sw.bb43_crit_edge142, %for.body.sw.bb43_crit_edge143
  %brmerge = select i1 %.pre, i1 true, i1 %addr_param_seen.0.off0135
  br i1 %brmerge, label %if.end48, label %sw.bb43.cleanup79_crit_edge

sw.bb43.cleanup79_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

if.end48:                                         ; preds = %sw.bb43
  %12 = ptrtoint ptr %length9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %13)
  %cmp51 = icmp ult i16 %13, 12
  br i1 %cmp51, label %if.end48.cleanup79_crit_edge, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end48.cleanup79_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

sw.bb55:                                          ; preds = %for.body.sw.bb55_crit_edge, %for.body.sw.bb55_crit_edge144
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp56.not = icmp eq i16 %7, 8
  br i1 %cmp56.not, label %sw.bb55.for.inc_crit_edge, label %sw.bb55.cleanup79_crit_edge

sw.bb55.cleanup79_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

sw.bb55.for.inc_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %sw.bb55.for.inc_crit_edge, %if.end48.for.inc_crit_edge, %sw.bb31.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %addr_param_seen.1.off0 = phi i1 [ %addr_param_seen.0.off0135, %sw.bb55.for.inc_crit_edge ], [ %addr_param_seen.0.off0135, %if.end48.for.inc_crit_edge ], [ %addr_param_seen.0.off0135, %for.body.for.inc_crit_edge ], [ true, %sw.bb.for.inc_crit_edge ], [ true, %sw.bb31.for.inc_crit_edge ]
  %14 = ptrtoint ptr %length9 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length9, align 2
  %conv61 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv61, 3
  %and = and i32 %add, 131068
  %add.ptr62 = getelementptr i8, ptr %param.sroa.0.0136, i32 %and
  %add.ptr1 = getelementptr i8, ptr %add.ptr62, i32 4
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length, align 2
  %conv = zext i16 %17 to i32
  %add.ptr3 = getelementptr i8, ptr %1, i32 %conv
  %cmp.not = icmp ugt ptr %add.ptr1, %add.ptr3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %addr_param_seen.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %addr_param_seen.1.off0, %for.inc.for.end_crit_edge ], [ %addr_param_seen.0.off0135, %land.lhs.true.for.end_crit_edge ]
  %param.sroa.0.0.lcssa = phi ptr [ %params, %entry.for.end_crit_edge ], [ %add.ptr62, %for.inc.for.end_crit_edge ], [ %param.sroa.0.0136, %land.lhs.true.for.end_crit_edge ]
  %brmerge122 = select i1 %.pre, i1 true, i1 %addr_param_seen.0.off0.lcssa
  %addr_param_seen.0.off0.not = xor i1 %addr_param_seen.0.off0.lcssa, true
  %brmerge123 = select i1 %addr_param_needed, i1 true, i1 %addr_param_seen.0.off0.not
  %or.cond126 = select i1 %brmerge122, i1 %brmerge123, i1 false
  br i1 %or.cond126, label %if.end74, label %for.end.cleanup79_crit_edge

for.end.cleanup79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup79

if.end74:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 9
  %18 = ptrtoint ptr %chunk_end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_end, align 4
  %cmp75.not = icmp eq ptr %param.sroa.0.0.lcssa, %19
  br label %cleanup79

cleanup79:                                        ; preds = %if.end74, %for.end.cleanup79_crit_edge, %sw.bb55.cleanup79_crit_edge, %if.end48.cleanup79_crit_edge, %sw.bb43.cleanup79_crit_edge, %sw.bb31.cleanup79_crit_edge, %sw.bb.cleanup79_crit_edge, %for.body.cleanup79_crit_edge
  %retval.2 = phi i1 [ false, %for.end.cleanup79_crit_edge ], [ %cmp75.not, %if.end74 ], [ false, %sw.bb.cleanup79_crit_edge ], [ false, %sw.bb31.cleanup79_crit_edge ], [ false, %sw.bb43.cleanup79_crit_edge ], [ false, %if.end48.cleanup79_crit_edge ], [ false, %sw.bb55.cleanup79_crit_edge ], [ false, %for.body.cleanup79_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_process_asconf(ptr noundef %asoc, ptr noundef %asconf) local_unnamed_addr #0 align 64 {
entry:
  %err_param.i = alloca %struct.sctp_errhdr, align 2
  %addr.i = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %asconf, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %length2 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %length2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length2, align 2
  %conv = zext i16 %3 to i32
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %asconf, i32 0, i32 5
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %sub6 = add nuw nsw i32 %conv, 1073741816
  %length7 = getelementptr i8, ptr %7, i32 6
  %10 = ptrtoint ptr %length7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length7, align 2
  %conv8 = zext i16 %11 to i32
  %sub9 = sub nuw nsw i32 %sub6, %conv8
  %mul = shl i32 %sub9, 2
  %add.i = add i32 %mul, 4
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -128, i8 noundef zeroext 0, i32 noundef %add.i, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end58.critedge, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %16 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %17 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i.i.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %13, i32 0, i32 75
  %18 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shkey.i.i.i, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %20, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %19) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %13, i32 0, i32 3
  %22 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i.i, %if.end.i.i.i.if.end_crit_edge
  %cond.i.i.i = phi ptr [ %23, %cond.true.i.i.i ], [ null, %if.end.i.i.i.if.end_crit_edge ]
  %24 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cond.i.i.i, ptr %24, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %26 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 4, i32 0, i32 1
  %29 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %chunk_hdr.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %34 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i.i = tail call ptr @skb_put(ptr noundef %35, i32 noundef %sub.i.i) #11
  %36 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %sub.i.i)
  %37 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i = tail call ptr @skb_put(ptr noundef %38, i32 noundef 4) #11
  %39 = ptrtoint ptr %call.i19.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %9, ptr %call.i19.i.i, align 1
  %40 = trunc i32 %and.i.i to i16
  %conv5.i.i = add i16 %40, 4
  %41 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv5.i.i, ptr %length7.i.i, align 2
  %44 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i.i, align 8
  %chunk_end.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %48 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %chunk_end.i.i, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %subh.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i19.i.i, ptr %subh.i, align 4
  %add.ptr11134 = getelementptr %struct.sctp_addip_chunk, ptr %1, i32 1, i32 1
  %50 = ptrtoint ptr %length2 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %length2, align 2
  %conv14135 = zext i16 %51 to i32
  %add.ptr15136 = getelementptr i8, ptr %1, i32 %conv14135
  %cmp.not137 = icmp ugt ptr %add.ptr11134, %add.ptr15136
  br i1 %cmp.not137, label %if.end.if.then57_crit_edge, label %land.lhs.true.lr.ph

if.end.if.then57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

land.lhs.true.lr.ph:                              ; preds = %if.end
  %params = getelementptr inbounds %struct.sctp_addip_chunk, ptr %1, i32 1
  %ipv4_address.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %port.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 3
  %transport.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %asconf, i32 0, i32 19
  %source.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %asconf, i32 0, i32 16
  %ep92.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %transport_count.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 2
  %new_transport.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 72
  %err_param.i.2.err_param.i.2.err_param.2.err_param.2..sroa_idx = getelementptr inbounds i8, ptr %err_param.i, i32 2
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %52 = phi i32 [ %conv14135, %land.lhs.true.lr.ph ], [ %conv14, %for.inc.land.lhs.true_crit_edge ]
  %param.sroa.0.0139 = phi ptr [ %params, %land.lhs.true.lr.ph ], [ %add.ptr55, %for.inc.land.lhs.true_crit_edge ]
  %all_param_pass.0.off0138 = phi i1 [ true, %land.lhs.true.lr.ph ], [ %all_param_pass.2.off0, %for.inc.land.lhs.true_crit_edge ]
  %53 = getelementptr i8, ptr %1, i32 %52
  %length21 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.0139, i32 0, i32 1
  %54 = ptrtoint ptr %length21 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %length21, align 2
  %conv22 = zext i16 %55 to i32
  %idx.neg = sub nsw i32 0, %conv22
  %add.ptr23 = getelementptr i8, ptr %53, i32 %idx.neg
  %cmp24.not = icmp ule ptr %param.sroa.0.0139, %add.ptr23
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %55)
  %cmp28 = icmp ugt i16 %55, 3
  %or.cond = select i1 %cmp24.not, i1 %cmp28, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true.if.then57_crit_edge

land.lhs.true.if.then57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

for.body:                                         ; preds = %land.lhs.true
  %56 = ptrtoint ptr %param.sroa.0.0139 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %param.sroa.0.0139, align 2
  %.off = add i16 %57, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.end38

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end38:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr.i) #11
  %add.ptr.i = getelementptr i8, ptr %param.sroa.0.0139, i32 8
  %58 = call ptr @memset(ptr %addr.i, i32 255, i32 28)
  %59 = ptrtoint ptr %param.sroa.0.0139 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %param.sroa.0.0139, align 4
  %61 = zext i16 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %60, label %if.end38.if.then46.thread_crit_edge [
    i16 -16383, label %if.end38.if.end.i96_crit_edge
    i16 -16382, label %if.end38.if.end.i96_crit_edge145
    i16 -16380, label %if.end38.if.end.i96_crit_edge146
  ]

if.end38.if.end.i96_crit_edge146:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i96

if.end38.if.end.i96_crit_edge145:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i96

if.end38.if.end.i96_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i96

if.end38.if.then46.thread_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end.i96:                                       ; preds = %if.end38.if.end.i96_crit_edge, %if.end38.if.end.i96_crit_edge145, %if.end38.if.end.i96_crit_edge146
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i, align 4
  %64 = zext i16 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %63, label %if.end.i96.if.then46.thread_crit_edge [
    i16 6, label %sw.bb.i
    i16 5, label %sw.bb18.i
  ]

if.end.i96.if.then46.thread_crit_edge:            ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

sw.bb.i:                                          ; preds = %if.end.i96
  %65 = ptrtoint ptr %ipv4_address.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i = load i16, ptr %ipv4_address.i, align 2
  %66 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.not.i = icmp eq i16 %66, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.then46.thread_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i.if.then46.thread_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

sw.bb18.i:                                        ; preds = %if.end.i96
  %67 = ptrtoint ptr %ipv4_address.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load20.i = load i16, ptr %ipv4_address.i, align 2
  %68 = and i16 %bf.load20.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool23.not.i = icmp eq i16 %68, 0
  br i1 %tobool23.not.i, label %sw.bb18.i.if.then46.thread_crit_edge, label %sw.bb18.i.sw.epilog.i_crit_edge

sw.bb18.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb18.i.if.then46.thread_crit_edge:             ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

sw.epilog.i:                                      ; preds = %sw.bb18.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %63)
  %switch.selectcmp.i.i = icmp eq i16 %63, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %63)
  %switch.selectcmp2.i.i = icmp eq i16 %63, 5
  %69 = select i1 %switch.selectcmp.i.i, i16 10, i16 0
  %conv27.i = select i1 %switch.selectcmp2.i.i, i16 2, i16 %69
  %call28.i = call ptr @sctp_get_af_specific(i16 noundef zeroext %conv27.i) #11
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %sw.epilog.i.if.then46.thread_crit_edge, label %if.end34.i, !prof !59

sw.epilog.i.if.then46.thread_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end34.i:                                       ; preds = %sw.epilog.i
  %from_addr_param.i = getelementptr inbounds %struct.sctp_af, ptr %call28.i, i32 0, i32 10
  %70 = ptrtoint ptr %from_addr_param.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %from_addr_param.i, align 4
  %72 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %port.i, align 2
  %call36.i = call zeroext i1 %71(ptr noundef nonnull %addr.i, ptr noundef %add.ptr.i, i16 noundef zeroext %73, i32 noundef 0) #11
  br i1 %call36.i, label %if.end38.i, label %if.end34.i.if.then46.thread_crit_edge

if.end34.i.if.then46.thread_crit_edge:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end38.i:                                       ; preds = %if.end34.i
  %is_any.i = getelementptr inbounds %struct.sctp_af, ptr %call28.i, i32 0, i32 15
  %74 = ptrtoint ptr %is_any.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %is_any.i, align 4
  %call39.i = call i32 %75(ptr noundef nonnull %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true41.i, label %if.end38.i.if.end45.i_crit_edge

if.end38.i.if.end45.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

land.lhs.true41.i:                                ; preds = %if.end38.i
  %addr_valid.i = getelementptr inbounds %struct.sctp_af, ptr %call28.i, i32 0, i32 12
  %76 = ptrtoint ptr %addr_valid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %addr_valid.i, align 4
  %78 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %skb, align 4
  %call42.i = call i32 %77(ptr noundef nonnull %addr.i, ptr noundef null, ptr noundef %79) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true41.i.if.then46.thread_crit_edge, label %land.lhs.true41.i.if.end45.i_crit_edge

land.lhs.true41.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

land.lhs.true41.i.if.then46.thread_crit_edge:     ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end45.i:                                       ; preds = %land.lhs.true41.i.if.end45.i_crit_edge, %if.end38.i.if.end45.i_crit_edge
  %80 = ptrtoint ptr %param.sroa.0.0139 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %param.sroa.0.0139, align 4
  %82 = zext i16 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %81, label %if.end45.i.sctp_process_asconf_param.exit_crit_edge [
    i16 -16383, label %sw.bb49.i
    i16 -16382, label %sw.bb63.i
    i16 -16380, label %sw.bb85.i
  ]

if.end45.i.sctp_process_asconf_param.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_process_asconf_param.exit

sw.bb49.i:                                        ; preds = %if.end45.i
  %83 = ptrtoint ptr %is_any.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %is_any.i, align 4
  %call51.i = call i32 %84(ptr noundef nonnull %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %sw.bb49.i.if.end54.i_crit_edge, label %if.then53.i

sw.bb49.i.if.end54.i_crit_edge:                   ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then53.i:                                      ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = call ptr @memcpy(ptr %addr.i, ptr %source.i.i, i32 28)
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %sw.bb49.i.if.end54.i_crit_edge
  %86 = ptrtoint ptr %ep92.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ep92.i, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sk.i, align 4
  %sockaddr_len.i = getelementptr inbounds %struct.sctp_af, ptr %call28.i, i32 0, i32 22
  %90 = ptrtoint ptr %sockaddr_len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sockaddr_len.i, align 4
  %call55.i = call i32 @security_sctp_bind_connect(ptr noundef %89, i32 noundef 49153, ptr noundef nonnull %addr.i, i32 noundef %91) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %if.end54.i.if.then46.thread_crit_edge

if.end54.i.if.then46.thread_crit_edge:            ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end58.i:                                       ; preds = %if.end54.i
  %call59.i = call ptr @sctp_assoc_add_peer(ptr noundef %asoc, ptr noundef nonnull %addr.i, i32 noundef 2592, i32 noundef 3) #11
  %tobool60.not.i = icmp eq ptr %call59.i, null
  br i1 %tobool60.not.i, label %if.end58.i.if.then46.thread_crit_edge, label %if.end62.i

if.end58.i.if.then46.thread_crit_edge:            ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end62.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @sctp_transport_reset_hb_timer(ptr noundef nonnull %call59.i) #11
  %92 = ptrtoint ptr %new_transport.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call59.i, ptr %new_transport.i, align 8
  br label %sctp_process_asconf_param.exit

sw.bb63.i:                                        ; preds = %if.end45.i
  %93 = ptrtoint ptr %transport_count.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %transport_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %94)
  %cmp66.i = icmp eq i16 %94, 1
  br i1 %cmp66.i, label %sw.bb63.i.if.then46.thread_crit_edge, label %if.end69.i

sw.bb63.i.if.then46.thread_crit_edge:             ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end69.i:                                       ; preds = %sw.bb63.i
  %call71.i = call i32 @sctp_cmp_addr_exact(ptr noundef %source.i.i, ptr noundef nonnull %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end69.i.if.then46.thread_crit_edge

if.end69.i.if.then46.thread_crit_edge:            ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end74.i:                                       ; preds = %if.end69.i
  %95 = ptrtoint ptr %is_any.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %is_any.i, align 4
  %call76.i = call i32 %96(ptr noundef nonnull %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end80.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %transport.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %transport.i.i, align 4
  call void @sctp_assoc_set_primary(ptr noundef %asoc, ptr noundef %98) #11
  %99 = ptrtoint ptr %transport.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %transport.i.i, align 4
  call void @sctp_assoc_del_nonprimary_peers(ptr noundef %asoc, ptr noundef %100) #11
  br label %sctp_process_asconf_param.exit

if.end80.i:                                       ; preds = %if.end74.i
  %call81.i = call ptr @sctp_assoc_lookup_paddr(ptr noundef %asoc, ptr noundef nonnull %addr.i) #11
  %tobool82.not.i = icmp eq ptr %call81.i, null
  br i1 %tobool82.not.i, label %if.end80.i.if.then46.thread_crit_edge, label %if.end84.i

if.end80.i.if.then46.thread_crit_edge:            ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end84.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @sctp_assoc_rm_peer(ptr noundef %asoc, ptr noundef nonnull %call81.i) #11
  br label %sctp_process_asconf_param.exit

sw.bb85.i:                                        ; preds = %if.end45.i
  %101 = ptrtoint ptr %is_any.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %is_any.i, align 4
  %call87.i = call i32 %102(ptr noundef nonnull %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %sw.bb85.i.if.end91.i_crit_edge, label %if.then89.i

sw.bb85.i.if.end91.i_crit_edge:                   ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then89.i:                                      ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %transport.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %transport.i.i, align 4
  %tobool.not.i.i97 = icmp eq ptr %104, null
  %ipaddr.i.i = getelementptr inbounds %struct.sctp_transport, ptr %104, i32 0, i32 6
  %retval.0.i.i = select i1 %tobool.not.i.i97, ptr %source.i.i, ptr %ipaddr.i.i
  %105 = call ptr @memcpy(ptr %addr.i, ptr %retval.0.i.i, i32 28)
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then89.i, %sw.bb85.i.if.end91.i_crit_edge
  %106 = ptrtoint ptr %ep92.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ep92.i, align 4
  %sk94.i = getelementptr inbounds %struct.sctp_ep_common, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %sk94.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sk94.i, align 4
  %sockaddr_len95.i = getelementptr inbounds %struct.sctp_af, ptr %call28.i, i32 0, i32 22
  %110 = ptrtoint ptr %sockaddr_len95.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sockaddr_len95.i, align 4
  %call96.i = call i32 @security_sctp_bind_connect(ptr noundef %109, i32 noundef 49156, ptr noundef nonnull %addr.i, i32 noundef %111) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.end99.i, label %if.end91.i.if.then46.thread_crit_edge

if.end91.i.if.then46.thread_crit_edge:            ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end99.i:                                       ; preds = %if.end91.i
  %call100.i = call ptr @sctp_assoc_lookup_paddr(ptr noundef %asoc, ptr noundef nonnull %addr.i) #11
  %tobool101.not.i = icmp eq ptr %call100.i, null
  br i1 %tobool101.not.i, label %if.end99.i.if.then46.thread_crit_edge, label %if.end103.i

if.end99.i.if.then46.thread_crit_edge:            ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46.thread

if.end103.i:                                      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @sctp_assoc_set_primary(ptr noundef %asoc, ptr noundef nonnull %call100.i) #11
  br label %sctp_process_asconf_param.exit

if.then46.thread:                                 ; preds = %if.end99.i.if.then46.thread_crit_edge, %if.end91.i.if.then46.thread_crit_edge, %if.end80.i.if.then46.thread_crit_edge, %if.end69.i.if.then46.thread_crit_edge, %sw.bb63.i.if.then46.thread_crit_edge, %if.end58.i.if.then46.thread_crit_edge, %if.end54.i.if.then46.thread_crit_edge, %land.lhs.true41.i.if.then46.thread_crit_edge, %if.end34.i.if.then46.thread_crit_edge, %sw.epilog.i.if.then46.thread_crit_edge, %sw.bb18.i.if.then46.thread_crit_edge, %sw.bb.i.if.then46.thread_crit_edge, %if.end.i96.if.then46.thread_crit_edge, %if.end38.if.then46.thread_crit_edge
  %retval.0.i.ph = phi i16 [ 5, %if.end99.i.if.then46.thread_crit_edge ], [ 164, %if.end91.i.if.then46.thread_crit_edge ], [ 5, %if.end80.i.if.then46.thread_crit_edge ], [ 162, %if.end69.i.if.then46.thread_crit_edge ], [ 160, %sw.bb63.i.if.then46.thread_crit_edge ], [ 161, %if.end58.i.if.then46.thread_crit_edge ], [ 164, %if.end54.i.if.then46.thread_crit_edge ], [ 5, %land.lhs.true41.i.if.then46.thread_crit_edge ], [ 5, %if.end34.i.if.then46.thread_crit_edge ], [ 5, %sw.epilog.i.if.then46.thread_crit_edge ], [ 5, %if.end.i96.if.then46.thread_crit_edge ], [ 5, %sw.bb18.i.if.then46.thread_crit_edge ], [ 5, %sw.bb.i.if.then46.thread_crit_edge ], [ 8, %if.end38.if.then46.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr.i) #11
  %crr_id124 = getelementptr inbounds %struct.sctp_addip_param, ptr %param.sroa.0.0139, i32 0, i32 1
  %112 = ptrtoint ptr %crr_id124 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %crr_id124, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_param.i)
  %tobool.not.i98 = icmp eq ptr %param.sroa.0.0139, null
  br i1 %tobool.not.i98, label %if.then46.thread.if.end4.i_crit_edge, label %if.then2.i

if.then46.thread.if.end4.i_crit_edge:             ; preds = %if.then46.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

sctp_process_asconf_param.exit:                   ; preds = %if.end103.i, %if.end84.i, %if.then78.i, %if.end62.i, %if.end45.i.sctp_process_asconf_param.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr.i) #11
  br i1 %all_param_pass.0.off0138, label %sctp_process_asconf_param.exit.for.inc_crit_edge, label %if.then46

sctp_process_asconf_param.exit.for.inc_crit_edge: ; preds = %sctp_process_asconf_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then46:                                        ; preds = %sctp_process_asconf_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  %crr_id = getelementptr inbounds %struct.sctp_addip_param, ptr %param.sroa.0.0139, i32 0, i32 1
  %114 = ptrtoint ptr %crr_id to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %crr_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_param.i)
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.then46.thread
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %length21 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %length21, align 2
  %conv3.i = zext i16 %117 to i32
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.then46, %if.then46.thread.if.end4.i_crit_edge
  %118 = phi i32 [ %113, %if.then2.i ], [ %113, %if.then46.thread.if.end4.i_crit_edge ], [ %115, %if.then46 ]
  %retval.0.i116130 = phi i16 [ %retval.0.i.ph, %if.then2.i ], [ %retval.0.i.ph, %if.then46.thread.if.end4.i_crit_edge ], [ 0, %if.then46 ]
  %cmp41.not118128 = phi i1 [ false, %if.then2.i ], [ false, %if.then46.thread.if.end4.i_crit_edge ], [ true, %if.then46 ]
  %asconf_param_len.0.i = phi i32 [ %conv3.i, %if.then2.i ], [ 0, %if.then46.thread.if.end4.i_crit_edge ], [ 0, %if.then46 ]
  %err_param_len.0.i = phi i32 [ 4, %if.then2.i ], [ 4, %if.then46.thread.if.end4.i_crit_edge ], [ 0, %if.then46 ]
  %response_type.0.i = phi i16 [ -16381, %if.then2.i ], [ -16381, %if.then46.thread.if.end4.i_crit_edge ], [ -16379, %if.then46 ]
  %add.i99 = add nuw nsw i32 %err_param_len.0.i, %asconf_param_len.0.i
  %119 = trunc i32 %add.i99 to i16
  %conv7.i = add i16 %119, 8
  %120 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i.i101 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %length.i.i101 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %length.i.i101, align 2
  %conv.i.i102 = zext i16 %123 to i32
  %add.i.i103 = add nuw nsw i32 %conv.i.i102, 3
  %and.i.i104 = and i32 %add.i.i103, 131068
  %sub.i.i105 = sub nsw i32 %and.i.i104, %conv.i.i102
  %124 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i.i106 = call ptr @skb_put(ptr noundef %125, i32 noundef %sub.i.i105) #11
  %126 = call ptr @memset(ptr %call.i.i.i106, i32 0, i32 %sub.i.i105)
  %127 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i.i107 = call ptr @skb_put(ptr noundef %128, i32 noundef 8) #11
  %129 = ptrtoint ptr %call.i19.i.i107 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 %response_type.0.i, ptr %call.i19.i.i107, align 1
  %ack_param.sroa.5.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i107, i32 2
  %130 = ptrtoint ptr %ack_param.sroa.5.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %conv7.i, ptr %ack_param.sroa.5.0.call.i19.i.sroa_idx.i, align 1
  %ack_param.sroa.7.0.call.i19.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i19.i.i107, i32 4
  %131 = ptrtoint ptr %ack_param.sroa.7.0.call.i19.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %118, ptr %ack_param.sroa.7.0.call.i19.i.sroa_idx.i, align 1
  %132 = trunc i32 %and.i.i104 to i16
  %conv5.i.i108 = add i16 %132, 8
  %133 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i.i109 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %length7.i.i109 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv5.i.i108, ptr %length7.i.i109, align 2
  %136 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i.i110 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 16
  %138 = ptrtoint ptr %tail.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tail.i.i.i110, align 8
  %140 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %139, ptr %chunk_end.i.i, align 4
  br i1 %cmp41.not118128, label %if.end4.i.if.end47_crit_edge, label %if.end15.i

if.end4.i.if.end47_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end15.i:                                       ; preds = %if.end4.i
  %141 = ptrtoint ptr %err_param.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %retval.0.i116130, ptr %err_param.i, align 2
  %142 = ptrtoint ptr %err_param.i.2.err_param.i.2.err_param.2.err_param.2..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %119, ptr %err_param.i.2.err_param.i.2.err_param.2.err_param.2..sroa_idx, align 2
  %143 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i40.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %length.i40.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %length.i40.i, align 2
  %conv.i41.i = zext i16 %146 to i32
  %add.i42.i = add nuw nsw i32 %conv.i41.i, 3
  %and.i43.i = and i32 %add.i42.i, 131068
  %sub.i44.i = sub nsw i32 %and.i43.i, %conv.i41.i
  %call.i.i46.i = call ptr @skb_put(ptr noundef %137, i32 noundef %sub.i44.i) #11
  %147 = call ptr @memset(ptr %call.i.i46.i, i32 0, i32 %sub.i44.i)
  %148 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i47.i = call ptr @skb_put(ptr noundef %149, i32 noundef %err_param_len.0.i) #11
  %150 = call ptr @memcpy(ptr %call.i19.i47.i, ptr %err_param.i, i32 %err_param_len.0.i)
  %add4.i48.i = add nuw nsw i32 %and.i43.i, %err_param_len.0.i
  %conv5.i49.i = trunc i32 %add4.i48.i to i16
  %151 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i50.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %length7.i50.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv5.i49.i, ptr %length7.i50.i, align 2
  %154 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i51.i = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 16
  %156 = ptrtoint ptr %tail.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tail.i.i51.i, align 8
  %158 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %chunk_end.i.i, align 4
  %tobool20.not.i = icmp eq ptr %param.sroa.0.0139, null
  br i1 %tobool20.not.i, label %if.end15.i.if.end47_crit_edge, label %if.then21.i

if.end15.i.if.end47_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then21.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %159 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length.i54.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %length.i54.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %length.i54.i, align 2
  %conv.i55.i = zext i16 %162 to i32
  %add.i56.i = add nuw nsw i32 %conv.i55.i, 3
  %and.i57.i = and i32 %add.i56.i, 131068
  %sub.i58.i = sub nsw i32 %and.i57.i, %conv.i55.i
  %call.i.i60.i = call ptr @skb_put(ptr noundef %155, i32 noundef %sub.i58.i) #11
  %163 = call ptr @memset(ptr %call.i.i60.i, i32 0, i32 %sub.i58.i)
  %164 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i61.i = call ptr @skb_put(ptr noundef %165, i32 noundef %asconf_param_len.0.i) #11
  %166 = call ptr @memcpy(ptr %call.i19.i61.i, ptr %param.sroa.0.0139, i32 %asconf_param_len.0.i)
  %add4.i62.i = add nuw nsw i32 %and.i57.i, %asconf_param_len.0.i
  %conv5.i63.i = trunc i32 %add4.i62.i to i16
  %167 = ptrtoint ptr %chunk_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %chunk_hdr.i.i, align 4
  %length7.i64.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %length7.i64.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv5.i63.i, ptr %length7.i64.i, align 2
  %170 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i65.i = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 16
  %172 = ptrtoint ptr %tail.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %tail.i.i65.i, align 8
  %174 = ptrtoint ptr %chunk_end.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %173, ptr %chunk_end.i.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then21.i, %if.end15.i.if.end47_crit_edge, %if.end4.i.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_param.i)
  call void @__sanitizer_cov_trace_const_cmp2(i16 161, i16 %retval.0.i116130)
  %cmp49 = icmp eq i16 %retval.0.i116130, 161
  br i1 %cmp49, label %if.end47.if.then57_crit_edge, label %if.end47.for.inc_crit_edge

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end47.if.then57_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

for.inc:                                          ; preds = %if.end47.for.inc_crit_edge, %sctp_process_asconf_param.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %all_param_pass.2.off0 = phi i1 [ false, %if.end47.for.inc_crit_edge ], [ %all_param_pass.0.off0138, %for.body.for.inc_crit_edge ], [ true, %sctp_process_asconf_param.exit.for.inc_crit_edge ]
  %175 = ptrtoint ptr %length21 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %length21, align 2
  %conv54 = zext i16 %176 to i32
  %add = add nuw nsw i32 %conv54, 3
  %and = and i32 %add, 131068
  %add.ptr55 = getelementptr i8, ptr %param.sroa.0.0139, i32 %and
  %add.ptr11 = getelementptr i8, ptr %add.ptr55, i32 4
  %177 = ptrtoint ptr %length2 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %length2, align 2
  %conv14 = zext i16 %178 to i32
  %add.ptr15 = getelementptr i8, ptr %1, i32 %conv14
  %cmp.not = icmp ugt ptr %add.ptr11, %add.ptr15
  br i1 %cmp.not, label %for.inc.if.then57_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.inc.if.then57_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then57:                                        ; preds = %for.inc.if.then57_crit_edge, %if.end47.if.then57_crit_edge, %land.lhs.true.if.then57_crit_edge, %if.end.if.then57_crit_edge
  %addip_serial = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 18
  %179 = ptrtoint ptr %addip_serial to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %addip_serial, align 4
  %inc = add i32 %180, 1
  store i32 %inc, ptr %addip_serial, align 4
  %refcnt.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %181 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %181, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then57.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !59

if.then57.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then57
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %182 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %182)
  %.not.i.i.i.i = icmp sgt i32 %182, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sctp_chunk_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !58

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sctp_chunk_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_chunk_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then57.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then57.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sctp_chunk_hold.exit

sctp_chunk_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sctp_chunk_hold.exit_crit_edge
  %183 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 3
  %asconf_ack_list = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 67
  %prev.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 67, i32 1
  %184 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %prev.i, align 4
  %call.i.i112 = call zeroext i1 @__list_add_valid(ptr noundef %183, ptr noundef %185, ptr noundef %asconf_ack_list) #11
  br i1 %call.i.i112, label %if.end.i.i, label %sctp_chunk_hold.exit.if.end58_crit_edge

sctp_chunk_hold.exit.if.end58_crit_edge:          ; preds = %sctp_chunk_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end.i.i:                                       ; preds = %sctp_chunk_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  %186 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %183, ptr %prev.i, align 4
  %187 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %asconf_ack_list, ptr %183, align 4
  %prev3.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 3, i32 0, i32 1
  %188 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %185, ptr %prev3.i.i, align 4
  %189 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %183, ptr %185, align 4
  br label %if.end58

if.end58.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %addip_serial.c = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 18
  %190 = ptrtoint ptr %addip_serial.c to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %addip_serial.c, align 4
  %inc.c = add i32 %191, 1
  store i32 %inc.c, ptr %addip_serial.c, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58.critedge, %if.end.i.i, %sctp_chunk_hold.exit.if.end58_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_process_asconf_ack(ptr noundef %asoc, ptr nocapture noundef readonly %asconf_ack) local_unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addip_last_asconf = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 66
  %0 = ptrtoint ptr %addip_last_asconf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addip_last_asconf, align 8
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %sub = add i32 %5, -8
  %length3 = getelementptr i8, ptr %7, i32 10
  %8 = ptrtoint ptr %length3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length3, align 2
  %conv = zext i16 %9 to i32
  %sub5 = sub i32 %sub, %conv
  %skb6 = getelementptr inbounds %struct.sctp_chunk, ptr %asconf_ack, i32 0, i32 5
  %10 = ptrtoint ptr %skb6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb6, align 4
  %len7 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp = icmp eq i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp978 = icmp sgt i32 %sub5, 0
  br i1 %cmp978, label %while.body.lr.ph, label %entry.land.lhs.true32_crit_edge

entry.land.lhs.true32_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %conv
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %asconf_ack, i32 0, i32 10
  %addip_disabled_mask = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 11
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6
  %asconf_addr_del_pending.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 71
  %peer46.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %address_list.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %retval1.084 = phi i32 [ 0, %while.body.lr.ph ], [ %retval1.1, %sw.epilog.while.body_crit_edge ]
  %no_err.083 = phi i32 [ 1, %while.body.lr.ph ], [ %no_err.174, %sw.epilog.while.body_crit_edge ]
  %asconf_len.082 = phi i32 [ %sub5, %while.body.lr.ph ], [ %sub30, %sw.epilog.while.body_crit_edge ]
  %asconf_param.079 = phi ptr [ %add.ptr4, %while.body.lr.ph ], [ %add.ptr29, %sw.epilog.while.body_crit_edge ]
  br i1 %cmp, label %while.body.sw.bb_crit_edge, label %if.else

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_err.083)
  %tobool.not.i = icmp eq i32 %no_err.083, 0
  %..i = select i1 %tobool.not.i, i16 164, i16 0
  %14 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chunk_hdr.i, align 4
  %length1.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %length1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %17)
  %cmp42.i = icmp ugt i16 %17, 8
  br i1 %cmp42.i, label %while.body.lr.ph.i, label %if.else.sctp_get_asconf_response.exit_crit_edge

if.else.sctp_get_asconf_response.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_get_asconf_response.exit

while.body.lr.ph.i:                               ; preds = %if.else
  %conv.i = zext i16 %17 to i32
  %sub2.i = add nsw i32 %conv.i, -8
  %18 = ptrtoint ptr %skb6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb6, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %crr_id4.i = getelementptr inbounds %struct.sctp_addip_param, ptr %asconf_param.079, i32 0, i32 1
  %22 = ptrtoint ptr %crr_id4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crr_id4.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %asconf_ack_len.044.i = phi i32 [ %sub2.i, %while.body.lr.ph.i ], [ %sub21.i, %if.end16.i.while.body.i_crit_edge ]
  %asconf_ack_param.043.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %add.ptr20.i, %if.end16.i.while.body.i_crit_edge ]
  %crr_id.i = getelementptr inbounds %struct.sctp_addip_param, ptr %asconf_ack_param.043.i, i32 0, i32 1
  %24 = ptrtoint ptr %crr_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crr_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp5.i = icmp eq i32 %25, %23
  br i1 %cmp5.i, label %if.then7.i, label %if.end16.i

if.then7.i:                                       ; preds = %while.body.i
  %26 = ptrtoint ptr %asconf_ack_param.043.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %asconf_ack_param.043.i, align 4
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %27, label %if.then7.i.sw.epilog_crit_edge [
    i16 -16379, label %sctp_get_asconf_response.exit.thread94
    i16 -16381, label %sw.bb9.i
  ]

if.then7.i.sw.epilog_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sctp_get_asconf_response.exit.thread94:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %not.tobool.not.i97 = xor i1 %tobool.not.i, true
  %no_err.199 = zext i1 %not.tobool.not.i97 to i32
  br label %sw.bb

sw.bb9.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asconf_ack_len.044.i)
  %cmp12.i = icmp ugt i32 %asconf_ack_len.044.i, 8
  br i1 %cmp12.i, label %if.then14.i, label %sw.bb9.i.sw.epilog_crit_edge

sw.bb9.i.sw.epilog_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then14.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr10.i = getelementptr i8, ptr %asconf_ack_param.043.i, i32 8
  %29 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr10.i, align 2
  br label %sctp_get_asconf_response.exit

if.end16.i:                                       ; preds = %while.body.i
  %length18.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %asconf_ack_param.043.i, i32 0, i32 1
  %31 = ptrtoint ptr %length18.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %length18.i, align 2
  %conv19.i = zext i16 %32 to i32
  %add.ptr20.i = getelementptr i8, ptr %asconf_ack_param.043.i, i32 %conv19.i
  %sub21.i = sub i32 %asconf_ack_len.044.i, %conv19.i
  %cmp.i = icmp sgt i32 %sub21.i, 0
  br i1 %cmp.i, label %if.end16.i.while.body.i_crit_edge, label %if.end16.i.sctp_get_asconf_response.exit_crit_edge

if.end16.i.sctp_get_asconf_response.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_get_asconf_response.exit

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

sctp_get_asconf_response.exit:                    ; preds = %if.end16.i.sctp_get_asconf_response.exit_crit_edge, %if.then14.i, %if.else.sctp_get_asconf_response.exit_crit_edge
  %retval.0.i = phi i16 [ %30, %if.then14.i ], [ %..i, %if.else.sctp_get_asconf_response.exit_crit_edge ], [ %..i, %if.end16.i.sctp_get_asconf_response.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %cmp14.not = icmp eq i16 %retval.0.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %narrow = select i1 %not.tobool.not.i, i1 %cmp14.not, i1 false
  %no_err.1 = zext i1 %narrow to i32
  %33 = zext i16 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %retval.0.i, label %sctp_get_asconf_response.exit.sw.epilog_crit_edge [
    i16 0, label %sctp_get_asconf_response.exit.sw.bb_crit_edge
    i16 161, label %sw.bb20
    i16 8, label %sw.bb21
  ]

sctp_get_asconf_response.exit.sw.bb_crit_edge:    ; preds = %sctp_get_asconf_response.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sctp_get_asconf_response.exit.sw.epilog_crit_edge: ; preds = %sctp_get_asconf_response.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %sctp_get_asconf_response.exit.sw.bb_crit_edge, %sctp_get_asconf_response.exit.thread94, %while.body.sw.bb_crit_edge
  %no_err.173 = phi i32 [ %no_err.1, %sctp_get_asconf_response.exit.sw.bb_crit_edge ], [ %no_err.083, %while.body.sw.bb_crit_edge ], [ %no_err.199, %sctp_get_asconf_response.exit.thread94 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr.i) #11
  %add.ptr.i66 = getelementptr i8, ptr %asconf_param.079, i32 8
  %34 = call ptr @memset(ptr %addr.i, i32 255, i32 28)
  %35 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %36)
  %switch.selectcmp.i.i = icmp eq i16 %36, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %36)
  %switch.selectcmp2.i.i = icmp eq i16 %36, 5
  %37 = select i1 %switch.selectcmp.i.i, i16 10, i16 0
  %conv.i67 = select i1 %switch.selectcmp2.i.i, i16 2, i16 %37
  %call1.i = call ptr @sctp_get_af_specific(i16 noundef zeroext %conv.i67) #11
  %from_addr_param.i = getelementptr inbounds %struct.sctp_af, ptr %call1.i, i32 0, i32 10
  %38 = ptrtoint ptr %from_addr_param.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %from_addr_param.i, align 4
  %40 = ptrtoint ptr %bind_addr.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bind_addr.i, align 4
  %call2.i = call zeroext i1 %39(ptr noundef nonnull %addr.i, ptr noundef %add.ptr.i66, i16 noundef zeroext %41, i32 noundef 0) #11
  br i1 %call2.i, label %if.end.i, label %sw.bb.sctp_asconf_param_success.exit_crit_edge

sw.bb.sctp_asconf_param_success.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_asconf_param_success.exit

if.end.i:                                         ; preds = %sw.bb
  %42 = ptrtoint ptr %asconf_param.079 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %asconf_param.079, align 4
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %43, label %if.end.i.sctp_asconf_param_success.exit_crit_edge [
    i16 -16383, label %sw.bb.i
    i16 -16382, label %sw.bb34.i
  ]

if.end.i.sctp_asconf_param_success.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_asconf_param_success.exit

sw.bb.i:                                          ; preds = %if.end.i
  call fastcc void @local_bh_disable() #11
  %45 = ptrtoint ptr %address_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %saddr.096.i = load ptr, ptr %address_list.i, align 4
  %cmp.not97.i = icmp eq ptr %saddr.096.i, %address_list.i
  br i1 %cmp.not97.i, label %sw.bb.i.for.end.i_crit_edge, label %sw.bb.i.for.body.i_crit_edge

sw.bb.i.for.body.i_crit_edge:                     ; preds = %sw.bb.i
  br label %for.body.i

sw.bb.i.for.end.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.i.for.body.i_crit_edge
  %saddr.098.i = phi ptr [ %saddr.0.i, %for.inc.i.for.body.i_crit_edge ], [ %saddr.096.i, %sw.bb.i.for.body.i_crit_edge ]
  %a.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %saddr.098.i, i32 0, i32 2
  %call8.i = call i32 @sctp_cmp_addr_exact(ptr noundef %a.i, ptr noundef nonnull %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i68 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i68, label %for.body.i.for.inc.i_crit_edge, label %if.then9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %state.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %saddr.098.i, i32 0, i32 3
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %state.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i.for.inc.i_crit_edge
  %47 = ptrtoint ptr %saddr.098.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %saddr.0.i = load ptr, ptr %saddr.098.i, align 4
  %cmp.not.i = icmp eq ptr %saddr.0.i, %address_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.bb.i.for.end.i_crit_edge
  call fastcc void @local_bh_enable() #11
  %48 = ptrtoint ptr %peer46.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %transport.099.i = load ptr, ptr %peer46.i, align 8
  %cmp23.not100.i = icmp eq ptr %transport.099.i, %peer46.i
  br i1 %cmp23.not100.i, label %for.end.i.sctp_asconf_param_success.exit_crit_edge, label %for.end.i.for.body26.i_crit_edge

for.end.i.for.body26.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body26.i

for.end.i.sctp_asconf_param_success.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_asconf_param_success.exit

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.end.i.for.body26.i_crit_edge
  %transport.0101.i = phi ptr [ %transport.0.i, %for.body26.i.for.body26.i_crit_edge ], [ %transport.099.i, %for.end.i.for.body26.i_crit_edge ]
  call void @sctp_transport_dst_release(ptr noundef %transport.0101.i) #11
  %49 = ptrtoint ptr %transport.0101.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %transport.0.i = load ptr, ptr %transport.0101.i, align 8
  %cmp23.not.i = icmp eq ptr %transport.0.i, %peer46.i
  br i1 %cmp23.not.i, label %for.body26.i.sctp_asconf_param_success.exit_crit_edge, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26.i

for.body26.i.sctp_asconf_param_success.exit_crit_edge: ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_asconf_param_success.exit

sw.bb34.i:                                        ; preds = %if.end.i
  call fastcc void @local_bh_disable() #11
  %call35.i = call i32 @sctp_del_bind_addr(ptr noundef %bind_addr.i, ptr noundef nonnull %addr.i) #11
  %50 = ptrtoint ptr %asconf_addr_del_pending.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asconf_addr_del_pending.i, align 4
  %cmp36.not.i = icmp eq ptr %51, null
  br i1 %cmp36.not.i, label %sw.bb34.i.if.end44.i_crit_edge, label %land.lhs.true.i

sw.bb34.i.if.end44.i_crit_edge:                   ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %sw.bb34.i
  %call39.i = call i32 @sctp_cmp_addr_exact(ptr noundef nonnull %51, ptr noundef nonnull %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i.if.end44.i_crit_edge, label %if.then41.i

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then41.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %asconf_addr_del_pending.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asconf_addr_del_pending.i, align 4
  call void @kfree(ptr noundef %53) #11
  %54 = ptrtoint ptr %asconf_addr_del_pending.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %asconf_addr_del_pending.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %land.lhs.true.i.if.end44.i_crit_edge, %sw.bb34.i.if.end44.i_crit_edge
  call fastcc void @local_bh_enable() #11
  %55 = ptrtoint ptr %peer46.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %transport.193.i = load ptr, ptr %peer46.i, align 8
  %cmp55.not94.i = icmp eq ptr %transport.193.i, %peer46.i
  br i1 %cmp55.not94.i, label %if.end44.i.sctp_asconf_param_success.exit_crit_edge, label %if.end44.i.for.body58.i_crit_edge

if.end44.i.for.body58.i_crit_edge:                ; preds = %if.end44.i
  br label %for.body58.i

if.end44.i.sctp_asconf_param_success.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_asconf_param_success.exit

for.body58.i:                                     ; preds = %for.body58.i.for.body58.i_crit_edge, %if.end44.i.for.body58.i_crit_edge
  %transport.195.i = phi ptr [ %transport.1.i, %for.body58.i.for.body58.i_crit_edge ], [ %transport.193.i, %if.end44.i.for.body58.i_crit_edge ]
  call void @sctp_transport_dst_release(ptr noundef %transport.195.i) #11
  %56 = ptrtoint ptr %transport.195.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %transport.1.i = load ptr, ptr %transport.195.i, align 8
  %cmp55.not.i = icmp eq ptr %transport.1.i, %peer46.i
  br i1 %cmp55.not.i, label %for.body58.i.sctp_asconf_param_success.exit_crit_edge, label %for.body58.i.for.body58.i_crit_edge

for.body58.i.for.body58.i_crit_edge:              ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body58.i

for.body58.i.sctp_asconf_param_success.exit_crit_edge: ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_asconf_param_success.exit

sctp_asconf_param_success.exit:                   ; preds = %for.body58.i.sctp_asconf_param_success.exit_crit_edge, %if.end44.i.sctp_asconf_param_success.exit_crit_edge, %for.body26.i.sctp_asconf_param_success.exit_crit_edge, %for.end.i.sctp_asconf_param_success.exit_crit_edge, %if.end.i.sctp_asconf_param_success.exit_crit_edge, %sw.bb.sctp_asconf_param_success.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr.i) #11
  br label %sw.epilog

sw.bb20:                                          ; preds = %sctp_get_asconf_response.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb21:                                          ; preds = %sctp_get_asconf_response.exit
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %asconf_param.079 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %asconf_param.079, align 4
  %59 = ptrtoint ptr %addip_disabled_mask to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %addip_disabled_mask, align 8
  %or65 = or i16 %60, %58
  store i16 %or65, ptr %addip_disabled_mask, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb20, %sctp_asconf_param_success.exit, %sctp_get_asconf_response.exit.sw.epilog_crit_edge, %sw.bb9.i.sw.epilog_crit_edge, %if.then7.i.sw.epilog_crit_edge
  %no_err.174 = phi i32 [ %no_err.1, %sctp_get_asconf_response.exit.sw.epilog_crit_edge ], [ %no_err.1, %sw.bb21 ], [ %no_err.1, %sw.bb20 ], [ %no_err.173, %sctp_asconf_param_success.exit ], [ 0, %sw.bb9.i.sw.epilog_crit_edge ], [ 0, %if.then7.i.sw.epilog_crit_edge ]
  %retval1.1 = phi i32 [ %retval1.084, %sctp_get_asconf_response.exit.sw.epilog_crit_edge ], [ %retval1.084, %sw.bb21 ], [ 1, %sw.bb20 ], [ %retval1.084, %sctp_asconf_param_success.exit ], [ %retval1.084, %sw.bb9.i.sw.epilog_crit_edge ], [ %retval1.084, %if.then7.i.sw.epilog_crit_edge ]
  %length27 = getelementptr inbounds %struct.sctp_paramhdr, ptr %asconf_param.079, i32 0, i32 1
  %61 = ptrtoint ptr %length27 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %length27, align 2
  %conv28 = zext i16 %62 to i32
  %add.ptr29 = getelementptr i8, ptr %asconf_param.079, i32 %conv28
  %sub30 = sub i32 %asconf_len.082, %conv28
  %cmp9 = icmp sgt i32 %sub30, 0
  br i1 %cmp9, label %sw.epilog.while.body_crit_edge, label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_err.174)
  %tobool31.not = icmp eq i32 %no_err.174, 0
  br i1 %tobool31.not, label %while.end.if.end37_crit_edge, label %while.end.land.lhs.true32_crit_edge

while.end.land.lhs.true32_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true32:                                  ; preds = %while.end.land.lhs.true32_crit_edge, %entry.land.lhs.true32_crit_edge
  %retval1.0.lcssa103 = phi i32 [ %retval1.1, %while.end.land.lhs.true32_crit_edge ], [ 0, %entry.land.lhs.true32_crit_edge ]
  %src_out_of_asoc_ok = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 70
  %63 = ptrtoint ptr %src_out_of_asoc_ok to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_out_of_asoc_ok, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool33.not = icmp eq i32 %64, 0
  br i1 %tobool33.not, label %land.lhs.true32.if.end37_crit_edge, label %if.then34

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %src_out_of_asoc_ok to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %src_out_of_asoc_ok, align 8
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 4
  %66 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %primary_path, align 8
  call void @sctp_transport_immediate_rtx(ptr noundef %67) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true32.if.end37_crit_edge, %while.end.if.end37_crit_edge
  %retval1.0.lcssa104 = phi i32 [ %retval1.0.lcssa103, %if.then34 ], [ %retval1.0.lcssa103, %land.lhs.true32.if.end37_crit_edge ], [ %retval1.1, %while.end.if.end37_crit_edge ]
  %68 = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 3
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %68) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end37.list_del_init.exit_crit_edge

if.end37.list_del_init.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 3, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end37.list_del_init.exit_crit_edge
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %68, ptr %68, align 4
  %prev.i3.i = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 3, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %68, ptr %prev.i3.i, align 4
  %msg.i = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 18
  %77 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %msg.i, align 4
  %tobool.not.i69 = icmp eq ptr %78, null
  br i1 %tobool.not.i69, label %list_del_init.exit.sctp_chunk_free.exit_crit_edge, label %if.then.i

list_del_init.exit.sctp_chunk_free.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_chunk_free.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @sctp_datamsg_put(ptr noundef nonnull %78) #11
  br label %sctp_chunk_free.exit

sctp_chunk_free.exit:                             ; preds = %if.then.i, %list_del_init.exit.sctp_chunk_free.exit_crit_edge
  call void @sctp_chunk_put(ptr noundef %1) #11
  %79 = ptrtoint ptr %addip_last_asconf to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %addip_last_asconf, align 8
  ret i32 %retval1.0.lcssa104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_immediate_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_fwdtsn(ptr noundef %asoc, i32 noundef %new_cum_tsn, i32 noundef %nstreams, ptr nocapture noundef readonly %skiplist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %nstreams, 2
  %mul = add i32 %add, 4
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -64, i8 noundef zeroext 0, i32 noundef %mul, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %22 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %23, i32 noundef %sub.i) #11
  %24 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %25 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef 4) #11
  %27 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %new_cum_tsn, ptr %call.i19.i, align 1
  %28 = trunc i32 %and.i to i16
  %conv5.i = add i16 %28, 4
  %29 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i, ptr %length7.i, align 2
  %32 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %36 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i19.i, ptr %subh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nstreams)
  %cmp35.not = icmp eq i32 %nstreams, 0
  br i1 %cmp35.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sctp_fwdtsn_skip, ptr %skiplist, i32 %i.036
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx, align 2
  %ssn = getelementptr %struct.sctp_fwdtsn_skip, ptr %skiplist, i32 %i.036, i32 1
  %40 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ssn, align 2
  %42 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i22 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %length.i22 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %length.i22, align 2
  %conv.i23 = zext i16 %45 to i32
  %add.i24 = add nuw nsw i32 %conv.i23, 3
  %and.i25 = and i32 %add.i24, 131068
  %sub.i26 = sub nsw i32 %and.i25, %conv.i23
  %46 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i28 = tail call ptr @skb_put(ptr noundef %47, i32 noundef %sub.i26) #11
  %48 = call ptr @memset(ptr %call.i.i28, i32 0, i32 %sub.i26)
  %49 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i29 = tail call ptr @skb_put(ptr noundef %50, i32 noundef 4) #11
  %51 = ptrtoint ptr %call.i19.i29 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %39, ptr %call.i19.i29, align 1
  %skip.sroa.5.0.call.i19.i29.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i29, i32 2
  %52 = ptrtoint ptr %skip.sroa.5.0.call.i19.i29.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %41, ptr %skip.sroa.5.0.call.i19.i29.sroa_idx, align 1
  %53 = trunc i32 %and.i25 to i16
  %conv5.i31 = add i16 %53, 4
  %54 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i32 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %length7.i32 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv5.i31, ptr %length7.i32, align 2
  %57 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i33 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i33, align 8
  %61 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %chunk_end.i, align 4
  %inc = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %nstreams
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_ifwdtsn(ptr noundef %asoc, i32 noundef %new_cum_tsn, i32 noundef %nstreams, ptr nocapture noundef readonly %skiplist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %nstreams, 2
  %mul = add i32 %add, 4
  %call.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -62, i8 noundef zeroext 0, i32 noundef %mul, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %asoc1.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i, align 4
  %skb2.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i, align 4
  %auth.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %auth.i.i, align 4
  %5 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %cond.true.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i, %if.end.i.i.if.end_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.true.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i, ptr %12, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %22 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb2.i.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %23, i32 noundef %sub.i) #11
  %24 = call ptr @memset(ptr %call.i.i, i32 0, i32 %sub.i)
  %25 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef 4) #11
  %27 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %new_cum_tsn, ptr %call.i19.i, align 1
  %28 = trunc i32 %and.i to i16
  %conv5.i = add i16 %28, 4
  %29 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i, ptr %length7.i, align 2
  %32 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 9
  %36 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %chunk_end.i, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i19.i, ptr %subh, align 4
  %mul4 = shl i32 %nstreams, 3
  %38 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i14 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %length.i14 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %length.i14, align 2
  %conv.i15 = zext i16 %40 to i32
  %add.i16 = add nuw nsw i32 %conv.i15, 3
  %and.i17 = and i32 %add.i16, 131068
  %sub.i18 = sub nsw i32 %and.i17, %conv.i15
  %call.i.i20 = tail call ptr @skb_put(ptr noundef %33, i32 noundef %sub.i18) #11
  %41 = call ptr @memset(ptr %call.i.i20, i32 0, i32 %sub.i18)
  %42 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb2.i.i, align 4
  %call.i19.i21 = tail call ptr @skb_put(ptr noundef %43, i32 noundef %mul4) #11
  %44 = call ptr @memcpy(ptr %call.i19.i21, ptr %skiplist, i32 %mul4)
  %add4.i22 = add i32 %and.i17, %mul4
  %conv5.i23 = trunc i32 %add4.i22 to i16
  %45 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i24 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %length7.i24 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv5.i23, ptr %length7.i24, align 2
  %48 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb2.i.i, align 4
  %tail.i.i25 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i25, align 8
  %52 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %chunk_end.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_strreset_req(ptr noundef %asoc, i16 noundef zeroext %stream_num, ptr nocapture noundef readonly %stream_list, i1 noundef zeroext %out, i1 noundef zeroext %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i16 %stream_num, 1
  %conv4 = zext i16 %mul to i32
  %add = add i16 %mul, 16
  %conv5 = zext i1 %out to i32
  %conv7 = select i1 %out, i16 %add, i16 0
  %add9 = add i16 %mul, 8
  %conv13 = select i1 %in, i16 %add9, i16 0
  %conv14 = zext i16 %conv7 to i32
  %add15 = add nuw nsw i32 %conv14, 3
  %and = and i32 %add15, 131068
  %conv16 = zext i16 %conv13 to i32
  %add17 = add nuw nsw i32 %conv16, 3
  %and18 = and i32 %add17, 131068
  %add19 = add nuw nsw i32 %and18, %and
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -126, i8 noundef zeroext 0, i32 noundef %add19, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.then.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %entry
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %5 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i.i, %if.end.i.i.i.if.end_crit_edge
  %cond.i.i.i = phi ptr [ %11, %cond.true.i.i.i ], [ null, %if.end.i.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i.i, ptr %12, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %params.i = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %19, i32 0, i32 1
  %param_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %param_hdr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %params.i, ptr %param_hdr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv7)
  %tobool21.not = icmp eq i16 %conv7, 0
  br i1 %tobool21.not, label %if.end.if.end31_crit_edge, label %if.then22

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then22:                                        ; preds = %if.end
  %strreset_outseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 81
  %21 = ptrtoint ptr %strreset_outseq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %strreset_outseq, align 4
  %strreset_inseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 82
  %23 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %strreset_inseq, align 8
  %sub = add i32 %24, -1
  %next_tsn = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %25 = ptrtoint ptr %next_tsn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_tsn, align 8
  %sub24 = add i32 %26, -1
  %27 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %30 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %31 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i76 = tail call ptr @skb_put(ptr noundef %32, i32 noundef %sub.i) #11
  %33 = call ptr @memset(ptr %call.i.i76, i32 0, i32 %sub.i)
  %34 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %35, i32 noundef 16) #11
  %36 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 13, ptr %call.i19.i, align 1
  %outreq.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %37 = ptrtoint ptr %outreq.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv7, ptr %outreq.sroa.5.0.call.i19.i.sroa_idx, align 1
  %outreq.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %38 = ptrtoint ptr %outreq.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %22, ptr %outreq.sroa.7.0.call.i19.i.sroa_idx, align 1
  %outreq.sroa.9.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 8
  %39 = ptrtoint ptr %outreq.sroa.9.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %sub, ptr %outreq.sroa.9.0.call.i19.i.sroa_idx, align 1
  %outreq.sroa.11.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 12
  %40 = ptrtoint ptr %outreq.sroa.11.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %sub24, ptr %outreq.sroa.11.0.call.i19.i.sroa_idx, align 1
  %41 = trunc i32 %and.i to i16
  %conv5.i = add i16 %41, 16
  %42 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv5.i, ptr %length7.i, align 2
  %45 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %chunk_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul)
  %tobool26.not = icmp eq i16 %mul, 0
  br i1 %tobool26.not, label %if.then22.if.end31_crit_edge, label %if.then27

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i78 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %length.i78 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %length.i78, align 2
  %conv.i79 = zext i16 %53 to i32
  %add.i80 = add nuw nsw i32 %conv.i79, 3
  %and.i81 = and i32 %add.i80, 131068
  %sub.i82 = sub nsw i32 %and.i81, %conv.i79
  %call.i.i84 = tail call ptr @skb_put(ptr noundef %46, i32 noundef %sub.i82) #11
  %54 = call ptr @memset(ptr %call.i.i84, i32 0, i32 %sub.i82)
  %55 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i85 = tail call ptr @skb_put(ptr noundef %56, i32 noundef %conv4) #11
  %57 = call ptr @memcpy(ptr %call.i19.i85, ptr %stream_list, i32 %conv4)
  %58 = trunc i32 %and.i81 to i16
  %conv5.i87 = add i16 %mul, %58
  %59 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i88 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %length7.i88 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv5.i87, ptr %length7.i88, align 2
  %62 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i.i89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i89, align 8
  %66 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %chunk_end.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then22.if.end31_crit_edge, %if.end.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv13)
  %tobool32.not = icmp eq i16 %conv13, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.then33

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then33:                                        ; preds = %if.end31
  %strreset_outseq38 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 81
  %67 = ptrtoint ptr %strreset_outseq38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %strreset_outseq38, align 4
  %add41 = add i32 %68, %conv5
  %69 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i92 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %length.i92 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %length.i92, align 2
  %conv.i93 = zext i16 %72 to i32
  %add.i94 = add nuw nsw i32 %conv.i93, 3
  %and.i95 = and i32 %add.i94, 131068
  %sub.i96 = sub nsw i32 %and.i95, %conv.i93
  %73 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i98 = tail call ptr @skb_put(ptr noundef %74, i32 noundef %sub.i96) #11
  %75 = call ptr @memset(ptr %call.i.i98, i32 0, i32 %sub.i96)
  %76 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i99 = tail call ptr @skb_put(ptr noundef %77, i32 noundef 8) #11
  %78 = ptrtoint ptr %call.i19.i99 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 14, ptr %call.i19.i99, align 1
  %inreq.sroa.5.0.call.i19.i99.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i99, i32 2
  %79 = ptrtoint ptr %inreq.sroa.5.0.call.i19.i99.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %conv13, ptr %inreq.sroa.5.0.call.i19.i99.sroa_idx, align 1
  %inreq.sroa.7.0.call.i19.i99.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i99, i32 4
  %80 = ptrtoint ptr %inreq.sroa.7.0.call.i19.i99.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %add41, ptr %inreq.sroa.7.0.call.i19.i99.sroa_idx, align 1
  %81 = trunc i32 %and.i95 to i16
  %conv5.i101 = add i16 %81, 8
  %82 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i102 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %length7.i102 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv5.i101, ptr %length7.i102, align 2
  %85 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 16
  %87 = ptrtoint ptr %tail.i.i103 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i103, align 8
  %chunk_end.i104 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %89 = ptrtoint ptr %chunk_end.i104 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %chunk_end.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul)
  %tobool44.not = icmp eq i16 %mul, 0
  br i1 %tobool44.not, label %if.then33.cleanup_crit_edge, label %if.then45

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i106 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %length.i106 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %length.i106, align 2
  %conv.i107 = zext i16 %93 to i32
  %add.i108 = add nuw nsw i32 %conv.i107, 3
  %and.i109 = and i32 %add.i108, 131068
  %sub.i110 = sub nsw i32 %and.i109, %conv.i107
  %call.i.i112 = tail call ptr @skb_put(ptr noundef %86, i32 noundef %sub.i110) #11
  %94 = call ptr @memset(ptr %call.i.i112, i32 0, i32 %sub.i110)
  %95 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i113 = tail call ptr @skb_put(ptr noundef %96, i32 noundef %conv4) #11
  %97 = call ptr @memcpy(ptr %call.i19.i113, ptr %stream_list, i32 %conv4)
  %98 = trunc i32 %and.i109 to i16
  %conv5.i115 = add i16 %mul, %98
  %99 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i116 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %length7.i116 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv5.i115, ptr %length7.i116, align 2
  %102 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i117 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 16
  %104 = ptrtoint ptr %tail.i.i117 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tail.i.i117, align 8
  %106 = ptrtoint ptr %chunk_end.i104 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %chunk_end.i104, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.then33.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_strreset_tsnreq(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -126, i8 noundef zeroext 0, i32 noundef 8, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.then.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %entry
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %5 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i.i, %if.end.i.i.i.if.end_crit_edge
  %cond.i.i.i = phi ptr [ %11, %cond.true.i.i.i ], [ null, %if.end.i.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i.i, ptr %12, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %params.i = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %19, i32 0, i32 1
  %param_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %param_hdr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %params.i, ptr %param_hdr.i, align 4
  %strreset_outseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 81
  %21 = ptrtoint ptr %strreset_outseq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %strreset_outseq, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %25 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i12 = tail call ptr @skb_put(ptr noundef %26, i32 noundef %sub.i) #11
  %27 = call ptr @memset(ptr %call.i.i12, i32 0, i32 %sub.i)
  %28 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %29, i32 noundef 8) #11
  %30 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 15, ptr %call.i19.i, align 1
  %tsnreq.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %31 = ptrtoint ptr %tsnreq.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 8, ptr %tsnreq.sroa.5.0.call.i19.i.sroa_idx, align 1
  %tsnreq.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %32 = ptrtoint ptr %tsnreq.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %22, ptr %tsnreq.sroa.7.0.call.i19.i.sroa_idx, align 1
  %33 = trunc i32 %and.i to i16
  %conv5.i = add i16 %33, 8
  %34 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i, ptr %length7.i, align 2
  %37 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %41 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %chunk_end.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_strreset_addstrm(ptr noundef %asoc, i16 noundef zeroext %out, i16 noundef zeroext %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %out)
  %tobool = icmp ne i16 %out, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %in)
  %tobool3 = icmp ne i16 %in, 0
  %lnot.ext7 = zext i1 %tobool3 to i32
  %add = add nuw nsw i32 %lnot.ext7, %lnot.ext
  %mul = mul nuw nsw i32 %add, 12
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -126, i8 noundef zeroext 0, i32 noundef %mul, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.then.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %entry
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %5 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i.i, %if.end.i.i.i.if.end_crit_edge
  %cond.i.i.i = phi ptr [ %11, %cond.true.i.i.i ], [ null, %if.end.i.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i.i, ptr %12, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %params.i = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %19, i32 0, i32 1
  %param_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %param_hdr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %params.i, ptr %param_hdr.i, align 4
  br i1 %tobool, label %if.then10, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %strreset_outseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 81
  %21 = ptrtoint ptr %strreset_outseq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %strreset_outseq, align 4
  %23 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %26 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %27 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i51 = tail call ptr @skb_put(ptr noundef %28, i32 noundef %sub.i) #11
  %29 = call ptr @memset(ptr %call.i.i51, i32 0, i32 %sub.i)
  %30 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %31, i32 noundef 12) #11
  %32 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 17, ptr %call.i19.i, align 1
  %addstrm.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %33 = ptrtoint ptr %addstrm.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 12, ptr %addstrm.sroa.7.0.call.i19.i.sroa_idx, align 1
  %addstrm.sroa.10.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %34 = ptrtoint ptr %addstrm.sroa.10.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %22, ptr %addstrm.sroa.10.0.call.i19.i.sroa_idx, align 1
  %addstrm.sroa.13.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 8
  %35 = ptrtoint ptr %addstrm.sroa.13.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %out, ptr %addstrm.sroa.13.0.call.i19.i.sroa_idx, align 1
  %addstrm.sroa.16.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 10
  %36 = ptrtoint ptr %addstrm.sroa.16.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 0, ptr %addstrm.sroa.16.0.call.i19.i.sroa_idx, align 1
  %37 = trunc i32 %and.i to i16
  %conv5.i = add i16 %37, 12
  %38 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i, ptr %length7.i, align 2
  %41 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %chunk_end.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  br i1 %tobool3, label %if.then16, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %strreset_outseq22 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 81
  %46 = ptrtoint ptr %strreset_outseq22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %strreset_outseq22, align 4
  %add28 = add i32 %47, %lnot.ext
  %48 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i53 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %length.i53 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %length.i53, align 2
  %conv.i54 = zext i16 %51 to i32
  %add.i55 = add nuw nsw i32 %conv.i54, 3
  %and.i56 = and i32 %add.i55, 131068
  %sub.i57 = sub nsw i32 %and.i56, %conv.i54
  %52 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i59 = tail call ptr @skb_put(ptr noundef %53, i32 noundef %sub.i57) #11
  %54 = call ptr @memset(ptr %call.i.i59, i32 0, i32 %sub.i57)
  %55 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i60 = tail call ptr @skb_put(ptr noundef %56, i32 noundef 12) #11
  %57 = ptrtoint ptr %call.i19.i60 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 18, ptr %call.i19.i60, align 1
  %addstrm.sroa.7.0.call.i19.i60.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i60, i32 2
  %58 = ptrtoint ptr %addstrm.sroa.7.0.call.i19.i60.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 12, ptr %addstrm.sroa.7.0.call.i19.i60.sroa_idx, align 1
  %addstrm.sroa.10.0.call.i19.i60.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i60, i32 4
  %59 = ptrtoint ptr %addstrm.sroa.10.0.call.i19.i60.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %add28, ptr %addstrm.sroa.10.0.call.i19.i60.sroa_idx, align 1
  %addstrm.sroa.13.0.call.i19.i60.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i60, i32 8
  %60 = ptrtoint ptr %addstrm.sroa.13.0.call.i19.i60.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %in, ptr %addstrm.sroa.13.0.call.i19.i60.sroa_idx, align 1
  %addstrm.sroa.16.0.call.i19.i60.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i60, i32 10
  %61 = ptrtoint ptr %addstrm.sroa.16.0.call.i19.i60.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 0, ptr %addstrm.sroa.16.0.call.i19.i60.sroa_idx, align 1
  %62 = trunc i32 %and.i56 to i16
  %conv5.i62 = add i16 %62, 12
  %63 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i63 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %length7.i63 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i62, ptr %length7.i63, align 2
  %66 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i64 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i.i64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i64, align 8
  %chunk_end.i65 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %70 = ptrtoint ptr %chunk_end.i65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %chunk_end.i65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_strreset_resp(ptr noundef %asoc, i32 noundef %result, i32 noundef %sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -126, i8 noundef zeroext 0, i32 noundef 12, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.then.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %entry
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %5 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i.i, %if.end.i.i.i.if.end_crit_edge
  %cond.i.i.i = phi ptr [ %11, %cond.true.i.i.i ], [ null, %if.end.i.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i.i, ptr %12, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %params.i = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %19, i32 0, i32 1
  %param_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %param_hdr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %params.i, ptr %param_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %22 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %23 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i12 = tail call ptr @skb_put(ptr noundef %24, i32 noundef %sub.i) #11
  %25 = call ptr @memset(ptr %call.i.i12, i32 0, i32 %sub.i)
  %26 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %27, i32 noundef 12) #11
  %28 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 16, ptr %call.i19.i, align 1
  %resp.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %29 = ptrtoint ptr %resp.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 12, ptr %resp.sroa.5.0.call.i19.i.sroa_idx, align 1
  %resp.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %30 = ptrtoint ptr %resp.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %sn, ptr %resp.sroa.7.0.call.i19.i.sroa_idx, align 1
  %resp.sroa.9.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 8
  %31 = ptrtoint ptr %resp.sroa.9.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %result, ptr %resp.sroa.9.0.call.i19.i.sroa_idx, align 1
  %32 = trunc i32 %and.i to i16
  %conv5.i = add i16 %32, 12
  %33 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv5.i, ptr %length7.i, align 2
  %36 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %chunk_end.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_strreset_tsnresp(ptr noundef %asoc, i32 noundef %result, i32 noundef %sn, i32 noundef %sender_tsn, i32 noundef %receiver_tsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call fastcc ptr @_sctp_make_chunk(ptr noundef %asoc, i8 noundef zeroext -126, i8 noundef zeroext 0, i32 noundef 20, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.then.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %entry
  %asoc1.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 13
  %0 = ptrtoint ptr %asoc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1.i.i.i, align 4
  %skb2.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 21
  %4 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i.i = load i16, ptr %auth.i.i.i, align 4
  %5 = and i16 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shkey.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %shkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shkey.i.i.i, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %7) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %tobool3.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true.i.i.i, %if.end.i.i.i.if.end_crit_edge
  %cond.i.i.i = phi ptr [ %11, %cond.true.i.i.i ], [ null, %if.end.i.i.i.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i.i.i, ptr %12, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i, align 4
  %destructor_arg.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %destructor_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %destructor_arg.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sctp_control_release_owner, ptr %destructor.i.i.i, align 4
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_hdr.i, align 4
  %params.i = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %19, i32 0, i32 1
  %param_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %param_hdr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %params.i, ptr %param_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %19, i32 0, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %22 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %sub.i = sub nsw i32 %and.i, %conv.i
  %23 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i.i12 = tail call ptr @skb_put(ptr noundef %24, i32 noundef %sub.i) #11
  %25 = call ptr @memset(ptr %call.i.i12, i32 0, i32 %sub.i)
  %26 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb2.i.i.i, align 4
  %call.i19.i = tail call ptr @skb_put(ptr noundef %27, i32 noundef 20) #11
  %28 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 16, ptr %call.i19.i, align 1
  %tsnresp.sroa.5.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 2
  %29 = ptrtoint ptr %tsnresp.sroa.5.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 20, ptr %tsnresp.sroa.5.0.call.i19.i.sroa_idx, align 1
  %tsnresp.sroa.7.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 4
  %30 = ptrtoint ptr %tsnresp.sroa.7.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %sn, ptr %tsnresp.sroa.7.0.call.i19.i.sroa_idx, align 1
  %tsnresp.sroa.9.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 8
  %31 = ptrtoint ptr %tsnresp.sroa.9.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %result, ptr %tsnresp.sroa.9.0.call.i19.i.sroa_idx, align 1
  %tsnresp.sroa.11.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 12
  %32 = ptrtoint ptr %tsnresp.sroa.11.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %sender_tsn, ptr %tsnresp.sroa.11.0.call.i19.i.sroa_idx, align 1
  %tsnresp.sroa.13.0.call.i19.i.sroa_idx = getelementptr inbounds i8, ptr %call.i19.i, i32 16
  %33 = ptrtoint ptr %tsnresp.sroa.13.0.call.i19.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %receiver_tsn, ptr %tsnresp.sroa.13.0.call.i19.i.sroa_idx, align 1
  %34 = trunc i32 %and.i to i16
  %conv5.i = add i16 %34, 20
  %35 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chunk_hdr.i, align 4
  %length7.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %length7.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i, ptr %length7.i, align 2
  %38 = ptrtoint ptr %skb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb2.i.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %chunk_end.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sctp_verify_reconf(ptr nocapture noundef readnone %asoc, ptr nocapture noundef readonly %chunk, ptr nocapture noundef writeonly %errp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %params = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %1, i32 0, i32 1
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %add.ptr1150 = getelementptr %struct.sctp_reconf_chunk, ptr %1, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  %conv151 = zext i16 %3 to i32
  %add.ptr3152 = getelementptr i8, ptr %1, i32 %conv151
  %cmp.not153 = icmp ugt ptr %add.ptr1150, %add.ptr3152
  br i1 %cmp.not153, label %entry.cleanup111_crit_edge, label %land.lhs.true.preheader

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

land.lhs.true.preheader:                          ; preds = %entry
  %length9 = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %1, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %length9 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length9, align 2
  %conv10 = zext i16 %5 to i32
  %idx.neg = sub nsw i32 0, %conv10
  %add.ptr11 = getelementptr i8, ptr %add.ptr3152, i32 %idx.neg
  %cmp12.not = icmp ule ptr %params, %add.ptr11
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp16 = icmp ugt i16 %5, 3
  %or.cond = select i1 %cmp12.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true.preheader.cleanup111_crit_edge

land.lhs.true.preheader.cleanup111_crit_edge:     ; preds = %land.lhs.true.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

for.body:                                         ; preds = %land.lhs.true.preheader
  %6 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %params, ptr %errp, align 4
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %params, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %8, label %for.body.cleanup111_crit_edge [
    i16 13, label %sw.bb
    i16 14, label %sw.bb38
    i16 16, label %sw.bb51
    i16 15, label %sw.bb72
    i16 18, label %sw.bb81
    i16 17, label %sw.bb94
  ]

for.body.cleanup111_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %cmp25 = icmp ult i16 %5, 16
  br i1 %cmp25, label %sw.bb.cleanup111_crit_edge, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb.cleanup111_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb38:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %5)
  %cmp40 = icmp ult i16 %5, 8
  br i1 %cmp40, label %sw.bb38.cleanup111_crit_edge, label %sw.bb38.for.inc_crit_edge

sw.bb38.for.inc_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb38.cleanup111_crit_edge:                     ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb51:                                          ; preds = %for.body
  %10 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %5, label %sw.bb51.cleanup111_crit_edge [
    i16 12, label %sw.bb51.for.inc_crit_edge
    i16 20, label %sw.bb51.for.inc_crit_edge183
  ]

sw.bb51.for.inc_crit_edge183:                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb51.for.inc_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb51.cleanup111_crit_edge:                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb72:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %5)
  %cmp74.not = icmp eq i16 %5, 8
  br i1 %cmp74.not, label %sw.bb72.for.inc_crit_edge, label %sw.bb72.cleanup111_crit_edge

sw.bb72.cleanup111_crit_edge:                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb72.for.inc_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb81:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %5)
  %cmp83.not = icmp eq i16 %5, 12
  br i1 %cmp83.not, label %sw.bb81.for.inc_crit_edge, label %sw.bb81.cleanup111_crit_edge

sw.bb81.cleanup111_crit_edge:                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb81.for.inc_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb94:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %5)
  %cmp96.not = icmp eq i16 %5, 12
  br i1 %cmp96.not, label %sw.bb94.for.inc_crit_edge, label %sw.bb94.cleanup111_crit_edge

sw.bb94.cleanup111_crit_edge:                     ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb94.for.inc_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %sw.bb94.for.inc_crit_edge, %sw.bb81.for.inc_crit_edge, %sw.bb72.for.inc_crit_edge, %sw.bb51.for.inc_crit_edge, %sw.bb51.for.inc_crit_edge183, %sw.bb38.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %11 = ptrtoint ptr %length9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %length9, align 2
  %conv109 = zext i16 %12 to i32
  %add = add nuw nsw i32 %conv109, 3
  %and = and i32 %add, 131068
  %add.ptr110 = getelementptr i8, ptr %params, i32 %and
  %add.ptr1 = getelementptr i8, ptr %add.ptr110, i32 4
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %length, align 2
  %conv = zext i16 %14 to i32
  %add.ptr3 = getelementptr i8, ptr %1, i32 %conv
  %cmp.not = icmp ugt ptr %add.ptr1, %add.ptr3
  br i1 %cmp.not, label %for.inc.cleanup111_crit_edge, label %land.lhs.true.1

for.inc.cleanup111_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

land.lhs.true.1:                                  ; preds = %for.inc
  %length9.1 = getelementptr inbounds %struct.sctp_paramhdr, ptr %add.ptr110, i32 0, i32 1
  %15 = ptrtoint ptr %length9.1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %length9.1, align 2
  %conv10.1 = zext i16 %16 to i32
  %idx.neg.1 = sub nsw i32 0, %conv10.1
  %add.ptr11.1 = getelementptr i8, ptr %add.ptr3, i32 %idx.neg.1
  %cmp12.not.1 = icmp ule ptr %add.ptr110, %add.ptr11.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp16.1 = icmp ugt i16 %16, 3
  %or.cond.1 = select i1 %cmp12.not.1, i1 %cmp16.1, i1 false
  br i1 %or.cond.1, label %for.body.1, label %land.lhs.true.1.cleanup111_crit_edge

land.lhs.true.1.cleanup111_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

for.body.1:                                       ; preds = %land.lhs.true.1
  %17 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr110, ptr %errp, align 4
  %18 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr110, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %19, label %for.body.1.cleanup111_crit_edge [
    i16 13, label %sw.bb.1
    i16 14, label %sw.bb38.1
    i16 16, label %sw.bb51.1
    i16 17, label %sw.bb94.1
    i16 18, label %sw.bb81.1
  ]

for.body.1.cleanup111_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb94.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %16)
  %cmp96.not.1 = icmp eq i16 %16, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %8)
  %cond176 = icmp eq i16 %8, 18
  %or.cond177 = select i1 %cmp96.not.1, i1 %cond176, i1 false
  br i1 %or.cond177, label %sw.bb94.1.for.inc.1_crit_edge, label %sw.bb94.1.cleanup111_crit_edge

sw.bb94.1.cleanup111_crit_edge:                   ; preds = %sw.bb94.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb94.1.for.inc.1_crit_edge:                    ; preds = %sw.bb94.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

sw.bb81.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %16)
  %cmp83.not.1 = icmp eq i16 %16, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %8)
  %cond175 = icmp eq i16 %8, 17
  %or.cond178 = select i1 %cmp83.not.1, i1 %cond175, i1 false
  br i1 %or.cond178, label %sw.bb81.1.for.inc.1_crit_edge, label %sw.bb81.1.cleanup111_crit_edge

sw.bb81.1.cleanup111_crit_edge:                   ; preds = %sw.bb81.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb81.1.for.inc.1_crit_edge:                    ; preds = %sw.bb81.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

sw.bb51.1:                                        ; preds = %for.body.1
  %21 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %16, label %sw.bb51.1.cleanup111_crit_edge [
    i16 12, label %sw.bb51.1.lor.lhs.false59.1_crit_edge
    i16 20, label %sw.bb51.1.lor.lhs.false59.1_crit_edge184
  ]

sw.bb51.1.lor.lhs.false59.1_crit_edge184:         ; preds = %sw.bb51.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false59.1

sw.bb51.1.lor.lhs.false59.1_crit_edge:            ; preds = %sw.bb51.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false59.1

sw.bb51.1.cleanup111_crit_edge:                   ; preds = %sw.bb51.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

lor.lhs.false59.1:                                ; preds = %sw.bb51.1.lor.lhs.false59.1_crit_edge, %sw.bb51.1.lor.lhs.false59.1_crit_edge184
  %22 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %8, label %lor.lhs.false59.1.cleanup111_crit_edge [
    i16 13, label %lor.lhs.false59.1.for.inc.1_crit_edge
    i16 16, label %lor.lhs.false59.1.for.inc.1_crit_edge185
  ]

lor.lhs.false59.1.for.inc.1_crit_edge185:         ; preds = %lor.lhs.false59.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

lor.lhs.false59.1.for.inc.1_crit_edge:            ; preds = %lor.lhs.false59.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

lor.lhs.false59.1.cleanup111_crit_edge:           ; preds = %lor.lhs.false59.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb38.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %16)
  %cmp40.1 = icmp ugt i16 %16, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %8)
  %cond174 = icmp eq i16 %8, 13
  %or.cond179 = select i1 %cmp40.1, i1 %cond174, i1 false
  br i1 %or.cond179, label %sw.bb38.1.for.inc.1_crit_edge, label %sw.bb38.1.cleanup111_crit_edge

sw.bb38.1.cleanup111_crit_edge:                   ; preds = %sw.bb38.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb38.1.for.inc.1_crit_edge:                    ; preds = %sw.bb38.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %16)
  %cmp25.1 = icmp ult i16 %16, 16
  br i1 %cmp25.1, label %sw.bb.1.cleanup111_crit_edge, label %lor.lhs.false.1

sw.bb.1.cleanup111_crit_edge:                     ; preds = %sw.bb.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

lor.lhs.false.1:                                  ; preds = %sw.bb.1
  %23 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %8, label %lor.lhs.false.1.cleanup111_crit_edge [
    i16 14, label %lor.lhs.false.1.for.inc.1_crit_edge
    i16 16, label %lor.lhs.false.1.for.inc.1_crit_edge186
  ]

lor.lhs.false.1.for.inc.1_crit_edge186:           ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

lor.lhs.false.1.cleanup111_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

for.inc.1:                                        ; preds = %lor.lhs.false.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge186, %sw.bb38.1.for.inc.1_crit_edge, %lor.lhs.false59.1.for.inc.1_crit_edge, %lor.lhs.false59.1.for.inc.1_crit_edge185, %sw.bb81.1.for.inc.1_crit_edge, %sw.bb94.1.for.inc.1_crit_edge
  %24 = ptrtoint ptr %length9.1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %length9.1, align 2
  %conv109.1 = zext i16 %25 to i32
  %add.1 = add nuw nsw i32 %conv109.1, 3
  %and.1 = and i32 %add.1, 131068
  %add.ptr110.1 = getelementptr i8, ptr %add.ptr110, i32 %and.1
  %add.ptr1.1 = getelementptr i8, ptr %add.ptr110.1, i32 4
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %length, align 2
  %conv.1 = zext i16 %27 to i32
  %add.ptr3.1 = getelementptr i8, ptr %1, i32 %conv.1
  %cmp.not.1 = icmp ugt ptr %add.ptr1.1, %add.ptr3.1
  br i1 %cmp.not.1, label %for.inc.1.cleanup111_crit_edge, label %land.lhs.true.2

for.inc.1.cleanup111_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

land.lhs.true.2:                                  ; preds = %for.inc.1
  %length9.2 = getelementptr inbounds %struct.sctp_paramhdr, ptr %add.ptr110.1, i32 0, i32 1
  %28 = ptrtoint ptr %length9.2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %length9.2, align 2
  %conv10.2 = zext i16 %29 to i32
  %idx.neg.2 = sub nsw i32 0, %conv10.2
  %add.ptr11.2 = getelementptr i8, ptr %add.ptr3.1, i32 %idx.neg.2
  %cmp12.not.2 = icmp ule ptr %add.ptr110.1, %add.ptr11.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %29)
  %cmp16.2 = icmp ugt i16 %29, 3
  %or.cond.2 = select i1 %cmp12.not.2, i1 %cmp16.2, i1 false
  br i1 %or.cond.2, label %for.body.2, label %land.lhs.true.2.cleanup111_crit_edge

land.lhs.true.2.cleanup111_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

for.body.2:                                       ; preds = %land.lhs.true.2
  %30 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr110.1, ptr %errp, align 4
  %31 = ptrtoint ptr %add.ptr110.1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr110.1, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %32, label %for.body.2.cleanup111_crit_edge [
    i16 13, label %sw.bb.2
    i16 14, label %sw.bb38.2
    i16 16, label %sw.bb51.2
    i16 17, label %sw.bb94.2
    i16 18, label %sw.bb81.2
  ]

for.body.2.cleanup111_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb94.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %29)
  %cmp96.not.2 = icmp eq i16 %29, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %19)
  %cond173 = icmp eq i16 %19, 18
  %or.cond180 = select i1 %cmp96.not.2, i1 %cond173, i1 false
  br i1 %or.cond180, label %sw.bb94.2.for.inc.2_crit_edge, label %sw.bb94.2.cleanup111_crit_edge

sw.bb94.2.cleanup111_crit_edge:                   ; preds = %sw.bb94.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb94.2.for.inc.2_crit_edge:                    ; preds = %sw.bb94.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

sw.bb81.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %29)
  %cmp83.not.2 = icmp eq i16 %29, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %19)
  %cond172 = icmp eq i16 %19, 17
  %or.cond181 = select i1 %cmp83.not.2, i1 %cond172, i1 false
  br i1 %or.cond181, label %sw.bb81.2.for.inc.2_crit_edge, label %sw.bb81.2.cleanup111_crit_edge

sw.bb81.2.cleanup111_crit_edge:                   ; preds = %sw.bb81.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb81.2.for.inc.2_crit_edge:                    ; preds = %sw.bb81.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

sw.bb51.2:                                        ; preds = %for.body.2
  %34 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %29, label %sw.bb51.2.cleanup111_crit_edge [
    i16 12, label %sw.bb51.2.lor.lhs.false59.2_crit_edge
    i16 20, label %sw.bb51.2.lor.lhs.false59.2_crit_edge187
  ]

sw.bb51.2.lor.lhs.false59.2_crit_edge187:         ; preds = %sw.bb51.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false59.2

sw.bb51.2.lor.lhs.false59.2_crit_edge:            ; preds = %sw.bb51.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false59.2

sw.bb51.2.cleanup111_crit_edge:                   ; preds = %sw.bb51.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

lor.lhs.false59.2:                                ; preds = %sw.bb51.2.lor.lhs.false59.2_crit_edge, %sw.bb51.2.lor.lhs.false59.2_crit_edge187
  %35 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %19, label %lor.lhs.false59.2.cleanup111_crit_edge [
    i16 13, label %lor.lhs.false59.2.for.inc.2_crit_edge
    i16 16, label %lor.lhs.false59.2.for.inc.2_crit_edge188
  ]

lor.lhs.false59.2.for.inc.2_crit_edge188:         ; preds = %lor.lhs.false59.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

lor.lhs.false59.2.for.inc.2_crit_edge:            ; preds = %lor.lhs.false59.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

lor.lhs.false59.2.cleanup111_crit_edge:           ; preds = %lor.lhs.false59.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb38.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %29)
  %cmp40.2 = icmp ugt i16 %29, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %19)
  %cond = icmp eq i16 %19, 13
  %or.cond182 = select i1 %cmp40.2, i1 %cond, i1 false
  br i1 %or.cond182, label %sw.bb38.2.for.inc.2_crit_edge, label %sw.bb38.2.cleanup111_crit_edge

sw.bb38.2.cleanup111_crit_edge:                   ; preds = %sw.bb38.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

sw.bb38.2.for.inc.2_crit_edge:                    ; preds = %sw.bb38.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %29)
  %cmp25.2 = icmp ult i16 %29, 16
  br i1 %cmp25.2, label %sw.bb.2.cleanup111_crit_edge, label %lor.lhs.false.2

sw.bb.2.cleanup111_crit_edge:                     ; preds = %sw.bb.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

lor.lhs.false.2:                                  ; preds = %sw.bb.2
  %36 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %19, label %lor.lhs.false.2.cleanup111_crit_edge [
    i16 14, label %lor.lhs.false.2.for.inc.2_crit_edge
    i16 16, label %lor.lhs.false.2.for.inc.2_crit_edge189
  ]

lor.lhs.false.2.for.inc.2_crit_edge189:           ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

lor.lhs.false.2.cleanup111_crit_edge:             ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

for.inc.2:                                        ; preds = %lor.lhs.false.2.for.inc.2_crit_edge, %lor.lhs.false.2.for.inc.2_crit_edge189, %sw.bb38.2.for.inc.2_crit_edge, %lor.lhs.false59.2.for.inc.2_crit_edge, %lor.lhs.false59.2.for.inc.2_crit_edge188, %sw.bb81.2.for.inc.2_crit_edge, %sw.bb94.2.for.inc.2_crit_edge
  %37 = ptrtoint ptr %length9.2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %length9.2, align 2
  %conv109.2 = zext i16 %38 to i32
  %add.2 = add nuw nsw i32 %conv109.2, 3
  %and.2 = and i32 %add.2, 131068
  %add.ptr110.2 = getelementptr i8, ptr %add.ptr110.1, i32 %and.2
  %add.ptr1.2 = getelementptr i8, ptr %add.ptr110.2, i32 4
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %length, align 2
  %conv.2 = zext i16 %40 to i32
  %add.ptr3.2 = getelementptr i8, ptr %1, i32 %conv.2
  %cmp.not.2 = icmp ugt ptr %add.ptr1.2, %add.ptr3.2
  br i1 %cmp.not.2, label %for.inc.2.cleanup111_crit_edge, label %land.lhs.true.3

for.inc.2.cleanup111_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

land.lhs.true.3:                                  ; preds = %for.inc.2
  %length9.3 = getelementptr inbounds %struct.sctp_paramhdr, ptr %add.ptr110.2, i32 0, i32 1
  %41 = ptrtoint ptr %length9.3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %length9.3, align 2
  %conv10.3 = zext i16 %42 to i32
  %idx.neg.3 = sub nsw i32 0, %conv10.3
  %add.ptr11.3 = getelementptr i8, ptr %add.ptr3.2, i32 %idx.neg.3
  %cmp12.not.3 = icmp ule ptr %add.ptr110.2, %add.ptr11.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %42)
  %cmp16.3 = icmp ugt i16 %42, 3
  %or.cond.3 = select i1 %cmp12.not.3, i1 %cmp16.3, i1 false
  br i1 %or.cond.3, label %for.body.3, label %land.lhs.true.3.cleanup111_crit_edge

land.lhs.true.3.cleanup111_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup111

for.body.3:                                       ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr110.2, ptr %errp, align 4
  br label %cleanup111

cleanup111:                                       ; preds = %for.body.3, %land.lhs.true.3.cleanup111_crit_edge, %for.inc.2.cleanup111_crit_edge, %lor.lhs.false.2.cleanup111_crit_edge, %sw.bb.2.cleanup111_crit_edge, %sw.bb38.2.cleanup111_crit_edge, %lor.lhs.false59.2.cleanup111_crit_edge, %sw.bb51.2.cleanup111_crit_edge, %sw.bb81.2.cleanup111_crit_edge, %sw.bb94.2.cleanup111_crit_edge, %for.body.2.cleanup111_crit_edge, %land.lhs.true.2.cleanup111_crit_edge, %for.inc.1.cleanup111_crit_edge, %lor.lhs.false.1.cleanup111_crit_edge, %sw.bb.1.cleanup111_crit_edge, %sw.bb38.1.cleanup111_crit_edge, %lor.lhs.false59.1.cleanup111_crit_edge, %sw.bb51.1.cleanup111_crit_edge, %sw.bb81.1.cleanup111_crit_edge, %sw.bb94.1.cleanup111_crit_edge, %for.body.1.cleanup111_crit_edge, %land.lhs.true.1.cleanup111_crit_edge, %for.inc.cleanup111_crit_edge, %sw.bb94.cleanup111_crit_edge, %sw.bb81.cleanup111_crit_edge, %sw.bb72.cleanup111_crit_edge, %sw.bb51.cleanup111_crit_edge, %sw.bb38.cleanup111_crit_edge, %sw.bb.cleanup111_crit_edge, %for.body.cleanup111_crit_edge, %land.lhs.true.preheader.cleanup111_crit_edge, %entry.cleanup111_crit_edge
  %retval.2 = phi i1 [ true, %entry.cleanup111_crit_edge ], [ true, %for.inc.cleanup111_crit_edge ], [ true, %land.lhs.true.preheader.cleanup111_crit_edge ], [ false, %sw.bb.cleanup111_crit_edge ], [ false, %sw.bb38.cleanup111_crit_edge ], [ false, %sw.bb51.cleanup111_crit_edge ], [ false, %sw.bb72.cleanup111_crit_edge ], [ false, %sw.bb81.cleanup111_crit_edge ], [ false, %sw.bb94.cleanup111_crit_edge ], [ false, %for.body.cleanup111_crit_edge ], [ true, %land.lhs.true.1.cleanup111_crit_edge ], [ false, %sw.bb94.1.cleanup111_crit_edge ], [ false, %sw.bb81.1.cleanup111_crit_edge ], [ false, %sw.bb51.1.cleanup111_crit_edge ], [ false, %lor.lhs.false59.1.cleanup111_crit_edge ], [ false, %sw.bb38.1.cleanup111_crit_edge ], [ false, %sw.bb.1.cleanup111_crit_edge ], [ false, %lor.lhs.false.1.cleanup111_crit_edge ], [ true, %for.inc.1.cleanup111_crit_edge ], [ true, %land.lhs.true.2.cleanup111_crit_edge ], [ false, %sw.bb94.2.cleanup111_crit_edge ], [ false, %sw.bb81.2.cleanup111_crit_edge ], [ false, %sw.bb51.2.cleanup111_crit_edge ], [ false, %lor.lhs.false59.2.cleanup111_crit_edge ], [ false, %sw.bb38.2.cleanup111_crit_edge ], [ false, %sw.bb.2.cleanup111_crit_edge ], [ false, %lor.lhs.false.2.cleanup111_crit_edge ], [ true, %for.inc.2.cleanup111_crit_edge ], [ true, %land.lhs.true.3.cleanup111_crit_edge ], [ false, %for.body.3 ], [ false, %for.body.1.cleanup111_crit_edge ], [ false, %for.body.2.cleanup111_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_send_cid(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_shkey_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_control_release_owner(ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %destructor_arg = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %destructor_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destructor_arg, align 4
  %4 = getelementptr inbounds %struct.sctp_chunk, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then:                                          ; preds = %entry
  %asoc1 = getelementptr inbounds %struct.sctp_chunk, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asoc1, align 4
  %deactivated = getelementptr inbounds %struct.sctp_shared_key, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %deactivated to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %deactivated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.then.if.end13_crit_edge, label %land.lhs.true

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %if.then
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %6, align 4
  %cmp.i.not = icmp eq ptr %12, %6
  br i1 %cmp.i.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true5

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true5:                                   ; preds = %land.lhs.true
  %refcnt = getelementptr inbounds %struct.sctp_shared_key, ptr %6, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp eq i32 %14, 2
  br i1 %cmp, label %if.then8, label %land.lhs.true5.if.end13_crit_edge

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true5
  %key_id = getelementptr inbounds %struct.sctp_shared_key, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %key_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %key_id, align 4
  %call9 = tail call ptr @sctp_ulpevent_make_authkey(ptr noundef %8, i16 noundef zeroext %16, i32 noundef 1, i32 noundef 3264) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then11

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %si = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 60, i32 6
  %17 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %si, align 4
  %enqueue_event = getelementptr inbounds %struct.sctp_stream_interleave, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %enqueue_event to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enqueue_event, align 4
  %ulpq = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 62
  %call12 = tail call i32 %20(ptr noundef %ulpq, ptr noundef nonnull %call9) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 4
  tail call void @sctp_auth_shkey_release(ptr noundef %22) #11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_authkey(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_shkey_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_in_scope(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_set_primary(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_asoc_set_default_hmac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sctp_bind_connect(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset_hb_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_del_nonprimary_peers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_del_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/sm_make_chunk.c", i32 768, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sctp_make_sack.__UNIQUE_ID_ddebug562, !1, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @sctp_make_violation_paramlen.error, !8, !"error", i1 false, i1 false}
!8 = !{!"../net/sctp/sm_make_chunk.c", i32 1104, i32 20}
!9 = !{ptr @sctp_make_violation_max_retrans.error, !10, !"error", i1 false, i1 false}
!10 = !{!"../net/sctp/sm_make_chunk.c", i32 1126, i32 20}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sctp/sm_make_chunk.c", i32 1386, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sctp_chunkify.__UNIQUE_ID_ddebug565, !12, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sctp/sm_make_chunk.c", i32 2894, i32 4}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sctp_make_asconf_update_ip.__UNIQUE_ID_ddebug569, !17, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"ecap_param", i1 false, i1 false}
!22 = !{!"../net/sctp/sm_make_chunk.c", i32 131, i32 35}
!23 = distinct !{null, !24, !"prsctp_param", i1 false, i1 false}
!24 = !{!"../net/sctp/sm_make_chunk.c", i32 135, i32 35}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sctp/sm_make_chunk.c", i32 2280, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sctp_verify_param.__UNIQUE_ID_ddebug566, !31, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!34 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/net/sctp/sctp.h", i32 591, i32 6}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/sctp/sm_make_chunk.c", i32 2593, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sctp_process_param.__UNIQUE_ID_ddebug567, !39, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!42 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/sctp/sm_make_chunk.c", i32 2751, i32 3}
!45 = !{ptr @sctp_process_param.__UNIQUE_ID_ddebug568, !44, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!46 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 2148871873, i64 2148871878, i64 2148871891, i64 2148871935, i64 2148871969, i64 2148871990}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148298734, i64 2148298760, i64 2148298789, i64 2148298823, i64 2148298854, i64 2148298877}
!61 = !{i64 2148388265}
!62 = !{i64 2148302729, i64 2148302761, i64 2148302790, i64 2148302824, i64 2148302855, i64 2148302878}
!63 = !{i64 2149013608}
!64 = !{i64 2158390643, i64 2158391133, i64 2158390680, i64 2158390736, i64 2158390770, i64 2158390794, i64 2158390835, i64 2158390856, i64 2158390884, i64 2158390918}
!65 = !{i64 2148301199, i64 2148301225, i64 2148301254, i64 2148301288, i64 2148301319, i64 2148301342}
!66 = !{i64 2148300264, i64 2148300296, i64 2148300325, i64 2148300359, i64 2148300390, i64 2148300413}
!67 = !{i64 1295048, i64 1295075, i64 1295097, i64 1295125}
!68 = !{i64 1295456, i64 1295483, i64 1295516, i64 1295537, i64 1295564, i64 1295590}
