; ModuleID = '/llk/IR_all_yes/net/sctp/stream_interleave.c_pt.bc'
source_filename = "../net/sctp/stream_interleave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.18 }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sctp_stream = type { %struct.anon, %struct.anon.3, i16, i16, ptr, %union.anon.5, ptr }
%struct.anon = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon, i32, ptr, i8 }
%union.anon = type { i32 }
%struct.anon.3 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.4, i32, i32, i32, i8, i8 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sctp_idatahdr = type { i32, i16, i16, i32, %union.anon.166, [0 x i8] }
%union.anon.166 = type { i32 }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.8, %struct.list_head, ptr, %union.anon.164, %union.sctp_params, %union.anon.165, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.8 = type { %struct.list_head }
%union.anon.164 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.165 = type { ptr }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.38 }
%union.anon.38 = type { [4 x i32] }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.176, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.176 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.17 }
%union.anon.17 = type { i32 }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.172 }
%union.anon.172 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_datahdr = type { i32, i16, i16, i32, [0 x i8] }
%struct.sctp_ulpevent = type <{ ptr, ptr, i32, %union.anon.170, %union.anon.171, i32, i32, i16, i16, i16 }>
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%struct.sk_buff = type { %union.anon.9, %union.anon.147, %union.anon.148, [48 x i8], %union.anon.149, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.151, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, ptr, %union.anon.11 }
%union.anon.11 = type { ptr }
%union.anon.147 = type { ptr }
%union.anon.148 = type { i64 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, ptr }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.153, i32, i32, i32, i16, i16, %union.anon.155, i32, %union.anon.156, %union.anon.157, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.153 = type { i32 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i32 }
%union.anon.157 = type { i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.132, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.133, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.134, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.120, %union.anon.122, %union.anon.123, i16, i8, i8, i32, %union.anon.125, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.128, [0 x i32], %union.anon.129, i16, i16, %union.anon.130, %struct.refcount_struct, [0 x i32], %union.anon.131 }
%union.anon.120 = type { i64 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.125 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { %struct.hlist_node }
%union.anon.130 = type { i32 }
%union.anon.131 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.132 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.133 = type { ptr }
%union.anon.134 = type { ptr }
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
%struct.flowi = type { %union.anon.33 }
%union.anon.33 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.127, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.127 = type { ptr }
%struct.sctp_ifwdtsn_skip = type { i16, i8, i8, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.119, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.119 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sctp_ifwdtsn_hdr = type { i32, [0 x %struct.sctp_ifwdtsn_skip] }
%struct.sctp_fwdtsn_hdr = type { i32, [0 x %struct.sctp_fwdtsn_skip] }
%struct.sctp_fwdtsn_skip = type { i16, i16 }

@sctp_stream_interleave_1 = internal global { %struct.sctp_stream_interleave, [44 x i8] } { %struct.sctp_stream_interleave { i16 20, i16 8, ptr @sctp_make_idatafrag_empty, ptr @sctp_chunk_assign_mid, ptr @sctp_validate_idata, ptr @sctp_ulpevent_idata, ptr @do_sctp_enqueue_event, ptr @sctp_renege_events, ptr @sctp_intl_start_pd, ptr @sctp_intl_abort_pd, ptr @sctp_generate_iftsn, ptr @sctp_validate_iftsn, ptr @sctp_report_iftsn, ptr @sctp_handle_iftsn }, [44 x i8] zeroinitializer }, align 32
@sctp_stream_interleave_0 = internal global { %struct.sctp_stream_interleave, [44 x i8] } { %struct.sctp_stream_interleave { i16 16, i16 8, ptr @sctp_make_datafrag_empty, ptr @sctp_chunk_assign_ssn, ptr @sctp_validate_data, ptr @sctp_ulpq_tail_data, ptr @do_ulpq_tail_event, ptr @sctp_ulpq_renege, ptr @sctp_ulpq_partial_delivery, ptr @sctp_ulpq_abort_pd, ptr @sctp_generate_fwdtsn, ptr @sctp_validate_fwdtsn, ptr @sctp_report_fwdtsn, ptr @sctp_handle_fwdtsn }, [44 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"sctp_stream_interleave_1\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 1334, i32 38 }
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"sctp_stream_interleave_0\00", align 1
@___asan_gen_.10 = private constant [32 x i8] c"../net/sctp/stream_interleave.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 1305, i32 38 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 1984, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @sctp_stream_interleave_1, ptr @sctp_stream_interleave_0, ptr @skb_queue_head_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_stream_interleave_1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_stream_interleave_0 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sctp_stream_interleave_init(ptr nocapture noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intl_capable = getelementptr i8, ptr %stream, i32 -914
  %0 = ptrtoint ptr %intl_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %intl_capable, align 2
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %cond = select i1 %tobool.not, ptr @sctp_stream_interleave_0, ptr @sctp_stream_interleave_1
  %si = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 6
  %2 = ptrtoint ptr %si to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cond, ptr %si, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_make_idatafrag_empty(ptr noundef %asoc, ptr nocapture noundef readonly %sinfo, i32 noundef %len, i8 noundef zeroext %flags, i32 noundef %gfp) #2 align 64 {
entry:
  %dp = alloca %struct.sctp_idatahdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dp) #7
  %0 = getelementptr inbounds %struct.sctp_idatahdr, ptr %dp, i32 0, i32 1
  %1 = call ptr @memset(ptr %dp, i32 0, i32 16)
  %2 = ptrtoint ptr %sinfo to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sinfo, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %sinfo_flags = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 2
  %5 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sinfo_flags, align 4
  %7 = trunc i16 %6 to i8
  %8 = shl i8 %7, 2
  %9 = and i8 %8, 4
  %10 = or i8 %9, %flags
  %add = add i32 %len, 16
  %call = tail call ptr @sctp_make_idata(ptr noundef %asoc, i8 noundef zeroext %10, i32 noundef %add, i32 noundef %gfp) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call ptr @sctp_addto_chunk(ptr noundef nonnull %call, i32 noundef 16, ptr noundef nonnull %dp) #7
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %subh, align 4
  %sinfo8 = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 12
  %12 = call ptr @memcpy(ptr %sinfo8, ptr %sinfo, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dp) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_chunk_assign_mid(ptr nocapture noundef readonly %chunk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %2 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc, align 4
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 60
  %msg = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 18
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn77 = load ptr, ptr %5, align 4
  %cmp.not78 = icmp eq ptr %.pn77, %5
  br i1 %cmp.not78, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %7 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subh.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_datahdr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %stream.i, align 4
  %conv.i = zext i16 %10 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %.pn80 = phi ptr [ %.pn77, %for.body.lr.ph ], [ %.pn, %if.end38.for.body_crit_edge ]
  %cfsn.079 = phi i32 [ 0, %for.body.lr.ph ], [ %cfsn.1, %if.end38.for.body_crit_edge ]
  %has_ssn4 = getelementptr i8, ptr %.pn80, i32 148
  %11 = ptrtoint ptr %has_ssn4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load5 = load i16, ptr %has_ssn4, align 4
  %bf.set = or i16 %bf.load5, 8192
  store i16 %bf.set, ptr %has_ssn4, align 4
  %subh = getelementptr i8, ptr %.pn80, i32 20
  %12 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subh, align 4
  %chunk_hdr = getelementptr i8, ptr %.pn80, i32 28
  %14 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chunk_hdr, align 4
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 1
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not = icmp eq i8 %18, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sinfo_ppid = getelementptr i8, ptr %.pn80, i32 44
  %19 = ptrtoint ptr %sinfo_ppid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sinfo_ppid, align 4
  br label %if.end9

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %cfsn.079, 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %.sink = phi i32 [ %cfsn.079, %if.else ], [ %20, %if.then8 ]
  %cfsn.1 = phi i32 [ %inc, %if.else ], [ %cfsn.079, %if.then8 ]
  %21 = getelementptr inbounds %struct.sctp_idatahdr, ptr %13, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %21, align 4
  %23 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chunk_hdr, align 4
  %flags11 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %flags11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags11, align 1
  %conv12 = zext i8 %26 to i32
  %and13 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %and29 = and i32 %conv12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %call1.i76 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #7
  br i1 %tobool14.not, label %if.else25, label %if.then15

if.then15:                                        ; preds = %if.end9
  %mid_uo24 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i76, i32 0, i32 1
  %27 = ptrtoint ptr %mid_uo24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mid_uo24, align 4
  br i1 %tobool30.not, label %if.then15.if.end38_crit_edge, label %if.then15.if.end38.sink.split_crit_edge

if.then15.if.end38.sink.split_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.sink.split

if.then15.if.end38_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else25:                                        ; preds = %if.end9
  %29 = ptrtoint ptr %call1.i76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call1.i76, align 4
  br i1 %tobool30.not, label %if.else25.if.end38_crit_edge, label %if.else25.if.end38.sink.split_crit_edge

if.else25.if.end38.sink.split_crit_edge:          ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.sink.split

if.else25.if.end38_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38.sink.split:                              ; preds = %if.else25.if.end38.sink.split_crit_edge, %if.then15.if.end38.sink.split_crit_edge
  %.sink81 = phi i32 [ %28, %if.then15.if.end38.sink.split_crit_edge ], [ %30, %if.else25.if.end38.sink.split_crit_edge ]
  %call1.i76.sink = phi ptr [ %mid_uo24, %if.then15.if.end38.sink.split_crit_edge ], [ %call1.i76, %if.else25.if.end38.sink.split_crit_edge ]
  %inc33 = add i32 %.sink81, 1
  %31 = ptrtoint ptr %call1.i76.sink to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc33, ptr %call1.i76.sink, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.else25.if.end38_crit_edge, %if.then15.if.end38_crit_edge
  %mid.0 = phi i32 [ %28, %if.then15.if.end38_crit_edge ], [ %30, %if.else25.if.end38_crit_edge ], [ %.sink81, %if.end38.sink.split ]
  %mid39 = getelementptr inbounds %struct.sctp_idatahdr, ptr %13, i32 0, i32 3
  %32 = ptrtoint ptr %mid39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mid.0, ptr %mid39, align 4
  %33 = ptrtoint ptr %.pn80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn80, align 4
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg, align 4
  %cmp.not = icmp eq ptr %.pn, %35
  br i1 %cmp.not, label %if.end38.cleanup_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sctp_validate_idata(ptr nocapture noundef readonly %chunk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %3)
  %cmp.not = icmp eq i8 %3, 64
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %7 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asoc, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %9 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subh.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_datahdr, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stream.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %stream.i, align 4
  %mid7 = getelementptr inbounds %struct.sctp_idatahdr, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %mid7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mid7, align 4
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 60, i32 1
  %.frozen = freeze i16 %12
  %div14.i2.i = udiv i16 %.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %15 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %.frozen, %15
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #7
  %16 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call1.i, align 4
  %sub = sub i32 %14, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp9, %if.end5 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_ulpevent_idata(ptr noundef %ulpq, ptr noundef %chunk, i32 noundef %gfp) #2 align 64 {
entry:
  %temp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #7
  %0 = call ptr @memset(ptr %temp, i32 255, i32 56)
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %1 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asoc, align 4
  %call = tail call ptr @sctp_ulpevent_make_rcvmsg(ptr noundef %2, ptr noundef %chunk, i32 noundef %gfp) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %3 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subh, align 4
  %mid = getelementptr inbounds %struct.sctp_idatahdr, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mid, align 4
  %7 = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %6, ptr %7, align 1
  %msg_flags = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 9
  %.pn = load ptr, ptr %subh, align 4
  %.sink.in = getelementptr inbounds %struct.sctp_idatahdr, ptr %.pn, i32 0, i32 4
  %9 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.sink = load i32, ptr %.sink.in, align 4
  %10 = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %.sink, ptr %10, align 1
  %12 = ptrtoint ptr %msg_flags to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %msg_flags, align 1
  %14 = and i16 %13, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool9.not = icmp eq i16 %14, 0
  %15 = and i16 %13, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp.i = icmp eq i16 %15, 3
  br i1 %tobool9.not, label %if.then10, label %if.else23

if.then10:                                        ; preds = %if.end
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i16 %13, 128
  %16 = ptrtoint ptr %msg_flags to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %or.i, ptr %msg_flags, align 1
  br label %if.then13

if.end.i:                                         ; preds = %if.then10
  %reasm.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %prev.i.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %prev.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %18, %reasm.i.i
  %tobool.not166.i.i = icmp eq ptr %18, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not166.i.i
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %call, i32 -24
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %reasm.i.i, ptr %add.ptr.i.i.i, align 8
  %prev10.i.i.i.i.i = getelementptr i8, ptr %call, i32 -20
  %20 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %prev10.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %add.ptr.i.i.i, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %add.ptr.i.i.i, ptr %18, align 4
  br label %sctp_intl_store_reasm.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %stream.i.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 7
  %23 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %stream.i.i, align 1
  %stream4.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 28
  %25 = ptrtoint ptr %stream4.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %stream4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp.i.i = icmp eq i16 %24, %26
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %lor.lhs.false32.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %7, align 1
  %29 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %29, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %28)
  %cmp7.i.i = icmp eq i32 %31, %28
  br i1 %cmp7.i.i, label %land.lhs.true9.i.i, label %land.lhs.true.i.i.land.lhs.true29.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true29.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true29.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %msg_flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 32
  %32 = ptrtoint ptr %msg_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %msg_flags.i.i, align 1
  %34 = and i16 %33, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool11.not.i.i = icmp eq i16 %34, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true9.i.i.if.then19.i.i_crit_edge

land.lhs.true9.i.i.if.then19.i.i_crit_edge:       ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true9.i.i
  %35 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool15.not.i.i = icmp eq i16 %35, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true16.i.i, label %lor.lhs.false.i.i.land.lhs.true29.i.i_crit_edge

lor.lhs.false.i.i.land.lhs.true29.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true29.i.i

land.lhs.true16.i.i:                              ; preds = %lor.lhs.false.i.i
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %10, align 1
  %38 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 16
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %38, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %40)
  %cmp17.i.i = icmp ugt i32 %37, %40
  br i1 %cmp17.i.i, label %land.lhs.true16.i.i.if.then19.i.i_crit_edge, label %land.lhs.true16.i.i.land.lhs.true29.i.i_crit_edge

land.lhs.true16.i.i.land.lhs.true29.i.i_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true29.i.i

land.lhs.true16.i.i.if.then19.i.i_crit_edge:      ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i.i

if.then19.i.i:                                    ; preds = %land.lhs.true16.i.i.if.then19.i.i_crit_edge, %land.lhs.true9.i.i.if.then19.i.i_crit_edge
  %add.ptr.i146.i.i = getelementptr i8, ptr %call, i32 -24
  %41 = ptrtoint ptr %add.ptr.i146.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %reasm.i.i, ptr %add.ptr.i146.i.i, align 8
  %prev10.i.i.i148.i.i = getelementptr i8, ptr %call, i32 -20
  %42 = ptrtoint ptr %prev10.i.i.i148.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %18, ptr %prev10.i.i.i148.i.i, align 4
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %add.ptr.i146.i.i, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %add.ptr.i146.i.i, ptr %18, align 4
  br label %sctp_intl_store_reasm.exit.i

land.lhs.true29.i.i:                              ; preds = %land.lhs.true16.i.i.land.lhs.true29.i.i_crit_edge, %lor.lhs.false.i.i.land.lhs.true29.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true29.i.i_crit_edge
  %sub.i.i = sub i32 %31, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp30.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp30.i.i, label %land.lhs.true29.i.i.if.then39.i.i_crit_edge, label %land.lhs.true29.i.i.for.cond.preheader.i.i_crit_edge

land.lhs.true29.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i.i

land.lhs.true29.i.i.if.then39.i.i_crit_edge:      ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false32.i.i.for.cond.preheader.i.i_crit_edge, %land.lhs.true29.i.i.for.cond.preheader.i.i_crit_edge
  %45 = ptrtoint ptr %reasm.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %pos.0168.i.i = load ptr, ptr %reasm.i.i, align 4
  %cmp45.not169.i.i = icmp eq ptr %pos.0168.i.i, %reasm.i.i
  br i1 %cmp45.not169.i.i, label %for.cond.preheader.i.i.if.then93.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.then93.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %46 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool85.not.i.i = icmp eq i16 %46, 0
  br label %for.body.i.i

lor.lhs.false32.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp37.old.i.i = icmp ugt i16 %24, %26
  br i1 %cmp37.old.i.i, label %lor.lhs.false32.i.i.if.then39.i.i_crit_edge, label %lor.lhs.false32.i.i.for.cond.preheader.i.i_crit_edge

lor.lhs.false32.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i.i

lor.lhs.false32.i.i.if.then39.i.i_crit_edge:      ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i.i

if.then39.i.i:                                    ; preds = %lor.lhs.false32.i.i.if.then39.i.i_crit_edge, %land.lhs.true29.i.i.if.then39.i.i_crit_edge
  %add.ptr.i151.i.i = getelementptr i8, ptr %call, i32 -24
  %47 = ptrtoint ptr %add.ptr.i151.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %reasm.i.i, ptr %add.ptr.i151.i.i, align 8
  %prev10.i.i.i153.i.i = getelementptr i8, ptr %call, i32 -20
  %48 = ptrtoint ptr %prev10.i.i.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %18, ptr %prev10.i.i.i153.i.i, align 4
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %add.ptr.i151.i.i, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %add.ptr.i151.i.i, ptr %18, align 4
  br label %sctp_intl_store_reasm.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pos.0170.i.i = phi ptr [ %pos.0168.i.i, %for.body.lr.ph.i.i ], [ %pos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %stream50.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0170.i.i, i32 0, i32 3, i32 28
  %51 = ptrtoint ptr %stream50.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %stream50.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %52)
  %cmp52.i.i = icmp ult i16 %24, %52
  br i1 %cmp52.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %lor.lhs.false54.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

lor.lhs.false54.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %52)
  %cmp59.i.i = icmp eq i16 %24, %52
  br i1 %cmp59.i.i, label %land.lhs.true61.i.i, label %lor.lhs.false54.i.i.for.inc.i.i_crit_edge

lor.lhs.false54.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true61.i.i:                              ; preds = %lor.lhs.false54.i.i
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %7, align 1
  %55 = getelementptr inbounds %struct.sk_buff, ptr %pos.0170.i.i, i32 0, i32 3, i32 12
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %55, align 1
  %sub62.i.i = sub i32 %54, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62.i.i)
  %cmp63.i.i = icmp slt i32 %sub62.i.i, 0
  br i1 %cmp63.i.i, label %land.lhs.true61.i.i.for.end.i.i_crit_edge, label %land.lhs.true73.i.i

land.lhs.true61.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

land.lhs.true73.i.i:                              ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %57)
  %cmp74.i.i = icmp eq i32 %54, %57
  br i1 %cmp74.i.i, label %land.lhs.true76.i.i, label %land.lhs.true73.i.i.for.inc.i.i_crit_edge

land.lhs.true73.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true76.i.i:                              ; preds = %land.lhs.true73.i.i
  %msg_flags77.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0170.i.i, i32 0, i32 3, i32 32
  %58 = ptrtoint ptr %msg_flags77.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %msg_flags77.i.i, align 1
  %60 = and i16 %59, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool80.not.i.i = icmp eq i16 %60, 0
  br i1 %tobool80.not.i.i, label %land.lhs.true81.i.i, label %land.lhs.true76.i.i.for.inc.i.i_crit_edge

land.lhs.true76.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true81.i.i:                              ; preds = %land.lhs.true76.i.i
  br i1 %tobool85.not.i.i, label %lor.lhs.false86.i.i, label %land.lhs.true81.i.i.for.end.i.i_crit_edge

land.lhs.true81.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

lor.lhs.false86.i.i:                              ; preds = %land.lhs.true81.i.i
  %61 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %10, align 1
  %63 = getelementptr inbounds %struct.sk_buff, ptr %pos.0170.i.i, i32 0, i32 3, i32 16
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %63, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %65)
  %cmp87.i.i = icmp ult i32 %62, %65
  br i1 %cmp87.i.i, label %lor.lhs.false86.i.i.for.end.i.i_crit_edge, label %lor.lhs.false86.i.i.for.inc.i.i_crit_edge

lor.lhs.false86.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false86.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

lor.lhs.false86.i.i.for.end.i.i_crit_edge:        ; preds = %lor.lhs.false86.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %lor.lhs.false86.i.i.for.inc.i.i_crit_edge, %land.lhs.true76.i.i.for.inc.i.i_crit_edge, %land.lhs.true73.i.i.for.inc.i.i_crit_edge, %lor.lhs.false54.i.i.for.inc.i.i_crit_edge
  %66 = ptrtoint ptr %pos.0170.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %pos.0.i.i = load ptr, ptr %pos.0170.i.i, align 4
  %cmp45.not.i.i = icmp eq ptr %pos.0.i.i, %reasm.i.i
  br i1 %cmp45.not.i.i, label %for.inc.i.i.if.then93.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.then93.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93.i.i

for.end.i.i:                                      ; preds = %lor.lhs.false86.i.i.for.end.i.i_crit_edge, %land.lhs.true81.i.i.for.end.i.i_crit_edge, %land.lhs.true61.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %tobool92.not.i.i = icmp eq ptr %pos.0170.i.i, null
  br i1 %tobool92.not.i.i, label %for.end.i.i.if.then93.i.i_crit_edge, label %if.else.i.i

for.end.i.i.if.then93.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93.i.i

if.then93.i.i:                                    ; preds = %for.end.i.i.if.then93.i.i_crit_edge, %for.inc.i.i.if.then93.i.i_crit_edge, %for.cond.preheader.i.i.if.then93.i.i_crit_edge
  %add.ptr.i157.i.i = getelementptr i8, ptr %call, i32 -24
  %67 = ptrtoint ptr %add.ptr.i157.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %reasm.i.i, ptr %add.ptr.i157.i.i, align 8
  %prev10.i.i.i159.i.i = getelementptr i8, ptr %call, i32 -20
  %68 = ptrtoint ptr %prev10.i.i.i159.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %18, ptr %prev10.i.i.i159.i.i, align 4
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %add.ptr.i157.i.i, ptr %prev.i.i.i, align 4
  %70 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %add.ptr.i157.i.i, ptr %18, align 4
  br label %sctp_intl_store_reasm.exit.i

if.else.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i162.i.i = getelementptr i8, ptr %call, i32 -24
  %prev.i163.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %pos.0170.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i163.i.i, align 4
  %73 = ptrtoint ptr %add.ptr.i162.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %pos.0170.i.i, ptr %add.ptr.i162.i.i, align 8
  %prev10.i.i.i.i = getelementptr i8, ptr %call, i32 -20
  %74 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %add.ptr.i162.i.i, ptr %prev.i163.i.i, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %add.ptr.i162.i.i, ptr %72, align 4
  br label %sctp_intl_store_reasm.exit.i

sctp_intl_store_reasm.exit.i:                     ; preds = %if.else.i.i, %if.then93.i.i, %if.then39.i.i, %if.then19.i.i, %if.then.i.i
  %qlen.i.i.i160.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %qlen.i.i.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qlen.i.i.i160.i.i, align 4
  %add.i.i.i161.i.i = add i32 %77, 1
  store volatile i32 %add.i.i.i161.i.i, ptr %qlen.i.i.i160.i.i, align 4
  %asoc.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %78 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %asoc.i, align 4
  %stream6.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 7
  %80 = ptrtoint ptr %stream6.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %stream6.i, align 1
  %in.i.i = getelementptr inbounds %struct.sctp_association, ptr %79, i32 0, i32 60, i32 1
  %.frozen = freeze i16 %81
  %div14.i2.i.i = udiv i16 %.frozen, 204
  %div14.i.zext.i.i = zext i16 %div14.i2.i.i to i32
  %mul.i.i.i = shl nuw nsw i32 %div14.i.zext.i.i, 12
  %82 = mul i16 %div14.i2.i.i, 204
  %rem.i3.i.i.decomposed = sub i16 %.frozen, %82
  %narrow.i.i = mul nuw nsw i16 %rem.i3.i.i.decomposed, 20
  %mul15.i.i.i = zext i16 %narrow.i.i to i32
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %mul15.i.i.i
  %call1.i.i = tail call ptr @__genradix_ptr(ptr noundef %in.i.i, i32 noundef %add.i.i.i) #7
  %pd_mode.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i, i32 0, i32 4
  %83 = ptrtoint ptr %pd_mode.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pd_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i = icmp eq i8 %84, 0
  br i1 %tobool.not.i, label %sctp_intl_store_reasm.exit.i.if.then17.i_crit_edge, label %land.lhs.true.i

sctp_intl_store_reasm.exit.i.if.then17.i_crit_edge: ; preds = %sctp_intl_store_reasm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

land.lhs.true.i:                                  ; preds = %sctp_intl_store_reasm.exit.i
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %7, align 1
  %87 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp8.i = icmp eq i32 %86, %88
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.then17.i_crit_edge

land.lhs.true.i.if.then17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %89 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %10, align 1
  %fsn.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %fsn.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fsn.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp11.i = icmp eq i32 %90, %92
  br i1 %cmp11.i, label %if.then13.i, label %land.lhs.true10.i.if.then17.i_crit_edge

land.lhs.true10.i.if.then17.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.then13.i:                                      ; preds = %land.lhs.true10.i
  %93 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %asoc.i, align 4
  %95 = ptrtoint ptr %stream6.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %stream6.i, align 1
  %in.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %94, i32 0, i32 60, i32 1
  %.frozen387 = freeze i16 %96
  %div14.i2.i.i.i = udiv i16 %.frozen387, 204
  %div14.i.zext.i.i.i = zext i16 %div14.i2.i.i.i to i32
  %mul.i.i.i.i = shl nuw nsw i32 %div14.i.zext.i.i.i, 12
  %97 = mul i16 %div14.i2.i.i.i, 204
  %rem.i3.i.i.i.decomposed = sub i16 %.frozen387, %97
  %narrow.i.i.i = mul nuw nsw i16 %rem.i3.i.i.i.decomposed, 20
  %mul15.i.i.i.i = zext i16 %narrow.i.i.i to i32
  %add.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, %mul15.i.i.i.i
  %call1.i.i.i = tail call ptr @__genradix_ptr(ptr noundef %in.i.i.i, i32 noundef %add.i.i.i.i) #7
  %98 = ptrtoint ptr %reasm.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %pos.0133.i.i = load ptr, ptr %reasm.i.i, align 4
  %cmp.not134.i.i = icmp eq ptr %pos.0133.i.i, %reasm.i.i
  br i1 %cmp.not134.i.i, label %if.then13.i.if.then17.i_crit_edge, label %for.body.lr.ph.i36.i

if.then13.i.if.then17.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

for.body.lr.ph.i36.i:                             ; preds = %if.then13.i
  %99 = ptrtoint ptr %stream6.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %stream6.i, align 1
  %fsn.i.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i.i, i32 0, i32 2
  br label %for.body.i37.i

for.body.i37.i:                                   ; preds = %for.inc.i44.i.for.body.i37.i_crit_edge, %for.body.lr.ph.i36.i
  %pos.0138.i.i = phi ptr [ %pos.0133.i.i, %for.body.lr.ph.i36.i ], [ %pos.0.i43.i, %for.inc.i44.i.for.body.i37.i_crit_edge ]
  %next_fsn.0137.i.i = phi i32 [ 0, %for.body.lr.ph.i36.i ], [ %next_fsn.3.i.i, %for.inc.i44.i.for.body.i37.i_crit_edge ]
  %last_frag.0136.i.i = phi ptr [ null, %for.body.lr.ph.i36.i ], [ %last_frag.3.i.i, %for.inc.i44.i.for.body.i37.i_crit_edge ]
  %first_frag.0135.i.i = phi ptr [ null, %for.body.lr.ph.i36.i ], [ %first_frag.3.i.i, %for.inc.i44.i.for.body.i37.i_crit_edge ]
  %stream5.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0138.i.i, i32 0, i32 3, i32 28
  %101 = ptrtoint ptr %stream5.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %stream5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %102, i16 %100)
  %cmp8.i.i = icmp ult i16 %102, %100
  br i1 %cmp8.i.i, label %for.body.i37.i.for.inc.i44.i_crit_edge, label %if.end.i38.i

for.body.i37.i.for.inc.i44.i_crit_edge:           ; preds = %for.body.i37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i44.i

if.end.i38.i:                                     ; preds = %for.body.i37.i
  call void @__sanitizer_cov_trace_cmp2(i16 %102, i16 %100)
  %cmp14.i.i = icmp ugt i16 %102, %100
  br i1 %cmp14.i.i, label %if.end.i38.i.out.i.i_crit_edge, label %lor.lhs.false.i39.i

if.end.i38.i.out.i.i_crit_edge:                   ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

lor.lhs.false.i39.i:                              ; preds = %if.end.i38.i
  %103 = getelementptr inbounds %struct.sk_buff, ptr %pos.0138.i.i, i32 0, i32 3, i32 12
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %103, align 1
  %106 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %call1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp16.not.i.i = icmp eq i32 %105, %107
  br i1 %cmp16.not.i.i, label %if.end19.i.i, label %lor.lhs.false.i39.i.out.i.i_crit_edge

lor.lhs.false.i39.i.out.i.i_crit_edge:            ; preds = %lor.lhs.false.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

if.end19.i.i:                                     ; preds = %lor.lhs.false.i39.i
  %msg_flags.i40.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0138.i.i, i32 0, i32 3, i32 32
  %108 = ptrtoint ptr %msg_flags.i40.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %msg_flags.i40.i, align 1
  %110 = and i16 %109, 3
  %and.i.i = zext i16 %110 to i32
  %111 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %if.end19.i.i.out.i.i_crit_edge [
    i32 1, label %sw.bb33.i.i
    i32 0, label %sw.bb21.i.i
  ]

if.end19.i.i.out.i.i_crit_edge:                   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

sw.bb21.i.i:                                      ; preds = %if.end19.i.i
  %tobool.not.i41.i = icmp eq ptr %first_frag.0135.i.i, null
  %112 = getelementptr inbounds %struct.sk_buff, ptr %pos.0138.i.i, i32 0, i32 3, i32 16
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %112, align 1
  br i1 %tobool.not.i41.i, label %if.then22.i.i, label %if.else.i42.i

if.then22.i.i:                                    ; preds = %sw.bb21.i.i
  %115 = ptrtoint ptr %fsn.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fsn.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp23.i.i = icmp eq i32 %114, %116
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.then22.i.i.for.inc.i44.i_crit_edge

if.then22.i.i.for.inc.i44.i_crit_edge:            ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i44.i

if.then25.i.i:                                    ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %114, 1
  br label %for.inc.i44.i

if.else.i42.i:                                    ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %next_fsn.0137.i.i)
  %cmp27.i.i = icmp eq i32 %114, %next_fsn.0137.i.i
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.else.i42.i.if.end50.i.i_crit_edge

if.else.i42.i.if.end50.i.i_crit_edge:             ; preds = %if.else.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

if.then29.i.i:                                    ; preds = %if.else.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i = add i32 %next_fsn.0137.i.i, 1
  br label %for.inc.i44.i

sw.bb33.i.i:                                      ; preds = %if.end19.i.i
  %tobool34.not.i.i = icmp eq ptr %first_frag.0135.i.i, null
  %117 = getelementptr inbounds %struct.sk_buff, ptr %pos.0138.i.i, i32 0, i32 3, i32 16
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %117, align 1
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %if.else41.i.i

if.then35.i.i:                                    ; preds = %sw.bb33.i.i
  %120 = ptrtoint ptr %fsn.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fsn.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %121)
  %cmp37.i.i = icmp eq i32 %119, %121
  br i1 %cmp37.i.i, label %if.then35.i.i.out.i.i_crit_edge, label %if.then35.i.i.if.then17.i_crit_edge

if.then35.i.i.if.then17.i_crit_edge:              ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.then35.i.i.out.i.i_crit_edge:                  ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

if.else41.i.i:                                    ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %next_fsn.0137.i.i)
  %cmp42.i.i = icmp eq i32 %119, %next_fsn.0137.i.i
  br i1 %cmp42.i.i, label %if.then44.i.i, label %if.else41.i.i.if.end50.i.i_crit_edge

if.else41.i.i.if.end50.i.i_crit_edge:             ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

if.then44.i.i:                                    ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

for.inc.i44.i:                                    ; preds = %if.then29.i.i, %if.then25.i.i, %if.then22.i.i.for.inc.i44.i_crit_edge, %for.body.i37.i.for.inc.i44.i_crit_edge
  %first_frag.3.i.i = phi ptr [ %first_frag.0135.i.i, %for.body.i37.i.for.inc.i44.i_crit_edge ], [ %first_frag.0135.i.i, %if.then29.i.i ], [ %pos.0138.i.i, %if.then25.i.i ], [ null, %if.then22.i.i.for.inc.i44.i_crit_edge ]
  %last_frag.3.i.i = phi ptr [ %last_frag.0136.i.i, %for.body.i37.i.for.inc.i44.i_crit_edge ], [ %pos.0138.i.i, %if.then29.i.i ], [ %pos.0138.i.i, %if.then25.i.i ], [ %last_frag.0136.i.i, %if.then22.i.i.for.inc.i44.i_crit_edge ]
  %next_fsn.3.i.i = phi i32 [ %next_fsn.0137.i.i, %for.body.i37.i.for.inc.i44.i_crit_edge ], [ %inc.i.i, %if.then29.i.i ], [ %add.i.i, %if.then25.i.i ], [ %next_fsn.0137.i.i, %if.then22.i.i.for.inc.i44.i_crit_edge ]
  %122 = ptrtoint ptr %pos.0138.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %pos.0.i43.i = load ptr, ptr %pos.0138.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pos.0.i43.i, %reasm.i.i
  br i1 %cmp.not.i.i, label %for.inc.i44.i.out.i.i_crit_edge, label %for.inc.i44.i.for.body.i37.i_crit_edge

for.inc.i44.i.for.body.i37.i_crit_edge:           ; preds = %for.inc.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i37.i

for.inc.i44.i.out.i.i_crit_edge:                  ; preds = %for.inc.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

out.i.i:                                          ; preds = %for.inc.i44.i.out.i.i_crit_edge, %if.then35.i.i.out.i.i_crit_edge, %if.end19.i.i.out.i.i_crit_edge, %lor.lhs.false.i39.i.out.i.i_crit_edge, %if.end.i38.i.out.i.i_crit_edge
  %first_frag.4.i.i = phi ptr [ %pos.0138.i.i, %if.then35.i.i.out.i.i_crit_edge ], [ %first_frag.3.i.i, %for.inc.i44.i.out.i.i_crit_edge ], [ %first_frag.0135.i.i, %lor.lhs.false.i39.i.out.i.i_crit_edge ], [ %first_frag.0135.i.i, %if.end.i38.i.out.i.i_crit_edge ], [ %first_frag.0135.i.i, %if.end19.i.i.out.i.i_crit_edge ]
  %last_frag.4.i.i = phi ptr [ %pos.0138.i.i, %if.then35.i.i.out.i.i_crit_edge ], [ %last_frag.3.i.i, %for.inc.i44.i.out.i.i_crit_edge ], [ %last_frag.0136.i.i, %lor.lhs.false.i39.i.out.i.i_crit_edge ], [ %last_frag.0136.i.i, %if.end.i38.i.out.i.i_crit_edge ], [ %last_frag.0136.i.i, %if.end19.i.i.out.i.i_crit_edge ]
  %next_fsn.4.i.i = phi i32 [ 0, %if.then35.i.i.out.i.i_crit_edge ], [ %next_fsn.3.i.i, %for.inc.i44.i.out.i.i_crit_edge ], [ %next_fsn.0137.i.i, %lor.lhs.false.i39.i.out.i.i_crit_edge ], [ %next_fsn.0137.i.i, %if.end.i38.i.out.i.i_crit_edge ], [ %next_fsn.0137.i.i, %if.end19.i.i.out.i.i_crit_edge ]
  %is_last.3.i.i = phi i32 [ 1, %if.then35.i.i.out.i.i_crit_edge ], [ 0, %if.end.i38.i.out.i.i_crit_edge ], [ 0, %lor.lhs.false.i39.i.out.i.i_crit_edge ], [ 0, %if.end19.i.i.out.i.i_crit_edge ], [ 0, %for.inc.i44.i.out.i.i_crit_edge ]
  %tobool48.not.i.i = icmp eq ptr %first_frag.4.i.i, null
  br i1 %tobool48.not.i.i, label %out.i.i.if.then17.i_crit_edge, label %out.i.i.if.end50.i.i_crit_edge

out.i.i.if.end50.i.i_crit_edge:                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

out.i.i.if.then17.i_crit_edge:                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.end50.i.i:                                     ; preds = %out.i.i.if.end50.i.i_crit_edge, %if.then44.i.i, %if.else41.i.i.if.end50.i.i_crit_edge, %if.else.i42.i.if.end50.i.i_crit_edge
  %is_last.3118.i.i = phi i32 [ %is_last.3.i.i, %out.i.i.if.end50.i.i_crit_edge ], [ 1, %if.then44.i.i ], [ 0, %if.else41.i.i.if.end50.i.i_crit_edge ], [ 0, %if.else.i42.i.if.end50.i.i_crit_edge ]
  %next_fsn.4117.i.i = phi i32 [ %next_fsn.4.i.i, %out.i.i.if.end50.i.i_crit_edge ], [ 0, %if.then44.i.i ], [ %next_fsn.0137.i.i, %if.else41.i.i.if.end50.i.i_crit_edge ], [ %next_fsn.0137.i.i, %if.else.i42.i.if.end50.i.i_crit_edge ]
  %last_frag.4116.i.i = phi ptr [ %last_frag.4.i.i, %out.i.i.if.end50.i.i_crit_edge ], [ %pos.0138.i.i, %if.then44.i.i ], [ %last_frag.0136.i.i, %if.else41.i.i.if.end50.i.i_crit_edge ], [ %last_frag.0136.i.i, %if.else.i42.i.if.end50.i.i_crit_edge ]
  %first_frag.4115.i.i = phi ptr [ %first_frag.4.i.i, %out.i.i.if.end50.i.i_crit_edge ], [ %first_frag.0135.i.i, %if.then44.i.i ], [ %first_frag.0135.i.i, %if.else41.i.i.if.end50.i.i_crit_edge ], [ %first_frag.0135.i.i, %if.else.i42.i.if.end50.i.i_crit_edge ]
  %123 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %asoc.i, align 4
  %net.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %net.i.i, align 8
  %call53.i.i = tail call ptr @sctp_make_reassembled_event(ptr noundef %126, ptr noundef %reasm.i.i, ptr noundef nonnull %first_frag.4115.i.i, ptr noundef %last_frag.4116.i.i) #7
  %tobool54.not.i.i = icmp eq ptr %call53.i.i, null
  br i1 %tobool54.not.i.i, label %if.end50.i.i.if.then17.i_crit_edge, label %if.then55.i.i

if.end50.i.i.if.then17.i_crit_edge:               ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.then55.i.i:                                    ; preds = %if.end50.i.i
  %127 = ptrtoint ptr %fsn.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %next_fsn.4117.i.i, ptr %fsn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_last.3118.i.i)
  %tobool57.not.i.i = icmp eq i32 %is_last.3118.i.i, 0
  br i1 %tobool57.not.i.i, label %if.then55.i.i.if.then13_crit_edge, label %if.then58.i.i

if.then55.i.i.if.then13_crit_edge:                ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then58.i.i:                                    ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %msg_flags59.i.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %call53.i.i, i32 0, i32 9
  %128 = ptrtoint ptr %msg_flags59.i.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %msg_flags59.i.i, align 1
  %130 = or i16 %129, 128
  store i16 %130, ptr %msg_flags59.i.i, align 1
  %pd_mode.i.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %pd_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %pd_mode.i.i, align 4
  br label %if.then13

if.then17.i:                                      ; preds = %if.end50.i.i.if.then17.i_crit_edge, %out.i.i.if.then17.i_crit_edge, %if.then35.i.i.if.then17.i_crit_edge, %if.then13.i.if.then17.i_crit_edge, %land.lhs.true10.i.if.then17.i_crit_edge, %land.lhs.true.i.if.then17.i_crit_edge, %sctp_intl_store_reasm.exit.i.if.then17.i_crit_edge
  %132 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %asoc.i, align 4
  %134 = ptrtoint ptr %stream6.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %stream6.i, align 1
  %in.i.i46.i = getelementptr inbounds %struct.sctp_association, ptr %133, i32 0, i32 60, i32 1
  %.frozen388 = freeze i16 %135
  %div14.i2.i.i47.i = udiv i16 %.frozen388, 204
  %div14.i.zext.i.i48.i = zext i16 %div14.i2.i.i47.i to i32
  %mul.i.i.i49.i = shl nuw nsw i32 %div14.i.zext.i.i48.i, 12
  %136 = mul i16 %div14.i2.i.i47.i, 204
  %rem.i3.i.i50.i.decomposed = sub i16 %.frozen388, %136
  %narrow.i.i51.i = mul nuw nsw i16 %rem.i3.i.i50.i.decomposed, 20
  %mul15.i.i.i52.i = zext i16 %narrow.i.i51.i to i32
  %add.i.i.i53.i = add nuw nsw i32 %mul.i.i.i49.i, %mul15.i.i.i52.i
  %call1.i.i54.i = tail call ptr @__genradix_ptr(ptr noundef %in.i.i46.i, i32 noundef %add.i.i.i53.i) #7
  %137 = ptrtoint ptr %reasm.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %pos.0171.i.i = load ptr, ptr %reasm.i.i, align 4
  %cmp.not172.i.i = icmp eq ptr %pos.0171.i.i, %reasm.i.i
  br i1 %cmp.not172.i.i, label %if.then17.i.cleanup_crit_edge, label %for.body.lr.ph.i56.i

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i56.i:                             ; preds = %if.then17.i
  %138 = ptrtoint ptr %stream6.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %stream6.i, align 1
  br label %for.body.i57.i

for.body.i57.i:                                   ; preds = %for.inc.i70.i.for.body.i57.i_crit_edge, %for.body.lr.ph.i56.i
  %pos.0179.i.i = phi ptr [ %pos.0171.i.i, %for.body.lr.ph.i56.i ], [ %pos.0.i68.i, %for.inc.i70.i.for.body.i57.i_crit_edge ]
  %mid.0178.i.i = phi i32 [ 0, %for.body.lr.ph.i56.i ], [ %mid.2.ph.i.i, %for.inc.i70.i.for.body.i57.i_crit_edge ]
  %pd_len.0177.i.i = phi i32 [ 0, %for.body.lr.ph.i56.i ], [ %pd_len.3.ph.i.i, %for.inc.i70.i.for.body.i57.i_crit_edge ]
  %next_fsn.0176.i.i = phi i32 [ 0, %for.body.lr.ph.i56.i ], [ %next_fsn.2.ph.i.i, %for.inc.i70.i.for.body.i57.i_crit_edge ]
  %pd_last.0175.i.i = phi ptr [ null, %for.body.lr.ph.i56.i ], [ %pd_last.3.ph.i.i, %for.inc.i70.i.for.body.i57.i_crit_edge ]
  %pd_first.0174.i.i = phi ptr [ null, %for.body.lr.ph.i56.i ], [ %pd_first.3.ph.i.i, %for.inc.i70.i.for.body.i57.i_crit_edge ]
  %first_frag.0173.i.i = phi ptr [ null, %for.body.lr.ph.i56.i ], [ %first_frag.2.ph.i.i, %for.inc.i70.i.for.body.i57.i_crit_edge ]
  %stream7.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0179.i.i, i32 0, i32 3, i32 28
  %140 = ptrtoint ptr %stream7.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %stream7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %141, i16 %139)
  %cmp10.i.i = icmp ult i16 %141, %139
  br i1 %cmp10.i.i, label %for.body.i57.i.for.inc.i70.i_crit_edge, label %if.end.i58.i

for.body.i57.i.for.inc.i70.i_crit_edge:           ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

if.end.i58.i:                                     ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_cmp2(i16 %141, i16 %139)
  %cmp16.i.i = icmp ugt i16 %141, %139
  br i1 %cmp16.i.i, label %if.end.i58.i.for.end.i71.i_crit_edge, label %if.end19.i60.i

if.end.i58.i.for.end.i71.i_crit_edge:             ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i71.i

if.end19.i60.i:                                   ; preds = %if.end.i58.i
  %142 = getelementptr inbounds %struct.sk_buff, ptr %pos.0179.i.i, i32 0, i32 3, i32 12
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %142, align 1
  %145 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %7, align 1
  %sub.i59.i = sub i32 %144, %146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i59.i)
  %cmp20.i.i = icmp slt i32 %sub.i59.i, 0
  br i1 %cmp20.i.i, label %if.end19.i60.i.for.inc.i70.i_crit_edge, label %if.end23.i.i

if.end19.i60.i.for.inc.i70.i_crit_edge:           ; preds = %if.end19.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

if.end23.i.i:                                     ; preds = %if.end19.i60.i
  %sub24.i.i = sub i32 %146, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24.i.i)
  %cmp25.i.i = icmp slt i32 %sub24.i.i, 0
  br i1 %cmp25.i.i, label %if.end23.i.i.for.end.i71.i_crit_edge, label %if.end28.i.i

if.end23.i.i.for.end.i71.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i71.i

if.end28.i.i:                                     ; preds = %if.end23.i.i
  %msg_flags.i61.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0179.i.i, i32 0, i32 3, i32 32
  %147 = ptrtoint ptr %msg_flags.i61.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %msg_flags.i61.i, align 1
  %149 = and i16 %148, 3
  %and.i62.i = zext i16 %149 to i32
  %150 = zext i32 %and.i62.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and.i62.i, label %if.end28.i.i.for.inc.i70.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 0, label %sw.bb34.i.i
    i32 1, label %sw.bb46.i.i
  ]

if.end28.i.i.for.inc.i70.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

sw.bb.i.i:                                        ; preds = %if.end28.i.i
  %151 = ptrtoint ptr %call1.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %call1.i.i54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %152)
  %cmp30.i63.i = icmp eq i32 %144, %152
  br i1 %cmp30.i63.i, label %if.then32.i.i, label %sw.bb.i.i.for.inc.i70.i_crit_edge

sw.bb.i.i.for.inc.i70.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

if.then32.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0179.i.i, i32 0, i32 6
  %153 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len.i.i, align 4
  br label %for.inc.i70.i

sw.bb34.i.i:                                      ; preds = %if.end28.i.i
  %tobool.not.i64.i = icmp ne ptr %first_frag.0173.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %mid.0178.i.i)
  %cmp35.i.i = icmp eq i32 %144, %mid.0178.i.i
  %or.cond.i.i = select i1 %tobool.not.i64.i, i1 %cmp35.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true37.i.i, label %sw.bb34.i.i.for.inc.i70.i_crit_edge

sw.bb34.i.i.for.inc.i70.i_crit_edge:              ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

land.lhs.true37.i.i:                              ; preds = %sw.bb34.i.i
  %155 = getelementptr inbounds %struct.sk_buff, ptr %pos.0179.i.i, i32 0, i32 3, i32 16
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %155, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %next_fsn.0176.i.i)
  %cmp38.i.i = icmp eq i32 %157, %next_fsn.0176.i.i
  br i1 %cmp38.i.i, label %if.then40.i.i, label %land.lhs.true37.i.i.for.inc.i70.i_crit_edge

land.lhs.true37.i.i.for.inc.i70.i_crit_edge:      ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

if.then40.i.i:                                    ; preds = %land.lhs.true37.i.i
  %inc.i65.i = add i32 %next_fsn.0176.i.i, 1
  %tobool41.not.i.i = icmp eq ptr %pd_first.0174.i.i, null
  br i1 %tobool41.not.i.i, label %if.then40.i.i.for.inc.i70.i_crit_edge, label %if.then42.i.i

if.then40.i.i.for.inc.i70.i_crit_edge:            ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

if.then42.i.i:                                    ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %len43.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0179.i.i, i32 0, i32 6
  %158 = ptrtoint ptr %len43.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %len43.i.i, align 4
  %add.i66.i = add i32 %159, %pd_len.0177.i.i
  br label %for.inc.i70.i

sw.bb46.i.i:                                      ; preds = %if.end28.i.i
  %tobool47.not.i.i = icmp ne ptr %first_frag.0173.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %mid.0178.i.i)
  %cmp49.i.i = icmp eq i32 %144, %mid.0178.i.i
  %or.cond141.i.i = select i1 %tobool47.not.i.i, i1 %cmp49.i.i, i1 false
  br i1 %or.cond141.i.i, label %land.lhs.true51.i.i, label %sw.bb46.i.i.for.inc.i70.i_crit_edge

sw.bb46.i.i.for.inc.i70.i_crit_edge:              ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

land.lhs.true51.i.i:                              ; preds = %sw.bb46.i.i
  %160 = getelementptr inbounds %struct.sk_buff, ptr %pos.0179.i.i, i32 0, i32 3, i32 16
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %160, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %next_fsn.0176.i.i)
  %cmp52.i67.i = icmp eq i32 %162, %next_fsn.0176.i.i
  br i1 %cmp52.i67.i, label %found.i.i, label %land.lhs.true51.i.i.for.inc.i70.i_crit_edge

land.lhs.true51.i.i.for.inc.i70.i_crit_edge:      ; preds = %land.lhs.true51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i

for.inc.i70.i:                                    ; preds = %land.lhs.true51.i.i.for.inc.i70.i_crit_edge, %sw.bb46.i.i.for.inc.i70.i_crit_edge, %if.then42.i.i, %if.then40.i.i.for.inc.i70.i_crit_edge, %land.lhs.true37.i.i.for.inc.i70.i_crit_edge, %sw.bb34.i.i.for.inc.i70.i_crit_edge, %if.then32.i.i, %sw.bb.i.i.for.inc.i70.i_crit_edge, %if.end28.i.i.for.inc.i70.i_crit_edge, %if.end19.i60.i.for.inc.i70.i_crit_edge, %for.body.i57.i.for.inc.i70.i_crit_edge
  %first_frag.2.ph.i.i = phi ptr [ %first_frag.0173.i.i, %if.end19.i60.i.for.inc.i70.i_crit_edge ], [ %first_frag.0173.i.i, %for.body.i57.i.for.inc.i70.i_crit_edge ], [ %first_frag.0173.i.i, %if.end28.i.i.for.inc.i70.i_crit_edge ], [ %first_frag.0173.i.i, %if.then42.i.i ], [ %first_frag.0173.i.i, %if.then40.i.i.for.inc.i70.i_crit_edge ], [ null, %land.lhs.true37.i.i.for.inc.i70.i_crit_edge ], [ null, %sw.bb34.i.i.for.inc.i70.i_crit_edge ], [ null, %land.lhs.true51.i.i.for.inc.i70.i_crit_edge ], [ null, %sw.bb46.i.i.for.inc.i70.i_crit_edge ], [ %pos.0179.i.i, %if.then32.i.i ], [ %pos.0179.i.i, %sw.bb.i.i.for.inc.i70.i_crit_edge ]
  %pd_first.3.ph.i.i = phi ptr [ %pd_first.0174.i.i, %if.end19.i60.i.for.inc.i70.i_crit_edge ], [ %pd_first.0174.i.i, %for.body.i57.i.for.inc.i70.i_crit_edge ], [ %pd_first.0174.i.i, %if.end28.i.i.for.inc.i70.i_crit_edge ], [ %pd_first.0174.i.i, %if.then42.i.i ], [ null, %if.then40.i.i.for.inc.i70.i_crit_edge ], [ %pd_first.0174.i.i, %land.lhs.true37.i.i.for.inc.i70.i_crit_edge ], [ %pd_first.0174.i.i, %sw.bb34.i.i.for.inc.i70.i_crit_edge ], [ %pd_first.0174.i.i, %land.lhs.true51.i.i.for.inc.i70.i_crit_edge ], [ %pd_first.0174.i.i, %sw.bb46.i.i.for.inc.i70.i_crit_edge ], [ %pos.0179.i.i, %if.then32.i.i ], [ %pd_first.0174.i.i, %sw.bb.i.i.for.inc.i70.i_crit_edge ]
  %pd_last.3.ph.i.i = phi ptr [ %pd_last.0175.i.i, %if.end19.i60.i.for.inc.i70.i_crit_edge ], [ %pd_last.0175.i.i, %for.body.i57.i.for.inc.i70.i_crit_edge ], [ %pd_last.0175.i.i, %if.end28.i.i.for.inc.i70.i_crit_edge ], [ %pos.0179.i.i, %if.then42.i.i ], [ %pd_last.0175.i.i, %if.then40.i.i.for.inc.i70.i_crit_edge ], [ %pd_last.0175.i.i, %land.lhs.true37.i.i.for.inc.i70.i_crit_edge ], [ %pd_last.0175.i.i, %sw.bb34.i.i.for.inc.i70.i_crit_edge ], [ %pd_last.0175.i.i, %land.lhs.true51.i.i.for.inc.i70.i_crit_edge ], [ %pd_last.0175.i.i, %sw.bb46.i.i.for.inc.i70.i_crit_edge ], [ %pos.0179.i.i, %if.then32.i.i ], [ %pd_last.0175.i.i, %sw.bb.i.i.for.inc.i70.i_crit_edge ]
  %next_fsn.2.ph.i.i = phi i32 [ %next_fsn.0176.i.i, %if.end19.i60.i.for.inc.i70.i_crit_edge ], [ %next_fsn.0176.i.i, %for.body.i57.i.for.inc.i70.i_crit_edge ], [ %next_fsn.0176.i.i, %if.end28.i.i.for.inc.i70.i_crit_edge ], [ %inc.i65.i, %if.then42.i.i ], [ %inc.i65.i, %if.then40.i.i.for.inc.i70.i_crit_edge ], [ %next_fsn.0176.i.i, %land.lhs.true37.i.i.for.inc.i70.i_crit_edge ], [ %next_fsn.0176.i.i, %sw.bb34.i.i.for.inc.i70.i_crit_edge ], [ %next_fsn.0176.i.i, %land.lhs.true51.i.i.for.inc.i70.i_crit_edge ], [ %next_fsn.0176.i.i, %sw.bb46.i.i.for.inc.i70.i_crit_edge ], [ 0, %if.then32.i.i ], [ 0, %sw.bb.i.i.for.inc.i70.i_crit_edge ]
  %pd_len.3.ph.i.i = phi i32 [ %pd_len.0177.i.i, %if.end19.i60.i.for.inc.i70.i_crit_edge ], [ %pd_len.0177.i.i, %for.body.i57.i.for.inc.i70.i_crit_edge ], [ %pd_len.0177.i.i, %if.end28.i.i.for.inc.i70.i_crit_edge ], [ %add.i66.i, %if.then42.i.i ], [ %pd_len.0177.i.i, %if.then40.i.i.for.inc.i70.i_crit_edge ], [ %pd_len.0177.i.i, %land.lhs.true37.i.i.for.inc.i70.i_crit_edge ], [ %pd_len.0177.i.i, %sw.bb34.i.i.for.inc.i70.i_crit_edge ], [ %pd_len.0177.i.i, %land.lhs.true51.i.i.for.inc.i70.i_crit_edge ], [ %pd_len.0177.i.i, %sw.bb46.i.i.for.inc.i70.i_crit_edge ], [ %154, %if.then32.i.i ], [ %pd_len.0177.i.i, %sw.bb.i.i.for.inc.i70.i_crit_edge ]
  %mid.2.ph.i.i = phi i32 [ %mid.0178.i.i, %if.end19.i60.i.for.inc.i70.i_crit_edge ], [ %mid.0178.i.i, %for.body.i57.i.for.inc.i70.i_crit_edge ], [ %mid.0178.i.i, %if.end28.i.i.for.inc.i70.i_crit_edge ], [ %mid.0178.i.i, %if.then42.i.i ], [ %mid.0178.i.i, %if.then40.i.i.for.inc.i70.i_crit_edge ], [ %mid.0178.i.i, %land.lhs.true37.i.i.for.inc.i70.i_crit_edge ], [ %mid.0178.i.i, %sw.bb34.i.i.for.inc.i70.i_crit_edge ], [ %mid.0178.i.i, %land.lhs.true51.i.i.for.inc.i70.i_crit_edge ], [ %mid.0178.i.i, %sw.bb46.i.i.for.inc.i70.i_crit_edge ], [ %144, %if.then32.i.i ], [ %144, %sw.bb.i.i.for.inc.i70.i_crit_edge ]
  %163 = ptrtoint ptr %pos.0179.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %pos.0.i68.i = load ptr, ptr %pos.0179.i.i, align 4
  %cmp.not.i69.i = icmp eq ptr %pos.0.i68.i, %reasm.i.i
  br i1 %cmp.not.i69.i, label %for.inc.i70.i.for.end.i71.i_crit_edge, label %for.inc.i70.i.for.body.i57.i_crit_edge

for.inc.i70.i.for.body.i57.i_crit_edge:           ; preds = %for.inc.i70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i57.i

for.inc.i70.i.for.end.i71.i_crit_edge:            ; preds = %for.inc.i70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i71.i

for.end.i71.i:                                    ; preds = %for.inc.i70.i.for.end.i71.i_crit_edge, %if.end23.i.i.for.end.i71.i_crit_edge, %if.end.i58.i.for.end.i71.i_crit_edge
  %pd_first.0.lcssa.i.i = phi ptr [ %pd_first.3.ph.i.i, %for.inc.i70.i.for.end.i71.i_crit_edge ], [ %pd_first.0174.i.i, %if.end.i58.i.for.end.i71.i_crit_edge ], [ %pd_first.0174.i.i, %if.end23.i.i.for.end.i71.i_crit_edge ]
  %pd_last.0.lcssa.i.i = phi ptr [ %pd_last.3.ph.i.i, %for.inc.i70.i.for.end.i71.i_crit_edge ], [ %pd_last.0175.i.i, %if.end.i58.i.for.end.i71.i_crit_edge ], [ %pd_last.0175.i.i, %if.end23.i.i.for.end.i71.i_crit_edge ]
  %next_fsn.0.lcssa.i.i = phi i32 [ %next_fsn.2.ph.i.i, %for.inc.i70.i.for.end.i71.i_crit_edge ], [ %next_fsn.0176.i.i, %if.end.i58.i.for.end.i71.i_crit_edge ], [ %next_fsn.0176.i.i, %if.end23.i.i.for.end.i71.i_crit_edge ]
  %pd_len.0.lcssa.i.i = phi i32 [ %pd_len.3.ph.i.i, %for.inc.i70.i.for.end.i71.i_crit_edge ], [ %pd_len.0177.i.i, %if.end.i58.i.for.end.i71.i_crit_edge ], [ %pd_len.0177.i.i, %if.end23.i.i.for.end.i71.i_crit_edge ]
  %tobool58.not.i.i = icmp eq ptr %pd_first.0.lcssa.i.i, null
  br i1 %tobool58.not.i.i, label %for.end.i71.i.cleanup_crit_edge, label %if.end60.i.i

for.end.i71.i.cleanup_crit_edge:                  ; preds = %for.end.i71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60.i.i:                                     ; preds = %for.end.i71.i
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %133, i32 0, i32 3
  %164 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sk.i.i, align 4
  %pd_point62.i.i = getelementptr inbounds %struct.sctp_sock, ptr %165, i32 0, i32 36
  %166 = ptrtoint ptr %pd_point62.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %pd_point62.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool63.not.i.i = icmp eq i32 %167, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %pd_len.0.lcssa.i.i)
  %cmp65.not.i.i = icmp ugt i32 %167, %pd_len.0.lcssa.i.i
  %or.cond142.i.i = select i1 %tobool63.not.i.i, i1 true, i1 %cmp65.not.i.i
  br i1 %or.cond142.i.i, label %if.end60.i.i.cleanup_crit_edge, label %if.then67.i.i

if.end60.i.i.cleanup_crit_edge:                   ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67.i.i:                                    ; preds = %if.end60.i.i
  %net.i72.i = getelementptr inbounds %struct.sctp_ep_common, ptr %133, i32 0, i32 4
  %168 = ptrtoint ptr %net.i72.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %net.i72.i, align 8
  %call70.i.i = tail call ptr @sctp_make_reassembled_event(ptr noundef %169, ptr noundef %reasm.i.i, ptr noundef nonnull %pd_first.0.lcssa.i.i, ptr noundef %pd_last.0.lcssa.i.i) #7
  %tobool71.not.i.i = icmp eq ptr %call70.i.i, null
  br i1 %tobool71.not.i.i, label %if.then67.i.i.cleanup_crit_edge, label %if.then72.i.i

if.then67.i.i.cleanup_crit_edge:                  ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then72.i.i:                                    ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fsn.i73.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i54.i, i32 0, i32 2
  %170 = ptrtoint ptr %fsn.i73.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %next_fsn.0.lcssa.i.i, ptr %fsn.i73.i, align 4
  %pd_mode.i74.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i54.i, i32 0, i32 4
  %171 = ptrtoint ptr %pd_mode.i74.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %pd_mode.i74.i, align 4
  br label %if.then13

found.i.i:                                        ; preds = %land.lhs.true51.i.i
  %net76.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %133, i32 0, i32 4
  %172 = ptrtoint ptr %net76.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %net76.i.i, align 8
  %call78.i.i = tail call ptr @sctp_make_reassembled_event(ptr noundef %173, ptr noundef %reasm.i.i, ptr noundef nonnull %first_frag.0173.i.i, ptr noundef %pos.0179.i.i) #7
  %tobool79.not.i.i = icmp eq ptr %call78.i.i, null
  br i1 %tobool79.not.i.i, label %found.i.i.cleanup_crit_edge, label %if.then80.i.i

found.i.i.cleanup_crit_edge:                      ; preds = %found.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then80.i.i:                                    ; preds = %found.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %msg_flags81.i.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %call78.i.i, i32 0, i32 9
  %174 = ptrtoint ptr %msg_flags81.i.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 2)
  %175 = load i16, ptr %msg_flags81.i.i, align 1
  %176 = or i16 %175, 128
  store i16 %176, ptr %msg_flags81.i.i, align 1
  br label %if.then13

if.then13:                                        ; preds = %if.then80.i.i, %if.then72.i.i, %if.then58.i.i, %if.then55.i.i.if.then13_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %call, %if.then.i ], [ %call53.i.i, %if.then55.i.i.if.then13_crit_edge ], [ %call53.i.i, %if.then58.i.i ], [ %call78.i.i, %if.then80.i.i ], [ %call70.i.i, %if.then72.i.i ]
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %prev.i.i = getelementptr inbounds %struct.anon.110, ptr %temp, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  %177 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %qlen.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 -24
  %178 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %temp, ptr %add.ptr.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %retval.0.i, i32 -20
  %179 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %temp, ptr %prev10.i.i.i, align 4
  %180 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %add.ptr.i, ptr %prev.i.i, align 4
  %181 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %add.ptr.i, ptr %temp, align 4
  %182 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i63 = add i32 %182, 1
  store volatile i32 %add.i.i.i63, ptr %qlen.i.i, align 4
  %msg_flags15 = getelementptr inbounds %struct.sctp_ulpevent, ptr %retval.0.i, i32 0, i32 9
  %183 = ptrtoint ptr %msg_flags15 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 2)
  %184 = load i16, ptr %msg_flags15, align 1
  %185 = and i16 %184, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %185)
  %tobool18.not = icmp eq i16 %185, 0
  br i1 %tobool18.not, label %if.then13.if.then31_crit_edge, label %if.then19

if.then13.if.then31_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then19:                                        ; preds = %if.then13
  %asoc.i64 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %186 = ptrtoint ptr %asoc.i64 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %asoc.i64, align 4
  %stream2.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %retval.0.i, i32 0, i32 7
  %188 = ptrtoint ptr %stream2.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 2)
  %189 = load i16, ptr %stream2.i, align 1
  %190 = getelementptr inbounds %struct.sctp_ulpevent, ptr %retval.0.i, i32 0, i32 3
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %190, align 1
  %in.i.i65 = getelementptr inbounds %struct.sctp_association, ptr %187, i32 0, i32 60, i32 1
  %.frozen389 = freeze i16 %189
  %div14.i2.i.i66 = udiv i16 %.frozen389, 204
  %div14.i.zext.i.i67 = zext i16 %div14.i2.i.i66 to i32
  %mul.i.i.i68 = shl nuw nsw i32 %div14.i.zext.i.i67, 12
  %193 = mul i16 %div14.i2.i.i66, 204
  %rem.i3.i.i69.decomposed = sub i16 %.frozen389, %193
  %narrow.i.i70 = mul nuw nsw i16 %rem.i3.i.i69.decomposed, 20
  %mul15.i.i.i71 = zext i16 %narrow.i.i70 to i32
  %add.i.i.i72 = add nuw nsw i32 %mul.i.i.i68, %mul15.i.i.i71
  %call1.i.i73 = call ptr @__genradix_ptr(ptr noundef %in.i.i65, i32 noundef %add.i.i.i72) #7
  %194 = ptrtoint ptr %call1.i.i73 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %call1.i.i73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %195)
  %cmp.not.i = icmp eq i32 %192, %195
  br i1 %cmp.not.i, label %if.end.i93, label %if.then.i77

if.then.i77:                                      ; preds = %if.then19
  %lobby.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %prev.i.i.i74 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 0, i32 0, i32 1
  %196 = ptrtoint ptr %prev.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile ptr, ptr %prev.i.i.i74, align 4
  %cmp.i.i.i75 = icmp eq ptr %197, %lobby.i.i
  %tobool.not106.i.i = icmp eq ptr %197, null
  %tobool.not.i.i76 = or i1 %cmp.i.i.i75, %tobool.not106.i.i
  br i1 %tobool.not.i.i76, label %if.then.i77.sctp_intl_store_ordered.exit.i_crit_edge, label %if.end.i.i82

if.then.i77.sctp_intl_store_ordered.exit.i_crit_edge: ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_store_ordered.exit.i

if.end.i.i82:                                     ; preds = %if.then.i77
  %198 = ptrtoint ptr %stream2.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 2)
  %199 = load i16, ptr %stream2.i, align 1
  %stream3.i.i = getelementptr inbounds %struct.sk_buff, ptr %197, i32 0, i32 3, i32 28
  %200 = ptrtoint ptr %stream3.i.i to i32
  call void @__asan_loadN_noabort(i32 %200, i32 2)
  %201 = load i16, ptr %stream3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %199, i16 %201)
  %cmp.i.i81 = icmp eq i16 %199, %201
  br i1 %cmp.i.i81, label %land.lhs.true.i.i84, label %if.end11.i.i

land.lhs.true.i.i84:                              ; preds = %if.end.i.i82
  %202 = getelementptr inbounds %struct.sk_buff, ptr %197, i32 0, i32 3, i32 12
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %202, align 1
  %205 = ptrtoint ptr %190 to i32
  call void @__asan_loadN_noabort(i32 %205, i32 4)
  %206 = load i32, ptr %190, align 1
  %sub.i.i83 = sub i32 %204, %206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i83)
  %cmp6.i.i = icmp slt i32 %sub.i.i83, 0
  br i1 %cmp6.i.i, label %land.lhs.true.i.i84.sctp_intl_store_ordered.exit.i_crit_edge, label %land.lhs.true.i.i84.for.cond.preheader.i.i86_crit_edge

land.lhs.true.i.i84.for.cond.preheader.i.i86_crit_edge: ; preds = %land.lhs.true.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i.i86

land.lhs.true.i.i84.sctp_intl_store_ordered.exit.i_crit_edge: ; preds = %land.lhs.true.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_store_ordered.exit.i

if.end11.i.i:                                     ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_cmp2(i16 %199, i16 %201)
  %cmp16.i.i85.old = icmp ugt i16 %199, %201
  br i1 %cmp16.i.i85.old, label %if.end11.i.i.sctp_intl_store_ordered.exit.i_crit_edge, label %if.end11.i.i.for.cond.preheader.i.i86_crit_edge

if.end11.i.i.for.cond.preheader.i.i86_crit_edge:  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i.i86

if.end11.i.i.sctp_intl_store_ordered.exit.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_store_ordered.exit.i

for.cond.preheader.i.i86:                         ; preds = %if.end11.i.i.for.cond.preheader.i.i86_crit_edge, %land.lhs.true.i.i84.for.cond.preheader.i.i86_crit_edge
  %207 = ptrtoint ptr %lobby.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %pos.0108.i.i = load ptr, ptr %lobby.i.i, align 4
  %cmp24.not109.i.i = icmp eq ptr %pos.0108.i.i, %lobby.i.i
  br i1 %cmp24.not109.i.i, label %for.cond.preheader.i.i86.sctp_intl_store_ordered.exit.i_crit_edge, label %for.cond.preheader.i.i86.for.body.i.i87_crit_edge

for.cond.preheader.i.i86.for.body.i.i87_crit_edge: ; preds = %for.cond.preheader.i.i86
  br label %for.body.i.i87

for.cond.preheader.i.i86.sctp_intl_store_ordered.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_store_ordered.exit.i

for.body.i.i87:                                   ; preds = %for.inc.i.i89.for.body.i.i87_crit_edge, %for.cond.preheader.i.i86.for.body.i.i87_crit_edge
  %pos.0110.i.i = phi ptr [ %pos.0.i.i88, %for.inc.i.i89.for.body.i.i87_crit_edge ], [ %pos.0108.i.i, %for.cond.preheader.i.i86.for.body.i.i87_crit_edge ]
  %stream28.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0110.i.i, i32 0, i32 3, i32 28
  %208 = ptrtoint ptr %stream28.i.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 2)
  %209 = load i16, ptr %stream28.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %209, i16 %199)
  %cmp32.i.i = icmp ugt i16 %209, %199
  br i1 %cmp32.i.i, label %for.body.i.i87.for.end.i.i90_crit_edge, label %if.end35.i.i

for.body.i.i87.for.end.i.i90_crit_edge:           ; preds = %for.body.i.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i90

if.end35.i.i:                                     ; preds = %for.body.i.i87
  call void @__sanitizer_cov_trace_cmp2(i16 %209, i16 %199)
  %cmp40.i.i = icmp eq i16 %209, %199
  br i1 %cmp40.i.i, label %land.lhs.true42.i.i, label %if.end35.i.i.for.inc.i.i89_crit_edge

if.end35.i.i.for.inc.i.i89_crit_edge:             ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i89

land.lhs.true42.i.i:                              ; preds = %if.end35.i.i
  %210 = ptrtoint ptr %190 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %190, align 1
  %212 = getelementptr inbounds %struct.sk_buff, ptr %pos.0110.i.i, i32 0, i32 3, i32 12
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %212, align 1
  %sub43.i.i = sub i32 %211, %214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43.i.i)
  %cmp44.i.i = icmp slt i32 %sub43.i.i, 0
  br i1 %cmp44.i.i, label %land.lhs.true42.i.i.for.end.i.i90_crit_edge, label %land.lhs.true42.i.i.for.inc.i.i89_crit_edge

land.lhs.true42.i.i.for.inc.i.i89_crit_edge:      ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i89

land.lhs.true42.i.i.for.end.i.i90_crit_edge:      ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i90

for.inc.i.i89:                                    ; preds = %land.lhs.true42.i.i.for.inc.i.i89_crit_edge, %if.end35.i.i.for.inc.i.i89_crit_edge
  %215 = ptrtoint ptr %pos.0110.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %pos.0.i.i88 = load ptr, ptr %pos.0110.i.i, align 4
  %cmp24.not.i.i = icmp eq ptr %pos.0.i.i88, %lobby.i.i
  br i1 %cmp24.not.i.i, label %for.inc.i.i89.sctp_intl_store_ordered.exit.i_crit_edge, label %for.inc.i.i89.for.body.i.i87_crit_edge

for.inc.i.i89.for.body.i.i87_crit_edge:           ; preds = %for.inc.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i87

for.inc.i.i89.sctp_intl_store_ordered.exit.i_crit_edge: ; preds = %for.inc.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_store_ordered.exit.i

for.end.i.i90:                                    ; preds = %land.lhs.true42.i.i.for.end.i.i90_crit_edge, %for.body.i.i87.for.end.i.i90_crit_edge
  %tobool49.not.i.i = icmp eq ptr %pos.0110.i.i, null
  br i1 %tobool49.not.i.i, label %for.end.i.i90.sctp_intl_store_ordered.exit.i_crit_edge, label %if.else.i.i92

for.end.i.i90.sctp_intl_store_ordered.exit.i_crit_edge: ; preds = %for.end.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_store_ordered.exit.i

if.else.i.i92:                                    ; preds = %for.end.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i103.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %pos.0110.i.i, i32 0, i32 1
  %216 = ptrtoint ptr %prev.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %prev.i103.i.i, align 4
  br label %sctp_intl_store_ordered.exit.i

sctp_intl_store_ordered.exit.i:                   ; preds = %if.else.i.i92, %for.end.i.i90.sctp_intl_store_ordered.exit.i_crit_edge, %for.inc.i.i89.sctp_intl_store_ordered.exit.i_crit_edge, %for.cond.preheader.i.i86.sctp_intl_store_ordered.exit.i_crit_edge, %if.end11.i.i.sctp_intl_store_ordered.exit.i_crit_edge, %land.lhs.true.i.i84.sctp_intl_store_ordered.exit.i_crit_edge, %if.then.i77.sctp_intl_store_ordered.exit.i_crit_edge
  %pos.0110.i.i.lcssa.sink = phi ptr [ %pos.0110.i.i, %if.else.i.i92 ], [ %lobby.i.i, %if.then.i77.sctp_intl_store_ordered.exit.i_crit_edge ], [ %lobby.i.i, %land.lhs.true.i.i84.sctp_intl_store_ordered.exit.i_crit_edge ], [ %lobby.i.i, %if.end11.i.i.sctp_intl_store_ordered.exit.i_crit_edge ], [ %lobby.i.i, %for.end.i.i90.sctp_intl_store_ordered.exit.i_crit_edge ], [ %lobby.i.i, %for.cond.preheader.i.i86.sctp_intl_store_ordered.exit.i_crit_edge ], [ %lobby.i.i, %for.inc.i.i89.sctp_intl_store_ordered.exit.i_crit_edge ]
  %.sink320 = phi ptr [ %217, %if.else.i.i92 ], [ %197, %if.then.i77.sctp_intl_store_ordered.exit.i_crit_edge ], [ %197, %land.lhs.true.i.i84.sctp_intl_store_ordered.exit.i_crit_edge ], [ %197, %if.end11.i.i.sctp_intl_store_ordered.exit.i_crit_edge ], [ %197, %for.end.i.i90.sctp_intl_store_ordered.exit.i_crit_edge ], [ %197, %for.cond.preheader.i.i86.sctp_intl_store_ordered.exit.i_crit_edge ], [ %197, %for.inc.i.i89.sctp_intl_store_ordered.exit.i_crit_edge ]
  %prev.i103.i.i.sink = phi ptr [ %prev.i103.i.i, %if.else.i.i92 ], [ %prev.i.i.i74, %if.then.i77.sctp_intl_store_ordered.exit.i_crit_edge ], [ %prev.i.i.i74, %land.lhs.true.i.i84.sctp_intl_store_ordered.exit.i_crit_edge ], [ %prev.i.i.i74, %if.end11.i.i.sctp_intl_store_ordered.exit.i_crit_edge ], [ %prev.i.i.i74, %for.end.i.i90.sctp_intl_store_ordered.exit.i_crit_edge ], [ %prev.i.i.i74, %for.cond.preheader.i.i86.sctp_intl_store_ordered.exit.i_crit_edge ], [ %prev.i.i.i74, %for.inc.i.i89.sctp_intl_store_ordered.exit.i_crit_edge ]
  %218 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %pos.0110.i.i.lcssa.sink, ptr %add.ptr.i, align 8
  %219 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %.sink320, ptr %prev10.i.i.i, align 4
  %220 = ptrtoint ptr %prev.i103.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %add.ptr.i, ptr %prev.i103.i.i.sink, align 4
  %221 = ptrtoint ptr %.sink320 to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %add.ptr.i, ptr %.sink320, align 4
  %qlen.i.i.i100.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 1
  %222 = ptrtoint ptr %qlen.i.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %qlen.i.i.i100.i.i, align 4
  %add.i.i.i101.i.i = add i32 %223, 1
  store volatile i32 %add.i.i.i101.i.i, ptr %qlen.i.i.i100.i.i, align 4
  br label %cleanup

if.end.i93:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i21.i = call ptr @__genradix_ptr(ptr noundef %in.i.i65, i32 noundef %add.i.i.i72) #7
  %224 = ptrtoint ptr %call1.i21.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %call1.i21.i, align 4
  %inc.i = add i32 %225, 1
  store i32 %inc.i, ptr %call1.i21.i, align 4
  call fastcc void @sctp_intl_retrieve_ordered(ptr noundef %ulpq, ptr noundef nonnull %retval.0.i) #7
  br label %if.then31

if.else23:                                        ; preds = %if.end
  br i1 %cmp.i, label %if.then.i98, label %if.end.i102

if.then.i98:                                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  %or.i97 = or i16 %13, 128
  %226 = ptrtoint ptr %msg_flags to i32
  call void @__asan_storeN_noabort(i32 %226, i32 2)
  store i16 %or.i97, ptr %msg_flags, align 1
  br label %if.then26

if.end.i102:                                      ; preds = %if.else23
  %reasm_uo.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3
  %prev.i.i.i99 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3, i32 0, i32 0, i32 1
  %227 = ptrtoint ptr %prev.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile ptr, ptr %prev.i.i.i99, align 4
  %cmp.i.i.i100 = icmp eq ptr %228, %reasm_uo.i.i
  %tobool.not149.i.i = icmp eq ptr %228, null
  %tobool.not.i.i101 = or i1 %cmp.i.i.i100, %tobool.not149.i.i
  br i1 %tobool.not.i.i101, label %if.then.i.i105, label %if.end.i.i109

if.then.i.i105:                                   ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i103 = getelementptr i8, ptr %call, i32 -24
  %229 = ptrtoint ptr %add.ptr.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr %reasm_uo.i.i, ptr %add.ptr.i.i.i103, align 8
  %prev10.i.i.i.i.i104 = getelementptr i8, ptr %call, i32 -20
  %230 = ptrtoint ptr %prev10.i.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile ptr %228, ptr %prev10.i.i.i.i.i104, align 4
  %231 = ptrtoint ptr %prev.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile ptr %add.ptr.i.i.i103, ptr %prev.i.i.i99, align 4
  %232 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %232)
  store volatile ptr %add.ptr.i.i.i103, ptr %228, align 4
  br label %sctp_intl_store_reasm_uo.exit.i

if.end.i.i109:                                    ; preds = %if.end.i102
  %stream.i.i106 = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 7
  %233 = ptrtoint ptr %stream.i.i106 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 2)
  %234 = load i16, ptr %stream.i.i106, align 1
  %stream4.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 3, i32 28
  %235 = ptrtoint ptr %stream4.i.i107 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 2)
  %236 = load i16, ptr %stream4.i.i107, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %234, i16 %236)
  %cmp.i.i108 = icmp eq i16 %234, %236
  br i1 %cmp.i.i108, label %land.lhs.true.i.i111, label %lor.lhs.false32.i.i126

land.lhs.true.i.i111:                             ; preds = %if.end.i.i109
  %237 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %238 = load i32, ptr %7, align 1
  %239 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 3, i32 12
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %239, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %238)
  %cmp7.i.i110 = icmp eq i32 %241, %238
  br i1 %cmp7.i.i110, label %land.lhs.true9.i.i114, label %land.lhs.true.i.i111.land.lhs.true29.i.i122_crit_edge

land.lhs.true.i.i111.land.lhs.true29.i.i122_crit_edge: ; preds = %land.lhs.true.i.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true29.i.i122

land.lhs.true9.i.i114:                            ; preds = %land.lhs.true.i.i111
  %msg_flags.i.i112 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 3, i32 32
  %242 = ptrtoint ptr %msg_flags.i.i112 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 2)
  %243 = load i16, ptr %msg_flags.i.i112, align 1
  %244 = and i16 %243, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %244)
  %tobool11.not.i.i113 = icmp eq i16 %244, 0
  br i1 %tobool11.not.i.i113, label %lor.lhs.false.i.i116, label %land.lhs.true9.i.i114.if.then19.i.i119_crit_edge

land.lhs.true9.i.i114.if.then19.i.i119_crit_edge: ; preds = %land.lhs.true9.i.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i.i119

lor.lhs.false.i.i116:                             ; preds = %land.lhs.true9.i.i114
  %245 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %245)
  %tobool15.not.i.i115 = icmp eq i16 %245, 0
  br i1 %tobool15.not.i.i115, label %land.lhs.true16.i.i118, label %lor.lhs.false.i.i116.land.lhs.true29.i.i122_crit_edge

lor.lhs.false.i.i116.land.lhs.true29.i.i122_crit_edge: ; preds = %lor.lhs.false.i.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true29.i.i122

land.lhs.true16.i.i118:                           ; preds = %lor.lhs.false.i.i116
  %246 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %10, align 1
  %248 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 3, i32 16
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %250 = load i32, ptr %248, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %250)
  %cmp17.i.i117 = icmp ugt i32 %247, %250
  br i1 %cmp17.i.i117, label %land.lhs.true16.i.i118.if.then19.i.i119_crit_edge, label %land.lhs.true16.i.i118.land.lhs.true29.i.i122_crit_edge

land.lhs.true16.i.i118.land.lhs.true29.i.i122_crit_edge: ; preds = %land.lhs.true16.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true29.i.i122

land.lhs.true16.i.i118.if.then19.i.i119_crit_edge: ; preds = %land.lhs.true16.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i.i119

if.then19.i.i119:                                 ; preds = %land.lhs.true16.i.i118.if.then19.i.i119_crit_edge, %land.lhs.true9.i.i114.if.then19.i.i119_crit_edge
  %add.ptr.i136.i.i = getelementptr i8, ptr %call, i32 -24
  %251 = ptrtoint ptr %add.ptr.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile ptr %reasm_uo.i.i, ptr %add.ptr.i136.i.i, align 8
  %prev10.i.i.i138.i.i = getelementptr i8, ptr %call, i32 -20
  %252 = ptrtoint ptr %prev10.i.i.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile ptr %228, ptr %prev10.i.i.i138.i.i, align 4
  %253 = ptrtoint ptr %prev.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile ptr %add.ptr.i136.i.i, ptr %prev.i.i.i99, align 4
  %254 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %254)
  store volatile ptr %add.ptr.i136.i.i, ptr %228, align 4
  br label %sctp_intl_store_reasm_uo.exit.i

land.lhs.true29.i.i122:                           ; preds = %land.lhs.true16.i.i118.land.lhs.true29.i.i122_crit_edge, %lor.lhs.false.i.i116.land.lhs.true29.i.i122_crit_edge, %land.lhs.true.i.i111.land.lhs.true29.i.i122_crit_edge
  %sub.i.i120 = sub i32 %241, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i120)
  %cmp30.i.i121 = icmp slt i32 %sub.i.i120, 0
  br i1 %cmp30.i.i121, label %land.lhs.true29.i.i122.if.then39.i.i127_crit_edge, label %land.lhs.true29.i.i122.for.cond.preheader.i.i123_crit_edge

land.lhs.true29.i.i122.for.cond.preheader.i.i123_crit_edge: ; preds = %land.lhs.true29.i.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i.i123

land.lhs.true29.i.i122.if.then39.i.i127_crit_edge: ; preds = %land.lhs.true29.i.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i.i127

for.cond.preheader.i.i123:                        ; preds = %lor.lhs.false32.i.i126.for.cond.preheader.i.i123_crit_edge, %land.lhs.true29.i.i122.for.cond.preheader.i.i123_crit_edge
  %255 = ptrtoint ptr %reasm_uo.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %pos.0150.i.i = load ptr, ptr %reasm_uo.i.i, align 4
  %cmp45.not151.i.i = icmp eq ptr %pos.0150.i.i, %reasm_uo.i.i
  br i1 %cmp45.not151.i.i, label %for.cond.preheader.i.i123.for.end.i.i148_crit_edge, label %for.body.i.preheader.i

for.cond.preheader.i.i123.for.end.i.i148_crit_edge: ; preds = %for.cond.preheader.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i148

for.body.i.preheader.i:                           ; preds = %for.cond.preheader.i.i123
  %256 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %tobool85.not.i.i124 = icmp eq i16 %256, 0
  br label %for.body.i.i130

lor.lhs.false32.i.i126:                           ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_cmp2(i16 %234, i16 %236)
  %cmp37.old.i.i125 = icmp ugt i16 %234, %236
  br i1 %cmp37.old.i.i125, label %lor.lhs.false32.i.i126.if.then39.i.i127_crit_edge, label %lor.lhs.false32.i.i126.for.cond.preheader.i.i123_crit_edge

lor.lhs.false32.i.i126.for.cond.preheader.i.i123_crit_edge: ; preds = %lor.lhs.false32.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i.i123

lor.lhs.false32.i.i126.if.then39.i.i127_crit_edge: ; preds = %lor.lhs.false32.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i.i127

if.then39.i.i127:                                 ; preds = %lor.lhs.false32.i.i126.if.then39.i.i127_crit_edge, %land.lhs.true29.i.i122.if.then39.i.i127_crit_edge
  %add.ptr.i141.i.i = getelementptr i8, ptr %call, i32 -24
  %257 = ptrtoint ptr %add.ptr.i141.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store volatile ptr %reasm_uo.i.i, ptr %add.ptr.i141.i.i, align 8
  %prev10.i.i.i143.i.i = getelementptr i8, ptr %call, i32 -20
  %258 = ptrtoint ptr %prev10.i.i.i143.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store volatile ptr %228, ptr %prev10.i.i.i143.i.i, align 4
  %259 = ptrtoint ptr %prev.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %259)
  store volatile ptr %add.ptr.i141.i.i, ptr %prev.i.i.i99, align 4
  %260 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %260)
  store volatile ptr %add.ptr.i141.i.i, ptr %228, align 4
  br label %sctp_intl_store_reasm_uo.exit.i

for.body.i.i130:                                  ; preds = %for.inc.i.i146.for.body.i.i130_crit_edge, %for.body.i.preheader.i
  %pos.0152.i.i = phi ptr [ %pos.0.i.i144, %for.inc.i.i146.for.body.i.i130_crit_edge ], [ %pos.0150.i.i, %for.body.i.preheader.i ]
  %stream50.i.i128 = getelementptr inbounds %struct.sk_buff, ptr %pos.0152.i.i, i32 0, i32 3, i32 28
  %261 = ptrtoint ptr %stream50.i.i128 to i32
  call void @__asan_loadN_noabort(i32 %261, i32 2)
  %262 = load i16, ptr %stream50.i.i128, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %234, i16 %262)
  %cmp52.i.i129 = icmp ult i16 %234, %262
  br i1 %cmp52.i.i129, label %for.body.i.i130.for.end.i.i148_crit_edge, label %lor.lhs.false54.i.i132

for.body.i.i130.for.end.i.i148_crit_edge:         ; preds = %for.body.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i148

lor.lhs.false54.i.i132:                           ; preds = %for.body.i.i130
  call void @__sanitizer_cov_trace_cmp2(i16 %234, i16 %262)
  %cmp59.i.i131 = icmp eq i16 %234, %262
  br i1 %cmp59.i.i131, label %land.lhs.true61.i.i135, label %lor.lhs.false54.i.i132.for.inc.i.i146_crit_edge

lor.lhs.false54.i.i132.for.inc.i.i146_crit_edge:  ; preds = %lor.lhs.false54.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i146

land.lhs.true61.i.i135:                           ; preds = %lor.lhs.false54.i.i132
  %263 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %7, align 1
  %265 = getelementptr inbounds %struct.sk_buff, ptr %pos.0152.i.i, i32 0, i32 3, i32 12
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %267 = load i32, ptr %265, align 1
  %sub62.i.i133 = sub i32 %264, %267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62.i.i133)
  %cmp63.i.i134 = icmp slt i32 %sub62.i.i133, 0
  br i1 %cmp63.i.i134, label %land.lhs.true61.i.i135.for.end.i.i148_crit_edge, label %land.lhs.true73.i.i137

land.lhs.true61.i.i135.for.end.i.i148_crit_edge:  ; preds = %land.lhs.true61.i.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i148

land.lhs.true73.i.i137:                           ; preds = %land.lhs.true61.i.i135
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %267)
  %cmp74.i.i136 = icmp eq i32 %264, %267
  br i1 %cmp74.i.i136, label %land.lhs.true76.i.i140, label %land.lhs.true73.i.i137.for.inc.i.i146_crit_edge

land.lhs.true73.i.i137.for.inc.i.i146_crit_edge:  ; preds = %land.lhs.true73.i.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i146

land.lhs.true76.i.i140:                           ; preds = %land.lhs.true73.i.i137
  %msg_flags77.i.i138 = getelementptr inbounds %struct.sk_buff, ptr %pos.0152.i.i, i32 0, i32 3, i32 32
  %268 = ptrtoint ptr %msg_flags77.i.i138 to i32
  call void @__asan_loadN_noabort(i32 %268, i32 2)
  %269 = load i16, ptr %msg_flags77.i.i138, align 1
  %270 = and i16 %269, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %270)
  %tobool80.not.i.i139 = icmp eq i16 %270, 0
  br i1 %tobool80.not.i.i139, label %land.lhs.true81.i.i141, label %land.lhs.true76.i.i140.for.inc.i.i146_crit_edge

land.lhs.true76.i.i140.for.inc.i.i146_crit_edge:  ; preds = %land.lhs.true76.i.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i146

land.lhs.true81.i.i141:                           ; preds = %land.lhs.true76.i.i140
  br i1 %tobool85.not.i.i124, label %lor.lhs.false86.i.i143, label %land.lhs.true81.i.i141.for.end.i.i148_crit_edge

land.lhs.true81.i.i141.for.end.i.i148_crit_edge:  ; preds = %land.lhs.true81.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i148

lor.lhs.false86.i.i143:                           ; preds = %land.lhs.true81.i.i141
  %271 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %271, i32 4)
  %272 = load i32, ptr %10, align 1
  %273 = getelementptr inbounds %struct.sk_buff, ptr %pos.0152.i.i, i32 0, i32 3, i32 16
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_loadN_noabort(i32 %274, i32 4)
  %275 = load i32, ptr %273, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %272, i32 %275)
  %cmp87.i.i142 = icmp ult i32 %272, %275
  br i1 %cmp87.i.i142, label %lor.lhs.false86.i.i143.for.end.i.i148_crit_edge, label %lor.lhs.false86.i.i143.for.inc.i.i146_crit_edge

lor.lhs.false86.i.i143.for.inc.i.i146_crit_edge:  ; preds = %lor.lhs.false86.i.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i146

lor.lhs.false86.i.i143.for.end.i.i148_crit_edge:  ; preds = %lor.lhs.false86.i.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i148

for.inc.i.i146:                                   ; preds = %lor.lhs.false86.i.i143.for.inc.i.i146_crit_edge, %land.lhs.true76.i.i140.for.inc.i.i146_crit_edge, %land.lhs.true73.i.i137.for.inc.i.i146_crit_edge, %lor.lhs.false54.i.i132.for.inc.i.i146_crit_edge
  %276 = ptrtoint ptr %pos.0152.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %pos.0.i.i144 = load ptr, ptr %pos.0152.i.i, align 4
  %cmp45.not.i.i145 = icmp eq ptr %pos.0.i.i144, %reasm_uo.i.i
  br i1 %cmp45.not.i.i145, label %for.inc.i.i146.for.end.i.i148_crit_edge, label %for.inc.i.i146.for.body.i.i130_crit_edge

for.inc.i.i146.for.body.i.i130_crit_edge:         ; preds = %for.inc.i.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i130

for.inc.i.i146.for.end.i.i148_crit_edge:          ; preds = %for.inc.i.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i148

for.end.i.i148:                                   ; preds = %for.inc.i.i146.for.end.i.i148_crit_edge, %lor.lhs.false86.i.i143.for.end.i.i148_crit_edge, %land.lhs.true81.i.i141.for.end.i.i148_crit_edge, %land.lhs.true61.i.i135.for.end.i.i148_crit_edge, %for.body.i.i130.for.end.i.i148_crit_edge, %for.cond.preheader.i.i123.for.end.i.i148_crit_edge
  %pos.0.lcssa.i.i = phi ptr [ %reasm_uo.i.i, %for.cond.preheader.i.i123.for.end.i.i148_crit_edge ], [ %pos.0152.i.i, %land.lhs.true81.i.i141.for.end.i.i148_crit_edge ], [ %pos.0152.i.i, %lor.lhs.false86.i.i143.for.end.i.i148_crit_edge ], [ %pos.0152.i.i, %for.body.i.i130.for.end.i.i148_crit_edge ], [ %pos.0152.i.i, %land.lhs.true61.i.i135.for.end.i.i148_crit_edge ], [ %reasm_uo.i.i, %for.inc.i.i146.for.end.i.i148_crit_edge ]
  %add.ptr.i147.i.i = getelementptr i8, ptr %call, i32 -24
  %prev.i148.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %pos.0.lcssa.i.i, i32 0, i32 1
  %277 = ptrtoint ptr %prev.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %prev.i148.i.i, align 4
  %279 = ptrtoint ptr %add.ptr.i147.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store volatile ptr %pos.0.lcssa.i.i, ptr %add.ptr.i147.i.i, align 8
  %prev10.i.i.i.i147 = getelementptr i8, ptr %call, i32 -20
  %280 = ptrtoint ptr %prev10.i.i.i.i147 to i32
  call void @__asan_store4_noabort(i32 %280)
  store volatile ptr %278, ptr %prev10.i.i.i.i147, align 4
  store volatile ptr %add.ptr.i147.i.i, ptr %prev.i148.i.i, align 4
  %281 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile ptr %add.ptr.i147.i.i, ptr %278, align 4
  br label %sctp_intl_store_reasm_uo.exit.i

sctp_intl_store_reasm_uo.exit.i:                  ; preds = %for.end.i.i148, %if.then39.i.i127, %if.then19.i.i119, %if.then.i.i105
  %qlen.i.i.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3, i32 1
  %282 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i149 = add i32 %283, 1
  store volatile i32 %add.i.i.i.i149, ptr %qlen.i.i.i.i, align 4
  %asoc.i150 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %284 = ptrtoint ptr %asoc.i150 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %asoc.i150, align 4
  %stream6.i151 = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 7
  %286 = ptrtoint ptr %stream6.i151 to i32
  call void @__asan_loadN_noabort(i32 %286, i32 2)
  %287 = load i16, ptr %stream6.i151, align 1
  %in.i.i152 = getelementptr inbounds %struct.sctp_association, ptr %285, i32 0, i32 60, i32 1
  %.frozen390 = freeze i16 %287
  %div14.i2.i.i153 = udiv i16 %.frozen390, 204
  %div14.i.zext.i.i154 = zext i16 %div14.i2.i.i153 to i32
  %mul.i.i.i155 = shl nuw nsw i32 %div14.i.zext.i.i154, 12
  %288 = mul i16 %div14.i2.i.i153, 204
  %rem.i3.i.i156.decomposed = sub i16 %.frozen390, %288
  %narrow.i.i157 = mul nuw nsw i16 %rem.i3.i.i156.decomposed, 20
  %mul15.i.i.i158 = zext i16 %narrow.i.i157 to i32
  %add.i.i.i159 = add nuw nsw i32 %mul.i.i.i155, %mul15.i.i.i158
  %call1.i.i160 = tail call ptr @__genradix_ptr(ptr noundef %in.i.i152, i32 noundef %add.i.i.i159) #7
  %pd_mode_uo.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i160, i32 0, i32 5
  %289 = ptrtoint ptr %pd_mode_uo.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %pd_mode_uo.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool.not.i161 = icmp eq i8 %290, 0
  br i1 %tobool.not.i161, label %sctp_intl_store_reasm_uo.exit.i.if.then17.i198_crit_edge, label %land.lhs.true.i163

sctp_intl_store_reasm_uo.exit.i.if.then17.i198_crit_edge: ; preds = %sctp_intl_store_reasm_uo.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i198

land.lhs.true.i163:                               ; preds = %sctp_intl_store_reasm_uo.exit.i
  %291 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %291, i32 4)
  %292 = load i32, ptr %7, align 1
  %mid_uo.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i160, i32 0, i32 1
  %293 = ptrtoint ptr %mid_uo.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %mid_uo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %292, i32 %294)
  %cmp8.i162 = icmp eq i32 %292, %294
  br i1 %cmp8.i162, label %land.lhs.true10.i165, label %land.lhs.true.i163.if.then17.i198_crit_edge

land.lhs.true.i163.if.then17.i198_crit_edge:      ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i198

land.lhs.true10.i165:                             ; preds = %land.lhs.true.i163
  %295 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %295, i32 4)
  %296 = load i32, ptr %10, align 1
  %fsn_uo.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i160, i32 0, i32 3
  %297 = ptrtoint ptr %fsn_uo.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %fsn_uo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %296, i32 %298)
  %cmp11.i164 = icmp eq i32 %296, %298
  br i1 %cmp11.i164, label %if.then13.i174, label %land.lhs.true10.i165.if.then17.i198_crit_edge

land.lhs.true10.i165.if.then17.i198_crit_edge:    ; preds = %land.lhs.true10.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i198

if.then13.i174:                                   ; preds = %land.lhs.true10.i165
  %299 = ptrtoint ptr %asoc.i150 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %asoc.i150, align 4
  %301 = ptrtoint ptr %stream6.i151 to i32
  call void @__asan_loadN_noabort(i32 %301, i32 2)
  %302 = load i16, ptr %stream6.i151, align 1
  %in.i.i.i166 = getelementptr inbounds %struct.sctp_association, ptr %300, i32 0, i32 60, i32 1
  %.frozen391 = freeze i16 %302
  %div14.i2.i.i.i167 = udiv i16 %.frozen391, 204
  %div14.i.zext.i.i.i168 = zext i16 %div14.i2.i.i.i167 to i32
  %mul.i.i.i.i169 = shl nuw nsw i32 %div14.i.zext.i.i.i168, 12
  %303 = mul i16 %div14.i2.i.i.i167, 204
  %rem.i3.i.i.i170.decomposed = sub i16 %.frozen391, %303
  %narrow.i.i.i171 = mul nuw nsw i16 %rem.i3.i.i.i170.decomposed, 20
  %mul15.i.i.i.i172 = zext i16 %narrow.i.i.i171 to i32
  %add.i.i.i35.i = add nuw nsw i32 %mul.i.i.i.i169, %mul15.i.i.i.i172
  %call1.i.i.i173 = tail call ptr @__genradix_ptr(ptr noundef %in.i.i.i166, i32 noundef %add.i.i.i35.i) #7
  %304 = ptrtoint ptr %reasm_uo.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %pos.0143.i.i = load ptr, ptr %reasm_uo.i.i, align 4
  %cmp.not144.i.i = icmp eq ptr %pos.0143.i.i, %reasm_uo.i.i
  br i1 %cmp.not144.i.i, label %if.then13.i174.if.then17.i198_crit_edge, label %for.body.lr.ph.i.i175

if.then13.i174.if.then17.i198_crit_edge:          ; preds = %if.then13.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i198

for.body.lr.ph.i.i175:                            ; preds = %if.then13.i174
  %305 = ptrtoint ptr %stream6.i151 to i32
  call void @__asan_loadN_noabort(i32 %305, i32 2)
  %306 = load i16, ptr %stream6.i151, align 1
  %mid_uo.i.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i.i173, i32 0, i32 1
  %fsn_uo.i.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i.i173, i32 0, i32 3
  br label %for.body.i37.i178

for.body.i37.i178:                                ; preds = %for.inc.i43.i.for.body.i37.i178_crit_edge, %for.body.lr.ph.i.i175
  %pos.0148.i.i = phi ptr [ %pos.0143.i.i, %for.body.lr.ph.i.i175 ], [ %pos.0.i42.i, %for.inc.i43.i.for.body.i37.i178_crit_edge ]
  %next_fsn.0147.i.i = phi i32 [ 0, %for.body.lr.ph.i.i175 ], [ %next_fsn.3.i.i190, %for.inc.i43.i.for.body.i37.i178_crit_edge ]
  %last_frag.0146.i.i = phi ptr [ null, %for.body.lr.ph.i.i175 ], [ %last_frag.3.i.i189, %for.inc.i43.i.for.body.i37.i178_crit_edge ]
  %first_frag.0145.i.i = phi ptr [ null, %for.body.lr.ph.i.i175 ], [ %first_frag.3.i.i188, %for.inc.i43.i.for.body.i37.i178_crit_edge ]
  %stream5.i.i176 = getelementptr inbounds %struct.sk_buff, ptr %pos.0148.i.i, i32 0, i32 3, i32 28
  %307 = ptrtoint ptr %stream5.i.i176 to i32
  call void @__asan_loadN_noabort(i32 %307, i32 2)
  %308 = load i16, ptr %stream5.i.i176, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %308, i16 %306)
  %cmp8.i.i177 = icmp ult i16 %308, %306
  br i1 %cmp8.i.i177, label %for.body.i37.i178.for.inc.i43.i_crit_edge, label %if.end.i38.i180

for.body.i37.i178.for.inc.i43.i_crit_edge:        ; preds = %for.body.i37.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i43.i

if.end.i38.i180:                                  ; preds = %for.body.i37.i178
  call void @__sanitizer_cov_trace_cmp2(i16 %308, i16 %306)
  %cmp14.i.i179 = icmp ugt i16 %308, %306
  br i1 %cmp14.i.i179, label %if.end.i38.i180.out.i.i196_crit_edge, label %if.end17.i.i

if.end.i38.i180.out.i.i196_crit_edge:             ; preds = %if.end.i38.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i196

if.end17.i.i:                                     ; preds = %if.end.i38.i180
  %309 = getelementptr inbounds %struct.sk_buff, ptr %pos.0148.i.i, i32 0, i32 3, i32 12
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %309, align 1
  %312 = ptrtoint ptr %mid_uo.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %mid_uo.i.i, align 4
  %sub.i39.i = sub i32 %311, %313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i39.i)
  %cmp18.i.i = icmp slt i32 %sub.i39.i, 0
  br i1 %cmp18.i.i, label %if.end17.i.i.for.inc.i43.i_crit_edge, label %if.end21.i.i

if.end17.i.i.for.inc.i43.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i43.i

if.end21.i.i:                                     ; preds = %if.end17.i.i
  %sub23.i.i = sub i32 %313, %311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23.i.i)
  %cmp24.i.i = icmp slt i32 %sub23.i.i, 0
  br i1 %cmp24.i.i, label %if.end21.i.i.out.i.i196_crit_edge, label %if.end27.i.i

if.end21.i.i.out.i.i196_crit_edge:                ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i196

if.end27.i.i:                                     ; preds = %if.end21.i.i
  %msg_flags.i40.i181 = getelementptr inbounds %struct.sk_buff, ptr %pos.0148.i.i, i32 0, i32 3, i32 32
  %314 = ptrtoint ptr %msg_flags.i40.i181 to i32
  call void @__asan_loadN_noabort(i32 %314, i32 2)
  %315 = load i16, ptr %msg_flags.i40.i181, align 1
  %316 = and i16 %315, 3
  %and.i.i182 = zext i16 %316 to i32
  %317 = zext i32 %and.i.i182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %317, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and.i.i182, label %if.end27.i.i.out.i.i196_crit_edge [
    i32 1, label %sw.bb41.i.i
    i32 0, label %sw.bb29.i.i
  ]

if.end27.i.i.out.i.i196_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i196

sw.bb29.i.i:                                      ; preds = %if.end27.i.i
  %tobool.not.i41.i183 = icmp eq ptr %first_frag.0145.i.i, null
  %318 = getelementptr inbounds %struct.sk_buff, ptr %pos.0148.i.i, i32 0, i32 3, i32 16
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_loadN_noabort(i32 %319, i32 4)
  %320 = load i32, ptr %318, align 1
  br i1 %tobool.not.i41.i183, label %if.then30.i.i, label %if.else.i.i186

if.then30.i.i:                                    ; preds = %sw.bb29.i.i
  %321 = ptrtoint ptr %fsn_uo.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %fsn_uo.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %320, i32 %322)
  %cmp31.i.i = icmp eq i32 %320, %322
  br i1 %cmp31.i.i, label %if.then33.i.i, label %if.then30.i.i.for.inc.i43.i_crit_edge

if.then30.i.i.for.inc.i43.i_crit_edge:            ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i43.i

if.then33.i.i:                                    ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i184 = add i32 %320, 1
  br label %for.inc.i43.i

if.else.i.i186:                                   ; preds = %sw.bb29.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %320, i32 %next_fsn.0147.i.i)
  %cmp35.i.i185 = icmp eq i32 %320, %next_fsn.0147.i.i
  br i1 %cmp35.i.i185, label %if.then37.i.i, label %if.else.i.i186.if.end58.i.i_crit_edge

if.else.i.i186.if.end58.i.i_crit_edge:            ; preds = %if.else.i.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i

if.then37.i.i:                                    ; preds = %if.else.i.i186
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i187 = add i32 %next_fsn.0147.i.i, 1
  br label %for.inc.i43.i

sw.bb41.i.i:                                      ; preds = %if.end27.i.i
  %tobool42.not.i.i = icmp eq ptr %first_frag.0145.i.i, null
  %323 = getelementptr inbounds %struct.sk_buff, ptr %pos.0148.i.i, i32 0, i32 3, i32 16
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %323, align 1
  br i1 %tobool42.not.i.i, label %if.then43.i.i, label %if.else49.i.i

if.then43.i.i:                                    ; preds = %sw.bb41.i.i
  %326 = ptrtoint ptr %fsn_uo.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %fsn_uo.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %325, i32 %327)
  %cmp45.i.i = icmp eq i32 %325, %327
  br i1 %cmp45.i.i, label %if.then43.i.i.out.i.i196_crit_edge, label %if.then43.i.i.if.then17.i198_crit_edge

if.then43.i.i.if.then17.i198_crit_edge:           ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i198

if.then43.i.i.out.i.i196_crit_edge:               ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i196

if.else49.i.i:                                    ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %325, i32 %next_fsn.0147.i.i)
  %cmp50.i.i = icmp eq i32 %325, %next_fsn.0147.i.i
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.else49.i.i.if.end58.i.i_crit_edge

if.else49.i.i.if.end58.i.i_crit_edge:             ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i

if.then52.i.i:                                    ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i

for.inc.i43.i:                                    ; preds = %if.then37.i.i, %if.then33.i.i, %if.then30.i.i.for.inc.i43.i_crit_edge, %if.end17.i.i.for.inc.i43.i_crit_edge, %for.body.i37.i178.for.inc.i43.i_crit_edge
  %first_frag.3.i.i188 = phi ptr [ %first_frag.0145.i.i, %for.body.i37.i178.for.inc.i43.i_crit_edge ], [ %first_frag.0145.i.i, %if.end17.i.i.for.inc.i43.i_crit_edge ], [ %first_frag.0145.i.i, %if.then37.i.i ], [ %pos.0148.i.i, %if.then33.i.i ], [ null, %if.then30.i.i.for.inc.i43.i_crit_edge ]
  %last_frag.3.i.i189 = phi ptr [ %last_frag.0146.i.i, %for.body.i37.i178.for.inc.i43.i_crit_edge ], [ %last_frag.0146.i.i, %if.end17.i.i.for.inc.i43.i_crit_edge ], [ %pos.0148.i.i, %if.then37.i.i ], [ %pos.0148.i.i, %if.then33.i.i ], [ %last_frag.0146.i.i, %if.then30.i.i.for.inc.i43.i_crit_edge ]
  %next_fsn.3.i.i190 = phi i32 [ %next_fsn.0147.i.i, %for.body.i37.i178.for.inc.i43.i_crit_edge ], [ %next_fsn.0147.i.i, %if.end17.i.i.for.inc.i43.i_crit_edge ], [ %inc.i.i187, %if.then37.i.i ], [ %add.i.i184, %if.then33.i.i ], [ %next_fsn.0147.i.i, %if.then30.i.i.for.inc.i43.i_crit_edge ]
  %328 = ptrtoint ptr %pos.0148.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %pos.0.i42.i = load ptr, ptr %pos.0148.i.i, align 4
  %cmp.not.i.i191 = icmp eq ptr %pos.0.i42.i, %reasm_uo.i.i
  br i1 %cmp.not.i.i191, label %for.inc.i43.i.out.i.i196_crit_edge, label %for.inc.i43.i.for.body.i37.i178_crit_edge

for.inc.i43.i.for.body.i37.i178_crit_edge:        ; preds = %for.inc.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i37.i178

for.inc.i43.i.out.i.i196_crit_edge:               ; preds = %for.inc.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i196

out.i.i196:                                       ; preds = %for.inc.i43.i.out.i.i196_crit_edge, %if.then43.i.i.out.i.i196_crit_edge, %if.end27.i.i.out.i.i196_crit_edge, %if.end21.i.i.out.i.i196_crit_edge, %if.end.i38.i180.out.i.i196_crit_edge
  %first_frag.4.i.i192 = phi ptr [ %pos.0148.i.i, %if.then43.i.i.out.i.i196_crit_edge ], [ %first_frag.3.i.i188, %for.inc.i43.i.out.i.i196_crit_edge ], [ %first_frag.0145.i.i, %if.end.i38.i180.out.i.i196_crit_edge ], [ %first_frag.0145.i.i, %if.end21.i.i.out.i.i196_crit_edge ], [ %first_frag.0145.i.i, %if.end27.i.i.out.i.i196_crit_edge ]
  %last_frag.4.i.i193 = phi ptr [ %pos.0148.i.i, %if.then43.i.i.out.i.i196_crit_edge ], [ %last_frag.3.i.i189, %for.inc.i43.i.out.i.i196_crit_edge ], [ %last_frag.0146.i.i, %if.end.i38.i180.out.i.i196_crit_edge ], [ %last_frag.0146.i.i, %if.end21.i.i.out.i.i196_crit_edge ], [ %last_frag.0146.i.i, %if.end27.i.i.out.i.i196_crit_edge ]
  %next_fsn.4.i.i194 = phi i32 [ 0, %if.then43.i.i.out.i.i196_crit_edge ], [ %next_fsn.3.i.i190, %for.inc.i43.i.out.i.i196_crit_edge ], [ %next_fsn.0147.i.i, %if.end.i38.i180.out.i.i196_crit_edge ], [ %next_fsn.0147.i.i, %if.end21.i.i.out.i.i196_crit_edge ], [ %next_fsn.0147.i.i, %if.end27.i.i.out.i.i196_crit_edge ]
  %is_last.3.i.i195 = phi i32 [ 1, %if.then43.i.i.out.i.i196_crit_edge ], [ 0, %if.end.i38.i180.out.i.i196_crit_edge ], [ 0, %if.end21.i.i.out.i.i196_crit_edge ], [ 0, %if.end27.i.i.out.i.i196_crit_edge ], [ 0, %for.inc.i43.i.out.i.i196_crit_edge ]
  %tobool56.not.i.i = icmp eq ptr %first_frag.4.i.i192, null
  br i1 %tobool56.not.i.i, label %out.i.i196.if.then17.i198_crit_edge, label %out.i.i196.if.end58.i.i_crit_edge

out.i.i196.if.end58.i.i_crit_edge:                ; preds = %out.i.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i

out.i.i196.if.then17.i198_crit_edge:              ; preds = %out.i.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i198

if.end58.i.i:                                     ; preds = %out.i.i196.if.end58.i.i_crit_edge, %if.then52.i.i, %if.else49.i.i.if.end58.i.i_crit_edge, %if.else.i.i186.if.end58.i.i_crit_edge
  %is_last.3128.i.i = phi i32 [ %is_last.3.i.i195, %out.i.i196.if.end58.i.i_crit_edge ], [ 1, %if.then52.i.i ], [ 0, %if.else49.i.i.if.end58.i.i_crit_edge ], [ 0, %if.else.i.i186.if.end58.i.i_crit_edge ]
  %next_fsn.4127.i.i = phi i32 [ %next_fsn.4.i.i194, %out.i.i196.if.end58.i.i_crit_edge ], [ 0, %if.then52.i.i ], [ %next_fsn.0147.i.i, %if.else49.i.i.if.end58.i.i_crit_edge ], [ %next_fsn.0147.i.i, %if.else.i.i186.if.end58.i.i_crit_edge ]
  %last_frag.4126.i.i = phi ptr [ %last_frag.4.i.i193, %out.i.i196.if.end58.i.i_crit_edge ], [ %pos.0148.i.i, %if.then52.i.i ], [ %last_frag.0146.i.i, %if.else49.i.i.if.end58.i.i_crit_edge ], [ %last_frag.0146.i.i, %if.else.i.i186.if.end58.i.i_crit_edge ]
  %first_frag.4125.i.i = phi ptr [ %first_frag.4.i.i192, %out.i.i196.if.end58.i.i_crit_edge ], [ %first_frag.0145.i.i, %if.then52.i.i ], [ %first_frag.0145.i.i, %if.else49.i.i.if.end58.i.i_crit_edge ], [ %first_frag.0145.i.i, %if.else.i.i186.if.end58.i.i_crit_edge ]
  %329 = ptrtoint ptr %asoc.i150 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %asoc.i150, align 4
  %net.i.i197 = getelementptr inbounds %struct.sctp_ep_common, ptr %330, i32 0, i32 4
  %331 = ptrtoint ptr %net.i.i197 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %net.i.i197, align 8
  %call61.i.i = tail call ptr @sctp_make_reassembled_event(ptr noundef %332, ptr noundef %reasm_uo.i.i, ptr noundef nonnull %first_frag.4125.i.i, ptr noundef %last_frag.4126.i.i) #7
  %tobool62.not.i.i = icmp eq ptr %call61.i.i, null
  br i1 %tobool62.not.i.i, label %if.end58.i.i.if.then17.i198_crit_edge, label %if.then63.i.i

if.end58.i.i.if.then17.i198_crit_edge:            ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i198

if.then63.i.i:                                    ; preds = %if.end58.i.i
  %333 = ptrtoint ptr %fsn_uo.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %next_fsn.4127.i.i, ptr %fsn_uo.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_last.3128.i.i)
  %tobool65.not.i.i = icmp eq i32 %is_last.3128.i.i, 0
  br i1 %tobool65.not.i.i, label %if.then63.i.i.if.then26_crit_edge, label %if.then66.i.i

if.then63.i.i.if.then26_crit_edge:                ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then66.i.i:                                    ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %msg_flags67.i.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %call61.i.i, i32 0, i32 9
  %334 = ptrtoint ptr %msg_flags67.i.i to i32
  call void @__asan_loadN_noabort(i32 %334, i32 2)
  %335 = load i16, ptr %msg_flags67.i.i, align 1
  %336 = or i16 %335, 128
  store i16 %336, ptr %msg_flags67.i.i, align 1
  %pd_mode_uo.i.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i.i173, i32 0, i32 5
  %337 = ptrtoint ptr %pd_mode_uo.i.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 0, ptr %pd_mode_uo.i.i, align 1
  br label %if.then26

if.then17.i198:                                   ; preds = %if.end58.i.i.if.then17.i198_crit_edge, %out.i.i196.if.then17.i198_crit_edge, %if.then43.i.i.if.then17.i198_crit_edge, %if.then13.i174.if.then17.i198_crit_edge, %land.lhs.true10.i165.if.then17.i198_crit_edge, %land.lhs.true.i163.if.then17.i198_crit_edge, %sctp_intl_store_reasm_uo.exit.i.if.then17.i198_crit_edge
  %338 = ptrtoint ptr %asoc.i150 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %asoc.i150, align 4
  %340 = ptrtoint ptr %stream6.i151 to i32
  call void @__asan_loadN_noabort(i32 %340, i32 2)
  %341 = load i16, ptr %stream6.i151, align 1
  %in.i.i45.i = getelementptr inbounds %struct.sctp_association, ptr %339, i32 0, i32 60, i32 1
  %.frozen392 = freeze i16 %341
  %div14.i2.i.i46.i = udiv i16 %.frozen392, 204
  %div14.i.zext.i.i47.i = zext i16 %div14.i2.i.i46.i to i32
  %mul.i.i.i48.i = shl nuw nsw i32 %div14.i.zext.i.i47.i, 12
  %342 = mul i16 %div14.i2.i.i46.i, 204
  %rem.i3.i.i49.i.decomposed = sub i16 %.frozen392, %342
  %narrow.i.i50.i = mul nuw nsw i16 %rem.i3.i.i49.i.decomposed, 20
  %mul15.i.i.i51.i = zext i16 %narrow.i.i50.i to i32
  %add.i.i.i52.i = add nuw nsw i32 %mul.i.i.i48.i, %mul15.i.i.i51.i
  %call1.i.i53.i = tail call ptr @__genradix_ptr(ptr noundef %in.i.i45.i, i32 noundef %add.i.i.i52.i) #7
  %343 = ptrtoint ptr %reasm_uo.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %pos.0172.i.i = load ptr, ptr %reasm_uo.i.i, align 4
  %cmp.not173.i.i = icmp eq ptr %pos.0172.i.i, %reasm_uo.i.i
  br i1 %cmp.not173.i.i, label %if.then17.i198.cleanup_crit_edge, label %for.body.lr.ph.i57.i

if.then17.i198.cleanup_crit_edge:                 ; preds = %if.then17.i198
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i57.i:                             ; preds = %if.then17.i198
  %pd_mode_uo.i55.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i53.i, i32 0, i32 5
  %mid_uo.i56.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i53.i, i32 0, i32 1
  br label %for.body.i58.i

for.body.i58.i:                                   ; preds = %for.inc.i70.i224.for.body.i58.i_crit_edge, %for.body.lr.ph.i57.i
  %pos.0180.i.i = phi ptr [ %pos.0172.i.i, %for.body.lr.ph.i57.i ], [ %pos.0.i68.i222, %for.inc.i70.i224.for.body.i58.i_crit_edge ]
  %mid.0179.i.i = phi i32 [ 0, %for.body.lr.ph.i57.i ], [ %mid.2.ph.i.i221, %for.inc.i70.i224.for.body.i58.i_crit_edge ]
  %pd_len.0178.i.i = phi i32 [ 0, %for.body.lr.ph.i57.i ], [ %pd_len.3.ph.i.i220, %for.inc.i70.i224.for.body.i58.i_crit_edge ]
  %next_fsn.0177.i.i = phi i32 [ 0, %for.body.lr.ph.i57.i ], [ %next_fsn.2.ph.i.i219, %for.inc.i70.i224.for.body.i58.i_crit_edge ]
  %pd_last.0176.i.i = phi ptr [ null, %for.body.lr.ph.i57.i ], [ %pd_last.3.ph.i.i218, %for.inc.i70.i224.for.body.i58.i_crit_edge ]
  %pd_first.0175.i.i = phi ptr [ null, %for.body.lr.ph.i57.i ], [ %pd_first.3.ph.i.i217, %for.inc.i70.i224.for.body.i58.i_crit_edge ]
  %first_frag.0174.i.i = phi ptr [ null, %for.body.lr.ph.i57.i ], [ %first_frag.2.ph.i.i216, %for.inc.i70.i224.for.body.i58.i_crit_edge ]
  %stream7.i.i199 = getelementptr inbounds %struct.sk_buff, ptr %pos.0180.i.i, i32 0, i32 3, i32 28
  %344 = ptrtoint ptr %stream7.i.i199 to i32
  call void @__asan_loadN_noabort(i32 %344, i32 2)
  %345 = load i16, ptr %stream7.i.i199, align 1
  %346 = ptrtoint ptr %stream6.i151 to i32
  call void @__asan_loadN_noabort(i32 %346, i32 2)
  %347 = load i16, ptr %stream6.i151, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %345, i16 %347)
  %cmp10.i.i200 = icmp ult i16 %345, %347
  br i1 %cmp10.i.i200, label %for.body.i58.i.for.inc.i70.i224_crit_edge, label %if.end.i59.i

for.body.i58.i.for.inc.i70.i224_crit_edge:        ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i224

if.end.i59.i:                                     ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_cmp2(i16 %345, i16 %347)
  %cmp16.i.i201 = icmp ugt i16 %345, %347
  br i1 %cmp16.i.i201, label %if.end.i59.i.for.end.i71.i230_crit_edge, label %if.end19.i.i203

if.end.i59.i.for.end.i71.i230_crit_edge:          ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i71.i230

if.end19.i.i203:                                  ; preds = %if.end.i59.i
  %348 = getelementptr inbounds %struct.sk_buff, ptr %pos.0180.i.i, i32 0, i32 3, i32 12
  %349 = ptrtoint ptr %348 to i32
  call void @__asan_loadN_noabort(i32 %349, i32 4)
  %350 = load i32, ptr %348, align 1
  %351 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %351, i32 4)
  %352 = load i32, ptr %7, align 1
  %sub.i60.i = sub i32 %350, %352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i60.i)
  %cmp20.i.i202 = icmp slt i32 %sub.i60.i, 0
  br i1 %cmp20.i.i202, label %if.end19.i.i203.for.inc.i70.i224_crit_edge, label %if.end23.i.i206

if.end19.i.i203.for.inc.i70.i224_crit_edge:       ; preds = %if.end19.i.i203
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i224

if.end23.i.i206:                                  ; preds = %if.end19.i.i203
  %sub24.i.i204 = sub i32 %352, %350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24.i.i204)
  %cmp25.i.i205 = icmp slt i32 %sub24.i.i204, 0
  br i1 %cmp25.i.i205, label %if.end23.i.i206.for.end.i71.i230_crit_edge, label %if.end28.i.i209

if.end23.i.i206.for.end.i71.i230_crit_edge:       ; preds = %if.end23.i.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i71.i230

if.end28.i.i209:                                  ; preds = %if.end23.i.i206
  %msg_flags.i61.i207 = getelementptr inbounds %struct.sk_buff, ptr %pos.0180.i.i, i32 0, i32 3, i32 32
  %353 = ptrtoint ptr %msg_flags.i61.i207 to i32
  call void @__asan_loadN_noabort(i32 %353, i32 2)
  %354 = load i16, ptr %msg_flags.i61.i207, align 1
  %355 = and i16 %354, 3
  %and.i62.i208 = zext i16 %355 to i32
  %356 = zext i32 %and.i62.i208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %356, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and.i62.i208, label %if.end28.i.i209.for.inc.i70.i224_crit_edge [
    i32 2, label %sw.bb.i.i210
    i32 0, label %sw.bb32.i.i
    i32 1, label %sw.bb45.i.i
  ]

if.end28.i.i209.for.inc.i70.i224_crit_edge:       ; preds = %if.end28.i.i209
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i224

sw.bb.i.i210:                                     ; preds = %if.end28.i.i209
  %357 = ptrtoint ptr %pd_mode_uo.i55.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %pd_mode_uo.i55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %tobool.not.i63.i = icmp eq i8 %358, 0
  br i1 %tobool.not.i63.i, label %if.then30.i64.i, label %sw.bb.i.i210.if.end31.i.i_crit_edge

sw.bb.i.i210.if.end31.i.i_crit_edge:              ; preds = %sw.bb.i.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

if.then30.i64.i:                                  ; preds = %sw.bb.i.i210
  call void @__sanitizer_cov_trace_pc() #9
  %359 = ptrtoint ptr %mid_uo.i56.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %350, ptr %mid_uo.i56.i, align 4
  %len.i.i211 = getelementptr inbounds %struct.sk_buff, ptr %pos.0180.i.i, i32 0, i32 6
  %360 = ptrtoint ptr %len.i.i211 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %len.i.i211, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then30.i64.i, %sw.bb.i.i210.if.end31.i.i_crit_edge
  %pd_first.1.i.i = phi ptr [ %pd_first.0175.i.i, %sw.bb.i.i210.if.end31.i.i_crit_edge ], [ %pos.0180.i.i, %if.then30.i64.i ]
  %pd_last.1.i.i = phi ptr [ %pd_last.0176.i.i, %sw.bb.i.i210.if.end31.i.i_crit_edge ], [ %pos.0180.i.i, %if.then30.i64.i ]
  %pd_len.1.i.i = phi i32 [ %pd_len.0178.i.i, %sw.bb.i.i210.if.end31.i.i_crit_edge ], [ %361, %if.then30.i64.i ]
  %362 = ptrtoint ptr %348 to i32
  call void @__asan_loadN_noabort(i32 %362, i32 4)
  %363 = load i32, ptr %348, align 1
  br label %for.inc.i70.i224

sw.bb32.i.i:                                      ; preds = %if.end28.i.i209
  %tobool33.not.i.i = icmp ne ptr %first_frag.0174.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %350, i32 %mid.0179.i.i)
  %cmp34.i.i = icmp eq i32 %350, %mid.0179.i.i
  %or.cond.i.i212 = select i1 %tobool33.not.i.i, i1 %cmp34.i.i, i1 false
  br i1 %or.cond.i.i212, label %land.lhs.true36.i.i, label %sw.bb32.i.i.for.inc.i70.i224_crit_edge

sw.bb32.i.i.for.inc.i70.i224_crit_edge:           ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i224

land.lhs.true36.i.i:                              ; preds = %sw.bb32.i.i
  %364 = getelementptr inbounds %struct.sk_buff, ptr %pos.0180.i.i, i32 0, i32 3, i32 16
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_loadN_noabort(i32 %365, i32 4)
  %366 = load i32, ptr %364, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %366, i32 %next_fsn.0177.i.i)
  %cmp37.i.i213 = icmp eq i32 %366, %next_fsn.0177.i.i
  br i1 %cmp37.i.i213, label %if.then39.i66.i, label %land.lhs.true36.i.i.for.inc.i70.i224_crit_edge

land.lhs.true36.i.i.for.inc.i70.i224_crit_edge:   ; preds = %land.lhs.true36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i224

if.then39.i66.i:                                  ; preds = %land.lhs.true36.i.i
  %inc.i65.i214 = add i32 %next_fsn.0177.i.i, 1
  %tobool40.not.i.i = icmp eq ptr %pd_first.0175.i.i, null
  br i1 %tobool40.not.i.i, label %if.then39.i66.i.for.inc.i70.i224_crit_edge, label %if.then41.i.i

if.then39.i66.i.for.inc.i70.i224_crit_edge:       ; preds = %if.then39.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i224

if.then41.i.i:                                    ; preds = %if.then39.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  %len42.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0180.i.i, i32 0, i32 6
  %367 = ptrtoint ptr %len42.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %len42.i.i, align 4
  %add.i67.i = add i32 %368, %pd_len.0178.i.i
  br label %for.inc.i70.i224

sw.bb45.i.i:                                      ; preds = %if.end28.i.i209
  %tobool46.not.i.i = icmp ne ptr %first_frag.0174.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %350, i32 %mid.0179.i.i)
  %cmp48.i.i = icmp eq i32 %350, %mid.0179.i.i
  %or.cond142.i.i215 = select i1 %tobool46.not.i.i, i1 %cmp48.i.i, i1 false
  br i1 %or.cond142.i.i215, label %land.lhs.true50.i.i, label %sw.bb45.i.i.for.inc.i70.i224_crit_edge

sw.bb45.i.i.for.inc.i70.i224_crit_edge:           ; preds = %sw.bb45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i224

land.lhs.true50.i.i:                              ; preds = %sw.bb45.i.i
  %369 = getelementptr inbounds %struct.sk_buff, ptr %pos.0180.i.i, i32 0, i32 3, i32 16
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_loadN_noabort(i32 %370, i32 4)
  %371 = load i32, ptr %369, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %371, i32 %next_fsn.0177.i.i)
  %cmp51.i.i = icmp eq i32 %371, %next_fsn.0177.i.i
  br i1 %cmp51.i.i, label %found.i.i235, label %land.lhs.true50.i.i.for.inc.i70.i224_crit_edge

land.lhs.true50.i.i.for.inc.i70.i224_crit_edge:   ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70.i224

for.inc.i70.i224:                                 ; preds = %land.lhs.true50.i.i.for.inc.i70.i224_crit_edge, %sw.bb45.i.i.for.inc.i70.i224_crit_edge, %if.then41.i.i, %if.then39.i66.i.for.inc.i70.i224_crit_edge, %land.lhs.true36.i.i.for.inc.i70.i224_crit_edge, %sw.bb32.i.i.for.inc.i70.i224_crit_edge, %if.end31.i.i, %if.end28.i.i209.for.inc.i70.i224_crit_edge, %if.end19.i.i203.for.inc.i70.i224_crit_edge, %for.body.i58.i.for.inc.i70.i224_crit_edge
  %first_frag.2.ph.i.i216 = phi ptr [ %first_frag.0174.i.i, %if.end19.i.i203.for.inc.i70.i224_crit_edge ], [ %first_frag.0174.i.i, %for.body.i58.i.for.inc.i70.i224_crit_edge ], [ %first_frag.0174.i.i, %if.end28.i.i209.for.inc.i70.i224_crit_edge ], [ %first_frag.0174.i.i, %if.then41.i.i ], [ %first_frag.0174.i.i, %if.then39.i66.i.for.inc.i70.i224_crit_edge ], [ %pos.0180.i.i, %if.end31.i.i ], [ null, %land.lhs.true36.i.i.for.inc.i70.i224_crit_edge ], [ null, %sw.bb32.i.i.for.inc.i70.i224_crit_edge ], [ null, %land.lhs.true50.i.i.for.inc.i70.i224_crit_edge ], [ null, %sw.bb45.i.i.for.inc.i70.i224_crit_edge ]
  %pd_first.3.ph.i.i217 = phi ptr [ %pd_first.0175.i.i, %if.end19.i.i203.for.inc.i70.i224_crit_edge ], [ %pd_first.0175.i.i, %for.body.i58.i.for.inc.i70.i224_crit_edge ], [ %pd_first.0175.i.i, %if.end28.i.i209.for.inc.i70.i224_crit_edge ], [ %pd_first.0175.i.i, %if.then41.i.i ], [ null, %if.then39.i66.i.for.inc.i70.i224_crit_edge ], [ %pd_first.1.i.i, %if.end31.i.i ], [ %pd_first.0175.i.i, %land.lhs.true36.i.i.for.inc.i70.i224_crit_edge ], [ %pd_first.0175.i.i, %sw.bb32.i.i.for.inc.i70.i224_crit_edge ], [ %pd_first.0175.i.i, %land.lhs.true50.i.i.for.inc.i70.i224_crit_edge ], [ %pd_first.0175.i.i, %sw.bb45.i.i.for.inc.i70.i224_crit_edge ]
  %pd_last.3.ph.i.i218 = phi ptr [ %pd_last.0176.i.i, %if.end19.i.i203.for.inc.i70.i224_crit_edge ], [ %pd_last.0176.i.i, %for.body.i58.i.for.inc.i70.i224_crit_edge ], [ %pd_last.0176.i.i, %if.end28.i.i209.for.inc.i70.i224_crit_edge ], [ %pos.0180.i.i, %if.then41.i.i ], [ %pd_last.0176.i.i, %if.then39.i66.i.for.inc.i70.i224_crit_edge ], [ %pd_last.1.i.i, %if.end31.i.i ], [ %pd_last.0176.i.i, %land.lhs.true36.i.i.for.inc.i70.i224_crit_edge ], [ %pd_last.0176.i.i, %sw.bb32.i.i.for.inc.i70.i224_crit_edge ], [ %pd_last.0176.i.i, %land.lhs.true50.i.i.for.inc.i70.i224_crit_edge ], [ %pd_last.0176.i.i, %sw.bb45.i.i.for.inc.i70.i224_crit_edge ]
  %next_fsn.2.ph.i.i219 = phi i32 [ %next_fsn.0177.i.i, %if.end19.i.i203.for.inc.i70.i224_crit_edge ], [ %next_fsn.0177.i.i, %for.body.i58.i.for.inc.i70.i224_crit_edge ], [ %next_fsn.0177.i.i, %if.end28.i.i209.for.inc.i70.i224_crit_edge ], [ %inc.i65.i214, %if.then41.i.i ], [ %inc.i65.i214, %if.then39.i66.i.for.inc.i70.i224_crit_edge ], [ 0, %if.end31.i.i ], [ %next_fsn.0177.i.i, %land.lhs.true36.i.i.for.inc.i70.i224_crit_edge ], [ %next_fsn.0177.i.i, %sw.bb32.i.i.for.inc.i70.i224_crit_edge ], [ %next_fsn.0177.i.i, %land.lhs.true50.i.i.for.inc.i70.i224_crit_edge ], [ %next_fsn.0177.i.i, %sw.bb45.i.i.for.inc.i70.i224_crit_edge ]
  %pd_len.3.ph.i.i220 = phi i32 [ %pd_len.0178.i.i, %if.end19.i.i203.for.inc.i70.i224_crit_edge ], [ %pd_len.0178.i.i, %for.body.i58.i.for.inc.i70.i224_crit_edge ], [ %pd_len.0178.i.i, %if.end28.i.i209.for.inc.i70.i224_crit_edge ], [ %add.i67.i, %if.then41.i.i ], [ %pd_len.0178.i.i, %if.then39.i66.i.for.inc.i70.i224_crit_edge ], [ %pd_len.1.i.i, %if.end31.i.i ], [ %pd_len.0178.i.i, %land.lhs.true36.i.i.for.inc.i70.i224_crit_edge ], [ %pd_len.0178.i.i, %sw.bb32.i.i.for.inc.i70.i224_crit_edge ], [ %pd_len.0178.i.i, %land.lhs.true50.i.i.for.inc.i70.i224_crit_edge ], [ %pd_len.0178.i.i, %sw.bb45.i.i.for.inc.i70.i224_crit_edge ]
  %mid.2.ph.i.i221 = phi i32 [ %mid.0179.i.i, %if.end19.i.i203.for.inc.i70.i224_crit_edge ], [ %mid.0179.i.i, %for.body.i58.i.for.inc.i70.i224_crit_edge ], [ %mid.0179.i.i, %if.end28.i.i209.for.inc.i70.i224_crit_edge ], [ %mid.0179.i.i, %if.then41.i.i ], [ %mid.0179.i.i, %if.then39.i66.i.for.inc.i70.i224_crit_edge ], [ %363, %if.end31.i.i ], [ %mid.0179.i.i, %land.lhs.true36.i.i.for.inc.i70.i224_crit_edge ], [ %mid.0179.i.i, %sw.bb32.i.i.for.inc.i70.i224_crit_edge ], [ %mid.0179.i.i, %land.lhs.true50.i.i.for.inc.i70.i224_crit_edge ], [ %mid.0179.i.i, %sw.bb45.i.i.for.inc.i70.i224_crit_edge ]
  %372 = ptrtoint ptr %pos.0180.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %pos.0.i68.i222 = load ptr, ptr %pos.0180.i.i, align 4
  %cmp.not.i69.i223 = icmp eq ptr %pos.0.i68.i222, %reasm_uo.i.i
  br i1 %cmp.not.i69.i223, label %for.inc.i70.i224.for.end.i71.i230_crit_edge, label %for.inc.i70.i224.for.body.i58.i_crit_edge

for.inc.i70.i224.for.body.i58.i_crit_edge:        ; preds = %for.inc.i70.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i58.i

for.inc.i70.i224.for.end.i71.i230_crit_edge:      ; preds = %for.inc.i70.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i71.i230

for.end.i71.i230:                                 ; preds = %for.inc.i70.i224.for.end.i71.i230_crit_edge, %if.end23.i.i206.for.end.i71.i230_crit_edge, %if.end.i59.i.for.end.i71.i230_crit_edge
  %pd_first.0.lcssa.i.i225 = phi ptr [ %pd_first.3.ph.i.i217, %for.inc.i70.i224.for.end.i71.i230_crit_edge ], [ %pd_first.0175.i.i, %if.end.i59.i.for.end.i71.i230_crit_edge ], [ %pd_first.0175.i.i, %if.end23.i.i206.for.end.i71.i230_crit_edge ]
  %pd_last.0.lcssa.i.i226 = phi ptr [ %pd_last.3.ph.i.i218, %for.inc.i70.i224.for.end.i71.i230_crit_edge ], [ %pd_last.0176.i.i, %if.end.i59.i.for.end.i71.i230_crit_edge ], [ %pd_last.0176.i.i, %if.end23.i.i206.for.end.i71.i230_crit_edge ]
  %next_fsn.0.lcssa.i.i227 = phi i32 [ %next_fsn.2.ph.i.i219, %for.inc.i70.i224.for.end.i71.i230_crit_edge ], [ %next_fsn.0177.i.i, %if.end.i59.i.for.end.i71.i230_crit_edge ], [ %next_fsn.0177.i.i, %if.end23.i.i206.for.end.i71.i230_crit_edge ]
  %pd_len.0.lcssa.i.i228 = phi i32 [ %pd_len.3.ph.i.i220, %for.inc.i70.i224.for.end.i71.i230_crit_edge ], [ %pd_len.0178.i.i, %if.end.i59.i.for.end.i71.i230_crit_edge ], [ %pd_len.0178.i.i, %if.end23.i.i206.for.end.i71.i230_crit_edge ]
  %tobool57.not.i.i229 = icmp eq ptr %pd_first.0.lcssa.i.i225, null
  br i1 %tobool57.not.i.i229, label %for.end.i71.i230.cleanup_crit_edge, label %if.end59.i.i

for.end.i71.i230.cleanup_crit_edge:               ; preds = %for.end.i71.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59.i.i:                                     ; preds = %for.end.i71.i230
  %sk.i.i231 = getelementptr inbounds %struct.sctp_ep_common, ptr %339, i32 0, i32 3
  %373 = ptrtoint ptr %sk.i.i231 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %sk.i.i231, align 4
  %pd_point61.i.i = getelementptr inbounds %struct.sctp_sock, ptr %374, i32 0, i32 36
  %375 = ptrtoint ptr %pd_point61.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %pd_point61.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool62.not.i72.i = icmp eq i32 %376, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %376, i32 %pd_len.0.lcssa.i.i228)
  %cmp64.not.i.i = icmp ugt i32 %376, %pd_len.0.lcssa.i.i228
  %or.cond143.i.i = select i1 %tobool62.not.i72.i, i1 true, i1 %cmp64.not.i.i
  br i1 %or.cond143.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.then66.i74.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then66.i74.i:                                  ; preds = %if.end59.i.i
  %net.i73.i = getelementptr inbounds %struct.sctp_ep_common, ptr %339, i32 0, i32 4
  %377 = ptrtoint ptr %net.i73.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %net.i73.i, align 8
  %call69.i.i = tail call ptr @sctp_make_reassembled_event(ptr noundef %378, ptr noundef %reasm_uo.i.i, ptr noundef nonnull %pd_first.0.lcssa.i.i225, ptr noundef %pd_last.0.lcssa.i.i226) #7
  %tobool70.not.i.i = icmp eq ptr %call69.i.i, null
  br i1 %tobool70.not.i.i, label %if.then66.i74.i.cleanup_crit_edge, label %if.then71.i.i

if.then66.i74.i.cleanup_crit_edge:                ; preds = %if.then66.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then71.i.i:                                    ; preds = %if.then66.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  %fsn_uo.i75.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i53.i, i32 0, i32 3
  %379 = ptrtoint ptr %fsn_uo.i75.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %next_fsn.0.lcssa.i.i227, ptr %fsn_uo.i75.i, align 4
  %380 = ptrtoint ptr %pd_mode_uo.i55.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 1, ptr %pd_mode_uo.i55.i, align 1
  br label %if.then26

found.i.i235:                                     ; preds = %land.lhs.true50.i.i
  %net76.i.i232 = getelementptr inbounds %struct.sctp_ep_common, ptr %339, i32 0, i32 4
  %381 = ptrtoint ptr %net76.i.i232 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %net76.i.i232, align 8
  %call78.i.i233 = tail call ptr @sctp_make_reassembled_event(ptr noundef %382, ptr noundef %reasm_uo.i.i, ptr noundef nonnull %first_frag.0174.i.i, ptr noundef %pos.0180.i.i) #7
  %tobool79.not.i.i234 = icmp eq ptr %call78.i.i233, null
  br i1 %tobool79.not.i.i234, label %found.i.i235.cleanup_crit_edge, label %if.then80.i.i237

found.i.i235.cleanup_crit_edge:                   ; preds = %found.i.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then80.i.i237:                                 ; preds = %found.i.i235
  call void @__sanitizer_cov_trace_pc() #9
  %msg_flags81.i.i236 = getelementptr inbounds %struct.sctp_ulpevent, ptr %call78.i.i233, i32 0, i32 9
  %383 = ptrtoint ptr %msg_flags81.i.i236 to i32
  call void @__asan_loadN_noabort(i32 %383, i32 2)
  %384 = load i16, ptr %msg_flags81.i.i236, align 1
  %385 = or i16 %384, 128
  store i16 %385, ptr %msg_flags81.i.i236, align 1
  br label %if.then26

if.then26:                                        ; preds = %if.then80.i.i237, %if.then71.i.i, %if.then66.i.i, %if.then63.i.i.if.then26_crit_edge, %if.then.i98
  %retval.0.i238 = phi ptr [ %call, %if.then.i98 ], [ %call61.i.i, %if.then63.i.i.if.then26_crit_edge ], [ %call61.i.i, %if.then66.i.i ], [ %call78.i.i233, %if.then80.i.i237 ], [ %call69.i.i, %if.then71.i.i ]
  %lock.i239 = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i239, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %prev.i.i240 = getelementptr inbounds %struct.anon.110, ptr %temp, i32 0, i32 1
  %qlen.i.i241 = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  %386 = ptrtoint ptr %qlen.i.i241 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 0, ptr %qlen.i.i241, align 4
  %add.ptr.i242 = getelementptr i8, ptr %retval.0.i238, i32 -24
  %387 = ptrtoint ptr %add.ptr.i242 to i32
  call void @__asan_store4_noabort(i32 %387)
  store volatile ptr %temp, ptr %add.ptr.i242, align 8
  %prev10.i.i.i244 = getelementptr i8, ptr %retval.0.i238, i32 -20
  %388 = ptrtoint ptr %prev10.i.i.i244 to i32
  call void @__asan_store4_noabort(i32 %388)
  store volatile ptr %temp, ptr %prev10.i.i.i244, align 4
  %389 = ptrtoint ptr %prev.i.i240 to i32
  call void @__asan_store4_noabort(i32 %389)
  store volatile ptr %add.ptr.i242, ptr %prev.i.i240, align 4
  %390 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %390)
  store volatile ptr %add.ptr.i242, ptr %temp, align 4
  %391 = load i32, ptr %qlen.i.i241, align 4
  %add.i.i.i246 = add i32 %391, 1
  store volatile i32 %add.i.i.i246, ptr %qlen.i.i241, align 4
  br label %if.then31

if.then31:                                        ; preds = %if.then26, %if.end.i93, %if.then13.if.then31_crit_edge
  %event.0 = phi ptr [ %retval.0.i238, %if.then26 ], [ %retval.0.i, %if.then13.if.then31_crit_edge ], [ %retval.0.i, %if.end.i93 ]
  %msg_flags32 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event.0, i32 0, i32 9
  %392 = ptrtoint ptr %msg_flags32 to i32
  call void @__asan_loadN_noabort(i32 %392, i32 2)
  %393 = load i16, ptr %msg_flags32, align 1
  %394 = lshr i16 %393, 7
  %.lobit = and i16 %394, 1
  %395 = zext i16 %.lobit to i32
  %call36 = call fastcc i32 @sctp_enqueue_event(ptr noundef %ulpq, ptr noundef nonnull %temp)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %found.i.i235.cleanup_crit_edge, %if.then66.i74.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %for.end.i71.i230.cleanup_crit_edge, %if.then17.i198.cleanup_crit_edge, %sctp_intl_store_ordered.exit.i, %found.i.i.cleanup_crit_edge, %if.then67.i.i.cleanup_crit_edge, %if.end60.i.i.cleanup_crit_edge, %for.end.i71.i.cleanup_crit_edge, %if.then17.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %395, %if.then31 ], [ 0, %sctp_intl_store_ordered.exit.i ], [ 0, %found.i.i.cleanup_crit_edge ], [ 0, %if.then67.i.i.cleanup_crit_edge ], [ 0, %if.end60.i.i.cleanup_crit_edge ], [ 0, %for.end.i71.i.cleanup_crit_edge ], [ 0, %if.then17.i.cleanup_crit_edge ], [ 0, %found.i.i235.cleanup_crit_edge ], [ 0, %if.then66.i74.i.cleanup_crit_edge ], [ 0, %if.end59.i.i.cleanup_crit_edge ], [ 0, %for.end.i71.i230.cleanup_crit_edge ], [ 0, %if.then17.i198.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_sctp_enqueue_event(ptr nocapture noundef readonly %ulpq, ptr noundef %event) #2 align 64 {
entry:
  %temp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #7
  %0 = call ptr @memset(ptr %temp, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %prev.i.i = getelementptr inbounds %struct.anon.110, ptr %temp, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %event, i32 -24
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %temp, ptr %add.ptr.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %event, i32 -20
  %2 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %temp, ptr %prev10.i.i.i, align 4
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %add.ptr.i, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %add.ptr.i, ptr %temp, align 4
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %qlen.i.i, align 4
  %call1 = call fastcc i32 @sctp_enqueue_event(ptr noundef %ulpq, ptr noundef nonnull %temp)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_renege_events(ptr noundef %ulpq, ptr noundef %chunk, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 4
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %2 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 2
  %sub = add i16 %5, -20
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %9, %sk_receive_queue
  br i1 %cmp.i.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i16 %sub to i32
  br label %if.end18

if.then:                                          ; preds = %entry
  %lobby = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %call3 = tail call zeroext i16 @sctp_ulpq_renege_list(ptr noundef %ulpq, ptr noundef %lobby, i16 noundef zeroext %sub) #7
  %conv4 = zext i16 %call3 to i32
  %conv5 = zext i16 %sub to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %call3, i16 %sub)
  %cmp = icmp ult i16 %call3, %sub
  br i1 %cmp, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %reasm = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %call8 = tail call zeroext i16 @sctp_ulpq_renege_list(ptr noundef %ulpq, ptr noundef %reasm, i16 noundef zeroext %sub) #7
  %conv9 = zext i16 %call8 to i32
  %add = add nuw nsw i32 %conv9, %conv4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %freed.0 = phi i32 [ %add, %if.then7 ], [ %conv4, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %freed.0, i32 %conv5)
  %cmp11 = icmp ult i32 %freed.0, %conv5
  br i1 %cmp11, label %if.then13, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %reasm_uo = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3
  %call14 = tail call zeroext i16 @sctp_ulpq_renege_list(ptr noundef %ulpq, ptr noundef %reasm_uo, i16 noundef zeroext %sub) #7
  %conv15 = zext i16 %call14 to i32
  %add16 = add nuw nsw i32 %freed.0, %conv15
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %conv19.pre-phi = phi i32 [ %.pre, %entry.if.end18_crit_edge ], [ %conv5, %if.end.if.end18_crit_edge ], [ %conv5, %if.then13 ]
  %freed.1 = phi i32 [ 0, %entry.if.end18_crit_edge ], [ %freed.0, %if.end.if.end18_crit_edge ], [ %add16, %if.then13 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %freed.1, i32 %conv19.pre-phi)
  %cmp20.not = icmp ult i32 %freed.1, %conv19.pre-phi
  br i1 %cmp20.not, label %if.end18.if.end26_crit_edge, label %land.lhs.true

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end18
  %call22 = tail call i32 @sctp_ulpevent_idata(ptr noundef %ulpq, ptr noundef %chunk, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %if.then25, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sctp_intl_start_pd(ptr noundef %ulpq, i32 noundef %gfp)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %10 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk, align 4
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %15, null
  br i1 %tobool.i.not.i, label %if.end26.sk_mem_reclaim.exit_crit_edge, label %if.end.i

if.end26.sk_mem_reclaim.exit_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_mem_reclaim.exit

if.end.i:                                         ; preds = %if.end26
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_forward_alloc.i, align 8
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 12
  %18 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i, !prof !17

if.end.i.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 22
  %20 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #7
  %22 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %24 = add i32 %21, %23
  %sub5.i.i = sub i32 %19, %24
  %25 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #7
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %25, %if.end.i.i ], [ 0, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i = sub i32 %17, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i)
  %cmp.i49 = icmp sgt i32 %sub.i, 4095
  br i1 %cmp.i49, label %if.then2.i, label %sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge

sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_mem_reclaim.exit

if.then2.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__sk_mem_reclaim(ptr noundef %11, i32 noundef %sub.i) #7
  br label %sk_mem_reclaim.exit

sk_mem_reclaim.exit:                              ; preds = %if.then2.i, %sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge, %if.end26.sk_mem_reclaim.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_intl_start_pd(ptr noundef %ulpq, i32 noundef %gfp) #2 align 64 {
entry:
  %temp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #7
  %0 = call ptr @memset(ptr %temp, i32 255, i32 56)
  %reasm = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %1 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reasm, align 4
  %cmp.i.not = icmp eq ptr %2, %reasm
  br i1 %cmp.i.not, label %entry.if.end7_crit_edge, label %do.body.preheader

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body.preheader:                                ; preds = %entry
  %3 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %3)
  %pos.092.i92 = load ptr, ptr %reasm, align 4
  %cmp.not93.i93 = icmp eq ptr %pos.092.i92, %reasm
  br i1 %cmp.not93.i93, label %do.body.preheader.if.end7_crit_edge, label %for.body.lr.ph.i.lr.ph

do.body.preheader.if.end7_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.lr.ph.i.lr.ph:                           ; preds = %do.body.preheader
  %asoc.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.anon.110, ptr %temp, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.lr.ph.i.lr.ph
  %pos.099.i = phi ptr [ %pos.092.i92, %for.body.lr.ph.i.lr.ph ], [ %pos.099.i.be, %for.body.i.backedge ]
  %sid.098.i = phi i16 [ 0, %for.body.lr.ph.i.lr.ph ], [ %sid.098.i.be, %for.body.i.backedge ]
  %next_fsn.097.i = phi i32 [ 0, %for.body.lr.ph.i.lr.ph ], [ %next_fsn.097.i.be, %for.body.i.backedge ]
  %last_frag.096.i = phi ptr [ null, %for.body.lr.ph.i.lr.ph ], [ %last_frag.096.i.be, %for.body.i.backedge ]
  %first_frag.095.i = phi ptr [ null, %for.body.lr.ph.i.lr.ph ], [ %first_frag.095.i.be, %for.body.i.backedge ]
  %sin.094.i = phi ptr [ null, %for.body.lr.ph.i.lr.ph ], [ %sin.094.i.be, %for.body.i.backedge ]
  %4 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc.i, align 4
  %stream3.i = getelementptr inbounds %struct.sk_buff, ptr %pos.099.i, i32 0, i32 3, i32 28
  %6 = ptrtoint ptr %stream3.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %stream3.i, align 1
  %in.i.i = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 60, i32 1
  %.frozen = freeze i16 %7
  %div14.i2.i.i = udiv i16 %.frozen, 204
  %div14.i.zext.i.i = zext i16 %div14.i2.i.i to i32
  %mul.i.i.i = shl nuw nsw i32 %div14.i.zext.i.i, 12
  %8 = mul i16 %div14.i2.i.i, 204
  %rem.i3.i.i.decomposed = sub i16 %.frozen, %8
  %narrow.i.i = mul nuw nsw i16 %rem.i3.i.i.decomposed, 20
  %mul15.i.i.i = zext i16 %narrow.i.i to i32
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %mul15.i.i.i
  %call1.i.i = call ptr @__genradix_ptr(ptr noundef %in.i.i, i32 noundef %add.i.i.i) #7
  %pd_mode.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %pd_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pd_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %msg_flags.i = getelementptr inbounds %struct.sk_buff, ptr %pos.099.i, i32 0, i32 3, i32 32
  %11 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %msg_flags.i, align 1
  %13 = and i16 %12, 3
  %and.i = zext i16 %13 to i32
  %14 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and.i, label %if.end.i.for.inc.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb13.i
    i32 1, label %sw.bb29.i
  ]

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %first_frag.095.i, null
  br i1 %tobool5.not.i, label %if.end7.i, label %sw.bb.i.out.i_crit_edge

sw.bb.i.out.i_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end7.i:                                        ; preds = %sw.bb.i
  %15 = getelementptr inbounds %struct.sk_buff, ptr %pos.099.i, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %15, align 1
  %18 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp8.i = icmp eq i32 %17, %19
  br i1 %cmp8.i, label %if.then10.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %stream3.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %stream3.i, align 1
  br label %for.inc.i

sw.bb13.i:                                        ; preds = %if.end.i
  %tobool14.not.i = icmp eq ptr %first_frag.095.i, null
  br i1 %tobool14.not.i, label %sw.bb13.i.for.inc.i_crit_edge, label %if.end16.i

sw.bb13.i.for.inc.i_crit_edge:                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end16.i:                                       ; preds = %sw.bb13.i
  %22 = ptrtoint ptr %stream3.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %stream3.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %sid.098.i)
  %cmp20.i = icmp eq i16 %23, %sid.098.i
  br i1 %cmp20.i, label %land.lhs.true.i, label %if.end16.i.out.i_crit_edge

if.end16.i.out.i_crit_edge:                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %24 = getelementptr inbounds %struct.sk_buff, ptr %pos.099.i, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %24, align 1
  %27 = ptrtoint ptr %sin.094.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin.094.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp22.i = icmp eq i32 %26, %28
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true.i.out.i_crit_edge

land.lhs.true.i.out.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %29 = getelementptr inbounds %struct.sk_buff, ptr %pos.099.i, i32 0, i32 3, i32 16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %29, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %next_fsn.097.i)
  %cmp25.i = icmp eq i32 %31, %next_fsn.097.i
  br i1 %cmp25.i, label %if.then27.i, label %land.lhs.true24.i.out.i_crit_edge

land.lhs.true24.i.out.i_crit_edge:                ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then27.i:                                      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %next_fsn.097.i, 1
  br label %for.inc.i

sw.bb29.i:                                        ; preds = %if.end.i
  %tobool30.not.i = icmp eq ptr %first_frag.095.i, null
  br i1 %tobool30.not.i, label %sw.bb29.i.for.inc.i_crit_edge, label %sw.bb29.i.out.i_crit_edge

sw.bb29.i.out.i_crit_edge:                        ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sw.bb29.i.for.inc.i_crit_edge:                    ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb29.i.for.inc.i_crit_edge, %if.then27.i, %sw.bb13.i.for.inc.i_crit_edge, %if.then10.i, %if.end7.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sin.2.i = phi ptr [ %sin.094.i, %for.body.i.for.inc.i_crit_edge ], [ %sin.094.i, %if.end.i.for.inc.i_crit_edge ], [ %sin.094.i, %sw.bb29.i.for.inc.i_crit_edge ], [ %sin.094.i, %if.then27.i ], [ %sin.094.i, %sw.bb13.i.for.inc.i_crit_edge ], [ %call1.i.i, %if.then10.i ], [ %sin.094.i, %if.end7.i.for.inc.i_crit_edge ]
  %first_frag.2.i = phi ptr [ %first_frag.095.i, %for.body.i.for.inc.i_crit_edge ], [ %first_frag.095.i, %if.end.i.for.inc.i_crit_edge ], [ null, %sw.bb29.i.for.inc.i_crit_edge ], [ %first_frag.095.i, %if.then27.i ], [ null, %sw.bb13.i.for.inc.i_crit_edge ], [ %pos.099.i, %if.then10.i ], [ null, %if.end7.i.for.inc.i_crit_edge ]
  %last_frag.2.i = phi ptr [ %last_frag.096.i, %for.body.i.for.inc.i_crit_edge ], [ %last_frag.096.i, %if.end.i.for.inc.i_crit_edge ], [ %last_frag.096.i, %sw.bb29.i.for.inc.i_crit_edge ], [ %pos.099.i, %if.then27.i ], [ %last_frag.096.i, %sw.bb13.i.for.inc.i_crit_edge ], [ %pos.099.i, %if.then10.i ], [ %last_frag.096.i, %if.end7.i.for.inc.i_crit_edge ]
  %next_fsn.2.i = phi i32 [ %next_fsn.097.i, %for.body.i.for.inc.i_crit_edge ], [ %next_fsn.097.i, %if.end.i.for.inc.i_crit_edge ], [ %next_fsn.097.i, %sw.bb29.i.for.inc.i_crit_edge ], [ %inc.i, %if.then27.i ], [ %next_fsn.097.i, %sw.bb13.i.for.inc.i_crit_edge ], [ 0, %if.then10.i ], [ %next_fsn.097.i, %if.end7.i.for.inc.i_crit_edge ]
  %sid.2.i = phi i16 [ %sid.098.i, %for.body.i.for.inc.i_crit_edge ], [ %sid.098.i, %if.end.i.for.inc.i_crit_edge ], [ %sid.098.i, %sw.bb29.i.for.inc.i_crit_edge ], [ %sid.098.i, %if.then27.i ], [ %sid.098.i, %sw.bb13.i.for.inc.i_crit_edge ], [ %21, %if.then10.i ], [ %sid.098.i, %if.end7.i.for.inc.i_crit_edge ]
  %32 = ptrtoint ptr %pos.099.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %pos.0.i = load ptr, ptr %pos.099.i, align 4
  %cmp.not.i = icmp eq ptr %pos.0.i, %reasm
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %if.then3.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %pos.099.i.be = phi ptr [ %pos.0.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %pos.092.i, %if.then3.for.body.i.backedge_crit_edge ]
  %sid.098.i.be = phi i16 [ %sid.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 0, %if.then3.for.body.i.backedge_crit_edge ]
  %next_fsn.097.i.be = phi i32 [ %next_fsn.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 0, %if.then3.for.body.i.backedge_crit_edge ]
  %last_frag.096.i.be = phi ptr [ %last_frag.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ null, %if.then3.for.body.i.backedge_crit_edge ]
  %first_frag.095.i.be = phi ptr [ %first_frag.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ null, %if.then3.for.body.i.backedge_crit_edge ]
  %sin.094.i.be = phi ptr [ %sin.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ null, %if.then3.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool34.not.i = icmp eq ptr %first_frag.2.i, null
  br i1 %tobool34.not.i, label %for.end.i.if.end7_crit_edge, label %for.end.i.out.i_crit_edge

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

for.end.i.if.end7_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

out.i:                                            ; preds = %for.end.i.out.i_crit_edge, %sw.bb29.i.out.i_crit_edge, %land.lhs.true24.i.out.i_crit_edge, %land.lhs.true.i.out.i_crit_edge, %if.end16.i.out.i_crit_edge, %sw.bb.i.out.i_crit_edge
  %sin.091.i = phi ptr [ %sin.2.i, %for.end.i.out.i_crit_edge ], [ %sin.094.i, %sw.bb.i.out.i_crit_edge ], [ %sin.094.i, %if.end16.i.out.i_crit_edge ], [ %sin.094.i, %land.lhs.true.i.out.i_crit_edge ], [ %sin.094.i, %land.lhs.true24.i.out.i_crit_edge ], [ %sin.094.i, %sw.bb29.i.out.i_crit_edge ]
  %first_frag.089.i = phi ptr [ %first_frag.2.i, %for.end.i.out.i_crit_edge ], [ %first_frag.095.i, %sw.bb.i.out.i_crit_edge ], [ %first_frag.095.i, %if.end16.i.out.i_crit_edge ], [ %first_frag.095.i, %land.lhs.true.i.out.i_crit_edge ], [ %first_frag.095.i, %land.lhs.true24.i.out.i_crit_edge ], [ %first_frag.095.i, %sw.bb29.i.out.i_crit_edge ]
  %last_frag.087.i = phi ptr [ %last_frag.2.i, %for.end.i.out.i_crit_edge ], [ %last_frag.096.i, %sw.bb.i.out.i_crit_edge ], [ %last_frag.096.i, %if.end16.i.out.i_crit_edge ], [ %last_frag.096.i, %land.lhs.true.i.out.i_crit_edge ], [ %last_frag.096.i, %land.lhs.true24.i.out.i_crit_edge ], [ %last_frag.096.i, %sw.bb29.i.out.i_crit_edge ]
  %next_fsn.085.i = phi i32 [ %next_fsn.2.i, %for.end.i.out.i_crit_edge ], [ %next_fsn.097.i, %sw.bb.i.out.i_crit_edge ], [ %next_fsn.097.i, %if.end16.i.out.i_crit_edge ], [ %next_fsn.097.i, %land.lhs.true.i.out.i_crit_edge ], [ %next_fsn.097.i, %land.lhs.true24.i.out.i_crit_edge ], [ %next_fsn.097.i, %sw.bb29.i.out.i_crit_edge ]
  %33 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %asoc.i, align 4
  %net.i = getelementptr inbounds %struct.sctp_ep_common, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net.i, align 8
  %call39.i = call ptr @sctp_make_reassembled_event(ptr noundef %36, ptr noundef %reasm, ptr noundef nonnull %first_frag.089.i, ptr noundef %last_frag.087.i) #7
  %tobool40.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i, label %out.i.if.end7_crit_edge, label %if.then3

out.i.if.end7_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %out.i
  %fsn.i = getelementptr inbounds %struct.sctp_stream_in, ptr %sin.091.i, i32 0, i32 2
  %37 = ptrtoint ptr %fsn.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %next_fsn.085.i, ptr %fsn.i, align 4
  %pd_mode42.i = getelementptr inbounds %struct.sctp_stream_in, ptr %sin.091.i, i32 0, i32 4
  %38 = ptrtoint ptr %pd_mode42.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %pd_mode42.i, align 4
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %39 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %qlen.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call39.i, i32 -24
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %temp, ptr %add.ptr.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %call39.i, i32 -20
  %41 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %temp, ptr %prev10.i.i.i, align 4
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %add.ptr.i, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %add.ptr.i, ptr %temp, align 4
  %44 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i33 = add i32 %44, 1
  store volatile i32 %add.i.i.i33, ptr %qlen.i.i, align 4
  %call5 = call fastcc i32 @sctp_enqueue_event(ptr noundef %ulpq, ptr noundef nonnull %temp)
  %45 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %45)
  %pos.092.i = load ptr, ptr %reasm, align 4
  %cmp.not93.i = icmp eq ptr %pos.092.i, %reasm
  br i1 %cmp.not93.i, label %if.then3.if.end7_crit_edge, label %if.then3.for.body.i.backedge_crit_edge

if.then3.for.body.i.backedge_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %out.i.if.end7_crit_edge, %for.end.i.if.end7_crit_edge, %do.body.preheader.if.end7_crit_edge, %entry.if.end7_crit_edge
  %reasm_uo = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3
  %46 = ptrtoint ptr %reasm_uo to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reasm_uo, align 4
  %cmp.i34.not = icmp eq ptr %47, %reasm_uo
  br i1 %cmp.i34.not, label %if.end7.if.end21_crit_edge, label %do.body11.preheader

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.body11.preheader:                              ; preds = %if.end7
  %48 = ptrtoint ptr %reasm_uo to i32
  call void @__asan_load4_noabort(i32 %48)
  %pos.089.i95 = load ptr, ptr %reasm_uo, align 4
  %cmp.not90.i96 = icmp eq ptr %pos.089.i95, %reasm_uo
  br i1 %cmp.not90.i96, label %do.body11.preheader.if.end21_crit_edge, label %for.body.lr.ph.i37.lr.ph

do.body11.preheader.if.end21_crit_edge:           ; preds = %do.body11.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.lr.ph.i37.lr.ph:                         ; preds = %do.body11.preheader
  %asoc.i36 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %lock.i72 = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  %prev.i.i73 = getelementptr inbounds %struct.anon.110, ptr %temp, i32 0, i32 1
  %qlen.i.i74 = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  br label %for.body.i50

for.body.i50:                                     ; preds = %for.body.i50.backedge, %for.body.lr.ph.i37.lr.ph
  %pos.096.i = phi ptr [ %pos.089.i95, %for.body.lr.ph.i37.lr.ph ], [ %pos.096.i.be, %for.body.i50.backedge ]
  %sid.095.i = phi i16 [ 0, %for.body.lr.ph.i37.lr.ph ], [ %sid.095.i.be, %for.body.i50.backedge ]
  %next_fsn.094.i = phi i32 [ 0, %for.body.lr.ph.i37.lr.ph ], [ %next_fsn.094.i.be, %for.body.i50.backedge ]
  %last_frag.093.i = phi ptr [ null, %for.body.lr.ph.i37.lr.ph ], [ %last_frag.093.i.be, %for.body.i50.backedge ]
  %first_frag.092.i = phi ptr [ null, %for.body.lr.ph.i37.lr.ph ], [ %first_frag.092.i.be, %for.body.i50.backedge ]
  %sin.091.i38 = phi ptr [ null, %for.body.lr.ph.i37.lr.ph ], [ %sin.091.i38.be, %for.body.i50.backedge ]
  %49 = ptrtoint ptr %asoc.i36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %asoc.i36, align 4
  %stream3.i39 = getelementptr inbounds %struct.sk_buff, ptr %pos.096.i, i32 0, i32 3, i32 28
  %51 = ptrtoint ptr %stream3.i39 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %stream3.i39, align 1
  %in.i.i40 = getelementptr inbounds %struct.sctp_association, ptr %50, i32 0, i32 60, i32 1
  %.frozen122 = freeze i16 %52
  %div14.i2.i.i41 = udiv i16 %.frozen122, 204
  %div14.i.zext.i.i42 = zext i16 %div14.i2.i.i41 to i32
  %mul.i.i.i43 = shl nuw nsw i32 %div14.i.zext.i.i42, 12
  %53 = mul i16 %div14.i2.i.i41, 204
  %rem.i3.i.i44.decomposed = sub i16 %.frozen122, %53
  %narrow.i.i45 = mul nuw nsw i16 %rem.i3.i.i44.decomposed, 20
  %mul15.i.i.i46 = zext i16 %narrow.i.i45 to i32
  %add.i.i.i47 = add nuw nsw i32 %mul.i.i.i43, %mul15.i.i.i46
  %call1.i.i48 = call ptr @__genradix_ptr(ptr noundef %in.i.i40, i32 noundef %add.i.i.i47) #7
  %pd_mode_uo.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i48, i32 0, i32 5
  %54 = ptrtoint ptr %pd_mode_uo.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pd_mode_uo.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i49 = icmp eq i8 %55, 0
  br i1 %tobool.not.i49, label %if.end.i53, label %for.body.i50.for.inc.i67_crit_edge

for.body.i50.for.inc.i67_crit_edge:               ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i67

if.end.i53:                                       ; preds = %for.body.i50
  %msg_flags.i51 = getelementptr inbounds %struct.sk_buff, ptr %pos.096.i, i32 0, i32 3, i32 32
  %56 = ptrtoint ptr %msg_flags.i51 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %msg_flags.i51, align 1
  %58 = and i16 %57, 3
  %and.i52 = zext i16 %58 to i32
  %59 = zext i32 %and.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and.i52, label %if.end.i53.for.inc.i67_crit_edge [
    i32 2, label %sw.bb.i55
    i32 0, label %sw.bb9.i
    i32 1, label %sw.bb26.i
  ]

if.end.i53.for.inc.i67_crit_edge:                 ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i67

sw.bb.i55:                                        ; preds = %if.end.i53
  %tobool5.not.i54 = icmp eq ptr %first_frag.092.i, null
  br i1 %tobool5.not.i54, label %if.end7.i56, label %sw.bb.i55.out.i70_crit_edge

sw.bb.i55.out.i70_crit_edge:                      ; preds = %sw.bb.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i70

if.end7.i56:                                      ; preds = %sw.bb.i55
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %stream3.i39 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %stream3.i39, align 1
  %62 = getelementptr inbounds %struct.sk_buff, ptr %pos.096.i, i32 0, i32 3, i32 12
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %62, align 1
  %mid_uo.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i48, i32 0, i32 1
  %65 = ptrtoint ptr %mid_uo.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %mid_uo.i, align 4
  br label %for.inc.i67

sw.bb9.i:                                         ; preds = %if.end.i53
  %tobool10.not.i = icmp eq ptr %first_frag.092.i, null
  br i1 %tobool10.not.i, label %sw.bb9.i.for.inc.i67_crit_edge, label %if.end12.i

sw.bb9.i.for.inc.i67_crit_edge:                   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i67

if.end12.i:                                       ; preds = %sw.bb9.i
  %66 = ptrtoint ptr %stream3.i39 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %stream3.i39, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %sid.095.i)
  %cmp16.i = icmp eq i16 %67, %sid.095.i
  br i1 %cmp16.i, label %land.lhs.true.i57, label %if.end12.i.out.i70_crit_edge

if.end12.i.out.i70_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i70

land.lhs.true.i57:                                ; preds = %if.end12.i
  %68 = getelementptr inbounds %struct.sk_buff, ptr %pos.096.i, i32 0, i32 3, i32 12
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %68, align 1
  %mid_uo18.i = getelementptr inbounds %struct.sctp_stream_in, ptr %sin.091.i38, i32 0, i32 1
  %71 = ptrtoint ptr %mid_uo18.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mid_uo18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp19.i = icmp eq i32 %70, %72
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true.i57.out.i70_crit_edge

land.lhs.true.i57.out.i70_crit_edge:              ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i70

land.lhs.true21.i:                                ; preds = %land.lhs.true.i57
  %73 = getelementptr inbounds %struct.sk_buff, ptr %pos.096.i, i32 0, i32 3, i32 16
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %73, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %next_fsn.094.i)
  %cmp22.i58 = icmp eq i32 %75, %next_fsn.094.i
  br i1 %cmp22.i58, label %if.then24.i, label %land.lhs.true21.i.out.i70_crit_edge

land.lhs.true21.i.out.i70_crit_edge:              ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i70

if.then24.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i59 = add i32 %next_fsn.094.i, 1
  br label %for.inc.i67

sw.bb26.i:                                        ; preds = %if.end.i53
  %tobool27.not.i = icmp eq ptr %first_frag.092.i, null
  br i1 %tobool27.not.i, label %sw.bb26.i.for.inc.i67_crit_edge, label %sw.bb26.i.out.i70_crit_edge

sw.bb26.i.out.i70_crit_edge:                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i70

sw.bb26.i.for.inc.i67_crit_edge:                  ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i67

for.inc.i67:                                      ; preds = %sw.bb26.i.for.inc.i67_crit_edge, %if.then24.i, %sw.bb9.i.for.inc.i67_crit_edge, %if.end7.i56, %if.end.i53.for.inc.i67_crit_edge, %for.body.i50.for.inc.i67_crit_edge
  %sin.2.i60 = phi ptr [ %sin.091.i38, %for.body.i50.for.inc.i67_crit_edge ], [ %sin.091.i38, %if.end.i53.for.inc.i67_crit_edge ], [ %sin.091.i38, %sw.bb26.i.for.inc.i67_crit_edge ], [ %sin.091.i38, %if.then24.i ], [ %sin.091.i38, %sw.bb9.i.for.inc.i67_crit_edge ], [ %call1.i.i48, %if.end7.i56 ]
  %first_frag.2.i61 = phi ptr [ %first_frag.092.i, %for.body.i50.for.inc.i67_crit_edge ], [ %first_frag.092.i, %if.end.i53.for.inc.i67_crit_edge ], [ null, %sw.bb26.i.for.inc.i67_crit_edge ], [ %first_frag.092.i, %if.then24.i ], [ null, %sw.bb9.i.for.inc.i67_crit_edge ], [ %pos.096.i, %if.end7.i56 ]
  %last_frag.2.i62 = phi ptr [ %last_frag.093.i, %for.body.i50.for.inc.i67_crit_edge ], [ %last_frag.093.i, %if.end.i53.for.inc.i67_crit_edge ], [ %last_frag.093.i, %sw.bb26.i.for.inc.i67_crit_edge ], [ %pos.096.i, %if.then24.i ], [ %last_frag.093.i, %sw.bb9.i.for.inc.i67_crit_edge ], [ %pos.096.i, %if.end7.i56 ]
  %next_fsn.2.i63 = phi i32 [ %next_fsn.094.i, %for.body.i50.for.inc.i67_crit_edge ], [ %next_fsn.094.i, %if.end.i53.for.inc.i67_crit_edge ], [ %next_fsn.094.i, %sw.bb26.i.for.inc.i67_crit_edge ], [ %inc.i59, %if.then24.i ], [ %next_fsn.094.i, %sw.bb9.i.for.inc.i67_crit_edge ], [ 0, %if.end7.i56 ]
  %sid.2.i64 = phi i16 [ %sid.095.i, %for.body.i50.for.inc.i67_crit_edge ], [ %sid.095.i, %if.end.i53.for.inc.i67_crit_edge ], [ %sid.095.i, %sw.bb26.i.for.inc.i67_crit_edge ], [ %sid.095.i, %if.then24.i ], [ %sid.095.i, %sw.bb9.i.for.inc.i67_crit_edge ], [ %61, %if.end7.i56 ]
  %76 = ptrtoint ptr %pos.096.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %pos.0.i65 = load ptr, ptr %pos.096.i, align 4
  %cmp.not.i66 = icmp eq ptr %pos.0.i65, %reasm_uo
  br i1 %cmp.not.i66, label %for.end.i68, label %for.inc.i67.for.body.i50.backedge_crit_edge

for.inc.i67.for.body.i50.backedge_crit_edge:      ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i50.backedge

for.body.i50.backedge:                            ; preds = %if.then14.for.body.i50.backedge_crit_edge, %for.inc.i67.for.body.i50.backedge_crit_edge
  %pos.096.i.be = phi ptr [ %pos.0.i65, %for.inc.i67.for.body.i50.backedge_crit_edge ], [ %pos.089.i, %if.then14.for.body.i50.backedge_crit_edge ]
  %sid.095.i.be = phi i16 [ %sid.2.i64, %for.inc.i67.for.body.i50.backedge_crit_edge ], [ 0, %if.then14.for.body.i50.backedge_crit_edge ]
  %next_fsn.094.i.be = phi i32 [ %next_fsn.2.i63, %for.inc.i67.for.body.i50.backedge_crit_edge ], [ 0, %if.then14.for.body.i50.backedge_crit_edge ]
  %last_frag.093.i.be = phi ptr [ %last_frag.2.i62, %for.inc.i67.for.body.i50.backedge_crit_edge ], [ null, %if.then14.for.body.i50.backedge_crit_edge ]
  %first_frag.092.i.be = phi ptr [ %first_frag.2.i61, %for.inc.i67.for.body.i50.backedge_crit_edge ], [ null, %if.then14.for.body.i50.backedge_crit_edge ]
  %sin.091.i38.be = phi ptr [ %sin.2.i60, %for.inc.i67.for.body.i50.backedge_crit_edge ], [ null, %if.then14.for.body.i50.backedge_crit_edge ]
  br label %for.body.i50

for.end.i68:                                      ; preds = %for.inc.i67
  %tobool31.not.i = icmp eq ptr %first_frag.2.i61, null
  br i1 %tobool31.not.i, label %for.end.i68.if.end21_crit_edge, label %for.end.i68.out.i70_crit_edge

for.end.i68.out.i70_crit_edge:                    ; preds = %for.end.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i70

for.end.i68.if.end21_crit_edge:                   ; preds = %for.end.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

out.i70:                                          ; preds = %for.end.i68.out.i70_crit_edge, %sw.bb26.i.out.i70_crit_edge, %land.lhs.true21.i.out.i70_crit_edge, %land.lhs.true.i57.out.i70_crit_edge, %if.end12.i.out.i70_crit_edge, %sw.bb.i55.out.i70_crit_edge
  %sin.088.i = phi ptr [ %sin.2.i60, %for.end.i68.out.i70_crit_edge ], [ %sin.091.i38, %sw.bb.i55.out.i70_crit_edge ], [ %sin.091.i38, %if.end12.i.out.i70_crit_edge ], [ %sin.091.i38, %land.lhs.true.i57.out.i70_crit_edge ], [ %sin.091.i38, %land.lhs.true21.i.out.i70_crit_edge ], [ %sin.091.i38, %sw.bb26.i.out.i70_crit_edge ]
  %first_frag.086.i = phi ptr [ %first_frag.2.i61, %for.end.i68.out.i70_crit_edge ], [ %first_frag.092.i, %sw.bb.i55.out.i70_crit_edge ], [ %first_frag.092.i, %if.end12.i.out.i70_crit_edge ], [ %first_frag.092.i, %land.lhs.true.i57.out.i70_crit_edge ], [ %first_frag.092.i, %land.lhs.true21.i.out.i70_crit_edge ], [ %first_frag.092.i, %sw.bb26.i.out.i70_crit_edge ]
  %last_frag.084.i = phi ptr [ %last_frag.2.i62, %for.end.i68.out.i70_crit_edge ], [ %last_frag.093.i, %sw.bb.i55.out.i70_crit_edge ], [ %last_frag.093.i, %if.end12.i.out.i70_crit_edge ], [ %last_frag.093.i, %land.lhs.true.i57.out.i70_crit_edge ], [ %last_frag.093.i, %land.lhs.true21.i.out.i70_crit_edge ], [ %last_frag.093.i, %sw.bb26.i.out.i70_crit_edge ]
  %next_fsn.082.i = phi i32 [ %next_fsn.2.i63, %for.end.i68.out.i70_crit_edge ], [ %next_fsn.094.i, %sw.bb.i55.out.i70_crit_edge ], [ %next_fsn.094.i, %if.end12.i.out.i70_crit_edge ], [ %next_fsn.094.i, %land.lhs.true.i57.out.i70_crit_edge ], [ %next_fsn.094.i, %land.lhs.true21.i.out.i70_crit_edge ], [ %next_fsn.094.i, %sw.bb26.i.out.i70_crit_edge ]
  %77 = ptrtoint ptr %asoc.i36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %asoc.i36, align 4
  %net.i69 = getelementptr inbounds %struct.sctp_ep_common, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %net.i69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net.i69, align 8
  %call36.i = call ptr @sctp_make_reassembled_event(ptr noundef %80, ptr noundef %reasm_uo, ptr noundef nonnull %first_frag.086.i, ptr noundef %last_frag.084.i) #7
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %out.i70.if.end21_crit_edge, label %if.then14

out.i70.if.end21_crit_edge:                       ; preds = %out.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then14:                                        ; preds = %out.i70
  %fsn_uo.i = getelementptr inbounds %struct.sctp_stream_in, ptr %sin.088.i, i32 0, i32 3
  %81 = ptrtoint ptr %fsn_uo.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %next_fsn.082.i, ptr %fsn_uo.i, align 4
  %pd_mode_uo39.i = getelementptr inbounds %struct.sctp_stream_in, ptr %sin.088.i, i32 0, i32 5
  %82 = ptrtoint ptr %pd_mode_uo39.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %pd_mode_uo39.i, align 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i72, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %83 = ptrtoint ptr %qlen.i.i74 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %qlen.i.i74, align 4
  %add.ptr.i75 = getelementptr i8, ptr %call36.i, i32 -24
  %84 = ptrtoint ptr %add.ptr.i75 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %temp, ptr %add.ptr.i75, align 8
  %prev10.i.i.i77 = getelementptr i8, ptr %call36.i, i32 -20
  %85 = ptrtoint ptr %prev10.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %temp, ptr %prev10.i.i.i77, align 4
  %86 = ptrtoint ptr %prev.i.i73 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %add.ptr.i75, ptr %prev.i.i73, align 4
  %87 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %add.ptr.i75, ptr %temp, align 4
  %88 = load i32, ptr %qlen.i.i74, align 4
  %add.i.i.i79 = add i32 %88, 1
  store volatile i32 %add.i.i.i79, ptr %qlen.i.i74, align 4
  %call16 = call fastcc i32 @sctp_enqueue_event(ptr noundef %ulpq, ptr noundef nonnull %temp)
  %89 = ptrtoint ptr %reasm_uo to i32
  call void @__asan_load4_noabort(i32 %89)
  %pos.089.i = load ptr, ptr %reasm_uo, align 4
  %cmp.not90.i = icmp eq ptr %pos.089.i, %reasm_uo
  br i1 %cmp.not90.i, label %if.then14.if.end21_crit_edge, label %if.then14.for.body.i50.backedge_crit_edge

if.then14.for.body.i50.backedge_crit_edge:        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i50.backedge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.then14.if.end21_crit_edge, %out.i70.if.end21_crit_edge, %for.end.i68.if.end21_crit_edge, %do.body11.preheader.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_intl_abort_pd(ptr noundef %ulpq, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %incnt = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 3
  %2 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %incnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp61.not = icmp eq i16 %3, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end9.for.body_crit_edge ]
  %4 = trunc i32 %indvars.iv to i16
  %.frozen = freeze i16 %4
  %div14.i2.i = udiv i16 %.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %5 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %.frozen, %5
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #7
  %pd_mode_uo = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i, i32 0, i32 5
  %6 = ptrtoint ptr %pd_mode_uo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pd_mode_uo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %pd_mode_uo to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pd_mode_uo, align 1
  %9 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asoc, align 4
  %sk1.i = getelementptr inbounds %struct.sctp_ep_common, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk1.i, align 4
  %subscribe.i = getelementptr inbounds %struct.sctp_association, ptr %10, i32 0, i32 87
  %13 = ptrtoint ptr %subscribe.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subscribe.i, align 4
  %15 = and i16 %14, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not.i = icmp eq i16 %15, 0
  br i1 %tobool.i.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %mid_uo = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %mid_uo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mid_uo, align 4
  %call5.i = tail call ptr @sctp_ulpevent_make_pdapi(ptr noundef %10, i32 noundef 0, i32 noundef %indvars.iv, i32 noundef %17, i32 noundef 1, i32 noundef %gfp) #7
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then6.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6.i:                                       ; preds = %if.end.i
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 8
  %add.ptr.i.i = getelementptr i8, ptr %call5.i, i32 -24
  %prev.i.i.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 8, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %sk_receive_queue.i, ptr %add.ptr.i.i, align 8
  %prev10.i.i.i.i = getelementptr i8, ptr %call5.i, i32 -20
  %21 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %add.ptr.i.i, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %add.ptr.i.i, ptr %19, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %data_ready_signalled.i = getelementptr inbounds %struct.sctp_sock, ptr %12, i32 0, i32 37
  %25 = ptrtoint ptr %data_ready_signalled.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %data_ready_signalled.i, align 8
  %26 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool9.not.i = icmp eq i16 %26, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then6.i.if.end_crit_edge

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.i = or i16 %bf.load.i, 64
  %27 = ptrtoint ptr %data_ready_signalled.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %bf.set.i, ptr %data_ready_signalled.i, align 8
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 77
  %28 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_data_ready.i, align 8
  tail call void %29(ptr noundef %12) #7
  br label %if.end

if.end:                                           ; preds = %if.then10.i, %if.then6.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %for.body.if.end_crit_edge
  %pd_mode = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i, i32 0, i32 4
  %30 = ptrtoint ptr %pd_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not = icmp eq i8 %31, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  %32 = ptrtoint ptr %pd_mode to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %pd_mode, align 4
  %33 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call1.i, align 4
  %35 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %asoc, align 4
  %sk1.i31 = getelementptr inbounds %struct.sctp_ep_common, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %sk1.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk1.i31, align 4
  %subscribe.i32 = getelementptr inbounds %struct.sctp_association, ptr %36, i32 0, i32 87
  %39 = ptrtoint ptr %subscribe.i32 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %subscribe.i32, align 4
  %41 = and i16 %40, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.i.not.i33 = icmp eq i16 %41, 0
  br i1 %tobool.i.not.i33, label %if.then6.sctp_intl_stream_abort_pd.exit51_crit_edge, label %if.end.i37

if.then6.sctp_intl_stream_abort_pd.exit51_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_stream_abort_pd.exit51

if.end.i37:                                       ; preds = %if.then6
  %call5.i35 = tail call ptr @sctp_ulpevent_make_pdapi(ptr noundef %36, i32 noundef 0, i32 noundef %indvars.iv, i32 noundef %34, i32 noundef 0, i32 noundef %gfp) #7
  %tobool.not.i36 = icmp eq ptr %call5.i35, null
  br i1 %tobool.not.i36, label %if.end.i37.sctp_intl_stream_abort_pd.exit51_crit_edge, label %if.then6.i47

if.end.i37.sctp_intl_stream_abort_pd.exit51_crit_edge: ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_stream_abort_pd.exit51

if.then6.i47:                                     ; preds = %if.end.i37
  %sk_receive_queue.i38 = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 8
  %add.ptr.i.i39 = getelementptr i8, ptr %call5.i35, i32 -24
  %prev.i.i.i40 = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 8, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i40, align 4
  %44 = ptrtoint ptr %add.ptr.i.i39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %sk_receive_queue.i38, ptr %add.ptr.i.i39, align 8
  %prev10.i.i.i.i41 = getelementptr i8, ptr %call5.i35, i32 -20
  %45 = ptrtoint ptr %prev10.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %prev10.i.i.i.i41, align 4
  store volatile ptr %add.ptr.i.i39, ptr %prev.i.i.i40, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %add.ptr.i.i39, ptr %43, align 4
  %qlen.i.i.i.i42 = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %qlen.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qlen.i.i.i.i42, align 4
  %add.i.i.i.i43 = add i32 %48, 1
  store volatile i32 %add.i.i.i.i43, ptr %qlen.i.i.i.i42, align 4
  %data_ready_signalled.i44 = getelementptr inbounds %struct.sctp_sock, ptr %38, i32 0, i32 37
  %49 = ptrtoint ptr %data_ready_signalled.i44 to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i45 = load i16, ptr %data_ready_signalled.i44, align 8
  %50 = and i16 %bf.load.i45, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool9.not.i46 = icmp eq i16 %50, 0
  br i1 %tobool9.not.i46, label %if.then10.i50, label %if.then6.i47.sctp_intl_stream_abort_pd.exit51_crit_edge

if.then6.i47.sctp_intl_stream_abort_pd.exit51_crit_edge: ; preds = %if.then6.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_stream_abort_pd.exit51

if.then10.i50:                                    ; preds = %if.then6.i47
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.i48 = or i16 %bf.load.i45, 64
  %51 = ptrtoint ptr %data_ready_signalled.i44 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %bf.set.i48, ptr %data_ready_signalled.i44, align 8
  %sk_data_ready.i49 = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 77
  %52 = ptrtoint ptr %sk_data_ready.i49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk_data_ready.i49, align 8
  tail call void %53(ptr noundef %38) #7
  br label %sctp_intl_stream_abort_pd.exit51

sctp_intl_stream_abort_pd.exit51:                 ; preds = %if.then10.i50, %if.then6.i47.sctp_intl_stream_abort_pd.exit51_crit_edge, %if.end.i37.sctp_intl_stream_abort_pd.exit51_crit_edge, %if.then6.sctp_intl_stream_abort_pd.exit51_crit_edge
  %add = add i32 %34, 1
  %call1.i60 = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #7
  %54 = ptrtoint ptr %call1.i60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add, ptr %call1.i60, align 4
  tail call fastcc void @sctp_intl_reap_ordered(ptr noundef %ulpq, i16 noundef zeroext %4)
  br label %if.end9

if.end9:                                          ; preds = %sctp_intl_stream_abort_pd.exit51, %if.end.if.end9_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %55 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %incnt, align 2
  %57 = zext i16 %56 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %57
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @sctp_ulpq_flush(ptr noundef %ulpq) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_generate_iftsn(ptr noundef %q, i32 noundef %ctsn) #2 align 64 {
entry:
  %ftsn_skip_arr = alloca [10 x %struct.sctp_ifwdtsn_skip], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ftsn_skip_arr) #7
  %0 = call ptr @memset(ptr %ftsn_skip_arr, i32 255, i32 80)
  %1 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q, align 4
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %2, i32 0, i32 5, i32 12
  %3 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %prsctp_capable, align 2
  %4 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup105_crit_edge, label %if.end

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end:                                           ; preds = %entry
  %adv_peer_ack_point = getelementptr inbounds %struct.sctp_association, ptr %2, i32 0, i32 37
  %5 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %adv_peer_ack_point, align 8
  %sub = sub i32 %6, %ctsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ctsn, ptr %adv_peer_ack_point, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %abandoned = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8
  %8 = ptrtoint ptr %abandoned to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %abandoned, align 4
  %cmp.i.not157 = icmp eq ptr %9, %abandoned
  br i1 %cmp.i.not157, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %lchunk.0161 = phi ptr [ %temp.0163, %for.inc.for.body_crit_edge ], [ %9, %if.end4.for.body_crit_edge ]
  %nskips.0158 = phi i32 [ %nskips.2, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %10 = ptrtoint ptr %lchunk.0161 to i32
  call void @__asan_load4_noabort(i32 %10)
  %temp.0163 = load ptr, ptr %lchunk.0161, align 4
  %subh = getelementptr i8, ptr %lchunk.0161, i32 28
  %11 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subh, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %sub9 = sub i32 %14, %ctsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9)
  %cmp10 = icmp slt i32 %sub9, 1
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %lchunk.0161, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lchunk.0161) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del_init.exit_crit_edge

if.then11.list_del_init.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0161, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %lchunk.0161 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lchunk.0161, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then11.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %lchunk.0161 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %lchunk.0161, ptr %lchunk.0161, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0161, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lchunk.0161, ptr %prev.i3.i, align 4
  tail call void @sctp_chunk_free(ptr noundef %add.ptr) #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %23 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %adv_peer_ack_point, align 8
  %add.neg = xor i32 %24, -1
  %sub13 = add i32 %14, %add.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub13)
  %cmp14 = icmp slt i32 %sub13, 1
  br i1 %cmp14, label %if.then15, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then15:                                        ; preds = %if.else
  %stream = getelementptr inbounds %struct.sctp_idatahdr, ptr %12, i32 0, i32 1
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %stream, align 4
  %mid18 = getelementptr inbounds %struct.sctp_idatahdr, ptr %12, i32 0, i32 3
  %27 = ptrtoint ptr %mid18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mid18, align 4
  %chunk_hdr = getelementptr i8, ptr %lchunk.0161, i32 36
  %29 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chunk_hdr, align 4
  %flags19 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %flags19 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags19, align 1
  %33 = lshr i8 %32, 2
  %.lobit = and i8 %33, 1
  %34 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %14, ptr %adv_peer_ack_point, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nskips.0158)
  %cmp17.i = icmp sgt i32 %nskips.0158, 0
  br i1 %cmp17.i, label %if.then15.for.body.i_crit_edge, label %if.then15.sctp_get_skip_pos.exit_crit_edge

if.then15.sctp_get_skip_pos.exit_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_get_skip_pos.exit

if.then15.for.body.i_crit_edge:                   ; preds = %if.then15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then15.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then15.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sctp_ifwdtsn_skip, ptr %ftsn_skip_arr, i32 %i.018.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %26)
  %cmp3.i = icmp eq i16 %36, %26
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags6.i = getelementptr %struct.sctp_ifwdtsn_skip, ptr %ftsn_skip_arr, i32 %i.018.i, i32 2
  %37 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %.lobit)
  %cmp9.i = icmp eq i8 %38, %.lobit
  br i1 %cmp9.i, label %land.lhs.true.i.sctp_get_skip_pos.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.sctp_get_skip_pos.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_get_skip_pos.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nskips.0158
  br i1 %exitcond.not.i, label %for.inc.i.sctp_get_skip_pos.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.sctp_get_skip_pos.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_get_skip_pos.exit

sctp_get_skip_pos.exit:                           ; preds = %for.inc.i.sctp_get_skip_pos.exit_crit_edge, %land.lhs.true.i.sctp_get_skip_pos.exit_crit_edge, %if.then15.sctp_get_skip_pos.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then15.sctp_get_skip_pos.exit_crit_edge ], [ %i.018.i, %land.lhs.true.i.sctp_get_skip_pos.exit_crit_edge ], [ %nskips.0158, %for.inc.i.sctp_get_skip_pos.exit_crit_edge ]
  %arrayidx27 = getelementptr [10 x %struct.sctp_ifwdtsn_skip], ptr %ftsn_skip_arr, i32 0, i32 %i.0.lcssa.i
  %39 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %26, ptr %arrayidx27, align 4
  %reserved = getelementptr [10 x %struct.sctp_ifwdtsn_skip], ptr %ftsn_skip_arr, i32 0, i32 %i.0.lcssa.i, i32 1
  %40 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %reserved, align 2
  %flags31 = getelementptr [10 x %struct.sctp_ifwdtsn_skip], ptr %ftsn_skip_arr, i32 0, i32 %i.0.lcssa.i, i32 2
  %41 = ptrtoint ptr %flags31 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.lobit, ptr %flags31, align 1
  %mid33 = getelementptr [10 x %struct.sctp_ifwdtsn_skip], ptr %ftsn_skip_arr, i32 0, i32 %i.0.lcssa.i, i32 3
  %42 = ptrtoint ptr %mid33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %28, ptr %mid33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %nskips.0158)
  %cmp34 = icmp eq i32 %i.0.lcssa.i, %nskips.0158
  %inc = zext i1 %cmp34 to i32
  %nskips.1 = add i32 %nskips.0158, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %nskips.1)
  %cmp38 = icmp eq i32 %nskips.1, 10
  br i1 %cmp38, label %sctp_get_skip_pos.exit.for.end_crit_edge, label %sctp_get_skip_pos.exit.for.inc_crit_edge

sctp_get_skip_pos.exit.for.inc_crit_edge:         ; preds = %sctp_get_skip_pos.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sctp_get_skip_pos.exit.for.end_crit_edge:         ; preds = %sctp_get_skip_pos.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %sctp_get_skip_pos.exit.for.inc_crit_edge, %list_del_init.exit
  %nskips.2 = phi i32 [ %nskips.0158, %list_del_init.exit ], [ %nskips.1, %sctp_get_skip_pos.exit.for.inc_crit_edge ]
  %cmp.i.not = icmp eq ptr %temp.0163, %abandoned
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sctp_get_skip_pos.exit.for.end_crit_edge, %if.else.for.end_crit_edge, %if.end4.for.end_crit_edge
  %nskips.3 = phi i32 [ 0, %if.end4.for.end_crit_edge ], [ 10, %sctp_get_skip_pos.exit.for.end_crit_edge ], [ %nskips.0158, %if.else.for.end_crit_edge ], [ %nskips.2, %for.inc.for.end_crit_edge ]
  %43 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %adv_peer_ack_point, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %ctsn)
  %cmp49 = icmp ugt i32 %44, %ctsn
  br i1 %cmp49, label %if.end55, label %for.end.cleanup105_crit_edge

for.end.cleanup105_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end55:                                         ; preds = %for.end
  %call54 = call ptr @sctp_make_ifwdtsn(ptr noundef %2, i32 noundef %44, i32 noundef %nskips.3, ptr noundef nonnull %ftsn_skip_arr) #7
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.end55.cleanup105_crit_edge, label %if.then57

if.end55.cleanup105_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.then57:                                        ; preds = %if.end55
  %control_chunk_list = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i152 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call54, ptr noundef %46, ptr noundef %control_chunk_list) #7
  br i1 %call.i.i152, label %if.end.i.i153, label %if.then57.list_add_tail.exit_crit_edge

if.then57.list_add_tail.exit_crit_edge:           ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i153:                                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call54, ptr %prev.i, align 4
  %48 = ptrtoint ptr %call54 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %control_chunk_list, ptr %call54, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call54, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call54, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i153, %if.then57.list_add_tail.exit_crit_edge
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !18
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %2, i32 0, i32 4
  %52 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net, align 8
  %sctp = getelementptr inbounds %struct.net, ptr %53, i32 0, i32 38
  %54 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sctp, align 8
  %arrayidx73 = getelementptr [34 x i32], ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %arrayidx73 to i32
  %57 = call i32 @llvm.read_register.i32(metadata !7) #7
  %and.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu, align 4
  %arrayidx76 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx76, align 4
  %add77 = add i32 %62, %56
  %63 = inttoptr i32 %add77 to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add78 = add i32 %65, 1
  store i32 %add78, ptr %63, align 4
  %66 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !19
  %and.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool89.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool89.not, label %if.then94, label %list_add_tail.exit.do.end97_crit_edge, !prof !20

list_add_tail.exit.do.end97_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

if.then94:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %list_add_tail.exit.do.end97_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #7, !srcloc !21
  br label %cleanup105

cleanup105:                                       ; preds = %do.end97, %if.end55.cleanup105_crit_edge, %for.end.cleanup105_crit_edge, %entry.cleanup105_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ftsn_skip_arr) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sctp_validate_iftsn(ptr nocapture noundef readonly %chunk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %3)
  %cmp.not = icmp eq i8 %3, -62
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %4 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc, align 4
  %incnt2 = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 60, i32 3
  %6 = ptrtoint ptr %incnt2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %incnt2, align 2
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %8 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subh, align 4
  %skip3 = getelementptr inbounds %struct.sctp_ifwdtsn_hdr, ptr %9, i32 0, i32 1
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length, align 2
  %conv8 = zext i16 %11 to i32
  %sub = add nsw i32 %conv8, -8
  %add.ptr = getelementptr i8, ptr %skip3, i32 %sub
  %cmp925 = icmp ult ptr %skip3, %add.ptr
  br i1 %cmp925, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %skip.026 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %skip3, %if.end.for.body_crit_edge ]
  %12 = ptrtoint ptr %skip.026 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %skip.026, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %7)
  %cmp14.not = icmp ult i16 %13, %7
  %incdec.ptr = getelementptr %struct.sctp_ifwdtsn_skip, ptr %skip.026, i32 1
  %cmp9 = icmp ult ptr %incdec.ptr, %add.ptr
  %or.cond = select i1 %cmp14.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %cmp14.not, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_report_iftsn(ptr noundef %ulpq, i32 noundef %ftsn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 10
  tail call void @sctp_tsnmap_skip(ptr noundef %tsn_map, i32 noundef %ftsn) #7
  %reasm.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %2 = ptrtoint ptr %reasm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reasm.i, align 4
  %cmp.not49.i = icmp eq ptr %3, %reasm.i
  br i1 %cmp.not49.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.050.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %tmp.051.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %pos.050.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.051.i = load ptr, ptr %pos.050.i, align 8
  %tsn3.i = getelementptr inbounds %struct.sk_buff, ptr %pos.050.i, i32 0, i32 3, i32 20
  %5 = ptrtoint ptr %tsn3.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %tsn3.i, align 1
  %sub.i = sub i32 %6, %ftsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 1
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.050.i, i32 0, i32 3
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %9 = ptrtoint ptr %pos.050.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pos.050.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.10, ptr %pos.050.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %pos.050.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.10, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.051.i, %reasm.i
  br i1 %cmp.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %reasm_uo.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3
  %15 = ptrtoint ptr %reasm_uo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reasm_uo.i, align 4
  %cmp11.not53.i = icmp eq ptr %16, %reasm_uo.i
  br i1 %cmp11.not53.i, label %for.end.i.sctp_intl_reasm_flushtsn.exit_crit_edge, label %for.body12.lr.ph.i

for.end.i.sctp_intl_reasm_flushtsn.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_reasm_flushtsn.exit

for.body12.lr.ph.i:                               ; preds = %for.end.i
  %qlen.i44.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3, i32 1
  br label %for.body12.i

for.body12.i:                                     ; preds = %if.end21.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %pos.154.i = phi ptr [ %16, %for.body12.lr.ph.i ], [ %tmp.155.i, %if.end21.i.for.body12.i_crit_edge ]
  %17 = ptrtoint ptr %pos.154.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp.155.i = load ptr, ptr %pos.154.i, align 8
  %tsn16.i = getelementptr inbounds %struct.sk_buff, ptr %pos.154.i, i32 0, i32 3, i32 20
  %18 = ptrtoint ptr %tsn16.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %tsn16.i, align 1
  %sub17.i = sub i32 %19, %ftsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub17.i)
  %cmp18.i = icmp slt i32 %sub17.i, 1
  br i1 %cmp18.i, label %if.then19.i, label %for.body12.i.if.end21.i_crit_edge

for.body12.i.if.end21.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then19.i:                                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb.i43.i = getelementptr inbounds %struct.sk_buff, ptr %pos.154.i, i32 0, i32 3
  %20 = ptrtoint ptr %qlen.i44.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i44.i, align 4
  %sub.i45.i = add i32 %21, -1
  store volatile i32 %sub.i45.i, ptr %qlen.i44.i, align 4
  %22 = ptrtoint ptr %pos.154.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pos.154.i, align 8
  %prev9.i46.i = getelementptr inbounds %struct.anon.10, ptr %pos.154.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev9.i46.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev9.i46.i, align 4
  store ptr null, ptr %prev9.i46.i, align 4
  store ptr null, ptr %pos.154.i, align 8
  %prev17.i47.i = getelementptr inbounds %struct.anon.10, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev17.i47.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %prev17.i47.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %25, align 8
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i43.i) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %for.body12.i.if.end21.i_crit_edge
  %cmp11.not.i = icmp eq ptr %tmp.155.i, %reasm_uo.i
  br i1 %cmp11.not.i, label %if.end21.i.sctp_intl_reasm_flushtsn.exit_crit_edge, label %if.end21.i.for.body12.i_crit_edge

if.end21.i.for.body12.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.i

if.end21.i.sctp_intl_reasm_flushtsn.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_reasm_flushtsn.exit

sctp_intl_reasm_flushtsn.exit:                    ; preds = %if.end21.i.sctp_intl_reasm_flushtsn.exit_crit_edge, %for.end.i.sctp_intl_reasm_flushtsn.exit_crit_edge
  %28 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asoc, align 4
  %max_tsn_seen.i = getelementptr inbounds %struct.sctp_association, ptr %29, i32 0, i32 5, i32 10, i32 3
  %30 = ptrtoint ptr %max_tsn_seen.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_tsn_seen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %ftsn)
  %cmp = icmp eq i32 %31, %ftsn
  br i1 %cmp, label %if.then, label %sctp_intl_reasm_flushtsn.exit.if.end_crit_edge

sctp_intl_reasm_flushtsn.exit.if.end_crit_edge:   ; preds = %sctp_intl_reasm_flushtsn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sctp_intl_reasm_flushtsn.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sctp_intl_abort_pd(ptr noundef %ulpq, i32 noundef 2592)
  br label %if.end

if.end:                                           ; preds = %if.then, %sctp_intl_reasm_flushtsn.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_handle_iftsn(ptr noundef %ulpq, ptr nocapture noundef readonly %chunk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %0 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subh, align 4
  %skip1 = getelementptr inbounds %struct.sctp_ifwdtsn_hdr, ptr %1, i32 0, i32 1
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %2 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_hdr, align 4
  %length13 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %length13 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length13, align 2
  %conv14 = zext i16 %5 to i32
  %sub15 = add nsw i32 %conv14, -8
  %add.ptr16 = getelementptr i8, ptr %skip1, i32 %sub15
  %cmp17 = icmp ult ptr %skip1, %add.ptr16
  br i1 %cmp17, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %asoc.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %sctp_intl_skip.exit.for.body_crit_edge, %for.body.lr.ph
  %skip.018 = phi ptr [ %skip1, %for.body.lr.ph ], [ %incdec.ptr, %sctp_intl_skip.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %skip.018 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skip.018, align 4
  %mid = getelementptr inbounds %struct.sctp_ifwdtsn_skip, ptr %skip.018, i32 0, i32 3
  %8 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mid, align 4
  %flags = getelementptr inbounds %struct.sctp_ifwdtsn_skip, ptr %skip.018, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 1
  %12 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asoc.i, align 4
  %in.i.i = getelementptr inbounds %struct.sctp_association, ptr %13, i32 0, i32 60, i32 1
  %.frozen = freeze i16 %7
  %div14.i2.i.i = udiv i16 %.frozen, 204
  %div14.i.zext.i.i = zext i16 %div14.i2.i.i to i32
  %mul.i.i.i = shl nuw nsw i32 %div14.i.zext.i.i, 12
  %14 = mul i16 %div14.i2.i.i, 204
  %rem.i3.i.i.decomposed = sub i16 %.frozen, %14
  %narrow.i.i = mul nuw nsw i16 %rem.i3.i.i.decomposed, 20
  %mul15.i.i.i = zext i16 %narrow.i.i to i32
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %mul15.i.i.i
  %call1.i.i = tail call ptr @__genradix_ptr(ptr noundef %in.i.i, i32 noundef %add.i.i.i) #7
  %15 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %pd_mode_uo.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %pd_mode_uo.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pd_mode_uo.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  br i1 %tobool5.not.i, label %if.then.i.sctp_intl_skip.exit_crit_edge, label %land.lhs.true.i

if.then.i.sctp_intl_skip.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_skip.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %mid_uo.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %mid_uo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mid_uo.i, align 4
  %sub.i = sub i32 %19, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then7.i, label %land.lhs.true.i.sctp_intl_skip.exit_crit_edge

land.lhs.true.i.sctp_intl_skip.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_skip.exit

if.then7.i:                                       ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %pd_mode_uo.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pd_mode_uo.i, align 1
  %21 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %asoc.i, align 4
  %sk1.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk1.i.i, align 4
  %subscribe.i.i = getelementptr inbounds %struct.sctp_association, ptr %22, i32 0, i32 87
  %25 = ptrtoint ptr %subscribe.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subscribe.i.i, align 4
  %27 = and i16 %26, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.i.not.i.i = icmp eq i16 %27, 0
  br i1 %tobool.i.not.i.i, label %if.then7.i.sctp_intl_skip.exit_crit_edge, label %if.end.i.i

if.then7.i.sctp_intl_skip.exit_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_skip.exit

if.end.i.i:                                       ; preds = %if.then7.i
  %conv.i.i = zext i16 %7 to i32
  %call5.i.i = tail call ptr @sctp_ulpevent_make_pdapi(ptr noundef %22, i32 noundef 0, i32 noundef %conv.i.i, i32 noundef %9, i32 noundef 1, i32 noundef 2592) #7
  %tobool.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.sctp_intl_skip.exit_crit_edge, label %if.then6.i.i

if.end.i.i.sctp_intl_skip.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_skip.exit

if.then6.i.i:                                     ; preds = %if.end.i.i
  %sk_receive_queue.i.i = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 8
  %add.ptr.i.i.i = getelementptr i8, ptr %call5.i.i, i32 -24
  %prev.i.i.i.i = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 8, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i.i, align 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %sk_receive_queue.i.i, ptr %add.ptr.i.i.i, align 8
  %prev10.i.i.i.i.i = getelementptr i8, ptr %call5.i.i, i32 -20
  %31 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %prev10.i.i.i.i.i, align 4
  store volatile ptr %add.ptr.i.i.i, ptr %prev.i.i.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %add.ptr.i.i.i, ptr %29, align 4
  %qlen.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %qlen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i.i.i, align 4
  %data_ready_signalled.i.i = getelementptr inbounds %struct.sctp_sock, ptr %24, i32 0, i32 37
  %35 = ptrtoint ptr %data_ready_signalled.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i.i = load i16, ptr %data_ready_signalled.i.i, align 8
  %36 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool9.not.i.i = icmp eq i16 %36, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.then6.i.i.sctp_intl_skip.exit_crit_edge

if.then6.i.i.sctp_intl_skip.exit_crit_edge:       ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_skip.exit

if.then10.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.i.i = or i16 %bf.load.i.i, 64
  %37 = ptrtoint ptr %data_ready_signalled.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %bf.set.i.i, ptr %data_ready_signalled.i.i, align 8
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 77
  %38 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk_data_ready.i.i, align 8
  tail call void %39(ptr noundef %24) #7
  br label %sctp_intl_skip.exit

if.end9.i:                                        ; preds = %for.body
  %40 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asoc.i, align 4
  %in.i40.i = getelementptr inbounds %struct.sctp_association, ptr %41, i32 0, i32 60, i32 1
  %call1.i48.i = tail call ptr @__genradix_ptr(ptr noundef %in.i40.i, i32 noundef %add.i.i.i) #7
  %42 = ptrtoint ptr %call1.i48.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call1.i48.i, align 4
  %sub11.i = sub i32 %9, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.i)
  %cmp12.i = icmp slt i32 %sub11.i, 0
  br i1 %cmp12.i, label %if.end9.i.sctp_intl_skip.exit_crit_edge, label %if.end15.i

if.end9.i.sctp_intl_skip.exit_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_intl_skip.exit

if.end15.i:                                       ; preds = %if.end9.i
  %pd_mode.i = getelementptr inbounds %struct.sctp_stream_in, ptr %call1.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %pd_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pd_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool16.not.i = icmp eq i8 %45, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end19.i_crit_edge, label %if.then17.i

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end15.i
  %46 = ptrtoint ptr %pd_mode.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %pd_mode.i, align 4
  %47 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %asoc.i, align 4
  %sk1.i50.i = getelementptr inbounds %struct.sctp_ep_common, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %sk1.i50.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk1.i50.i, align 4
  %subscribe.i51.i = getelementptr inbounds %struct.sctp_association, ptr %48, i32 0, i32 87
  %51 = ptrtoint ptr %subscribe.i51.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %subscribe.i51.i, align 4
  %53 = and i16 %52, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.i.not.i52.i = icmp eq i16 %53, 0
  br i1 %tobool.i.not.i52.i, label %if.then17.i.if.end19.i_crit_edge, label %if.end.i56.i

if.then17.i.if.end19.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.end.i56.i:                                     ; preds = %if.then17.i
  %conv.i53.i = zext i16 %7 to i32
  %call5.i54.i = tail call ptr @sctp_ulpevent_make_pdapi(ptr noundef %48, i32 noundef 0, i32 noundef %conv.i53.i, i32 noundef %9, i32 noundef 0, i32 noundef 2592) #7
  %tobool.not.i55.i = icmp eq ptr %call5.i54.i, null
  br i1 %tobool.not.i55.i, label %if.end.i56.i.if.end19.i_crit_edge, label %if.then6.i66.i

if.end.i56.i.if.end19.i_crit_edge:                ; preds = %if.end.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then6.i66.i:                                   ; preds = %if.end.i56.i
  %sk_receive_queue.i57.i = getelementptr inbounds %struct.sock, ptr %50, i32 0, i32 8
  %add.ptr.i.i58.i = getelementptr i8, ptr %call5.i54.i, i32 -24
  %prev.i.i.i59.i = getelementptr inbounds %struct.sock, ptr %50, i32 0, i32 8, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i59.i, align 4
  %56 = ptrtoint ptr %add.ptr.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %sk_receive_queue.i57.i, ptr %add.ptr.i.i58.i, align 8
  %prev10.i.i.i.i60.i = getelementptr i8, ptr %call5.i54.i, i32 -20
  %57 = ptrtoint ptr %prev10.i.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %prev10.i.i.i.i60.i, align 4
  store volatile ptr %add.ptr.i.i58.i, ptr %prev.i.i.i59.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %add.ptr.i.i58.i, ptr %55, align 4
  %qlen.i.i.i.i61.i = getelementptr inbounds %struct.sock, ptr %50, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %qlen.i.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qlen.i.i.i.i61.i, align 4
  %add.i.i.i.i62.i = add i32 %60, 1
  store volatile i32 %add.i.i.i.i62.i, ptr %qlen.i.i.i.i61.i, align 4
  %data_ready_signalled.i63.i = getelementptr inbounds %struct.sctp_sock, ptr %50, i32 0, i32 37
  %61 = ptrtoint ptr %data_ready_signalled.i63.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i64.i = load i16, ptr %data_ready_signalled.i63.i, align 8
  %62 = and i16 %bf.load.i64.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool9.not.i65.i = icmp eq i16 %62, 0
  br i1 %tobool9.not.i65.i, label %if.then10.i69.i, label %if.then6.i66.i.if.end19.i_crit_edge

if.then6.i66.i.if.end19.i_crit_edge:              ; preds = %if.then6.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then10.i69.i:                                  ; preds = %if.then6.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.i67.i = or i16 %bf.load.i64.i, 64
  %63 = ptrtoint ptr %data_ready_signalled.i63.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %bf.set.i67.i, ptr %data_ready_signalled.i63.i, align 8
  %sk_data_ready.i68.i = getelementptr inbounds %struct.sock, ptr %50, i32 0, i32 77
  %64 = ptrtoint ptr %sk_data_ready.i68.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sk_data_ready.i68.i, align 8
  tail call void %65(ptr noundef %50) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then10.i69.i, %if.then6.i66.i.if.end19.i_crit_edge, %if.end.i56.i.if.end19.i_crit_edge, %if.then17.i.if.end19.i_crit_edge, %if.end15.i.if.end19.i_crit_edge
  %add.i = add i32 %9, 1
  %call1.i79.i = tail call ptr @__genradix_ptr(ptr noundef %in.i40.i, i32 noundef %add.i.i.i) #7
  %66 = ptrtoint ptr %call1.i79.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i, ptr %call1.i79.i, align 4
  tail call fastcc void @sctp_intl_reap_ordered(ptr noundef %ulpq, i16 noundef zeroext %7) #7
  br label %sctp_intl_skip.exit

sctp_intl_skip.exit:                              ; preds = %if.end19.i, %if.end9.i.sctp_intl_skip.exit_crit_edge, %if.then10.i.i, %if.then6.i.i.sctp_intl_skip.exit_crit_edge, %if.end.i.i.sctp_intl_skip.exit_crit_edge, %if.then7.i.sctp_intl_skip.exit_crit_edge, %land.lhs.true.i.sctp_intl_skip.exit_crit_edge, %if.then.i.sctp_intl_skip.exit_crit_edge
  %incdec.ptr = getelementptr %struct.sctp_ifwdtsn_skip, ptr %skip.018, i32 1
  %67 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %subh, align 4
  %skip3 = getelementptr inbounds %struct.sctp_ifwdtsn_hdr, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %length, align 2
  %conv = zext i16 %72 to i32
  %sub = add nsw i32 %conv, -8
  %add.ptr = getelementptr i8, ptr %skip3, i32 %sub
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %sctp_intl_skip.exit.for.body_crit_edge, label %sctp_intl_skip.exit.for.end_crit_edge

sctp_intl_skip.exit.for.end_crit_edge:            ; preds = %sctp_intl_skip.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sctp_intl_skip.exit.for.body_crit_edge:           ; preds = %sctp_intl_skip.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %sctp_intl_skip.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_idata(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_addto_chunk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_rcvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_enqueue_event(ptr nocapture noundef readonly %ulpq, ptr noundef %skb_list) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 4
  %4 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_list, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 66
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sk_shutdown, align 2
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %land.lhs.true.out_free_crit_edge

land.lhs.true.out_free_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call8 = tail call i32 @sctp_ulpevent_is_notification(ptr noundef %cb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false.out_free_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call10 = tail call i32 @sctp_ulpevent_is_notification(ptr noundef %cb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end
  %sk_napi_id.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sk_napi_id.i, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 11
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp.not.i = icmp eq i32 %9, %12
  br i1 %cmp.not.i, label %if.then12.if.end.i_crit_edge, label %do.body5.i, !prof !17

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body5.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %12, ptr %sk_napi_id.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body5.i, %if.then12.if.end.i_crit_edge
  %queue_mapping.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %queue_mapping.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %queue_mapping.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.not.i.i.i = icmp eq i16 %15, 0
  br i1 %cmp.i.not.i.i.i, label %if.end.i.sk_mark_napi_id.exit_crit_edge, label %if.then.i.i.i

if.end.i.sk_mark_napi_id.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_mark_napi_id.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  %sub.i.i.i.i = add i16 %15, -1
  %skc_rx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 17
  %16 = ptrtoint ptr %skc_rx_queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load volatile i16, ptr %skc_rx_queue_mapping.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i16 %17, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.then.i.i.i.sk_mark_napi_id.exit_crit_edge, label %do.body11.i.i.i, !prof !17

if.then.i.i.i.sk_mark_napi_id.exit_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_mark_napi_id.exit

do.body11.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %skc_rx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store volatile i16 %sub.i.i.i.i, ptr %skc_rx_queue_mapping.i.i.i, align 2
  br label %sk_mark_napi_id.exit

sk_mark_napi_id.exit:                             ; preds = %do.body11.i.i.i, %if.then.i.i.i.sk_mark_napi_id.exit_crit_edge, %if.end.i.sk_mark_napi_id.exit_crit_edge
  %19 = tail call i32 @llvm.read_register.i32(metadata !7) #7
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu1.i, align 4
  %23 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 18
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %22)
  %cmp.not.i55 = icmp eq i32 %25, %22
  br i1 %cmp.not.i55, label %sk_mark_napi_id.exit.if.end13_crit_edge, label %do.body7.i, !prof !17

sk_mark_napi_id.exit.if.end13_crit_edge:          ; preds = %sk_mark_napi_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body7.i:                                       ; preds = %sk_mark_napi_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %22, ptr %23, align 8
  br label %if.end13

if.end13:                                         ; preds = %do.body7.i, %sk_mark_napi_id.exit.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %27 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asoc, align 4
  %subscribe = getelementptr inbounds %struct.sctp_association, ptr %28, i32 0, i32 87
  %29 = ptrtoint ptr %subscribe to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %subscribe, align 4
  %call.i = tail call i32 @sctp_ulpevent_is_notification(ptr noundef %cb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end13.if.end17_crit_edge, label %if.end.i57

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end.i57:                                       ; preds = %if.end13
  %call1.i = tail call zeroext i16 @sctp_ulpevent_get_notification_type(ptr noundef %cb.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32755, i16 %call1.i)
  %cmp.i.i = icmp ugt i16 %call1.i, -32755
  br i1 %cmp.i.i, label %if.end.i57.out_free_crit_edge, label %sctp_ulpevent_is_enabled.exit

if.end.i57.out_free_crit_edge:                    ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

sctp_ulpevent_is_enabled.exit:                    ; preds = %if.end.i57
  %conv.i.i = zext i16 %call1.i to i32
  %conv2.i.i = zext i16 %30 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -32768
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  %and.i.i58 = and i32 %shl.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %tobool.i.i.not = icmp eq i32 %and.i.i58, 0
  br i1 %tobool.i.i.not, label %sctp_ulpevent_is_enabled.exit.out_free_crit_edge, label %sctp_ulpevent_is_enabled.exit.if.end17_crit_edge

sctp_ulpevent_is_enabled.exit.if.end17_crit_edge: ; preds = %sctp_ulpevent_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

sctp_ulpevent_is_enabled.exit.out_free_crit_edge: ; preds = %sctp_ulpevent_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end17:                                         ; preds = %sctp_ulpevent_is_enabled.exit.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %skb_list, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  %31 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb_list, align 4
  %cmp.i.not.i = icmp eq ptr %32, %skb_list
  br i1 %cmp.i.not.i, label %if.then19.if.end21_crit_edge, label %if.then.i

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.anon.110, ptr %skb_list, i32 0, i32 1
  %35 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.10, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %34, ptr %prev5.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %32, ptr %34, align 8
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %sk_receive_queue, ptr %36, align 8
  store volatile ptr %36, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %skb_list, i32 0, i32 1
  %40 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %43, %41
  store i32 %add.i, ptr %qlen1.i, align 4
  %44 = ptrtoint ptr %skb_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %skb_list, ptr %skb_list, align 4
  store ptr %skb_list, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %sk_receive_queue20 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %sk_receive_queue20, ptr %5, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 1
  %48 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %prev10.i.i.i, align 4
  store volatile ptr %5, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %5, ptr %46, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then.i, %if.then19.if.end21_crit_edge
  %data_ready_signalled = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 37
  %52 = ptrtoint ptr %data_ready_signalled to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load = load i16, ptr %data_ready_signalled, align 8
  %53 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool22.not = icmp eq i16 %53, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set = or i16 %bf.load, 64
  %54 = ptrtoint ptr %data_ready_signalled to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bf.set, ptr %data_ready_signalled, align 8
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  %55 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk_data_ready, align 8
  tail call void %56(ptr noundef %3) #7
  br label %cleanup

out_free:                                         ; preds = %sctp_ulpevent_is_enabled.exit.out_free_crit_edge, %if.end.i57.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %land.lhs.true.out_free_crit_edge
  %tobool28.not = icmp eq ptr %skb_list, null
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 @sctp_queue_purge_ulpevents(ptr noundef nonnull %skb_list) #7
  br label %cleanup

if.else31:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %if.then29, %if.then23, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then23 ], [ 1, %if.end21.cleanup_crit_edge ], [ 0, %if.else31 ], [ 0, %if.then29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_reassembled_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_intl_retrieve_ordered(ptr noundef %ulpq, ptr nocapture noundef readonly %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 7
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %stream1, align 1
  %prev = getelementptr i8, ptr %event, i32 -20
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %lobby = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %4 = ptrtoint ptr %lobby to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lobby, align 4
  %cmp.not52 = icmp eq ptr %5, %lobby
  br i1 %cmp.not52, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %6 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asoc, align 4
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %7, i32 0, i32 60, i32 1
  %.frozen = freeze i16 %1
  %div14.i2.i = udiv i16 %.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %8 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %.frozen, %8
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %qlen.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 1
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %3, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %pos.053 = phi ptr [ %5, %for.body.lr.ph ], [ %tmp.054, %cleanup.for.body_crit_edge ]
  %9 = ptrtoint ptr %pos.053 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.054 = load ptr, ptr %pos.053, align 8
  %stream5 = getelementptr inbounds %struct.sk_buff, ptr %pos.053, i32 0, i32 3, i32 28
  %10 = ptrtoint ptr %stream5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %stream5, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %1)
  %cmp7 = icmp ugt i16 %11, %1
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %1)
  %cmp12 = icmp ult i16 %11, %1
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %12 = getelementptr inbounds %struct.sk_buff, ptr %pos.053, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %12, align 1
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #7
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp17.not = icmp eq i32 %14, %16
  br i1 %cmp17.not, label %if.end20, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i47 = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #7
  %17 = ptrtoint ptr %call1.i47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call1.i47, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %call1.i47, align 4
  %19 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %21 = ptrtoint ptr %pos.053 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pos.053, align 8
  %prev9.i = getelementptr inbounds %struct.anon.10, ptr %pos.053, i32 0, i32 1
  %23 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %pos.053, align 8
  %prev17.i = getelementptr inbounds %struct.anon.10, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %prev17.i, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %24, align 8
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %3, ptr %pos.053, align 8
  store volatile ptr %28, ptr %prev9.i, align 4
  store volatile ptr %pos.053, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %pos.053, ptr %28, align 4
  %30 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge
  %cmp.not = icmp eq ptr %tmp.054, %lobby
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end15.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_ulpevent_is_notification(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_queue_purge_ulpevents(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpevent_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sctp_ulpevent_get_notification_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sctp_ulpq_renege_list(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_intl_reap_ordered(ptr noundef %ulpq, i16 noundef zeroext %sid) unnamed_addr #2 align 64 {
entry:
  %temp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %lobby2 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #7
  %2 = call ptr @memset(ptr %temp, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %temp, ptr %temp, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.110, ptr %temp, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %temp, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %6 = ptrtoint ptr %lobby2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lobby2, align 4
  %cmp.not118 = icmp eq ptr %7, %lobby2
  br i1 %cmp.not118, label %entry.if.end45_crit_edge, label %for.body.lr.ph

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

for.body.lr.ph:                                   ; preds = %entry
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 1
  %qlen.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 1
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  %tobool22.not108.not = icmp eq ptr %event.2, null
  br i1 %tobool22.not108.not, label %for.end.thread.if.end45_crit_edge, label %for.end.thread.if.then43_crit_edge

for.end.thread.if.then43_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

for.end.thread.if.end45_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0120 = phi ptr [ %7, %for.body.lr.ph ], [ %tmp.0121, %for.inc.for.body_crit_edge ]
  %event.0119 = phi ptr [ null, %for.body.lr.ph ], [ %event.2, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %pos.0120 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0121 = load ptr, ptr %pos.0120, align 8
  %stream4 = getelementptr inbounds %struct.sk_buff, ptr %pos.0120, i32 0, i32 3, i32 28
  %9 = ptrtoint ptr %stream4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %stream4, align 1
  %11 = getelementptr inbounds %struct.sk_buff, ptr %pos.0120, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %11, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %sid)
  %cmp6 = icmp ugt i16 %10, %sid
  br i1 %cmp6, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %sid)
  %cmp10 = icmp ult i16 %10, %sid
  br i1 %cmp10, label %if.end.for.inc_crit_edge, label %if.end13

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end13:                                         ; preds = %if.end
  %.frozen = freeze i16 %10
  %div14.i2.i = udiv i16 %.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %14 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %.frozen, %14
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i = call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #7
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call1.i, align 4
  %sub = sub i32 %13, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %if.end17, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %19 = ptrtoint ptr %pos.0120 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pos.0120, align 8
  %prev9.i = getelementptr inbounds %struct.anon.10, ptr %pos.0120, i32 0, i32 1
  %21 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %pos.0120, align 8
  %prev17.i = getelementptr inbounds %struct.anon.10, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %22, ptr %prev17.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %20, ptr %22, align 8
  %tobool.not = icmp eq ptr %event.0119, null
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0120, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr %cb.i, ptr %event.0119
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %temp, ptr %pos.0120, align 8
  store volatile ptr %26, ptr %prev9.i, align 4
  store volatile ptr %pos.0120, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %pos.0120, ptr %26, align 4
  %28 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.end.for.inc_crit_edge
  %event.2 = phi ptr [ %event.0119, %if.end.for.inc_crit_edge ], [ %spec.select, %if.end17 ]
  %cmp.not = icmp eq ptr %tmp.0121, %lobby2
  br i1 %cmp.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %for.body.for.end_crit_edge
  %30 = getelementptr inbounds %struct.sk_buff, ptr %pos.0120, i32 0, i32 3, i32 12
  %tobool22.not.not = icmp eq ptr %event.0119, null
  br i1 %tobool22.not.not, label %if.then25, label %for.end.if.then43_crit_edge

for.end.if.then43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then25:                                        ; preds = %for.end
  %stream4.le = getelementptr inbounds %struct.sk_buff, ptr %pos.0120, i32 0, i32 3, i32 28
  %31 = ptrtoint ptr %stream4.le to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %stream4.le, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %sid)
  %cmp31 = icmp eq i16 %32, %sid
  br i1 %cmp31, label %land.lhs.true33, label %if.then25.if.end45_crit_edge

if.then25.if.end45_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true33:                                  ; preds = %if.then25
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %30, align 1
  %div14.i2.i82 = udiv i16 %sid, 204
  %div14.i.zext.i83 = zext i16 %div14.i2.i82 to i32
  %mul.i.i84 = shl nuw nsw i32 %div14.i.zext.i83, 12
  %35 = mul i16 %div14.i2.i82, 204
  %rem.i3.i85.decomposed = sub i16 %sid, %35
  %narrow.i86 = mul nuw nsw i16 %rem.i3.i85.decomposed, 20
  %mul15.i.i87 = zext i16 %narrow.i86 to i32
  %add.i.i88 = add nuw nsw i32 %mul.i.i84, %mul15.i.i87
  %call1.i89 = call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i88) #7
  %36 = ptrtoint ptr %call1.i89 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call1.i89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %37)
  %cmp35 = icmp eq i32 %34, %37
  br i1 %cmp35, label %if.end41, label %land.lhs.true33.if.end45_crit_edge

land.lhs.true33.if.end45_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end41:                                         ; preds = %land.lhs.true33
  %call1.i98 = call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i88) #7
  %38 = ptrtoint ptr %call1.i98 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call1.i98, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %call1.i98, align 4
  %40 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i, align 4
  %sub.i100 = add i32 %41, -1
  store volatile i32 %sub.i100, ptr %qlen.i, align 4
  %42 = ptrtoint ptr %pos.0120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pos.0120, align 8
  %prev9.i101 = getelementptr inbounds %struct.anon.10, ptr %pos.0120, i32 0, i32 1
  %44 = ptrtoint ptr %prev9.i101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev9.i101, align 4
  store ptr null, ptr %prev9.i101, align 4
  store ptr null, ptr %pos.0120, align 8
  %prev17.i102 = getelementptr inbounds %struct.anon.10, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %prev17.i102 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %45, ptr %prev17.i102, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %43, ptr %45, align 8
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %temp, ptr %pos.0120, align 8
  store volatile ptr %49, ptr %prev9.i101, align 4
  store volatile ptr %pos.0120, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %pos.0120, ptr %49, align 4
  %51 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i106 = add i32 %52, 1
  store volatile i32 %add.i.i.i106, ptr %qlen.i.i, align 4
  %cb.i107 = getelementptr inbounds %struct.sk_buff, ptr %pos.0120, i32 0, i32 3
  %tobool42.not = icmp eq ptr %cb.i107, null
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.end41.if.then43_crit_edge

if.end41.if.then43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then43:                                        ; preds = %if.end41.if.then43_crit_edge, %for.end.if.then43_crit_edge, %for.end.thread.if.then43_crit_edge
  %event.3130 = phi ptr [ %cb.i107, %if.end41.if.then43_crit_edge ], [ %event.2, %for.end.thread.if.then43_crit_edge ], [ %event.0119, %for.end.if.then43_crit_edge ]
  call fastcc void @sctp_intl_retrieve_ordered(ptr noundef %ulpq, ptr noundef nonnull %event.3130)
  %call44 = call fastcc i32 @sctp_enqueue_event(ptr noundef %ulpq, ptr noundef nonnull %temp)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge, %land.lhs.true33.if.end45_crit_edge, %if.then25.if.end45_crit_edge, %for.end.thread.if.end45_crit_edge, %entry.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpq_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_pdapi(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_ifwdtsn(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_tsnmap_skip(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_datafrag_empty(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_assign_ssn(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sctp_validate_data(ptr nocapture noundef readonly %chunk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %7 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asoc, align 4
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %9 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subh.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_datahdr, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stream.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %stream.i, align 4
  %ssn7 = getelementptr inbounds %struct.sctp_datahdr, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %ssn7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ssn7, align 2
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 60, i32 1
  %.frozen = freeze i16 %12
  %div14.i2.i = udiv i16 %.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %15 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %.frozen, %15
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #7
  %16 = ptrtoint ptr %call1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call1.i, align 4
  %sub = sub i16 %14, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %sub)
  %cmp13 = icmp sgt i16 %sub, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp13, %if.end5 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_ulpq_tail_data(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_ulpq_tail_event(ptr noundef %ulpq, ptr noundef %event) #2 align 64 {
entry:
  %temp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #7
  %0 = call ptr @memset(ptr %temp, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %prev.i.i = getelementptr inbounds %struct.anon.110, ptr %temp, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %event, i32 -24
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %temp, ptr %add.ptr.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %event, i32 -20
  %2 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %temp, ptr %prev10.i.i.i, align 4
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %add.ptr.i, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %add.ptr.i, ptr %temp, align 4
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %qlen.i.i, align 4
  %call1 = call i32 @sctp_ulpq_tail_event(ptr noundef %ulpq, ptr noundef nonnull %temp) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpq_renege(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpq_partial_delivery(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpq_abort_pd(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_generate_fwdtsn(ptr noundef, i32 noundef) #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sctp_validate_fwdtsn(ptr nocapture noundef readonly %chunk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %3)
  %cmp.not = icmp eq i8 %3, -64
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %4 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc, align 4
  %incnt2 = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 60, i32 3
  %6 = ptrtoint ptr %incnt2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %incnt2, align 2
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %8 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subh, align 4
  %skip3 = getelementptr inbounds %struct.sctp_fwdtsn_hdr, ptr %9, i32 0, i32 1
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length, align 2
  %conv8 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %skip3, i32 %conv8
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 -8
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 -4
  %cmp11.not27 = icmp ugt ptr %skip3, %add.ptr10
  br i1 %cmp11.not27, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %skip.028 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %skip3, %if.end.for.body_crit_edge ]
  %12 = ptrtoint ptr %skip.028 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %skip.028, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %7)
  %cmp16.not = icmp ult i16 %13, %7
  %cmp16.not.not = xor i1 %cmp16.not, true
  %incdec.ptr = getelementptr %struct.sctp_fwdtsn_skip, ptr %skip.028, i32 1
  %cmp11.not = icmp ugt ptr %incdec.ptr, %add.ptr10
  %or.cond = select i1 %cmp16.not.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %cmp16.not, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_report_fwdtsn(ptr noundef %ulpq, i32 noundef %ftsn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 10
  tail call void @sctp_tsnmap_skip(ptr noundef %tsn_map, i32 noundef %ftsn) #7
  tail call void @sctp_ulpq_reasm_flushtsn(ptr noundef %ulpq, i32 noundef %ftsn) #7
  tail call void @sctp_ulpq_abort_pd(ptr noundef %ulpq, i32 noundef 2592) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_handle_fwdtsn(ptr noundef %ulpq, ptr nocapture noundef readonly %chunk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %0 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subh, align 4
  %skip1 = getelementptr inbounds %struct.sctp_fwdtsn_hdr, ptr %1, i32 0, i32 1
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %2 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_hdr, align 4
  %length14 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %length14 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length14, align 2
  %conv15 = zext i16 %5 to i32
  %add.ptr16 = getelementptr i8, ptr %skip1, i32 %conv15
  %add.ptr517 = getelementptr i8, ptr %add.ptr16, i32 -8
  %add.ptr618 = getelementptr i8, ptr %add.ptr517, i32 -4
  %cmp.not19 = icmp ugt ptr %skip1, %add.ptr618
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %skip.020 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %skip1, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %skip.020 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skip.020, align 2
  %ssn = getelementptr inbounds %struct.sctp_fwdtsn_skip, ptr %skip.020, i32 0, i32 1
  %8 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ssn, align 2
  tail call void @sctp_ulpq_skip(ptr noundef %ulpq, i16 noundef zeroext %7, i16 noundef zeroext %9) #7
  %incdec.ptr = getelementptr %struct.sctp_fwdtsn_skip, ptr %skip.020, i32 1
  %10 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subh, align 4
  %12 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length, align 2
  %conv = zext i16 %15 to i32
  %add.ptr5 = getelementptr %struct.sctp_fwdtsn_hdr, ptr %11, i32 -2
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 %conv
  %cmp.not = icmp ugt ptr %incdec.ptr, %add.ptr6
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_ulpq_tail_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpq_reasm_flushtsn(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpq_skip(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.named.register.sp = !{!7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @sctp_stream_interleave_1, !1, !"sctp_stream_interleave_1", i1 false, i1 false}
!1 = !{!"../net/sctp/stream_interleave.c", i32 1334, i32 38}
!2 = !{ptr @skb_queue_head_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sctp_stream_interleave_0, !6, !"sctp_stream_interleave_0", i1 false, i1 false}
!6 = !{!"../net/sctp/stream_interleave.c", i32 1305, i32 38}
!7 = !{!"sp"}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 920386, i64 920447}
!19 = !{i64 923118}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 923403}
