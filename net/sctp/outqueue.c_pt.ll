; ModuleID = '/llk/IR_all_yes/net/sctp/outqueue.c_pt.bc'
source_filename = "../net/sctp/outqueue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.107 }
%union.anon.107 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.__kernel_sockaddr_storage = type { %union.anon.161 }
%union.anon.161 = type { ptr, [124 x i8] }
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.165, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.165 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.sctp_stream = type { %struct.anon.166, %struct.anon.171, i16, i16, ptr, %union.anon.173, ptr }
%struct.anon.166 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.167, i32, ptr, i8 }
%union.anon.167 = type { i32 }
%struct.anon.171 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.172, i32, i32, i32, i8, i8 }
%union.anon.172 = type { i32 }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { %struct.list_head, ptr }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.163, %struct.anon.164, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.163 = type { i32, i8, i8, i8 }
%struct.anon.164 = type { i16, i16, i16, i8, i8 }
%struct.sctp_sched_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.152, %struct.list_head, ptr, %union.anon.153, %union.sctp_params, %union.anon.154, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon.152 = type { %struct.list_head }
%union.anon.153 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.154 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.sctp_datahdr = type { i32, i16, i16, i32, [0 x i8] }
%struct.sctp_stream_out_ext = type { [3 x i64], [3 x i64], %struct.list_head, %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.list_head, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.77, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.77 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sctp_flush_ctx = type { ptr, ptr, %struct.list_head, ptr, ptr, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.sctp_datamsg = type { %struct.list_head, %struct.refcount_struct, i32, i32, i8 }
%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_sackhdr = type { i32, i32, i16, i16, [0 x %union.sctp_sack_variable] }
%union.sctp_sack_variable = type { i32 }
%struct.sctp_gap_ack_block = type { i16, i16 }
%struct.sctp_fwdtsn_skip = type { i16, i16 }

@sctp_outq_tail.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sctp_outq_tail\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sctp/outqueue.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: outq:%p, chunk:%p[%s]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sctp: %s: outq:%p, chunk:%p[%s]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"illegal chunk\00", [18 x i8] zeroinitializer }, align 32
@sctp_outq_tail.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: outqueueing: outq:%p, chunk:%p[%s])\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sctp: %s: outqueueing: outq:%p, chunk:%p[%s])\0A\00", [49 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@sctp_retransmit_mark.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_retransmit_mark\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: transport:%p, reason:%d, cwnd:%d, ssthresh:%d, flight_size:%d, pba:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"sctp: %s: transport:%p, reason:%d, cwnd:%d, ssthresh:%d, flight_size:%d, pba:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@sctp_outq_sack.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 1, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sctp_outq_sack\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: sack cumulative tsn ack:0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sctp: %s: sack cumulative tsn ack:0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sctp_outq_sack.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 1, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: cumulative tsn ack of assoc:%p is 0x%x, advertised peer ack point:0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"sctp: %s: cumulative tsn ack of assoc:%p is 0x%x, advertised peer ack point:0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sctp_outq_flush_data.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_outq_flush_data\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: outq:%p, chunk:%p[%s], tx-tsn:0x%x skb->head:%p skb->users:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"sctp: %s: outq:%p, chunk:%p[%s], tx-tsn:0x%x skb->head:%p skb->users:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@sctp_outq_flush_data.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 1, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: could not transmit tsn:0x%x, status:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sctp: %s: could not transmit tsn:0x%x, status:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_sctp_probe_path = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/sctp.h\00", [36 x i8] zeroinitializer }, align 32
@trace_sctp_probe_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@sctp_check_transmitted.__UNIQUE_ID_ddebug574 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sctp_check_transmitted\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: receiver reneged on data TSN:0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sctp: %s: receiver reneged on data TSN:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@sctp_check_transmitted.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 1, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: sack received for zero window probe:%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sctp: %s: sack received for zero window probe:%u\0A\00", [46 x i8] zeroinitializer }, align 32
@sctp_mark_missing.__UNIQUE_ID_ddebug576 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_mark_missing\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: tsn:0x%x missing counter:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sctp: %s: tsn:0x%x missing counter:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@sctp_mark_missing.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 1, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: transport:%p, cwnd:%d, ssthresh:%d, flight_size:%d, pba:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"sctp: %s: transport:%p, cwnd:%d, ssthresh:%d, flight_size:%d, pba:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@__sancov_gen_cov_switch_values.39 = internal global [21 x i64] [i64 19, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 128, i64 130, i64 192, i64 193, i64 194]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 194]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 128]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 285, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 294, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 525, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1393, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1394, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1096, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1110, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 695, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 2067, i32 9 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 231, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 723, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [31 x i8] c"../include/trace/events/sctp.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 11, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 108, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1569, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1666, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1734, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [23 x i8] c"../net/sctp/outqueue.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1755, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_outq_init(ptr noundef %asoc, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %q, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %2 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %asoc, ptr %q, align 4
  %out_chunk_list = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %out_chunk_list, ptr %out_chunk_list, align 4
  %prev.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %out_chunk_list, ptr %prev.i, align 4
  %control_chunk_list = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5
  %5 = ptrtoint ptr %control_chunk_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %control_chunk_list, ptr %control_chunk_list, align 4
  %prev.i11 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %control_chunk_list, ptr %prev.i11, align 4
  %retransmit = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7
  %7 = ptrtoint ptr %retransmit to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %retransmit, ptr %retransmit, align 4
  %prev.i12 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retransmit, ptr %prev.i12, align 4
  %sacked = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 6
  %9 = ptrtoint ptr %sacked to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %sacked, ptr %sacked, align 4
  %prev.i13 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sacked, ptr %prev.i13, align 4
  %abandoned = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8
  %11 = ptrtoint ptr %abandoned to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %abandoned, ptr %abandoned, align 4
  %prev.i14 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %abandoned, ptr %prev.i14, align 4
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %13 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk, align 4
  %default_ss = getelementptr inbounds %struct.sctp_sock, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %default_ss to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %default_ss, align 8
  %call2 = tail call i32 @sctp_sched_set_sched(ptr noundef %asoc, i32 noundef %16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sched_set_sched(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_outq_teardown(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__sctp_outq_teardown(ptr noundef %q)
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %2 = getelementptr inbounds i8, ptr %q, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 52)
  %out_chunk_list.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 1
  %4 = ptrtoint ptr %out_chunk_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %out_chunk_list.i, ptr %out_chunk_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %out_chunk_list.i, ptr %prev.i.i, align 4
  %control_chunk_list.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5
  %6 = ptrtoint ptr %control_chunk_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %control_chunk_list.i, ptr %control_chunk_list.i, align 4
  %prev.i11.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %control_chunk_list.i, ptr %prev.i11.i, align 4
  %retransmit.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7
  %8 = ptrtoint ptr %retransmit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %retransmit.i, ptr %retransmit.i, align 4
  %prev.i12.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retransmit.i, ptr %prev.i12.i, align 4
  %sacked.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 6
  %10 = ptrtoint ptr %sacked.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %sacked.i, ptr %sacked.i, align 4
  %prev.i13.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sacked.i, ptr %prev.i13.i, align 4
  %abandoned.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8
  %12 = ptrtoint ptr %abandoned.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %abandoned.i, ptr %abandoned.i, align 4
  %prev.i14.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %abandoned.i, ptr %prev.i14.i, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 4
  %default_ss.i = getelementptr inbounds %struct.sctp_sock, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %default_ss.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %default_ss.i, align 8
  %call2.i = tail call i32 @sctp_sched_set_sched(ptr noundef %1, i32 noundef %17) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sctp_outq_teardown(ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %peer = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %2)
  %transport.0158 = load ptr, ptr %peer, align 8
  %cmp.not160 = icmp eq ptr %transport.0158, %peer
  br i1 %cmp.not160, label %entry.for.end_crit_edge, label %while.cond.preheader.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.cond.preheader.lr.ph:                       ; preds = %entry
  %error = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 4
  br label %while.cond.preheader

for.cond.loopexit:                                ; preds = %while.body.for.cond.loopexit_crit_edge, %sctp_list_dequeue.exit.for.cond.loopexit_crit_edge, %while.cond.preheader.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %transport.0161 to i32
  call void @__asan_load4_noabort(i32 %3)
  %transport.0 = load ptr, ptr %transport.0161, align 8
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 4
  %peer3 = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 5
  %cmp.not = icmp eq ptr %transport.0, %peer3
  br i1 %cmp.not, label %for.cond.loopexit.for.end_crit_edge, label %for.cond.loopexit.while.cond.preheader_crit_edge

for.cond.loopexit.while.cond.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.cond.preheader:                             ; preds = %for.cond.loopexit.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %transport.0161 = phi ptr [ %transport.0158, %while.cond.preheader.lr.ph ], [ %transport.0, %for.cond.loopexit.while.cond.preheader_crit_edge ]
  %transmitted = getelementptr inbounds %struct.sctp_transport, ptr %transport.0161, i32 0, i32 44
  %6 = ptrtoint ptr %transmitted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %transmitted, align 4
  %cmp.i.not.i186 = icmp eq ptr %7, %transmitted
  br i1 %cmp.i.not.i186, label %while.cond.preheader.for.cond.loopexit_crit_edge, label %while.cond.preheader.if.then.i_crit_edge

while.cond.preheader.if.then.i_crit_edge:         ; preds = %while.cond.preheader
  br label %if.then.i

while.cond.preheader.for.cond.loopexit_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %while.cond.preheader.if.then.i_crit_edge
  %8 = phi ptr [ %20, %while.body.if.then.i_crit_edge ], [ %7, %while.cond.preheader.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.sctp_list_dequeue.exit_crit_edge

if.then.i.sctp_list_dequeue.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_list_dequeue.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %sctp_list_dequeue.exit

sctp_list_dequeue.exit:                           ; preds = %if.end.i.i.i, %if.then.i.sctp_list_dequeue.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %prev.i3.i.i, align 4
  %cmp5.not = icmp eq ptr %8, null
  br i1 %cmp5.not, label %sctp_list_dequeue.exit.for.cond.loopexit_crit_edge, label %while.body

sctp_list_dequeue.exit.for.cond.loopexit_crit_edge: ; preds = %sctp_list_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

while.body:                                       ; preds = %sctp_list_dequeue.exit
  %add.ptr8 = getelementptr i8, ptr %8, i32 -16
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  tail call void @sctp_chunk_fail(ptr noundef %add.ptr8, i32 noundef %18) #8
  tail call void @sctp_chunk_free(ptr noundef %add.ptr8) #8
  %19 = ptrtoint ptr %transmitted to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %transmitted, align 4
  %cmp.i.not.i = icmp eq ptr %20, %transmitted
  br i1 %cmp.i.not.i, label %while.body.for.cond.loopexit_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

while.body.for.cond.loopexit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  %sacked = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 6
  %21 = ptrtoint ptr %sacked to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sacked, align 4
  %cmp.i.not163 = icmp eq ptr %22, %sacked
  br i1 %cmp.i.not163, label %for.end.for.end27_crit_edge, label %for.body20.lr.ph

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.body20.lr.ph:                                 ; preds = %for.end
  %error24 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 4
  br label %for.body20

for.body20:                                       ; preds = %list_del_init.exit.for.body20_crit_edge, %for.body20.lr.ph
  %lchunk.0164 = phi ptr [ %22, %for.body20.lr.ph ], [ %temp.0166, %list_del_init.exit.for.body20_crit_edge ]
  %23 = ptrtoint ptr %lchunk.0164 to i32
  call void @__asan_load4_noabort(i32 %23)
  %temp.0166 = load ptr, ptr %lchunk.0164, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lchunk.0164) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body20.list_del_init.exit_crit_edge

for.body20.list_del_init.exit_crit_edge:          ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0164, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %lchunk.0164 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lchunk.0164, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body20.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %lchunk.0164 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %lchunk.0164, ptr %lchunk.0164, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0164, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %lchunk.0164, ptr %prev.i3.i, align 4
  %add.ptr23 = getelementptr i8, ptr %lchunk.0164, i32 -16
  %32 = ptrtoint ptr %error24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error24, align 4
  tail call void @sctp_chunk_fail(ptr noundef %add.ptr23, i32 noundef %33) #8
  tail call void @sctp_chunk_free(ptr noundef %add.ptr23) #8
  %cmp.i.not = icmp eq ptr %temp.0166, %sacked
  br i1 %cmp.i.not, label %list_del_init.exit.for.end27_crit_edge, label %list_del_init.exit.for.body20_crit_edge

list_del_init.exit.for.body20_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

list_del_init.exit.for.end27_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.end27:                                        ; preds = %list_del_init.exit.for.end27_crit_edge, %for.end.for.end27_crit_edge
  %retransmit = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7
  %34 = ptrtoint ptr %retransmit to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %retransmit, align 4
  %cmp.i136.not168 = icmp eq ptr %35, %retransmit
  br i1 %cmp.i136.not168, label %for.end27.for.end42_crit_edge, label %for.body35.lr.ph

for.end27.for.end42_crit_edge:                    ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.body35.lr.ph:                                 ; preds = %for.end27
  %error39 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 4
  br label %for.body35

for.body35:                                       ; preds = %list_del_init.exit143.for.body35_crit_edge, %for.body35.lr.ph
  %lchunk.1169 = phi ptr [ %35, %for.body35.lr.ph ], [ %temp.1171, %list_del_init.exit143.for.body35_crit_edge ]
  %36 = ptrtoint ptr %lchunk.1169 to i32
  call void @__asan_load4_noabort(i32 %36)
  %temp.1171 = load ptr, ptr %lchunk.1169, align 4
  %call.i.i138 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lchunk.1169) #8
  br i1 %call.i.i138, label %if.end.i.i141, label %for.body35.list_del_init.exit143_crit_edge

for.body35.list_del_init.exit143_crit_edge:       ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit143

if.end.i.i141:                                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i139 = getelementptr inbounds %struct.list_head, ptr %lchunk.1169, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i139 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i139, align 4
  %39 = ptrtoint ptr %lchunk.1169 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lchunk.1169, align 4
  %prev1.i.i.i140 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i140, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit143

list_del_init.exit143:                            ; preds = %if.end.i.i141, %for.body35.list_del_init.exit143_crit_edge
  %43 = ptrtoint ptr %lchunk.1169 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %lchunk.1169, ptr %lchunk.1169, align 4
  %prev.i3.i142 = getelementptr inbounds %struct.list_head, ptr %lchunk.1169, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i142 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %lchunk.1169, ptr %prev.i3.i142, align 4
  %add.ptr38 = getelementptr i8, ptr %lchunk.1169, i32 -16
  %45 = ptrtoint ptr %error39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error39, align 4
  tail call void @sctp_chunk_fail(ptr noundef %add.ptr38, i32 noundef %46) #8
  tail call void @sctp_chunk_free(ptr noundef %add.ptr38) #8
  %cmp.i136.not = icmp eq ptr %temp.1171, %retransmit
  br i1 %cmp.i136.not, label %list_del_init.exit143.for.end42_crit_edge, label %list_del_init.exit143.for.body35_crit_edge

list_del_init.exit143.for.body35_crit_edge:       ; preds = %list_del_init.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

list_del_init.exit143.for.end42_crit_edge:        ; preds = %list_del_init.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.end42:                                        ; preds = %list_del_init.exit143.for.end42_crit_edge, %for.end27.for.end42_crit_edge
  %abandoned = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8
  %47 = ptrtoint ptr %abandoned to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %abandoned, align 4
  %cmp.i144.not173 = icmp eq ptr %48, %abandoned
  br i1 %cmp.i144.not173, label %for.end42.while.cond58.preheader_crit_edge, label %for.body50.lr.ph

for.end42.while.cond58.preheader_crit_edge:       ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond58.preheader

for.body50.lr.ph:                                 ; preds = %for.end42
  %error54 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 4
  br label %for.body50

while.cond58.preheader:                           ; preds = %list_del_init.exit151.while.cond58.preheader_crit_edge, %for.end42.while.cond58.preheader_crit_edge
  %sched.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 2
  %49 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sched.i, align 4
  %dequeue.i177 = getelementptr inbounds %struct.sctp_sched_ops, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %dequeue.i177 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dequeue.i177, align 4
  %call.i178 = tail call ptr %52(ptr noundef %q) #8
  %cmp60.not179 = icmp eq ptr %call.i178, null
  br i1 %cmp60.not179, label %while.cond58.preheader.while.end63_crit_edge, label %while.body61.lr.ph

while.cond58.preheader.while.end63_crit_edge:     ; preds = %while.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end63

while.body61.lr.ph:                               ; preds = %while.cond58.preheader
  %error62 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 4
  br label %while.body61

for.body50:                                       ; preds = %list_del_init.exit151.for.body50_crit_edge, %for.body50.lr.ph
  %lchunk.2174 = phi ptr [ %48, %for.body50.lr.ph ], [ %temp.2176, %list_del_init.exit151.for.body50_crit_edge ]
  %53 = ptrtoint ptr %lchunk.2174 to i32
  call void @__asan_load4_noabort(i32 %53)
  %temp.2176 = load ptr, ptr %lchunk.2174, align 4
  %call.i.i146 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lchunk.2174) #8
  br i1 %call.i.i146, label %if.end.i.i149, label %for.body50.list_del_init.exit151_crit_edge

for.body50.list_del_init.exit151_crit_edge:       ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit151

if.end.i.i149:                                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i147 = getelementptr inbounds %struct.list_head, ptr %lchunk.2174, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i147 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i147, align 4
  %56 = ptrtoint ptr %lchunk.2174 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lchunk.2174, align 4
  %prev1.i.i.i148 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i148 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i148, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit151

list_del_init.exit151:                            ; preds = %if.end.i.i149, %for.body50.list_del_init.exit151_crit_edge
  %60 = ptrtoint ptr %lchunk.2174 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %lchunk.2174, ptr %lchunk.2174, align 4
  %prev.i3.i150 = getelementptr inbounds %struct.list_head, ptr %lchunk.2174, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i3.i150 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %lchunk.2174, ptr %prev.i3.i150, align 4
  %add.ptr53 = getelementptr i8, ptr %lchunk.2174, i32 -16
  %62 = ptrtoint ptr %error54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %error54, align 4
  tail call void @sctp_chunk_fail(ptr noundef %add.ptr53, i32 noundef %63) #8
  tail call void @sctp_chunk_free(ptr noundef %add.ptr53) #8
  %cmp.i144.not = icmp eq ptr %temp.2176, %abandoned
  br i1 %cmp.i144.not, label %list_del_init.exit151.while.cond58.preheader_crit_edge, label %list_del_init.exit151.for.body50_crit_edge

list_del_init.exit151.for.body50_crit_edge:       ; preds = %list_del_init.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

list_del_init.exit151.while.cond58.preheader_crit_edge: ; preds = %list_del_init.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond58.preheader

while.body61:                                     ; preds = %while.body61.while.body61_crit_edge, %while.body61.lr.ph
  %call.i180 = phi ptr [ %call.i178, %while.body61.lr.ph ], [ %call.i, %while.body61.while.body61_crit_edge ]
  tail call void @sctp_sched_dequeue_done(ptr noundef %q, ptr noundef nonnull %call.i180) #8
  %64 = ptrtoint ptr %error62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %error62, align 4
  tail call void @sctp_chunk_fail(ptr noundef nonnull %call.i180, i32 noundef %65) #8
  tail call void @sctp_chunk_free(ptr noundef nonnull %call.i180) #8
  %66 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sched.i, align 4
  %dequeue.i = getelementptr inbounds %struct.sctp_sched_ops, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dequeue.i, align 4
  %call.i = tail call ptr %69(ptr noundef %q) #8
  %cmp60.not = icmp eq ptr %call.i, null
  br i1 %cmp60.not, label %while.body61.while.end63_crit_edge, label %while.body61.while.body61_crit_edge

while.body61.while.body61_crit_edge:              ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body61

while.body61.while.end63_crit_edge:               ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end63

while.end63:                                      ; preds = %while.body61.while.end63_crit_edge, %while.cond58.preheader.while.end63_crit_edge
  %control_chunk_list = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5
  %70 = ptrtoint ptr %control_chunk_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %control_chunk_list, align 4
  %cmp75.not181 = icmp eq ptr %71, %control_chunk_list
  br i1 %cmp75.not181, label %while.end63.for.end85_crit_edge, label %while.end63.for.body77_crit_edge

while.end63.for.body77_crit_edge:                 ; preds = %while.end63
  br label %for.body77

while.end63.for.end85_crit_edge:                  ; preds = %while.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85

for.body77:                                       ; preds = %list_del_init.exit157.for.body77_crit_edge, %while.end63.for.body77_crit_edge
  %chunk.0182 = phi ptr [ %tmp.0, %list_del_init.exit157.for.body77_crit_edge ], [ %71, %while.end63.for.body77_crit_edge ]
  %72 = ptrtoint ptr %chunk.0182 to i32
  call void @__asan_load4_noabort(i32 %72)
  %tmp.0 = load ptr, ptr %chunk.0182, align 4
  %call.i.i152 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chunk.0182) #8
  br i1 %call.i.i152, label %if.end.i.i155, label %for.body77.list_del_init.exit157_crit_edge

for.body77.list_del_init.exit157_crit_edge:       ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit157

if.end.i.i155:                                    ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i153 = getelementptr inbounds %struct.list_head, ptr %chunk.0182, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i153, align 4
  %75 = ptrtoint ptr %chunk.0182 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chunk.0182, align 4
  %prev1.i.i.i154 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i154 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i154, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del_init.exit157

list_del_init.exit157:                            ; preds = %if.end.i.i155, %for.body77.list_del_init.exit157_crit_edge
  %79 = ptrtoint ptr %chunk.0182 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %chunk.0182, ptr %chunk.0182, align 4
  %prev.i3.i156 = getelementptr inbounds %struct.list_head, ptr %chunk.0182, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i3.i156 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %chunk.0182, ptr %prev.i3.i156, align 4
  tail call void @sctp_chunk_free(ptr noundef %chunk.0182) #8
  %cmp75.not = icmp eq ptr %tmp.0, %control_chunk_list
  br i1 %cmp75.not, label %list_del_init.exit157.for.end85_crit_edge, label %list_del_init.exit157.for.body77_crit_edge

list_del_init.exit157.for.body77_crit_edge:       ; preds = %list_del_init.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body77

list_del_init.exit157.for.end85_crit_edge:        ; preds = %list_del_init.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85

for.end85:                                        ; preds = %list_del_init.exit157.for.end85_crit_edge, %while.end63.for.end85_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_outq_free(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__sctp_outq_teardown(ptr noundef %q)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_outq_tail(ptr noundef %q, ptr noundef %chunk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %net1 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_outq_tail.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_outq_tail, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !83

if.then:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %chunk, null
  br i1 %tobool4.not, label %if.then.cond.end_crit_edge, label %land.lhs.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.lhs.true:                                    ; preds = %if.then
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %4 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chunk_hdr, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 2
  %conv = zext i8 %7 to i32
  %.fca.0.insert248 = insertvalue [1 x i32] poison, i32 %conv, 0
  %call9 = tail call ptr @sctp_cname([1 x i32] %.fca.0.insert248) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %call9, %cond.true ], [ @.str.5, %land.lhs.true.cond.end_crit_edge ], [ @.str.5, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_outq_tail.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %q, ptr noundef %chunk, ptr noundef %cond) #8
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry
  %chunk_hdr10 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %8 = ptrtoint ptr %chunk_hdr10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chunk_hdr10, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.else181 [
    i8 0, label %do.end.do.body20_crit_edge
    i8 64, label %do.end.do.body20_crit_edge282
  ]

do.end.do.body20_crit_edge282:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body20:                                        ; preds = %do.end.do.body20_crit_edge, %do.end.do.body20_crit_edge282
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_outq_tail.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_outq_tail, %if.then32)) #8
          to label %do.end51 [label %if.then32], !srcloc !83

if.then32:                                        ; preds = %do.body20
  %tobool33.not = icmp eq ptr %chunk, null
  br i1 %tobool33.not, label %if.then32.cond.end47_crit_edge, label %land.lhs.true34

if.then32.cond.end47_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

land.lhs.true34:                                  ; preds = %if.then32
  %13 = ptrtoint ptr %chunk_hdr10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chunk_hdr10, align 4
  %tobool36.not = icmp eq ptr %14, null
  br i1 %tobool36.not, label %land.lhs.true34.cond.end47_crit_edge, label %cond.true37

land.lhs.true34.cond.end47_crit_edge:             ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

cond.true37:                                      ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 2
  %conv41 = zext i8 %16 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %conv41, 0
  %call45 = tail call ptr @sctp_cname([1 x i32] %.fca.0.insert) #8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.true37, %land.lhs.true34.cond.end47_crit_edge, %if.then32.cond.end47_crit_edge
  %cond48 = phi ptr [ %call45, %cond.true37 ], [ @.str.5, %land.lhs.true34.cond.end47_crit_edge ], [ @.str.5, %if.then32.cond.end47_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_outq_tail.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %q, ptr noundef %chunk, ptr noundef %cond48) #8
  br label %do.end51

do.end51:                                         ; preds = %cond.end47, %do.body20
  %out_chunk_list.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chunk, ptr noundef %18, ptr noundef %out_chunk_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end51.list_add_tail.exit.i_crit_edge

do.end51.list_add_tail.exit.i_crit_edge:          ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %chunk, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %out_chunk_list.i, ptr %chunk, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %chunk, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %chunk, ptr %18, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end51.list_add_tail.exit.i_crit_edge
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %23 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %out_qlen.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 3
  %27 = ptrtoint ptr %out_qlen.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_qlen.i, align 4
  %add.i = add i32 %28, %26
  store i32 %add.i, ptr %out_qlen.i, align 4
  %subh.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %29 = ptrtoint ptr %subh.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subh.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.sctp_datahdr, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %stream.i.i, align 4
  %33 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %q, align 4
  %stream1.i = getelementptr inbounds %struct.sctp_association, ptr %34, i32 0, i32 60
  %conv.i.i = zext i16 %32 to i32
  %mul17.i.i.i = shl nuw nsw i32 %conv.i.i, 4
  %call1.i.i = tail call ptr @__genradix_ptr(ptr noundef %stream1.i, i32 noundef %mul17.i.i.i) #8
  %ext.i = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ext.i, align 4
  %37 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 3
  %outq.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %36, i32 0, i32 2
  %prev.i8.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %36, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i8.i, align 4
  %call.i.i9.i = tail call zeroext i1 @__list_add_valid(ptr noundef %37, ptr noundef %39, ptr noundef %outq.i) #8
  br i1 %call.i.i9.i, label %if.end.i.i11.i, label %list_add_tail.exit.i.sctp_outq_tail_data.exit_crit_edge

list_add_tail.exit.i.sctp_outq_tail_data.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_outq_tail_data.exit

if.end.i.i11.i:                                   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i8.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %outq.i, ptr %37, align 4
  %prev3.i.i10.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 3, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i10.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %37, ptr %39, align 4
  br label %sctp_outq_tail_data.exit

sctp_outq_tail_data.exit:                         ; preds = %if.end.i.i11.i, %list_add_tail.exit.i.sctp_outq_tail_data.exit_crit_edge
  %asoc52 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %44 = ptrtoint ptr %asoc52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %asoc52, align 4
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %45, i32 0, i32 5, i32 12
  %46 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load = load i16, ptr %prsctp_capable, align 2
  %47 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool54.not = icmp eq i16 %47, 0
  br i1 %tobool54.not, label %sctp_outq_tail_data.exit.if.end61_crit_edge, label %land.lhs.true55

sctp_outq_tail_data.exit.if.end61_crit_edge:      ; preds = %sctp_outq_tail_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.lhs.true55:                                  ; preds = %sctp_outq_tail_data.exit
  %sinfo_flags = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12, i32 2
  %48 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sinfo_flags, align 4
  %50 = and i16 %49, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %50)
  %cmp57 = icmp eq i16 %50, 48
  br i1 %cmp57, label %if.then59, label %land.lhs.true55.if.end61_crit_edge

land.lhs.true55.if.end61_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then59:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  %sent_cnt_removable = getelementptr inbounds %struct.sctp_association, ptr %45, i32 0, i32 86
  %51 = ptrtoint ptr %sent_cnt_removable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sent_cnt_removable, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %sent_cnt_removable, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %land.lhs.true55.if.end61_crit_edge, %sctp_outq_tail_data.exit.if.end61_crit_edge
  %53 = ptrtoint ptr %chunk_hdr10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chunk_hdr10, align 4
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %flags, align 1
  %57 = and i8 %56, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool65.not = icmp eq i8 %57, 0
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  %sctp141 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38
  %59 = ptrtoint ptr %sctp141 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sctp141, align 8
  br i1 %tobool65.not, label %do.body119, label %do.body68

do.body68:                                        ; preds = %if.end61
  %arrayidx = getelementptr [34 x i32], ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %arrayidx to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu, align 4
  %arrayidx87 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx87, align 4
  %add = add i32 %67, %61
  %68 = inttoptr i32 %add to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add88 = add i32 %70, 1
  store i32 %add88, ptr %68, align 4
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool99.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool99.not, label %if.then108, label %do.body68.do.end111_crit_edge, !prof !85

do.body68.do.end111_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end111

if.then108:                                       ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %do.body68.do.end111_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #8, !srcloc !86
  br label %if.end244

do.body119:                                       ; preds = %if.end61
  %arrayidx144 = getelementptr [34 x i32], ptr %60, i32 0, i32 9
  %72 = ptrtoint ptr %arrayidx144 to i32
  %73 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i276 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i276 to ptr
  %cpu147 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu147 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu147, align 4
  %arrayidx148 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx148, align 4
  %add149 = add i32 %78, %72
  %79 = inttoptr i32 %add149 to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add150 = add i32 %81, 1
  store i32 %add150, ptr %79, align 4
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i277 = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i277)
  %tobool161.not = icmp eq i32 %and.i.i277, 0
  br i1 %tobool161.not, label %if.then170, label %do.body119.do.end173_crit_edge, !prof !85

do.body119.do.end173_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end173

if.then170:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end173

do.end173:                                        ; preds = %if.then170, %do.body119.do.end173_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #8, !srcloc !86
  br label %if.end244

if.else181:                                       ; preds = %do.end
  %control_chunk_list = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chunk, ptr noundef %84, ptr noundef %control_chunk_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else181.list_add_tail.exit_crit_edge

if.else181.list_add_tail.exit_crit_edge:          ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %chunk, ptr %prev.i, align 4
  %86 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %control_chunk_list, ptr %chunk, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %chunk, i32 0, i32 1
  %87 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %chunk, ptr %84, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else181.list_add_tail.exit_crit_edge
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !87
  %sctp205 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38
  %90 = ptrtoint ptr %sctp205 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sctp205, align 8
  %arrayidx208 = getelementptr [34 x i32], ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %arrayidx208 to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i278 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i278 to ptr
  %cpu211 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu211 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu211, align 4
  %arrayidx212 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx212, align 4
  %add213 = add i32 %98, %92
  %99 = inttoptr i32 %add213 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add214 = add i32 %101, 1
  store i32 %add214, ptr %99, align 4
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i279 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i279)
  %tobool225.not = icmp eq i32 %and.i.i279, 0
  br i1 %tobool225.not, label %if.then234, label %list_add_tail.exit.do.end237_crit_edge, !prof !85

list_add_tail.exit.do.end237_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end237

if.then234:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end237

do.end237:                                        ; preds = %if.then234, %list_add_tail.exit.do.end237_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %89) #8, !srcloc !86
  br label %if.end244

if.end244:                                        ; preds = %do.end237, %do.end173, %do.end111
  %cork = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 11
  %103 = ptrtoint ptr %cork to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %cork, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool245.not = icmp eq i8 %104, 0
  br i1 %tobool245.not, label %if.then246, label %if.end244.if.end247_crit_edge

if.end244.if.end247_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

if.then246:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sctp_outq_flush(ptr noundef %q, i32 noundef 0, i32 noundef %gfp)
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %if.end244.if.end247_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_cname([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_outq_flush(ptr noundef %q, i32 noundef %rtx_timeout, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.sctp_flush_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctx) #8
  %0 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 4
  %5 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %q, ptr %ctx, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %2, align 4
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %gfp, ptr %5, align 4
  %control_chunk_list.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5
  %15 = ptrtoint ptr %control_chunk_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %control_chunk_list.i, align 4
  %cmp.not118.i = icmp eq ptr %16, %control_chunk_list.i
  br i1 %cmp.not118.i, label %entry.sctp_outq_flush_ctrl.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sctp_outq_flush_ctrl.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_outq_flush_ctrl.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %chunk.0119.i = phi ptr [ %tmp.0120.i, %for.inc.i.for.body.i_crit_edge ], [ %16, %entry.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %chunk.0119.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp.0120.i = load ptr, ptr %chunk.0119.i, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %src_out_of_asoc_ok.i = getelementptr inbounds %struct.sctp_association, ptr %19, i32 0, i32 70
  %20 = ptrtoint ptr %src_out_of_asoc_ok.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_out_of_asoc_ok.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.0119.i, i32 0, i32 10
  %22 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chunk_hdr.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %25)
  %cmp9.not.i = icmp eq i8 %25, -63
  br i1 %cmp9.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %chunk.0119.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %chunk.0119.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %chunk.0119.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chunk.0119.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %32 = ptrtoint ptr %chunk.0119.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %chunk.0119.i, ptr %chunk.0119.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %chunk.0119.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %chunk.0119.i, ptr %prev.i3.i.i, align 4
  call fastcc void @sctp_outq_select_transport(ptr noundef nonnull %ctx, ptr noundef %chunk.0119.i) #8
  %chunk_hdr12.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.0119.i, i32 0, i32 10
  %34 = ptrtoint ptr %chunk_hdr12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chunk_hdr12.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 2
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %37, label %do.body.i [
    i8 1, label %list_del_init.exit.i.sw.bb.i_crit_edge
    i8 2, label %list_del_init.exit.i.sw.bb.i_crit_edge15
    i8 14, label %list_del_init.exit.i.sw.bb.i_crit_edge16
    i8 6, label %sw.bb20.i
    i8 5, label %list_del_init.exit.i.sw.bb27.i_crit_edge
    i8 8, label %list_del_init.exit.i.sw.bb27.i_crit_edge17
    i8 11, label %list_del_init.exit.i.sw.bb27.i_crit_edge18
    i8 10, label %list_del_init.exit.i.sw.bb27.i_crit_edge19
    i8 9, label %list_del_init.exit.i.sw.bb27.i_crit_edge20
    i8 13, label %list_del_init.exit.i.sw.bb27.i_crit_edge21
    i8 -128, label %list_del_init.exit.i.sw.bb27.i_crit_edge22
    i8 4, label %list_del_init.exit.i.sw.bb28.i_crit_edge
    i8 3, label %list_del_init.exit.i.sw.bb35.i_crit_edge
    i8 7, label %list_del_init.exit.i.sw.bb35.i_crit_edge23
    i8 12, label %list_del_init.exit.i.sw.bb35.i_crit_edge24
    i8 -63, label %list_del_init.exit.i.sw.bb35.i_crit_edge25
    i8 -64, label %list_del_init.exit.i.sw.bb35.i_crit_edge26
    i8 -62, label %list_del_init.exit.i.sw.bb35.i_crit_edge27
    i8 -126, label %list_del_init.exit.i.sw.bb35.i_crit_edge28
  ]

list_del_init.exit.i.sw.bb35.i_crit_edge28:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35.i

list_del_init.exit.i.sw.bb35.i_crit_edge27:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35.i

list_del_init.exit.i.sw.bb35.i_crit_edge26:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35.i

list_del_init.exit.i.sw.bb35.i_crit_edge25:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35.i

list_del_init.exit.i.sw.bb35.i_crit_edge24:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35.i

list_del_init.exit.i.sw.bb35.i_crit_edge23:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35.i

list_del_init.exit.i.sw.bb35.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35.i

list_del_init.exit.i.sw.bb28.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

list_del_init.exit.i.sw.bb27.i_crit_edge22:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i

list_del_init.exit.i.sw.bb27.i_crit_edge21:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i

list_del_init.exit.i.sw.bb27.i_crit_edge20:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i

list_del_init.exit.i.sw.bb27.i_crit_edge19:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i

list_del_init.exit.i.sw.bb27.i_crit_edge18:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i

list_del_init.exit.i.sw.bb27.i_crit_edge17:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i

list_del_init.exit.i.sw.bb27.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i

list_del_init.exit.i.sw.bb.i_crit_edge16:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

list_del_init.exit.i.sw.bb.i_crit_edge15:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

list_del_init.exit.i.sw.bb.i_crit_edge:           ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %list_del_init.exit.i.sw.bb.i_crit_edge, %list_del_init.exit.i.sw.bb.i_crit_edge15, %list_del_init.exit.i.sw.bb.i_crit_edge16
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %5, align 4
  %call.i = call fastcc i32 @sctp_packet_singleton(ptr noundef %40, ptr noundef %chunk.0119.i, i32 noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.i = icmp slt i32 %call.i, 0
  br i1 %cmp15.i, label %if.then17.i, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then17.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 0, %call.i
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk.i, align 4
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 51
  %47 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %sk_err.i, align 4
  br label %sctp_outq_flush_ctrl.exit

sw.bb20.i:                                        ; preds = %list_del_init.exit.i
  %flags.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %35, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags.i, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool23.not.i = icmp eq i8 %50, 0
  br i1 %tobool23.not.i, label %sw.bb20.i.sw.bb27.i_crit_edge, label %if.then24.i

sw.bb20.i.sw.bb27.i_crit_edge:                    ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i

if.then24.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %c.i = getelementptr inbounds %struct.sctp_association, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %c.i, align 8
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %4, align 4
  %vtag.i = getelementptr inbounds %struct.sctp_packet, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %vtag.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %vtag.i, align 4
  br label %sw.bb27.i

sw.bb27.i:                                        ; preds = %if.then24.i, %sw.bb20.i.sw.bb27.i_crit_edge, %list_del_init.exit.i.sw.bb27.i_crit_edge, %list_del_init.exit.i.sw.bb27.i_crit_edge17, %list_del_init.exit.i.sw.bb27.i_crit_edge18, %list_del_init.exit.i.sw.bb27.i_crit_edge19, %list_del_init.exit.i.sw.bb27.i_crit_edge20, %list_del_init.exit.i.sw.bb27.i_crit_edge21, %list_del_init.exit.i.sw.bb27.i_crit_edge22
  br label %sw.bb28.i

sw.bb28.i:                                        ; preds = %sw.bb27.i, %list_del_init.exit.i.sw.bb28.i_crit_edge
  %one_packet.0.i = phi i32 [ 0, %list_del_init.exit.i.sw.bb28.i_crit_edge ], [ 1, %sw.bb27.i ]
  %pmtu_probe.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.0119.i, i32 0, i32 21
  %58 = ptrtoint ptr %pmtu_probe.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load.i = load i16, ptr %pmtu_probe.i, align 4
  %59 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool29.not.i = icmp eq i16 %59, 0
  br i1 %tobool29.not.i, label %sw.bb28.i.sw.bb35.i_crit_edge, label %if.then30.i

sw.bb28.i.sw.bb35.i_crit_edge:                    ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35.i

if.then30.i:                                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %0, align 4
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %5, align 4
  %call33.i = call fastcc i32 @sctp_packet_singleton(ptr noundef %61, ptr noundef %chunk.0119.i, i32 noundef %63) #8
  br label %for.inc.i

sw.bb35.i:                                        ; preds = %sw.bb28.i.sw.bb35.i_crit_edge, %list_del_init.exit.i.sw.bb35.i_crit_edge, %list_del_init.exit.i.sw.bb35.i_crit_edge23, %list_del_init.exit.i.sw.bb35.i_crit_edge24, %list_del_init.exit.i.sw.bb35.i_crit_edge25, %list_del_init.exit.i.sw.bb35.i_crit_edge26, %list_del_init.exit.i.sw.bb35.i_crit_edge27, %list_del_init.exit.i.sw.bb35.i_crit_edge28
  %one_packet.1.i = phi i32 [ 0, %list_del_init.exit.i.sw.bb35.i_crit_edge ], [ 0, %list_del_init.exit.i.sw.bb35.i_crit_edge23 ], [ 0, %list_del_init.exit.i.sw.bb35.i_crit_edge24 ], [ 0, %list_del_init.exit.i.sw.bb35.i_crit_edge25 ], [ 0, %list_del_init.exit.i.sw.bb35.i_crit_edge26 ], [ 0, %list_del_init.exit.i.sw.bb35.i_crit_edge27 ], [ 0, %list_del_init.exit.i.sw.bb35.i_crit_edge28 ], [ %one_packet.0.i, %sw.bb28.i.sw.bb35.i_crit_edge ]
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %4, align 4
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %5, align 4
  %call38.i = call i32 @sctp_packet_transmit_chunk(ptr noundef %65, ptr noundef %chunk.0119.i, i32 noundef %one_packet.1.i, i32 noundef %67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.not.i = icmp eq i32 %call38.i, 0
  br i1 %cmp39.not.i, label %if.end45.i, label %if.then41.i

if.then41.i:                                      ; preds = %sw.bb35.i
  %68 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx, align 4
  %control_chunk_list44.i = getelementptr inbounds %struct.sctp_outq, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %control_chunk_list44.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %control_chunk_list44.i, align 4
  %call.i.i113.i = call zeroext i1 @__list_add_valid(ptr noundef %chunk.0119.i, ptr noundef %control_chunk_list44.i, ptr noundef %71) #8
  br i1 %call.i.i113.i, label %if.end.i.i114.i, label %if.then41.i.for.inc.i_crit_edge

if.then41.i.for.inc.i_crit_edge:                  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i114.i:                                  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %chunk.0119.i, ptr %prev1.i.i.i, align 4
  %73 = ptrtoint ptr %chunk.0119.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %chunk.0119.i, align 4
  %74 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %control_chunk_list44.i, ptr %prev.i3.i.i, align 4
  %75 = ptrtoint ptr %control_chunk_list44.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %chunk.0119.i, ptr %control_chunk_list44.i, align 4
  br label %for.inc.i

if.end45.i:                                       ; preds = %sw.bb35.i
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %3, align 4
  %octrlchunks.i = getelementptr inbounds %struct.sctp_association, ptr %77, i32 0, i32 85, i32 14
  %78 = ptrtoint ptr %octrlchunks.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %octrlchunks.i, align 8
  %inc.i = add i64 %79, 1
  store i64 %inc.i, ptr %octrlchunks.i, align 8
  %80 = ptrtoint ptr %chunk_hdr12.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chunk_hdr12.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 2
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %83, label %if.end45.i.if.end60.i_crit_edge [
    i8 -64, label %if.end45.i.if.then57.i_crit_edge
    i8 -62, label %if.end45.i.if.then57.i_crit_edge29
  ]

if.end45.i.if.then57.i_crit_edge29:               ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

if.end45.i.if.then57.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

if.end45.i.if.end60.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then57.i:                                      ; preds = %if.end45.i.if.then57.i_crit_edge, %if.end45.i.if.then57.i_crit_edge29
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %0, align 4
  call void @sctp_transport_reset_t3_rtx(ptr noundef %86) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %0, align 4
  %last_time_sent.i = getelementptr inbounds %struct.sctp_transport, ptr %89, i32 0, i32 26
  %90 = ptrtoint ptr %last_time_sent.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %last_time_sent.i, align 8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %if.end45.i.if.end60.i_crit_edge
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %3, align 4
  %strreset_chunk.i = getelementptr inbounds %struct.sctp_association, ptr %92, i32 0, i32 84
  %93 = ptrtoint ptr %strreset_chunk.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %strreset_chunk.i, align 4
  %cmp62.i = icmp eq ptr %chunk.0119.i, %94
  br i1 %cmp62.i, label %if.then64.i, label %if.end60.i.for.inc.i_crit_edge

if.end60.i.for.inc.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %0, align 4
  call void @sctp_transport_reset_reconf_timer(ptr noundef %96) #8
  br label %for.inc.i

do.body.i:                                        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/outqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 978, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

for.inc.i:                                        ; preds = %if.then64.i, %if.end60.i.for.inc.i_crit_edge, %if.end.i.i114.i, %if.then41.i.for.inc.i_crit_edge, %if.then30.i, %sw.bb.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %97 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctx, align 4
  %control_chunk_list8.i = getelementptr inbounds %struct.sctp_outq, ptr %98, i32 0, i32 5
  %cmp.not.i = icmp eq ptr %tmp.0120.i, %control_chunk_list8.i
  br i1 %cmp.not.i, label %for.inc.i.sctp_outq_flush_ctrl.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.sctp_outq_flush_ctrl.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_outq_flush_ctrl.exit

sctp_outq_flush_ctrl.exit:                        ; preds = %for.inc.i.sctp_outq_flush_ctrl.exit_crit_edge, %if.then17.i, %entry.sctp_outq_flush_ctrl.exit_crit_edge
  %99 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %q, align 4
  %src_out_of_asoc_ok = getelementptr inbounds %struct.sctp_association, ptr %100, i32 0, i32 70
  %101 = ptrtoint ptr %src_out_of_asoc_ok to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %src_out_of_asoc_ok, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not = icmp eq i32 %102, 0
  br i1 %tobool.not, label %if.end, label %sctp_outq_flush_ctrl.exit.sctp_flush_out_crit_edge

sctp_outq_flush_ctrl.exit.sctp_flush_out_crit_edge: ; preds = %sctp_outq_flush_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_flush_out

if.end:                                           ; preds = %sctp_outq_flush_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @sctp_outq_flush_data(ptr noundef nonnull %ctx, i32 noundef %rtx_timeout)
  br label %sctp_flush_out

sctp_flush_out:                                   ; preds = %if.end, %sctp_outq_flush_ctrl.exit.sctp_flush_out_crit_edge
  %103 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %3, align 4
  %sk1.i = getelementptr inbounds %struct.sctp_ep_common, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sk1.i, align 4
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i47.i = icmp eq ptr %108, %1
  br i1 %cmp.i.not.i47.i, label %sctp_flush_out.sctp_outq_flush_transports.exit_crit_edge, label %if.then.i30.lr.ph.i

sctp_flush_out.sctp_outq_flush_transports.exit_crit_edge: ; preds = %sctp_flush_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_outq_flush_transports.exit

if.then.i30.lr.ph.i:                              ; preds = %sctp_flush_out
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %106, i32 0, i32 19
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %106, i32 0, i32 4, i32 3
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %106, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  br label %if.then.i30.i

if.then.i30.i:                                    ; preds = %if.end18.i.if.then.i30.i_crit_edge, %if.then.i30.lr.ph.i
  %109 = phi ptr [ %108, %if.then.i30.lr.ph.i ], [ %149, %if.end18.i.if.then.i30.i_crit_edge ]
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %109) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i30.i.sctp_list_dequeue.exit.i_crit_edge

if.then.i30.i.sctp_list_dequeue.exit.i_crit_edge: ; preds = %if.then.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_list_dequeue.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i.i.i, align 4
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %109, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev1.i.i.i.i.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %113, ptr %111, align 4
  br label %sctp_list_dequeue.exit.i

sctp_list_dequeue.exit.i:                         ; preds = %if.end.i.i.i.i, %if.then.i30.i.sctp_list_dequeue.exit.i_crit_edge
  %116 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %109, ptr %109, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %109, ptr %prev.i3.i.i.i, align 4
  %cmp.not.i10 = icmp eq ptr %109, null
  br i1 %cmp.not.i10, label %sctp_list_dequeue.exit.i.sctp_outq_flush_transports.exit_crit_edge, label %while.body.i

sctp_list_dequeue.exit.i.sctp_outq_flush_transports.exit_crit_edge: ; preds = %sctp_list_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_outq_flush_transports.exit

while.body.i:                                     ; preds = %sctp_list_dequeue.exit.i
  %add.ptr.i = getelementptr i8, ptr %109, i32 -588
  %packet2.i = getelementptr i8, ptr %109, i32 -40
  %size.i.i = getelementptr i8, ptr %109, i32 -20
  %118 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i.i, align 4
  %overhead.i.i = getelementptr i8, ptr %109, i32 -24
  %120 = ptrtoint ptr %overhead.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %overhead.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %121)
  %cmp.i.not.i = icmp eq i32 %119, %121
  br i1 %cmp.i.not.i, label %while.body.i.if.end18.i_crit_edge, label %if.then.i

while.body.i.if.end18.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then.i:                                        ; preds = %while.body.i
  %122 = call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i.i.i.i.i.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %125, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %dst.i = getelementptr i8, ptr %109, i32 -396
  %126 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dst.i, align 8
  %tobool4.not.i = icmp eq ptr %127, null
  br i1 %tobool4.not.i, label %rcu_read_lock.exit.i.if.end.i12_crit_edge, label %land.lhs.true.i11

rcu_read_lock.exit.i.if.end.i12_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i12

land.lhs.true.i11:                                ; preds = %rcu_read_lock.exit.i
  %128 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %sk_dst_cache.i.i, align 4
  %call.i.i.i31.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i31.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i31.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %land.lhs.true.i11.__sk_dst_get.exit.i_crit_edge

land.lhs.true.i11.__sk_dst_get.exit.i_crit_edge:  ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %land.lhs.true.i11
  %call.i6.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %lor.lhs.false.i.i, label %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

lor.lhs.false.i.i:                                ; preds = %lockdep_sock_is_held.exit.i.i
  %call2.i.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i32.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i32.i, label %land.lhs.true.i33.i, label %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge

lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

land.lhs.true.i33.i:                              ; preds = %lor.lhs.false.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i33.i.__sk_dst_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i33.i.__sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i33.i
  %.b11.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, label %if.then.i34.i

land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

if.then.i34.i:                                    ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 2068, ptr noundef nonnull @.str.24) #8
  br label %__sk_dst_get.exit.i

__sk_dst_get.exit.i:                              ; preds = %if.then.i34.i, %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, %land.lhs.true.i33.i.__sk_dst_get.exit.i_crit_edge, %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge, %land.lhs.true.i11.__sk_dst_get.exit.i_crit_edge
  %130 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dst.i, align 8
  %cmp7.not.i = icmp eq ptr %129, %131
  br i1 %cmp7.not.i, label %__sk_dst_get.exit.i.if.end.i12_crit_edge, label %if.then8.i

__sk_dst_get.exit.i.if.end.i12_crit_edge:         ; preds = %__sk_dst_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i12

if.then8.i:                                       ; preds = %__sk_dst_get.exit.i
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %131, i32 0, i32 18
  %call.i.i.i35.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #8
  %132 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #8, !srcloc !91
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !92
  br label %dst_hold.exit.i

do.end10.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  br label %dst_hold.exit.i

dst_hold.exit.i:                                  ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %133 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dst.i, align 8
  call void @sk_setup_caps(ptr noundef %106, ptr noundef %134) #8
  br label %if.end.i12

if.end.i12:                                       ; preds = %dst_hold.exit.i, %__sk_dst_get.exit.i.if.end.i12_crit_edge, %rcu_read_lock.exit.i.if.end.i12_crit_edge
  %call.i36.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i36.i, label %if.end.i12.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i39.i

if.end.i12.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i39.i:                              ; preds = %if.end.i12
  %call1.i37.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i41.i

land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i41.i:                             ; preds = %land.lhs.true.i39.i
  %.b4.i40.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40.i, label %land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i42.i

land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i42.i:                                    ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i42.i, %land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i12.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !93
  %135 = call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i.i.i.i.i43.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i.i.i43.i to ptr
  %preempt_count.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %preempt_count.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %preempt_count.i.i.i.i44.i, align 4
  %sub.i.i.i.i = add i32 %138, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i44.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %139 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %5, align 4
  %call11.i = call i32 @sctp_packet_transmit(ptr noundef %packet2.i, i32 noundef %140) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %rcu_read_unlock.exit.i.if.end18.i_crit_edge

rcu_read_unlock.exit.i.if.end18.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then13.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i13 = sub i32 0, %call11.i
  %141 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ctx, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %sk16.i = getelementptr inbounds %struct.sctp_ep_common, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %sk16.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sk16.i, align 4
  %sk_err.i14 = getelementptr inbounds %struct.sock, ptr %146, i32 0, i32 51
  %147 = ptrtoint ptr %sk_err.i14 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %sub.i13, ptr %sk_err.i14, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %rcu_read_unlock.exit.i.if.end18.i_crit_edge, %while.body.i.if.end18.i_crit_edge
  call void @sctp_transport_burst_reset(ptr noundef %add.ptr.i) #8
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i.i = icmp eq ptr %149, %1
  br i1 %cmp.i.not.i.i, label %if.end18.i.sctp_outq_flush_transports.exit_crit_edge, label %if.end18.i.if.then.i30.i_crit_edge

if.end18.i.if.then.i30.i_crit_edge:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i30.i

if.end18.i.sctp_outq_flush_transports.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_outq_flush_transports.exit

sctp_outq_flush_transports.exit:                  ; preds = %if.end18.i.sctp_outq_flush_transports.exit_crit_edge, %sctp_list_dequeue.exit.i.sctp_outq_flush_transports.exit_crit_edge, %sctp_flush_out.sctp_outq_flush_transports.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_prsctp_prune(ptr noundef %asoc, ptr nocapture noundef readonly %sinfo, i32 noundef %msg_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %prsctp_capable, align 2
  %1 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sent_cnt_removable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 86
  %2 = ptrtoint ptr %sent_cnt_removable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sent_cnt_removable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %retransmit = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 7
  %call = tail call fastcc i32 @sctp_prsctp_prune_sent(ptr noundef %asoc, ptr noundef %sinfo, ptr noundef %retransmit, i32 noundef %msg_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %transport.0.in = phi ptr [ %transport.0, %for.body.for.cond_crit_edge ], [ %peer, %if.end.for.cond_crit_edge ]
  %msg_len.addr.0 = phi i32 [ %call8, %for.body.for.cond_crit_edge ], [ %call, %if.end.for.cond_crit_edge ]
  %4 = ptrtoint ptr %transport.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %transport.0 = load ptr, ptr %transport.0.in, align 8
  %cmp7.not = icmp eq ptr %transport.0, %peer
  br i1 %cmp7.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %transmitted = getelementptr inbounds %struct.sctp_transport, ptr %transport.0, i32 0, i32 44
  %call8 = tail call fastcc i32 @sctp_prsctp_prune_sent(ptr noundef %asoc, ptr noundef %sinfo, ptr noundef %transmitted, i32 noundef %msg_len.addr.0)
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %outqueue.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  %sched.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 2
  %5 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sched.i, align 4
  %unsched_all.i = getelementptr inbounds %struct.sctp_sched_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %unsched_all.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unsched_all.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  tail call void %8(ptr noundef %stream.i) #8
  %out_chunk_list.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 1
  %9 = ptrtoint ptr %out_chunk_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_chunk_list.i, align 4
  %cmp.not2.i = icmp eq ptr %10, %out_chunk_list.i
  br i1 %cmp.not2.i, label %for.end.sctp_prsctp_prune_unsent.exit_crit_edge, label %for.body.lr.ph.i

for.end.sctp_prsctp_prune_unsent.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_prsctp_prune_unsent.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %sinfo_timetolive15.i = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 88, i32 2
  %outcnt.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %msg_len.addr.05.i = phi i32 [ %msg_len.addr.0, %for.body.lr.ph.i ], [ %msg_len.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %chk.03.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %temp.06.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %chk.03.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %temp.06.i = load ptr, ptr %chk.03.i, align 4
  %msg.i = getelementptr inbounds %struct.sctp_chunk, ptr %chk.03.i, i32 0, i32 18
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg.i, align 4
  %abandoned.i = getelementptr inbounds %struct.sctp_datamsg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %abandoned.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %abandoned.i, align 4
  %15 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %chk.03.i, i32 0, i32 10
  %16 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chunk_hdr.i, align 4
  %flags.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags.i, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %sinfo_flags.i = getelementptr inbounds %struct.sctp_chunk, ptr %chk.03.i, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %sinfo_flags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sinfo_flags.i, align 4
  %23 = and i16 %22, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %23)
  %cmp11.i = icmp eq i16 %23, 48
  br i1 %cmp11.i, label %lor.lhs.false13.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i
  %sinfo_timetolive.i = getelementptr inbounds %struct.sctp_chunk, ptr %chk.03.i, i32 0, i32 12, i32 5
  %24 = ptrtoint ptr %sinfo_timetolive.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sinfo_timetolive.i, align 4
  %26 = ptrtoint ptr %sinfo_timetolive15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sinfo_timetolive15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp16.not.i = icmp ugt i32 %25, %27
  br i1 %cmp16.not.i, label %lor.lhs.false13.i.if.end.i_crit_edge, label %lor.lhs.false13.i.for.inc.i_crit_edge

lor.lhs.false13.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false13.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false13.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %bf.set.i = or i8 %bf.load.i, 32
  %28 = ptrtoint ptr %abandoned.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.set.i, ptr %abandoned.i, align 4
  tail call void @sctp_sched_dequeue_common(ptr noundef %outqueue.i, ptr noundef %chk.03.i) #8
  %29 = ptrtoint ptr %sent_cnt_removable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sent_cnt_removable, align 8
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %sent_cnt_removable, align 8
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i, align 8
  %inc.i = add i64 %32, 1
  store i64 %inc.i, ptr %arrayidx.i, align 8
  %sinfo22.i = getelementptr inbounds %struct.sctp_chunk, ptr %chk.03.i, i32 0, i32 12
  %33 = ptrtoint ptr %sinfo22.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sinfo22.i, align 4
  %35 = ptrtoint ptr %outcnt.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %outcnt.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp26.i = icmp ult i16 %34, %36
  br i1 %cmp26.i, label %if.then28.i, label %if.end.i.if.end35.i_crit_edge

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then28.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i16 %34 to i32
  %mul17.i.i.i = shl nuw nsw i32 %conv.i.i, 4
  %call1.i.i = tail call ptr @__genradix_ptr(ptr noundef %stream.i, i32 noundef %mul17.i.i.i) #8
  %ext.i = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ext.i, align 4
  %arrayidx33.i = getelementptr [3 x i64], ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx33.i, align 8
  %inc34.i = add i64 %40, 1
  store i64 %inc34.i, ptr %arrayidx33.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then28.i, %if.end.i.if.end35.i_crit_edge
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %chk.03.i, i32 0, i32 5
  %41 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %truesize.i, align 8
  %add.neg.i = add i32 %msg_len.addr.05.i, -176
  %sub.i = sub i32 %add.neg.i, %44
  tail call void @sctp_chunk_free(ptr noundef %chk.03.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp36.i = icmp slt i32 %sub.i, 1
  br i1 %cmp36.i, label %if.end35.i.sctp_prsctp_prune_unsent.exit_crit_edge, label %if.end35.i.for.inc.i_crit_edge

if.end35.i.for.inc.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end35.i.sctp_prsctp_prune_unsent.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_prsctp_prune_unsent.exit

for.inc.i:                                        ; preds = %if.end35.i.for.inc.i_crit_edge, %lor.lhs.false13.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %msg_len.addr.1.i = phi i32 [ %sub.i, %if.end35.i.for.inc.i_crit_edge ], [ %msg_len.addr.05.i, %lor.lhs.false13.i.for.inc.i_crit_edge ], [ %msg_len.addr.05.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %msg_len.addr.05.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %temp.06.i, %out_chunk_list.i
  br i1 %cmp.not.i, label %for.inc.i.sctp_prsctp_prune_unsent.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.sctp_prsctp_prune_unsent.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_prsctp_prune_unsent.exit

sctp_prsctp_prune_unsent.exit:                    ; preds = %for.inc.i.sctp_prsctp_prune_unsent.exit_crit_edge, %if.end35.i.sctp_prsctp_prune_unsent.exit_crit_edge, %for.end.sctp_prsctp_prune_unsent.exit_crit_edge
  %45 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sched.i, align 4
  %sched_all.i = getelementptr inbounds %struct.sctp_sched_ops, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %sched_all.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sched_all.i, align 4
  tail call void %48(ptr noundef %stream.i) #8
  br label %cleanup

cleanup:                                          ; preds = %sctp_prsctp_prune_unsent.exit, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_prsctp_prune_sent(ptr noundef %asoc, ptr nocapture noundef readonly %sinfo, ptr noundef readonly %queue, i32 noundef %msg_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %sinfo_timetolive9 = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 5
  %abandoned16 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 8
  %prev.i.i78 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 8, i32 1
  %stream = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %sent_cnt_removable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 86
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 89, i32 2
  %retransmit = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 7
  %cmp22.not = icmp eq ptr %retransmit, %queue
  %outstanding_bytes = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 9
  %cmp.not93 = icmp eq ptr %1, %queue
  br i1 %cmp.not93, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %msg_len.addr.096 = phi i32 [ %msg_len.addr.1, %cleanup.for.body_crit_edge ], [ %msg_len, %entry.for.body_crit_edge ]
  %.pn.in94 = phi ptr [ %.pn97, %cleanup.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn97 = load ptr, ptr %.pn.in94, align 4
  %msg = getelementptr i8, ptr %.pn.in94, i32 144
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msg, align 4
  %abandoned = getelementptr inbounds %struct.sctp_datamsg, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %abandoned to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %abandoned, align 4
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %sinfo_flags = getelementptr i8, ptr %.pn.in94, i32 48
  %7 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sinfo_flags, align 4
  %9 = and i16 %8, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %9)
  %cmp6 = icmp eq i16 %9, 48
  br i1 %cmp6, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sinfo_timetolive = getelementptr i8, ptr %.pn.in94, i32 60
  %10 = ptrtoint ptr %sinfo_timetolive to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sinfo_timetolive, align 4
  %12 = ptrtoint ptr %sinfo_timetolive9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sinfo_timetolive9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp10.not = icmp ugt i32 %11, %13
  br i1 %cmp10.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %for.body.if.end_crit_edge
  %bf.set = or i8 %bf.load, 32
  %14 = ptrtoint ptr %abandoned to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.set, ptr %abandoned, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in94) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in94, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in94, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %.pn.in94, ptr %.pn.in94, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in94, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.pn.in94, ptr %prev.i3.i, align 4
  %subh.i = getelementptr i8, ptr %.pn.in94, i32 28
  %23 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subh.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_del_init.exit
  %pos.0.in.i = phi ptr [ %abandoned16, %list_del_init.exit ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %27 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %abandoned16
  br i1 %cmp.i.not.i, label %if.then8.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %subh4.i = getelementptr i8, ptr %pos.0.i, i32 28
  %28 = ptrtoint ptr %subh4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %subh4.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %sub.i = sub i32 %26, %31
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in94, ptr noundef %33, ptr noundef %35) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.sctp_insert_list.exit_crit_edge

if.then.i.sctp_insert_list.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_insert_list.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i77 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  br label %if.end9.sink.split.i

if.then8.critedge.i:                              ; preds = %for.cond.i
  %36 = ptrtoint ptr %prev.i.i78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i78, align 4
  %call.i.i17.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in94, ptr noundef %37, ptr noundef %abandoned16) #8
  br i1 %call.i.i17.i, label %if.then8.critedge.i.if.end9.sink.split.i_crit_edge, label %if.then8.critedge.i.sctp_insert_list.exit_crit_edge

if.then8.critedge.i.sctp_insert_list.exit_crit_edge: ; preds = %if.then8.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_insert_list.exit

if.then8.critedge.i.if.end9.sink.split.i_crit_edge: ; preds = %if.then8.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then8.critedge.i.if.end9.sink.split.i_crit_edge, %if.end.i.i.i
  %prev.i.sink.i = phi ptr [ %prev1.i.i.i77, %if.end.i.i.i ], [ %prev.i.i78, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %head.sink.i = phi ptr [ %35, %if.end.i.i.i ], [ %abandoned16, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %.sink23.i = phi ptr [ %33, %if.end.i.i.i ], [ %37, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %38 = ptrtoint ptr %prev.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.pn.in94, ptr %prev.i.sink.i, align 4
  %39 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %head.sink.i, ptr %.pn.in94, align 4
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %.sink23.i, ptr %prev.i3.i, align 4
  %41 = ptrtoint ptr %.sink23.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %.pn.in94, ptr %.sink23.i, align 4
  br label %sctp_insert_list.exit

sctp_insert_list.exit:                            ; preds = %if.end9.sink.split.i, %if.then8.critedge.i.sctp_insert_list.exit_crit_edge, %if.then.i.sctp_insert_list.exit_crit_edge
  %sinfo17 = getelementptr i8, ptr %.pn.in94, i32 44
  %42 = ptrtoint ptr %sinfo17 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sinfo17, align 4
  %conv.i = zext i16 %43 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #8
  %44 = ptrtoint ptr %sent_cnt_removable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sent_cnt_removable, align 8
  %dec = add i32 %45, -1
  store i32 %dec, ptr %sent_cnt_removable, align 8
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx, align 8
  %inc = add i64 %47, 1
  store i64 %inc, ptr %arrayidx, align 8
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %48 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ext, align 4
  %arrayidx19 = getelementptr %struct.sctp_stream_out_ext, ptr %49, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx19, align 8
  %inc20 = add i64 %51, 1
  store i64 %inc20, ptr %arrayidx19, align 8
  br i1 %cmp22.not, label %sctp_insert_list.exit.if.end40_crit_edge, label %land.lhs.true24

sctp_insert_list.exit.if.end40_crit_edge:         ; preds = %sctp_insert_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true24:                                  ; preds = %sctp_insert_list.exit
  %tsn_gap_acked = getelementptr i8, ptr %.pn.in94, i32 156
  %52 = ptrtoint ptr %tsn_gap_acked to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load25 = load i16, ptr %tsn_gap_acked, align 4
  %53 = and i16 %bf.load25, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool28.not = icmp eq i16 %53, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true24.if.end40_crit_edge

land.lhs.true24.if.end40_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then29:                                        ; preds = %land.lhs.true24
  %transport = getelementptr i8, ptr %.pn.in94, i32 148
  %54 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %transport, align 4
  %tobool30.not = icmp eq ptr %55, null
  br i1 %tobool30.not, label %if.then29.if.end35_crit_edge, label %if.then31

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_hdr.i = getelementptr i8, ptr %.pn.in94, i32 36
  %56 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %length.i, align 2
  %asoc.i = getelementptr i8, ptr %.pn.in94, i32 76
  %60 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %asoc.i, align 4
  %si.i.i = getelementptr inbounds %struct.sctp_association, ptr %61, i32 0, i32 60, i32 6
  %62 = ptrtoint ptr %si.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %si.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %63, align 4
  %sub.i79 = sub i16 %59, %65
  %conv33 = zext i16 %sub.i79 to i32
  %flight_size = getelementptr inbounds %struct.sctp_transport, ptr %55, i32 0, i32 16
  %66 = ptrtoint ptr %flight_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flight_size, align 8
  %sub = sub i32 %67, %conv33
  store i32 %sub, ptr %flight_size, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.then29.if.end35_crit_edge
  %chunk_hdr.i80 = getelementptr i8, ptr %.pn.in94, i32 36
  %68 = ptrtoint ptr %chunk_hdr.i80 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chunk_hdr.i80, align 4
  %length.i81 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %length.i81 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %length.i81, align 2
  %asoc.i82 = getelementptr i8, ptr %.pn.in94, i32 76
  %72 = ptrtoint ptr %asoc.i82 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %asoc.i82, align 4
  %si.i.i83 = getelementptr inbounds %struct.sctp_association, ptr %73, i32 0, i32 60, i32 6
  %74 = ptrtoint ptr %si.i.i83 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %si.i.i83, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %75, align 4
  %sub.i84 = sub i16 %71, %77
  %conv37 = zext i16 %sub.i84 to i32
  %78 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %outstanding_bytes, align 4
  %sub39 = sub i32 %79, %conv37
  store i32 %sub39, ptr %outstanding_bytes, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end35, %land.lhs.true24.if.end40_crit_edge, %sctp_insert_list.exit.if.end40_crit_edge
  %skb = getelementptr i8, ptr %.pn.in94, i32 16
  %80 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skb, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 20
  %82 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %truesize, align 8
  %add.neg = add i32 %msg_len.addr.096, -176
  %sub41 = sub i32 %add.neg, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41)
  %cmp42.inv = icmp sgt i32 %sub41, 0
  br i1 %cmp42.inv, label %if.end40.cleanup_crit_edge, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end40.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %msg_len.addr.1 = phi i32 [ %msg_len.addr.096, %lor.lhs.false.cleanup_crit_edge ], [ %msg_len.addr.096, %land.lhs.true.cleanup_crit_edge ], [ %sub41, %if.end40.cleanup_crit_edge ]
  %cmp.not = icmp eq ptr %.pn97, %queue
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end40.for.end_crit_edge, %entry.for.end_crit_edge
  %msg_len.addr.2 = phi i32 [ %msg_len, %entry.for.end_crit_edge ], [ %msg_len.addr.1, %cleanup.for.end_crit_edge ], [ %sub41, %if.end40.for.end_crit_edge ]
  ret i32 %msg_len.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_retransmit_mark(ptr noundef %q, ptr noundef %transport, i8 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %transmitted = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 44
  %0 = ptrtoint ptr %transmitted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transmitted, align 4
  %cmp.i.not179 = icmp eq ptr %1, %transmitted
  br i1 %cmp.i.not179, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %abandoned = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8
  %prev.i.i119 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8, i32 1
  %outstanding_bytes = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %reason)
  %cond = icmp eq i8 %reason, 1
  %flight_size51 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 16
  %rto_pending = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 3
  %retransmit = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7
  %prev.i.i166 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lchunk.0180 = phi ptr [ %1, %for.body.lr.ph ], [ %ltemp.0182, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %lchunk.0180 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ltemp.0182 = load ptr, ptr %lchunk.0180, align 4
  %add.ptr = getelementptr i8, ptr %lchunk.0180, i32 -16
  %call3 = tail call i32 @sctp_chunk_abandoned(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end18, label %if.then

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lchunk.0180) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0180, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %lchunk.0180 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lchunk.0180, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %lchunk.0180 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %lchunk.0180, ptr %lchunk.0180, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0180, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lchunk.0180, ptr %prev.i3.i, align 4
  %subh.i = getelementptr i8, ptr %lchunk.0180, i32 28
  %11 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subh.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_del_init.exit
  %pos.0.in.i = phi ptr [ %abandoned, %list_del_init.exit ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %abandoned
  br i1 %cmp.i.not.i, label %if.then8.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %subh4.i = getelementptr i8, ptr %pos.0.i, i32 28
  %16 = ptrtoint ptr %subh4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subh4.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %sub.i = sub i32 %14, %19
  %cmp.i117 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i117, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lchunk.0180, ptr noundef %21, ptr noundef %23) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.sctp_insert_list.exit_crit_edge

if.then.i.sctp_insert_list.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_insert_list.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  br label %if.end9.sink.split.i

if.then8.critedge.i:                              ; preds = %for.cond.i
  %24 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i119, align 4
  %call.i.i17.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lchunk.0180, ptr noundef %25, ptr noundef %abandoned) #8
  br i1 %call.i.i17.i, label %if.then8.critedge.i.if.end9.sink.split.i_crit_edge, label %if.then8.critedge.i.sctp_insert_list.exit_crit_edge

if.then8.critedge.i.sctp_insert_list.exit_crit_edge: ; preds = %if.then8.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_insert_list.exit

if.then8.critedge.i.if.end9.sink.split.i_crit_edge: ; preds = %if.then8.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then8.critedge.i.if.end9.sink.split.i_crit_edge, %if.end.i.i.i
  %prev.i.sink.i = phi ptr [ %prev1.i.i.i118, %if.end.i.i.i ], [ %prev.i.i119, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %head.sink.i = phi ptr [ %23, %if.end.i.i.i ], [ %abandoned, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %.sink23.i = phi ptr [ %21, %if.end.i.i.i ], [ %25, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %prev.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lchunk.0180, ptr %prev.i.sink.i, align 4
  %27 = ptrtoint ptr %lchunk.0180 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %head.sink.i, ptr %lchunk.0180, align 4
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.sink23.i, ptr %prev.i3.i, align 4
  %29 = ptrtoint ptr %.sink23.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %lchunk.0180, ptr %.sink23.i, align 4
  br label %sctp_insert_list.exit

sctp_insert_list.exit:                            ; preds = %if.end9.sink.split.i, %if.then8.critedge.i.sctp_insert_list.exit_crit_edge, %if.then.i.sctp_insert_list.exit_crit_edge
  %tsn_gap_acked = getelementptr i8, ptr %lchunk.0180, i32 156
  %30 = ptrtoint ptr %tsn_gap_acked to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %tsn_gap_acked, align 4
  %31 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool5.not = icmp eq i16 %31, 0
  br i1 %tobool5.not, label %if.then6, label %sctp_insert_list.exit.for.inc_crit_edge

sctp_insert_list.exit.for.inc_crit_edge:          ; preds = %sctp_insert_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %sctp_insert_list.exit
  %transport7 = getelementptr i8, ptr %lchunk.0180, i32 148
  %32 = ptrtoint ptr %transport7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transport7, align 4
  %tobool8.not = icmp eq ptr %33, null
  br i1 %tobool8.not, label %if.then6.if.end_crit_edge, label %if.then9

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_hdr.i = getelementptr i8, ptr %lchunk.0180, i32 36
  %34 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %length.i, align 2
  %asoc.i = getelementptr i8, ptr %lchunk.0180, i32 76
  %38 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %asoc.i, align 4
  %si.i.i = getelementptr inbounds %struct.sctp_association, ptr %39, i32 0, i32 60, i32 6
  %40 = ptrtoint ptr %si.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %si.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 4
  %sub.i120 = sub i16 %37, %43
  %conv = zext i16 %sub.i120 to i32
  %flight_size = getelementptr inbounds %struct.sctp_transport, ptr %33, i32 0, i32 16
  %44 = ptrtoint ptr %flight_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flight_size, align 8
  %sub = sub i32 %45, %conv
  store i32 %sub, ptr %flight_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6.if.end_crit_edge
  %chunk_hdr.i121 = getelementptr i8, ptr %lchunk.0180, i32 36
  %46 = ptrtoint ptr %chunk_hdr.i121 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chunk_hdr.i121, align 4
  %length.i122 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %length.i122 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %length.i122, align 2
  %asoc.i123 = getelementptr i8, ptr %lchunk.0180, i32 76
  %50 = ptrtoint ptr %asoc.i123 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asoc.i123, align 4
  %si.i.i124 = getelementptr inbounds %struct.sctp_association, ptr %51, i32 0, i32 60, i32 6
  %52 = ptrtoint ptr %si.i.i124 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %si.i.i124, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 4
  %sub.i125 = sub i16 %49, %55
  %conv13 = zext i16 %sub.i125 to i32
  %56 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %outstanding_bytes, align 4
  %sub14 = sub i32 %57, %conv13
  store i32 %sub14, ptr %outstanding_bytes, align 4
  %58 = load ptr, ptr %chunk_hdr.i121, align 4
  %length.i127 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %length.i127 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %length.i127, align 2
  %61 = load ptr, ptr %asoc.i123, align 4
  %si.i.i129 = getelementptr inbounds %struct.sctp_association, ptr %61, i32 0, i32 60, i32 6
  %62 = ptrtoint ptr %si.i.i129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %si.i.i129, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %63, align 4
  %sub.i130 = sub i16 %60, %65
  %conv16 = zext i16 %sub.i130 to i32
  %66 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %q, align 4
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %67, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rwnd, align 8
  %add = add i32 %69, %conv16
  store i32 %add, ptr %rwnd, align 8
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %fast_retransmit = getelementptr i8, ptr %lchunk.0180, i32 156
  %70 = ptrtoint ptr %fast_retransmit to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load21 = load i16, ptr %fast_retransmit, align 4
  br i1 %cond, label %land.lhs.true, label %land.lhs.true29

land.lhs.true:                                    ; preds = %if.end18
  %bf.clear22 = and i16 %bf.load21, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.clear22)
  %cmp24 = icmp eq i16 %bf.clear22, 1
  br i1 %cmp24, label %land.lhs.true.if.then35_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

land.lhs.true29:                                  ; preds = %if.end18
  %71 = and i16 %bf.load21, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool34.not = icmp eq i16 %71, 0
  br i1 %tobool34.not, label %land.lhs.true29.if.then35_crit_edge, label %land.lhs.true29.for.inc_crit_edge

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true29.if.then35_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %land.lhs.true29.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge
  %chunk_hdr.i131 = getelementptr i8, ptr %lchunk.0180, i32 36
  %72 = ptrtoint ptr %chunk_hdr.i131 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chunk_hdr.i131, align 4
  %length.i132 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %length.i132 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %length.i132, align 2
  %asoc.i133 = getelementptr i8, ptr %lchunk.0180, i32 76
  %76 = ptrtoint ptr %asoc.i133 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %asoc.i133, align 4
  %si.i.i134 = getelementptr inbounds %struct.sctp_association, ptr %77, i32 0, i32 60, i32 6
  %78 = ptrtoint ptr %si.i.i134 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %si.i.i134, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %79, align 4
  %sub.i135 = sub i16 %75, %81
  %conv37 = zext i16 %sub.i135 to i32
  %82 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %q, align 4
  %rwnd40 = getelementptr inbounds %struct.sctp_association, ptr %83, i32 0, i32 5, i32 1
  %84 = ptrtoint ptr %rwnd40 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rwnd40, align 8
  %add41 = add i32 %85, %conv37
  store i32 %add41, ptr %rwnd40, align 8
  %86 = load ptr, ptr %chunk_hdr.i131, align 4
  %length.i137 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %length.i137 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %length.i137, align 2
  %89 = load ptr, ptr %asoc.i133, align 4
  %si.i.i139 = getelementptr inbounds %struct.sctp_association, ptr %89, i32 0, i32 60, i32 6
  %90 = ptrtoint ptr %si.i.i139 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %si.i.i139, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %91, align 4
  %sub.i140 = sub i16 %88, %93
  %conv43 = zext i16 %sub.i140 to i32
  %94 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %outstanding_bytes, align 4
  %sub45 = sub i32 %95, %conv43
  store i32 %sub45, ptr %outstanding_bytes, align 4
  %transport46 = getelementptr i8, ptr %lchunk.0180, i32 148
  %96 = ptrtoint ptr %transport46 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %transport46, align 4
  %tobool47.not = icmp eq ptr %97, null
  br i1 %tobool47.not, label %if.then35.if.end53_crit_edge, label %if.then48

if.then35.if.end53_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %chunk_hdr.i131 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chunk_hdr.i131, align 4
  %length.i142 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %length.i142 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %length.i142, align 2
  %102 = ptrtoint ptr %asoc.i133 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %asoc.i133, align 4
  %si.i.i144 = getelementptr inbounds %struct.sctp_association, ptr %103, i32 0, i32 60, i32 6
  %104 = ptrtoint ptr %si.i.i144 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %si.i.i144, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %105, align 4
  %sub.i145 = sub i16 %101, %107
  %conv50 = zext i16 %sub.i145 to i32
  %108 = ptrtoint ptr %flight_size51 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flight_size51, align 8
  %sub52 = sub i32 %109, %conv50
  store i32 %sub52, ptr %flight_size51, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.then35.if.end53_crit_edge
  %tsn_missing_report = getelementptr i8, ptr %lchunk.0180, i32 156
  %110 = ptrtoint ptr %tsn_missing_report to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load54 = load i16, ptr %tsn_missing_report, align 4
  %bf.clear55 = and i16 %bf.load54, -13
  store i16 %bf.clear55, ptr %tsn_missing_report, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load54)
  %tobool58.not = icmp sgt i16 %bf.load54, -1
  br i1 %tobool58.not, label %if.end53.if.end67_crit_edge, label %if.then59

if.end53.if.end67_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear62 = and i16 %bf.load54, 32755
  %111 = ptrtoint ptr %tsn_missing_report to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %bf.clear62, ptr %tsn_missing_report, align 4
  %112 = ptrtoint ptr %rto_pending to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load64 = load i8, ptr %rto_pending, align 4
  %bf.clear65 = and i8 %bf.load64, 127
  store i8 %bf.clear65, ptr %rto_pending, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then59, %if.end53.if.end67_crit_edge
  %call.i.i146 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lchunk.0180) #8
  br i1 %call.i.i146, label %if.end.i.i149, label %if.end67.list_del_init.exit151_crit_edge

if.end67.list_del_init.exit151_crit_edge:         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit151

if.end.i.i149:                                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i147 = getelementptr inbounds %struct.list_head, ptr %lchunk.0180, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i.i147 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i.i147, align 4
  %115 = ptrtoint ptr %lchunk.0180 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lchunk.0180, align 4
  %prev1.i.i.i148 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %prev1.i.i.i148 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev1.i.i.i148, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %116, ptr %114, align 4
  br label %list_del_init.exit151

list_del_init.exit151:                            ; preds = %if.end.i.i149, %if.end67.list_del_init.exit151_crit_edge
  %119 = ptrtoint ptr %lchunk.0180 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %lchunk.0180, ptr %lchunk.0180, align 4
  %prev.i3.i150 = getelementptr inbounds %struct.list_head, ptr %lchunk.0180, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i3.i150 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %lchunk.0180, ptr %prev.i3.i150, align 4
  %subh.i152 = getelementptr i8, ptr %lchunk.0180, i32 28
  %121 = ptrtoint ptr %subh.i152 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %subh.i152, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  br label %for.cond.i156

for.cond.i156:                                    ; preds = %for.body.i160.for.cond.i156_crit_edge, %list_del_init.exit151
  %pos.0.in.i153 = phi ptr [ %retransmit, %list_del_init.exit151 ], [ %pos.0.i154, %for.body.i160.for.cond.i156_crit_edge ]
  %125 = ptrtoint ptr %pos.0.in.i153 to i32
  call void @__asan_load4_noabort(i32 %125)
  %pos.0.i154 = load ptr, ptr %pos.0.in.i153, align 4
  %cmp.i.not.i155 = icmp eq ptr %pos.0.i154, %retransmit
  br i1 %cmp.i.not.i155, label %if.then8.critedge.i168, label %for.body.i160

for.body.i160:                                    ; preds = %for.cond.i156
  %subh4.i157 = getelementptr i8, ptr %pos.0.i154, i32 28
  %126 = ptrtoint ptr %subh4.i157 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %subh4.i157, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %sub.i158 = sub i32 %124, %129
  %cmp.i159 = icmp slt i32 %sub.i158, 0
  br i1 %cmp.i159, label %if.then.i163, label %for.body.i160.for.cond.i156_crit_edge

for.body.i160.for.cond.i156_crit_edge:            ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i156

if.then.i163:                                     ; preds = %for.body.i160
  %prev.i161 = getelementptr inbounds %struct.list_head, ptr %pos.0.i154, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i161 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i161, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %call.i.i.i162 = tail call zeroext i1 @__list_add_valid(ptr noundef %lchunk.0180, ptr noundef %131, ptr noundef %133) #8
  br i1 %call.i.i.i162, label %if.end.i.i.i165, label %if.then.i163.for.inc_crit_edge

if.then.i163.for.inc_crit_edge:                   ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i.i165:                                  ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i164 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  br label %if.end9.sink.split.i173

if.then8.critedge.i168:                           ; preds = %for.cond.i156
  %134 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i166, align 4
  %call.i.i17.i167 = tail call zeroext i1 @__list_add_valid(ptr noundef %lchunk.0180, ptr noundef %135, ptr noundef %retransmit) #8
  br i1 %call.i.i17.i167, label %if.then8.critedge.i168.if.end9.sink.split.i173_crit_edge, label %if.then8.critedge.i168.for.inc_crit_edge

if.then8.critedge.i168.for.inc_crit_edge:         ; preds = %if.then8.critedge.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8.critedge.i168.if.end9.sink.split.i173_crit_edge: ; preds = %if.then8.critedge.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i173

if.end9.sink.split.i173:                          ; preds = %if.then8.critedge.i168.if.end9.sink.split.i173_crit_edge, %if.end.i.i.i165
  %prev.i.sink.i169 = phi ptr [ %prev1.i.i.i164, %if.end.i.i.i165 ], [ %prev.i.i166, %if.then8.critedge.i168.if.end9.sink.split.i173_crit_edge ]
  %head.sink.i170 = phi ptr [ %133, %if.end.i.i.i165 ], [ %retransmit, %if.then8.critedge.i168.if.end9.sink.split.i173_crit_edge ]
  %.sink23.i171 = phi ptr [ %131, %if.end.i.i.i165 ], [ %135, %if.then8.critedge.i168.if.end9.sink.split.i173_crit_edge ]
  %136 = ptrtoint ptr %prev.i.sink.i169 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %lchunk.0180, ptr %prev.i.sink.i169, align 4
  %137 = ptrtoint ptr %lchunk.0180 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %head.sink.i170, ptr %lchunk.0180, align 4
  %138 = ptrtoint ptr %prev.i3.i150 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %.sink23.i171, ptr %prev.i3.i150, align 4
  %139 = ptrtoint ptr %.sink23.i171 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %lchunk.0180, ptr %.sink23.i171, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end9.sink.split.i173, %if.then8.critedge.i168.for.inc_crit_edge, %if.then.i163.for.inc_crit_edge, %land.lhs.true29.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end, %sctp_insert_list.exit.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %ltemp.0182, %transmitted
  br i1 %cmp.i.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_retransmit_mark.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_retransmit_mark, %if.then76)) #8
          to label %do.end [label %if.then76], !srcloc !83

if.then76:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv77 = zext i8 %reason to i32
  %cwnd = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 13
  %140 = ptrtoint ptr %cwnd to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cwnd, align 4
  %ssthresh = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 14
  %142 = ptrtoint ptr %ssthresh to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ssthresh, align 8
  %flight_size78 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 16
  %144 = ptrtoint ptr %flight_size78 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flight_size78, align 8
  %partial_bytes_acked = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 15
  %146 = ptrtoint ptr %partial_bytes_acked to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %partial_bytes_acked, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_retransmit_mark.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %transport, i32 noundef %conv77, i32 noundef %141, i32 noundef %143, i32 noundef %145, i32 noundef %147) #8
  br label %do.end

do.end:                                           ; preds = %if.then76, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_chunk_abandoned(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_retransmit(ptr noundef %q, ptr noundef %transport, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %net1 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 8
  %4 = zext i32 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %reason, label %do.body247 [
    i32 0, label %do.body2
    i32 1, label %do.body59
    i32 2, label %do.body122
    i32 3, label %do.body185
  ]

do.body2:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !87
  %sctp = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38
  %6 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %arrayidx to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx15, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add16 = add i32 %17, 1
  store i32 %add16, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.body2.do.end31_crit_edge, !prof !85

do.body2.do.end31_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end31

do.end31:                                         ; preds = %if.then, %do.body2.do.end31_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #8, !srcloc !86
  tail call void @sctp_transport_lower_cwnd(ptr noundef %transport, i32 noundef 0) #8
  %asoc38 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %19 = ptrtoint ptr %asoc38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asoc38, align 8
  %retran_path = getelementptr inbounds %struct.sctp_association, ptr %20, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %retran_path to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %retran_path, align 4
  %cmp39 = icmp eq ptr %22, %transport
  br i1 %cmp39, label %if.then41, label %do.end31.if.end43_crit_edge

do.end31.if.end43_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sctp_assoc_update_retran_path(ptr noundef %20) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.end31.if.end43_crit_edge
  %23 = ptrtoint ptr %asoc38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %asoc38, align 8
  %unack_data = getelementptr inbounds %struct.sctp_association, ptr %24, i32 0, i32 41
  %25 = ptrtoint ptr %unack_data to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %unack_data, align 2
  %conv45 = zext i16 %26 to i32
  %rtx_data_chunks = getelementptr inbounds %struct.sctp_association, ptr %24, i32 0, i32 42
  %27 = ptrtoint ptr %rtx_data_chunks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rtx_data_chunks, align 8
  %add47 = add i32 %28, %conv45
  store i32 %add47, ptr %rtx_data_chunks, align 8
  %state = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48, i32 4
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp49 = icmp eq i8 %30, 3
  br i1 %cmp49, label %land.lhs.true, label %if.end43.if.then256_crit_edge

if.end43.if.then256_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then256

land.lhs.true:                                    ; preds = %if.end43
  %31 = ptrtoint ptr %asoc38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asoc38, align 8
  %unack_data52 = getelementptr inbounds %struct.sctp_association, ptr %32, i32 0, i32 41
  %33 = ptrtoint ptr %unack_data52 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %unack_data52, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool54.not = icmp eq i16 %34, 0
  br i1 %tobool54.not, label %land.lhs.true.if.then256_crit_edge, label %if.then55

land.lhs.true.if.then256_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then256

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sctp_transport_reset_probe_timer(ptr noundef %transport) #8
  br label %if.then256

do.body59:                                        ; preds = %entry
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !87
  %sctp81 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38
  %36 = ptrtoint ptr %sctp81 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sctp81, align 8
  %arrayidx84 = getelementptr [34 x i32], ptr %37, i32 0, i32 29
  %38 = ptrtoint ptr %arrayidx84 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i287 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i287 to ptr
  %cpu87 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu87, align 4
  %arrayidx88 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %44, %38
  %45 = inttoptr i32 %add89 to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add90 = add i32 %47, 1
  store i32 %add90, ptr %45, align 4
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i288 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i288)
  %tobool101.not = icmp eq i32 %and.i.i288, 0
  br i1 %tobool101.not, label %if.then110, label %do.body59.sw.epilog_crit_edge, !prof !85

do.body59.sw.epilog_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then110:                                       ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %sw.epilog

do.body122:                                       ; preds = %entry
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !87
  %sctp144 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38
  %50 = ptrtoint ptr %sctp144 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sctp144, align 8
  %arrayidx147 = getelementptr [34 x i32], ptr %51, i32 0, i32 28
  %52 = ptrtoint ptr %arrayidx147 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i289 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i289 to ptr
  %cpu150 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu150 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu150, align 4
  %arrayidx151 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx151, align 4
  %add152 = add i32 %58, %52
  %59 = inttoptr i32 %add152 to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add153 = add i32 %61, 1
  store i32 %add153, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i290 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i290)
  %tobool164.not = icmp eq i32 %and.i.i290, 0
  br i1 %tobool164.not, label %if.then173, label %do.body122.do.end176_crit_edge, !prof !85

do.body122.do.end176_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end176

if.then173:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end176

do.end176:                                        ; preds = %if.then173, %do.body122.do.end176_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #8, !srcloc !86
  br label %sw.epilog.thread295

do.body185:                                       ; preds = %entry
  %63 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !87
  %sctp207 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38
  %64 = ptrtoint ptr %sctp207 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sctp207, align 8
  %arrayidx210 = getelementptr [34 x i32], ptr %65, i32 0, i32 26
  %66 = ptrtoint ptr %arrayidx210 to i32
  %67 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i291 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i291 to ptr
  %cpu213 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %cpu213 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cpu213, align 4
  %arrayidx214 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx214, align 4
  %add215 = add i32 %72, %66
  %73 = inttoptr i32 %add215 to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add216 = add i32 %75, 1
  store i32 %add216, ptr %73, align 4
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i292 = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i292)
  %tobool227.not = icmp eq i32 %and.i.i292, 0
  br i1 %tobool227.not, label %if.then236, label %do.body185.do.end239_crit_edge, !prof !85

do.body185.do.end239_crit_edge:                   ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end239

if.then236:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end239

do.end239:                                        ; preds = %if.then236, %do.body185.do.end239_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %63) #8, !srcloc !86
  %asoc246 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %77 = ptrtoint ptr %asoc246 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %asoc246, align 8
  %init_retries = getelementptr inbounds %struct.sctp_association, ptr %78, i32 0, i32 17
  %79 = ptrtoint ptr %init_retries to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %init_retries, align 2
  %inc = add i16 %80, 1
  store i16 %inc, ptr %init_retries, align 2
  br label %sw.epilog.thread295

do.body247:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/outqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 567, 0\0A.popsection", ""() #8, !srcloc !94
  unreachable

sw.epilog.thread295:                              ; preds = %do.end239, %do.end176
  %conv253296 = trunc i32 %reason to i8
  tail call void @sctp_retransmit_mark(ptr noundef %q, ptr noundef %transport, i8 noundef zeroext %conv253296)
  br label %if.then262

sw.epilog:                                        ; preds = %if.then110, %do.body59.sw.epilog_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #8, !srcloc !86
  tail call void @sctp_transport_lower_cwnd(ptr noundef %transport, i32 noundef 1) #8
  %fast_rtx = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 10
  %81 = ptrtoint ptr %fast_rtx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %fast_rtx, align 4
  tail call void @sctp_retransmit_mark(ptr noundef %q, ptr noundef %transport, i8 noundef zeroext 1)
  br label %if.end263

if.then256:                                       ; preds = %if.then55, %land.lhs.true.if.then256_crit_edge, %if.end43.if.then256_crit_edge
  tail call void @sctp_retransmit_mark(ptr noundef %q, ptr noundef %transport, i8 noundef zeroext 0)
  %82 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %q, align 4
  %si = getelementptr inbounds %struct.sctp_association, ptr %83, i32 0, i32 60, i32 6
  %84 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %si, align 4
  %generate_ftsn = getelementptr inbounds %struct.sctp_stream_interleave, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %generate_ftsn to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %generate_ftsn, align 4
  %ctsn_ack_point = getelementptr inbounds %struct.sctp_association, ptr %83, i32 0, i32 36
  %88 = ptrtoint ptr %ctsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ctsn_ack_point, align 4
  tail call void %87(ptr noundef %q, i32 noundef %89) #8
  br label %if.then262

if.then262:                                       ; preds = %if.then256, %sw.epilog.thread295
  tail call fastcc void @sctp_outq_flush(ptr noundef %q, i32 noundef 1, i32 noundef 2592)
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %sw.epilog
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_lower_cwnd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_update_retran_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset_probe_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_outq_uncork(ptr noundef %q, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cork = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %cork to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cork, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %cork to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cork, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @sctp_outq_flush(ptr noundef %q, i32 noundef 0, i32 noundef %gfp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_outq_sack(ptr noundef %q, ptr noundef %chunk) local_unnamed_addr #0 align 64 {
entry:
  %highest_new_tsn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %2 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subh, align 4
  %variable = getelementptr inbounds %struct.sctp_sackhdr, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %highest_new_tsn) #8
  %peer = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_path, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sctp_probe_path, i32 0, i32 1), ptr blockaddress(@sctp_outq_sack, %for.cond)) #8
          to label %if.end [label %for.cond], !srcloc !83

for.cond:                                         ; preds = %for.body, %entry
  %transport.0.in = phi ptr [ %transport.0, %for.body ], [ %peer, %entry ]
  %6 = ptrtoint ptr %transport.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %transport.0 = load ptr, ptr %transport.0.in, align 4
  %cmp.not = icmp eq ptr %transport.0, %peer
  br i1 %cmp.not, label %for.cond.if.end_crit_edge, label %for.body

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_sctp_probe_path(ptr noundef %transport.0, ptr noundef %1)
  br label %for.cond

if.end:                                           ; preds = %for.cond.if.end_crit_edge, %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %num_gap_ack_blocks = getelementptr inbounds %struct.sctp_sackhdr, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %num_gap_ack_blocks to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_gap_ack_blocks, align 4
  %conv = zext i16 %10 to i32
  %11 = zext i16 %10 to i64
  %gapcnt = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 85, i32 9
  %12 = ptrtoint ptr %gapcnt to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gapcnt, align 8
  %add = add i64 %13, %11
  store i64 %add, ptr %gapcnt, align 8
  %changeover_active = getelementptr inbounds %struct.sctp_transport, ptr %5, i32 0, i32 47, i32 1
  %14 = ptrtoint ptr %changeover_active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %changeover_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end.if.end47_crit_edge, label %if.then9

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then9:                                         ; preds = %if.end
  %cacc = getelementptr inbounds %struct.sctp_transport, ptr %5, i32 0, i32 47
  %16 = ptrtoint ptr %cacc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cacc, align 4
  %sub = sub i32 %17, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 1
  br i1 %cmp11, label %if.then13, label %lor.lhs.false.critedge

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %changeover_active to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %changeover_active, align 4
  br label %if.then20

lor.lhs.false.critedge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool19.not = icmp eq i16 %10, 0
  br i1 %tobool19.not, label %lor.lhs.false.critedge.if.end53_crit_edge, label %lor.lhs.false.critedge.if.then20_crit_edge

lor.lhs.false.critedge.if.then20_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false.critedge.if.end53_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then20:                                        ; preds = %lor.lhs.false.critedge.if.then20_crit_edge, %if.then13
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %transport.1278 = load ptr, ptr %peer, align 4
  %cmp27.not279 = icmp eq ptr %transport.1278, %peer
  br i1 %cmp27.not279, label %if.then20.if.end47_crit_edge, label %for.body30.lr.ph

if.then20.if.end47_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

for.body30.lr.ph:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool35.not = icmp eq i16 %10, 0
  br label %for.body30

for.body30:                                       ; preds = %for.inc39.for.body30_crit_edge, %for.body30.lr.ph
  %transport.1280 = phi ptr [ %transport.1278, %for.body30.lr.ph ], [ %transport.1, %for.inc39.for.body30_crit_edge ]
  br i1 %cmp11, label %if.then32, label %for.body30.if.end34_crit_edge

for.body30.if.end34_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  %cycling_changeover = getelementptr inbounds %struct.sctp_transport, ptr %transport.1280, i32 0, i32 47, i32 2
  %20 = ptrtoint ptr %cycling_changeover to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %cycling_changeover, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %for.body30.if.end34_crit_edge
  br i1 %tobool35.not, label %if.end34.for.inc39_crit_edge, label %if.then36

if.end34.for.inc39_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %cacc_saw_newack = getelementptr inbounds %struct.sctp_transport, ptr %transport.1280, i32 0, i32 47, i32 3
  %21 = ptrtoint ptr %cacc_saw_newack to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %cacc_saw_newack, align 2
  br label %for.inc39

for.inc39:                                        ; preds = %if.then36, %if.end34.for.inc39_crit_edge
  %22 = ptrtoint ptr %transport.1280 to i32
  call void @__asan_load4_noabort(i32 %22)
  %transport.1 = load ptr, ptr %transport.1280, align 4
  %cmp27.not = icmp eq ptr %transport.1, %peer
  br i1 %cmp27.not, label %for.inc39.if.end47_crit_edge, label %for.inc39.for.body30_crit_edge

for.inc39.for.body30_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

for.inc39.if.end47_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end47:                                         ; preds = %for.inc39.if.end47_crit_edge, %if.then20.if.end47_crit_edge, %if.end.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool48.not = icmp eq i16 %10, 0
  br i1 %tobool48.not, label %if.end47.if.end53_crit_edge, label %if.then49

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %sub50 = add nsw i32 %conv, -1
  %arrayidx = getelementptr %union.sctp_sack_variable, ptr %variable, i32 %sub50
  %end = getelementptr inbounds %struct.sctp_gap_ack_block, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %end to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %end, align 2
  %conv51 = zext i16 %24 to i32
  %add52 = add i32 %8, %conv51
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end47.if.end53_crit_edge, %lor.lhs.false.critedge.if.end53_crit_edge
  %tobool48.not275 = phi i1 [ false, %if.then49 ], [ true, %if.end47.if.end53_crit_edge ], [ true, %lor.lhs.false.critedge.if.end53_crit_edge ]
  %highest_tsn.0 = phi i32 [ %add52, %if.then49 ], [ %8, %if.end47.if.end53_crit_edge ], [ %8, %lor.lhs.false.critedge.if.end53_crit_edge ]
  %highest_sacked = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 38
  %25 = ptrtoint ptr %highest_sacked to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %highest_sacked, align 4
  %sub54 = sub i32 %26, %highest_tsn.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub54)
  %cmp55 = icmp slt i32 %sub54, 0
  br i1 %cmp55, label %if.then57, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %highest_sacked to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %highest_tsn.0, ptr %highest_sacked, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end53.if.end59_crit_edge
  %28 = ptrtoint ptr %highest_new_tsn to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %8, ptr %highest_new_tsn, align 4
  %retransmit = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7
  call fastcc void @sctp_check_transmitted(ptr noundef %q, ptr noundef %retransmit, ptr noundef null, ptr noundef null, ptr noundef %3, ptr noundef nonnull %highest_new_tsn)
  %29 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %29)
  %transport.2281 = load ptr, ptr %peer, align 4
  %cmp66.not282 = icmp eq ptr %transport.2281, %peer
  br i1 %cmp66.not282, label %if.end59.for.end81_crit_edge, label %for.body69.lr.ph

if.end59.for.end81_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end81

for.body69.lr.ph:                                 ; preds = %if.end59
  %source = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 16
  br label %for.body69

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %for.body69.lr.ph
  %transport.2284 = phi ptr [ %transport.2281, %for.body69.lr.ph ], [ %transport.2, %for.body69.for.body69_crit_edge ]
  %count_of_newacks.0283 = phi i32 [ 0, %for.body69.lr.ph ], [ %spec.select, %for.body69.for.body69_crit_edge ]
  %transmitted = getelementptr inbounds %struct.sctp_transport, ptr %transport.2284, i32 0, i32 44
  call fastcc void @sctp_check_transmitted(ptr noundef %q, ptr noundef %transmitted, ptr noundef %transport.2284, ptr noundef %source, ptr noundef %3, ptr noundef nonnull %highest_new_tsn)
  %cacc_saw_newack71 = getelementptr inbounds %struct.sctp_transport, ptr %transport.2284, i32 0, i32 47, i32 3
  %30 = ptrtoint ptr %cacc_saw_newack71 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cacc_saw_newack71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool72.not = icmp ne i8 %31, 0
  %inc = zext i1 %tobool72.not to i32
  %spec.select = add i32 %count_of_newacks.0283, %inc
  %32 = ptrtoint ptr %transport.2284 to i32
  call void @__asan_load4_noabort(i32 %32)
  %transport.2 = load ptr, ptr %transport.2284, align 4
  %cmp66.not = icmp eq ptr %transport.2, %peer
  br i1 %cmp66.not, label %for.body69.for.end81_crit_edge, label %for.body69.for.body69_crit_edge

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body69

for.body69.for.end81_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end81

for.end81:                                        ; preds = %for.body69.for.end81_crit_edge, %if.end59.for.end81_crit_edge
  %count_of_newacks.0.lcssa = phi i32 [ 0, %if.end59.for.end81_crit_edge ], [ %spec.select, %for.body69.for.end81_crit_edge ]
  %ctsn_ack_point = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 36
  %33 = ptrtoint ptr %ctsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctsn_ack_point, align 4
  %sub82 = sub i32 %34, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub82)
  %cmp83 = icmp slt i32 %sub82, 0
  br i1 %cmp83, label %if.then85, label %for.end81.if.end87_crit_edge

for.end81.if.end87_crit_edge:                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then85:                                        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %ctsn_ack_point to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %8, ptr %ctsn_ack_point, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %for.end81.if.end87_crit_edge
  br i1 %tobool48.not275, label %if.end87.if.end114_crit_edge, label %if.then89

if.end87.if.end114_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then89:                                        ; preds = %if.end87
  %fast_recovery = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 40
  %36 = ptrtoint ptr %fast_recovery to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fast_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool91.not = icmp eq i8 %37, 0
  %cmp83.not = xor i1 %cmp83, true
  %brmerge = select i1 %tobool91.not, i1 true, i1 %cmp83.not
  br i1 %brmerge, label %if.then89.if.end95_crit_edge, label %if.then94

if.then89.if.end95_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %highest_new_tsn to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %highest_tsn.0, ptr %highest_new_tsn, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.then89.if.end95_crit_edge
  %39 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %39)
  %transport.3285 = load ptr, ptr %peer, align 4
  %cmp102.not286 = icmp eq ptr %transport.3285, %peer
  br i1 %cmp102.not286, label %if.end95.if.end114_crit_edge, label %for.body105.lr.ph

if.end95.if.end114_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

for.body105.lr.ph:                                ; preds = %if.end95
  %40 = ptrtoint ptr %highest_new_tsn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %highest_new_tsn, align 4
  br label %for.body105

for.body105:                                      ; preds = %for.body105.for.body105_crit_edge, %for.body105.lr.ph
  %transport.3287 = phi ptr [ %transport.3285, %for.body105.lr.ph ], [ %transport.3, %for.body105.for.body105_crit_edge ]
  %transmitted106 = getelementptr inbounds %struct.sctp_transport, ptr %transport.3287, i32 0, i32 44
  tail call fastcc void @sctp_mark_missing(ptr noundef %q, ptr noundef %transmitted106, ptr noundef %transport.3287, i32 noundef %41, i32 noundef %count_of_newacks.0.lcssa)
  %42 = ptrtoint ptr %transport.3287 to i32
  call void @__asan_load4_noabort(i32 %42)
  %transport.3 = load ptr, ptr %transport.3287, align 4
  %cmp102.not = icmp eq ptr %transport.3, %peer
  br i1 %cmp102.not, label %for.body105.if.end114_crit_edge, label %for.body105.for.body105_crit_edge

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body105

for.body105.if.end114_crit_edge:                  ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.end114:                                        ; preds = %for.body105.if.end114_crit_edge, %if.end95.if.end114_crit_edge, %if.end87.if.end114_crit_edge
  %next_tsn.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 35
  %43 = ptrtoint ptr %next_tsn.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %next_tsn.i, align 8
  %45 = ptrtoint ptr %ctsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ctsn_ack_point, align 4
  %47 = xor i32 %46, -1
  %sub1.i = add i32 %44, %47
  %48 = ptrtoint ptr %num_gap_ack_blocks to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_gap_ack_blocks, align 4
  %conv2.i = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp20.not.i = icmp eq i16 %49, 0
  br i1 %cmp20.not.i, label %if.end114.sctp_sack_update_unack_data.exit_crit_edge, label %if.end114.for.body.i_crit_edge

if.end114.for.body.i_crit_edge:                   ; preds = %if.end114
  br label %for.body.i

if.end114.sctp_sack_update_unack_data.exit_crit_edge: ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_sack_update_unack_data.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end114.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end114.for.body.i_crit_edge ]
  %unack_data.0.in21.i = phi i32 [ %sub9.i, %for.body.i.for.body.i_crit_edge ], [ %sub1.i, %if.end114.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %union.sctp_sack_variable, ptr %variable, i32 %i.022.i
  %end.i = getelementptr inbounds %struct.sctp_gap_ack_block, ptr %arrayidx.i, i32 0, i32 1
  %50 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %end.i, align 2
  %conv4.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i, align 4
  %conv6.i = zext i16 %53 to i32
  %54 = xor i32 %conv4.i, -1
  %conv8.i = and i32 %unack_data.0.in21.i, 65535
  %add.neg.i = add nsw i32 %conv8.i, %54
  %sub9.i = add nsw i32 %add.neg.i, %conv6.i
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.body.i.sctp_sack_update_unack_data.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.sctp_sack_update_unack_data.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_sack_update_unack_data.exit

sctp_sack_update_unack_data.exit:                 ; preds = %for.body.i.sctp_sack_update_unack_data.exit_crit_edge, %if.end114.sctp_sack_update_unack_data.exit_crit_edge
  %unack_data.0.in.lcssa.i = phi i32 [ %sub1.i, %if.end114.sctp_sack_update_unack_data.exit_crit_edge ], [ %sub9.i, %for.body.i.sctp_sack_update_unack_data.exit_crit_edge ]
  %unack_data.0.i = trunc i32 %unack_data.0.in.lcssa.i to i16
  %unack_data11.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 41
  %55 = ptrtoint ptr %unack_data11.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %unack_data.0.i, ptr %unack_data11.i, align 2
  %sacked = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 6
  %56 = ptrtoint ptr %sacked to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sacked, align 4
  %cmp.i.not289 = icmp eq ptr %57, %sacked
  br i1 %cmp.i.not289, label %sctp_sack_update_unack_data.exit.for.end145_crit_edge, label %for.body123.lr.ph

sctp_sack_update_unack_data.exit.for.end145_crit_edge: ; preds = %sctp_sack_update_unack_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end145

for.body123.lr.ph:                                ; preds = %sctp_sack_update_unack_data.exit
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 12
  %sinfo_flags = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12, i32 2
  %sent_cnt_removable = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 86
  br label %for.body123

for.body123:                                      ; preds = %for.inc143.for.body123_crit_edge, %for.body123.lr.ph
  %lchunk.0290 = phi ptr [ %57, %for.body123.lr.ph ], [ %temp.0292, %for.inc143.for.body123_crit_edge ]
  %58 = ptrtoint ptr %lchunk.0290 to i32
  call void @__asan_load4_noabort(i32 %58)
  %temp.0292 = load ptr, ptr %lchunk.0290, align 4
  %add.ptr126 = getelementptr i8, ptr %lchunk.0290, i32 -16
  %subh127 = getelementptr i8, ptr %lchunk.0290, i32 28
  %59 = ptrtoint ptr %subh127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %subh127, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %sub129 = sub i32 %62, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub129)
  %cmp130 = icmp slt i32 %sub129, 1
  br i1 %cmp130, label %if.then132, label %for.body123.for.inc143_crit_edge

for.body123.for.inc143_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc143

if.then132:                                       ; preds = %for.body123
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lchunk.0290) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then132.list_del_init.exit_crit_edge

if.then132.list_del_init.exit_crit_edge:          ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0290, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %lchunk.0290 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lchunk.0290, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then132.list_del_init.exit_crit_edge
  %69 = ptrtoint ptr %lchunk.0290 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %lchunk.0290, ptr %lchunk.0290, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0290, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %lchunk.0290, ptr %prev.i3.i, align 4
  %71 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load = load i16, ptr %prsctp_capable, align 2
  %72 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool135.not = icmp eq i16 %72, 0
  br i1 %tobool135.not, label %list_del_init.exit.if.end141_crit_edge, label %land.lhs.true136

list_del_init.exit.if.end141_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

land.lhs.true136:                                 ; preds = %list_del_init.exit
  %73 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %sinfo_flags, align 4
  %75 = and i16 %74, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %75)
  %cmp138 = icmp eq i16 %75, 48
  br i1 %cmp138, label %if.then140, label %land.lhs.true136.if.end141_crit_edge

land.lhs.true136.if.end141_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then140:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %sent_cnt_removable to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sent_cnt_removable, align 8
  %dec = add i32 %77, -1
  store i32 %dec, ptr %sent_cnt_removable, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %land.lhs.true136.if.end141_crit_edge, %list_del_init.exit.if.end141_crit_edge
  tail call void @sctp_chunk_free(ptr noundef %add.ptr126) #8
  br label %for.inc143

for.inc143:                                       ; preds = %if.end141, %for.body123.for.inc143_crit_edge
  %cmp.i.not = icmp eq ptr %temp.0292, %sacked
  br i1 %cmp.i.not, label %for.inc143.for.end145_crit_edge, label %for.inc143.for.body123_crit_edge

for.inc143.for.body123_crit_edge:                 ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123

for.inc143.for.end145_crit_edge:                  ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end145

for.end145:                                       ; preds = %for.inc143.for.end145_crit_edge, %sctp_sack_update_unack_data.exit.for.end145_crit_edge
  %a_rwnd = getelementptr inbounds %struct.sctp_sackhdr, ptr %3, i32 0, i32 1
  %78 = ptrtoint ptr %a_rwnd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %a_rwnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool146.not = icmp eq i32 %79, 0
  %zero_window_announced = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 12
  %80 = ptrtoint ptr %zero_window_announced to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load150 = load i16, ptr %zero_window_announced, align 2
  %bf.shl = select i1 %tobool146.not, i16 16, i16 0
  %bf.clear151 = and i16 %bf.load150, -17
  %bf.set = or i16 %bf.clear151, %bf.shl
  store i16 %bf.set, ptr %zero_window_announced, align 2
  %outstanding_bytes = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 9
  %81 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %outstanding_bytes, align 4
  %83 = tail call i32 @llvm.usub.sat.i32(i32 %79, i32 %82)
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 1
  %84 = ptrtoint ptr %rwnd to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %rwnd, align 8
  %si = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 6
  %85 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %si, align 4
  %generate_ftsn = getelementptr inbounds %struct.sctp_stream_interleave, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %generate_ftsn to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %generate_ftsn, align 4
  tail call void %88(ptr noundef %q, i32 noundef %8) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_outq_sack.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_outq_sack, %if.then166)) #8
          to label %do.body168 [label %if.then166], !srcloc !83

if.then166:                                       ; preds = %for.end145
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_outq_sack.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %8) #8
  br label %do.body168

do.body168:                                       ; preds = %if.then166, %for.end145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_outq_sack.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_outq_sack, %if.then180)) #8
          to label %do.end183 [label %if.then180], !srcloc !83

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #10
  %adv_peer_ack_point = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 37
  %89 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %adv_peer_ack_point, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_outq_sack.__UNIQUE_ID_ddebug573, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, ptr noundef %1, i32 noundef %46, i32 noundef %90) #8
  br label %do.end183

do.end183:                                        ; preds = %if.then180, %do.body168
  %out_qlen.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 3
  %91 = ptrtoint ptr %out_qlen.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %out_qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i273 = icmp eq i32 %92, 0
  br i1 %cmp.i273, label %land.lhs.true.i, label %do.end183.sctp_outq_is_empty.exit_crit_edge

do.end183.sctp_outq_is_empty.exit_crit_edge:      ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_outq_is_empty.exit

land.lhs.true.i:                                  ; preds = %do.end183
  %93 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %outstanding_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp1.i = icmp eq i32 %94, 0
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.sctp_outq_is_empty.exit_crit_edge

land.lhs.true.i.sctp_outq_is_empty.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_outq_is_empty.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %retransmit to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %retransmit, align 4
  %cmp.i.i = icmp eq ptr %96, %retransmit
  %conv.i.i = zext i1 %cmp.i.i to i32
  br label %sctp_outq_is_empty.exit

sctp_outq_is_empty.exit:                          ; preds = %land.rhs.i, %land.lhs.true.i.sctp_outq_is_empty.exit_crit_edge, %do.end183.sctp_outq_is_empty.exit_crit_edge
  %97 = phi i32 [ 0, %land.lhs.true.i.sctp_outq_is_empty.exit_crit_edge ], [ 0, %do.end183.sctp_outq_is_empty.exit_crit_edge ], [ %conv.i.i, %land.rhs.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %highest_new_tsn) #8
  ret i32 %97
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sctp_probe_path(ptr noundef %sp, ptr noundef %asoc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sctp_probe_path, i32 0, i32 1), ptr blockaddress(@trace_sctp_probe_path, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !83

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !95

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  %call42 = tail call i32 @__traceiter_sctp_probe_path(ptr noundef null, ptr noundef %sp, ptr noundef %asoc) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !95

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sctp_probe_path, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sctp_probe_path, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sctp_probe_path.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_sctp_probe_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 48, ptr noundef nonnull @.str.24) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !99
  %31 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_check_transmitted(ptr noundef %q, ptr noundef %transmitted_queue, ptr noundef %transport, ptr noundef %saddr, ptr nocapture noundef readonly %sack, ptr nocapture noundef %highest_new_tsn_in_sack) unnamed_addr #0 align 64 {
entry:
  %tlist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tlist) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %tlist, i32 0, i32 1
  %1 = ptrtoint ptr %sack to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sack, align 4
  %3 = ptrtoint ptr %tlist to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %tlist, ptr %tlist, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tlist, ptr %0, align 4
  %5 = ptrtoint ptr %transmitted_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %transmitted_queue, align 4
  %cmp.i.not.i363375 = icmp eq ptr %6, %transmitted_queue
  br i1 %cmp.i.not.i363375, label %while.end.thread, label %if.then.i.lr.ph.lr.ph

if.then.i.lr.ph.lr.ph:                            ; preds = %entry
  %abandoned = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8, i32 1
  %retransmit = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7
  %cmp2.not = icmp eq ptr %retransmit, %transmitted_queue
  %outstanding_bytes = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 9
  %variable.i = getelementptr inbounds %struct.sctp_sackhdr, ptr %sack, i32 0, i32 4
  %num_gap_ack_blocks.i = getelementptr inbounds %struct.sctp_sackhdr, ptr %sack, i32 0, i32 2
  %tobool19.not = icmp eq ptr %transport, null
  %cacc_saw_newack = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 47, i32 3
  %sacked = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 6
  %prev.i330 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 6, i32 1
  br label %if.then.i.lr.ph

if.then.i.lr.ph:                                  ; preds = %if.end110.if.then.i.lr.ph_crit_edge, %if.then.i.lr.ph.lr.ph
  %7 = phi ptr [ %6, %if.then.i.lr.ph.lr.ph ], [ %136, %if.end110.if.then.i.lr.ph_crit_edge ]
  %restart_timer.0.ph382 = phi i8 [ 0, %if.then.i.lr.ph.lr.ph ], [ %restart_timer.2, %if.end110.if.then.i.lr.ph_crit_edge ]
  %forward_progress.0.off0.ph380 = phi i1 [ false, %if.then.i.lr.ph.lr.ph ], [ %forward_progress.2.off0, %if.end110.if.then.i.lr.ph_crit_edge ]
  %migrate_bytes.0.ph378 = phi i32 [ 0, %if.then.i.lr.ph.lr.ph ], [ %migrate_bytes.3, %if.end110.if.then.i.lr.ph_crit_edge ]
  %bytes_acked.0.ph376 = phi i32 [ 0, %if.then.i.lr.ph.lr.ph ], [ %bytes_acked.4, %if.end110.if.then.i.lr.ph_crit_edge ]
  br label %if.then.i

if.then.i:                                        ; preds = %if.end13.if.then.i_crit_edge, %if.then.i.lr.ph
  %8 = phi ptr [ %7, %if.then.i.lr.ph ], [ %65, %if.end13.if.then.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.sctp_list_dequeue.exit_crit_edge

if.then.i.sctp_list_dequeue.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_list_dequeue.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %sctp_list_dequeue.exit

sctp_list_dequeue.exit:                           ; preds = %if.end.i.i.i, %if.then.i.sctp_list_dequeue.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %prev.i3.i.i, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %sctp_list_dequeue.exit.while.end_crit_edge, label %while.body

sctp_list_dequeue.exit.while.end_crit_edge:       ; preds = %sctp_list_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %sctp_list_dequeue.exit
  %add.ptr = getelementptr i8, ptr %8, i32 -16
  %call1 = call i32 @sctp_chunk_abandoned(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %subh = getelementptr i8, ptr %8, i32 28
  %17 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %subh, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  br i1 %tobool.not, label %if.end14, label %while.body.for.cond.i_crit_edge

while.body.for.cond.i_crit_edge:                  ; preds = %while.body
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body.for.cond.i_crit_edge
  %pos.0.in.i = phi ptr [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ], [ %abandoned, %while.body.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i305 = icmp eq ptr %pos.0.i, %abandoned
  br i1 %cmp.i.not.i305, label %if.then8.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %subh4.i = getelementptr i8, ptr %pos.0.i, i32 28
  %22 = ptrtoint ptr %subh4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %subh4.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %sub.i = sub i32 %20, %25
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i308, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then.i308:                                     ; preds = %for.body.i
  %prev.i306 = getelementptr inbounds %struct.list_head, ptr %pos.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i306 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i306, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i.i.i307 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %8, ptr noundef %27, ptr noundef %29) #8
  br i1 %call.i.i.i307, label %if.end.i.i.i309, label %if.then.i308.sctp_insert_list.exit_crit_edge

if.then.i308.sctp_insert_list.exit_crit_edge:     ; preds = %if.then.i308
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_insert_list.exit

if.end.i.i.i309:                                  ; preds = %if.then.i308
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  br label %if.end9.sink.split.i

if.then8.critedge.i:                              ; preds = %for.cond.i
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i17.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %8, ptr noundef %31, ptr noundef %abandoned) #8
  br i1 %call.i.i17.i, label %if.then8.critedge.i.if.end9.sink.split.i_crit_edge, label %if.then8.critedge.i.sctp_insert_list.exit_crit_edge

if.then8.critedge.i.sctp_insert_list.exit_crit_edge: ; preds = %if.then8.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_insert_list.exit

if.then8.critedge.i.if.end9.sink.split.i_crit_edge: ; preds = %if.then8.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then8.critedge.i.if.end9.sink.split.i_crit_edge, %if.end.i.i.i309
  %prev.i.sink.i = phi ptr [ %prev1.i.i.i, %if.end.i.i.i309 ], [ %prev.i.i, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %head.sink.i = phi ptr [ %29, %if.end.i.i.i309 ], [ %abandoned, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %.sink23.i = phi ptr [ %27, %if.end.i.i.i309 ], [ %31, %if.then8.critedge.i.if.end9.sink.split.i_crit_edge ]
  %32 = ptrtoint ptr %prev.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %8, ptr %prev.i.sink.i, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head.sink.i, ptr %8, align 4
  %34 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.sink23.i, ptr %prev.i3.i.i, align 4
  %35 = ptrtoint ptr %.sink23.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %8, ptr %.sink23.i, align 4
  br label %sctp_insert_list.exit

sctp_insert_list.exit:                            ; preds = %if.end9.sink.split.i, %if.then8.critedge.i.sctp_insert_list.exit_crit_edge, %if.then.i308.sctp_insert_list.exit_crit_edge
  br i1 %cmp2.not, label %sctp_insert_list.exit.if.end13_crit_edge, label %land.lhs.true

sctp_insert_list.exit.if.end13_crit_edge:         ; preds = %sctp_insert_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %sctp_insert_list.exit
  %tsn_gap_acked = getelementptr i8, ptr %8, i32 156
  %36 = ptrtoint ptr %tsn_gap_acked to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %tsn_gap_acked, align 4
  %37 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool3.not = icmp eq i16 %37, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then4:                                         ; preds = %land.lhs.true
  %transport5 = getelementptr i8, ptr %8, i32 148
  %38 = ptrtoint ptr %transport5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transport5, align 4
  %tobool6.not = icmp eq ptr %39, null
  br i1 %tobool6.not, label %if.then4.if.end_crit_edge, label %if.then7

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_hdr.i = getelementptr i8, ptr %8, i32 36
  %40 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %length.i, align 2
  %asoc.i = getelementptr i8, ptr %8, i32 76
  %44 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %asoc.i, align 4
  %si.i.i = getelementptr inbounds %struct.sctp_association, ptr %45, i32 0, i32 60, i32 6
  %46 = ptrtoint ptr %si.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %si.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %47, align 4
  %sub.i310 = sub i16 %43, %49
  %conv = zext i16 %sub.i310 to i32
  %flight_size = getelementptr inbounds %struct.sctp_transport, ptr %39, i32 0, i32 16
  %50 = ptrtoint ptr %flight_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flight_size, align 8
  %sub = sub i32 %51, %conv
  store i32 %sub, ptr %flight_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4.if.end_crit_edge
  %chunk_hdr.i311 = getelementptr i8, ptr %8, i32 36
  %52 = ptrtoint ptr %chunk_hdr.i311 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chunk_hdr.i311, align 4
  %length.i312 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %length.i312 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %length.i312, align 2
  %asoc.i313 = getelementptr i8, ptr %8, i32 76
  %56 = ptrtoint ptr %asoc.i313 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %asoc.i313, align 4
  %si.i.i314 = getelementptr inbounds %struct.sctp_association, ptr %57, i32 0, i32 60, i32 6
  %58 = ptrtoint ptr %si.i.i314 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %si.i.i314, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 4
  %sub.i315 = sub i16 %55, %61
  %conv11 = zext i16 %sub.i315 to i32
  %62 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %outstanding_bytes, align 4
  %sub12 = sub i32 %63, %conv11
  store i32 %sub12, ptr %outstanding_bytes, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %land.lhs.true.if.end13_crit_edge, %sctp_insert_list.exit.if.end13_crit_edge
  %64 = ptrtoint ptr %transmitted_queue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %transmitted_queue, align 4
  %cmp.i.not.i = icmp eq ptr %65, %transmitted_queue
  br i1 %cmp.i.not.i, label %if.end13.while.end_crit_edge, label %if.end13.if.then.i_crit_edge

if.end13.if.then.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end14:                                         ; preds = %while.body
  %66 = ptrtoint ptr %sack to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sack, align 4
  %sub.i316 = sub i32 %20, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i316)
  %cmp.i317 = icmp slt i32 %sub.i316, 1
  br i1 %cmp.i317, label %if.end14.if.then18_crit_edge, label %if.end.i

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.end.i:                                         ; preds = %if.end14
  %68 = ptrtoint ptr %num_gap_ack_blocks.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %num_gap_ack_blocks.i, align 4
  %conv2.i = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp329.not.i = icmp eq i16 %69, 0
  br i1 %cmp329.not.i, label %if.end.i.if.else84_crit_edge, label %for.body.lr.ph.i

if.end.i.if.else84_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else84

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv5.i = and i32 %sub.i316, 65535
  %70 = trunc i32 %sub.i316 to i16
  br label %for.body.i318

for.body.i318:                                    ; preds = %for.inc.i.for.body.i318_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i318_crit_edge ]
  %arrayidx.i = getelementptr %union.sctp_sack_variable, ptr %variable.i, i32 %i.030.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx.i, align 4
  %conv6.i = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv6.i)
  %cmp7.not.i = icmp ult i32 %conv5.i, %conv6.i
  br i1 %cmp7.not.i, label %for.body.i318.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i318.for.inc.i_crit_edge:                ; preds = %for.body.i318
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i318
  %end.i = getelementptr inbounds %struct.sctp_gap_ack_block, ptr %arrayidx.i, i32 0, i32 1
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %end.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %70)
  %cmp12.not.i = icmp ult i16 %74, %70
  br i1 %cmp12.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.then18_crit_edge

land.lhs.true.i.if.then18_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i318.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.inc.i.if.else84_crit_edge, label %for.inc.i.for.body.i318_crit_edge

for.inc.i.for.body.i318_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i318

for.inc.i.if.else84_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else84

if.then18:                                        ; preds = %land.lhs.true.i.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  br i1 %tobool19.not, label %if.then18.if.end53_crit_edge, label %land.lhs.true20

if.then18.if.end53_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true20:                                  ; preds = %if.then18
  %tsn_gap_acked21 = getelementptr i8, ptr %8, i32 156
  %75 = ptrtoint ptr %tsn_gap_acked21 to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load22 = load i16, ptr %tsn_gap_acked21, align 4
  %76 = and i16 %bf.load22, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool25.not = icmp eq i16 %76, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true20.if.end53_crit_edge

land.lhs.true20.if.end53_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then26:                                        ; preds = %land.lhs.true20
  %sent_count = getelementptr i8, ptr %8, i32 -4
  %77 = ptrtoint ptr %sent_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sent_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp27 = icmp sgt i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load22)
  %tobool33.not = icmp sgt i16 %bf.load22, -1
  %or.cond = select i1 %cmp27, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %if.then26.if.end39_crit_edge, label %if.then34

if.then26.if.end39_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear37 = and i16 %bf.load22, 32767
  %79 = ptrtoint ptr %tsn_gap_acked21 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %bf.clear37, ptr %tsn_gap_acked21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %sent_at = getelementptr i8, ptr %8, i32 84
  %81 = ptrtoint ptr %sent_at to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sent_at, align 4
  %sub38 = sub i32 %80, %82
  call void @sctp_transport_update_rto(ptr noundef nonnull %transport, i32 noundef %sub38) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.then26.if.end39_crit_edge
  %sub40 = sub i32 %20, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub40)
  %cmp41 = icmp slt i32 %sub40, 1
  br i1 %cmp41, label %if.then43, label %if.end39.if.end53_crit_edge

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then43:                                        ; preds = %if.end39
  %83 = ptrtoint ptr %num_gap_ack_blocks.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %num_gap_ack_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool45.not = icmp eq i16 %84, 0
  br i1 %tobool45.not, label %if.then43.if.end53_crit_edge, label %land.lhs.true46

if.then43.if.end53_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true46:                                  ; preds = %if.then43
  %85 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %q, align 4
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %86, i32 0, i32 5, i32 4
  %87 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %primary_path, align 8
  %changeover_active = getelementptr inbounds %struct.sctp_transport, ptr %88, i32 0, i32 47, i32 1
  %89 = ptrtoint ptr %changeover_active to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %changeover_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool48.not = icmp eq i8 %90, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.end53_crit_edge, label %if.then49

land.lhs.true46.if.end53_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %cacc_saw_newack to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %cacc_saw_newack, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %land.lhs.true46.if.end53_crit_edge, %if.then43.if.end53_crit_edge, %if.end39.if.end53_crit_edge, %land.lhs.true20.if.end53_crit_edge, %if.then18.if.end53_crit_edge
  %tsn_gap_acked54 = getelementptr i8, ptr %8, i32 156
  %92 = ptrtoint ptr %tsn_gap_acked54 to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load55 = load i16, ptr %tsn_gap_acked54, align 4
  %93 = and i16 %bf.load55, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool58.not = icmp eq i16 %93, 0
  br i1 %tobool58.not, label %if.then59, label %if.end53.if.end78_crit_edge

if.end53.if.end78_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then59:                                        ; preds = %if.end53
  %bf.set63 = or i16 %bf.load55, 256
  %94 = ptrtoint ptr %tsn_gap_acked54 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %bf.set63, ptr %tsn_gap_acked54, align 4
  %95 = ptrtoint ptr %highest_new_tsn_in_sack to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %highest_new_tsn_in_sack, align 4
  %sub64 = sub i32 %96, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub64)
  %cmp65 = icmp slt i32 %sub64, 0
  br i1 %cmp65, label %if.then67, label %if.then59.if.end68_crit_edge

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then67:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %highest_new_tsn_in_sack to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %20, ptr %highest_new_tsn_in_sack, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then59.if.end68_crit_edge
  %chunk_hdr.i320 = getelementptr i8, ptr %8, i32 36
  %98 = ptrtoint ptr %chunk_hdr.i320 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chunk_hdr.i320, align 4
  %length.i321 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %length.i321 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %length.i321, align 2
  %asoc.i322 = getelementptr i8, ptr %8, i32 76
  %102 = ptrtoint ptr %asoc.i322 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %asoc.i322, align 4
  %si.i.i323 = getelementptr inbounds %struct.sctp_association, ptr %103, i32 0, i32 60, i32 6
  %104 = ptrtoint ptr %si.i.i323 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %si.i.i323, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %105, align 4
  %sub.i324 = sub i16 %101, %107
  %conv70 = zext i16 %sub.i324 to i32
  %add = add i32 %bytes_acked.0.ph376, %conv70
  %transport71 = getelementptr i8, ptr %8, i32 148
  %108 = ptrtoint ptr %transport71 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %transport71, align 4
  %tobool72.not = icmp eq ptr %109, null
  %add76 = select i1 %tobool72.not, i32 %conv70, i32 0
  %spec.select = add i32 %add76, %migrate_bytes.0.ph378
  br label %if.end78

if.end78:                                         ; preds = %if.end68, %if.end53.if.end78_crit_edge
  %bytes_acked.1 = phi i32 [ %bytes_acked.0.ph376, %if.end53.if.end78_crit_edge ], [ %add, %if.end68 ]
  %migrate_bytes.2 = phi i32 [ %migrate_bytes.0.ph378, %if.end53.if.end78_crit_edge ], [ %spec.select, %if.end68 ]
  %forward_progress.1.off0 = phi i1 [ %forward_progress.0.off0.ph380, %if.end53.if.end78_crit_edge ], [ true, %if.end68 ]
  %sub79 = sub i32 %20, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub79)
  %cmp80 = icmp slt i32 %sub79, 1
  br i1 %cmp80, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end78
  %110 = ptrtoint ptr %prev.i330 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i330, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %111, ptr noundef %sacked) #8
  br i1 %call.i.i, label %if.then82.if.end110.sink.split_crit_edge, label %if.then82.if.end110_crit_edge

if.then82.if.end110_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then82.if.end110.sink.split_crit_edge:         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.sink.split

if.else:                                          ; preds = %if.end78
  %112 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %0, align 4
  %call.i.i332 = call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %113, ptr noundef nonnull %tlist) #8
  br i1 %call.i.i332, label %if.else.if.end110.sink.split_crit_edge, label %if.else.if.end110_crit_edge

if.else.if.end110_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.else.if.end110.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.sink.split

if.else84:                                        ; preds = %for.inc.i.if.else84_crit_edge, %if.end.i.if.else84_crit_edge
  %tsn_gap_acked85 = getelementptr i8, ptr %8, i32 156
  %114 = ptrtoint ptr %tsn_gap_acked85 to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load86 = load i16, ptr %tsn_gap_acked85, align 4
  %115 = and i16 %bf.load86, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool89.not = icmp eq i16 %115, 0
  br i1 %tobool89.not, label %if.else84.if.end109_crit_edge, label %do.body

if.else84.if.end109_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

do.body:                                          ; preds = %if.else84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_check_transmitted.__UNIQUE_ID_ddebug574, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_check_transmitted, %if.then96)) #8
          to label %do.end [label %if.then96], !srcloc !83

if.then96:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_check_transmitted.__UNIQUE_ID_ddebug574, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %20) #8
  br label %do.end

do.end:                                           ; preds = %if.then96, %do.body
  %116 = ptrtoint ptr %tsn_gap_acked85 to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load99 = load i16, ptr %tsn_gap_acked85, align 4
  %bf.clear100 = and i16 %bf.load99, -257
  store i16 %bf.clear100, ptr %tsn_gap_acked85, align 4
  %transport102 = getelementptr i8, ptr %8, i32 148
  %117 = ptrtoint ptr %transport102 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %transport102, align 4
  %tobool103.not = icmp eq ptr %118, null
  br i1 %tobool103.not, label %do.end.if.end109_crit_edge, label %if.then104

do.end.if.end109_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then104:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_hdr.i336 = getelementptr i8, ptr %8, i32 36
  %119 = ptrtoint ptr %chunk_hdr.i336 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chunk_hdr.i336, align 4
  %length.i337 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %length.i337 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %length.i337, align 2
  %asoc.i338 = getelementptr i8, ptr %8, i32 76
  %123 = ptrtoint ptr %asoc.i338 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %asoc.i338, align 4
  %si.i.i339 = getelementptr inbounds %struct.sctp_association, ptr %124, i32 0, i32 60, i32 6
  %125 = ptrtoint ptr %si.i.i339 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %si.i.i339, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %126, align 4
  %sub.i340 = sub i16 %122, %128
  %conv106 = zext i16 %sub.i340 to i32
  %sub107 = sub i32 %bytes_acked.0.ph376, %conv106
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %do.end.if.end109_crit_edge, %if.else84.if.end109_crit_edge
  %bytes_acked.3 = phi i32 [ %bytes_acked.0.ph376, %if.else84.if.end109_crit_edge ], [ %sub107, %if.then104 ], [ %bytes_acked.0.ph376, %do.end.if.end109_crit_edge ]
  %restart_timer.1 = phi i8 [ %restart_timer.0.ph382, %if.else84.if.end109_crit_edge ], [ 1, %if.then104 ], [ 1, %do.end.if.end109_crit_edge ]
  %129 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %0, align 4
  %call.i.i342 = call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %130, ptr noundef nonnull %tlist) #8
  br i1 %call.i.i342, label %if.end109.if.end110.sink.split_crit_edge, label %if.end109.if.end110_crit_edge

if.end109.if.end110_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end109.if.end110.sink.split_crit_edge:         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %if.end109.if.end110.sink.split_crit_edge, %if.else.if.end110.sink.split_crit_edge, %if.then82.if.end110.sink.split_crit_edge
  %.sink431 = phi ptr [ %prev.i330, %if.then82.if.end110.sink.split_crit_edge ], [ %0, %if.else.if.end110.sink.split_crit_edge ], [ %0, %if.end109.if.end110.sink.split_crit_edge ]
  %tlist.sink = phi ptr [ %sacked, %if.then82.if.end110.sink.split_crit_edge ], [ %tlist, %if.else.if.end110.sink.split_crit_edge ], [ %tlist, %if.end109.if.end110.sink.split_crit_edge ]
  %.sink430 = phi ptr [ %111, %if.then82.if.end110.sink.split_crit_edge ], [ %113, %if.else.if.end110.sink.split_crit_edge ], [ %130, %if.end109.if.end110.sink.split_crit_edge ]
  %bytes_acked.4.ph = phi i32 [ %bytes_acked.1, %if.then82.if.end110.sink.split_crit_edge ], [ %bytes_acked.1, %if.else.if.end110.sink.split_crit_edge ], [ %bytes_acked.3, %if.end109.if.end110.sink.split_crit_edge ]
  %migrate_bytes.3.ph = phi i32 [ %migrate_bytes.2, %if.then82.if.end110.sink.split_crit_edge ], [ %migrate_bytes.2, %if.else.if.end110.sink.split_crit_edge ], [ %migrate_bytes.0.ph378, %if.end109.if.end110.sink.split_crit_edge ]
  %forward_progress.2.off0.ph = phi i1 [ true, %if.then82.if.end110.sink.split_crit_edge ], [ %forward_progress.1.off0, %if.else.if.end110.sink.split_crit_edge ], [ %forward_progress.0.off0.ph380, %if.end109.if.end110.sink.split_crit_edge ]
  %restart_timer.2.ph = phi i8 [ 1, %if.then82.if.end110.sink.split_crit_edge ], [ %restart_timer.0.ph382, %if.else.if.end110.sink.split_crit_edge ], [ %restart_timer.1, %if.end109.if.end110.sink.split_crit_edge ]
  %131 = ptrtoint ptr %.sink431 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %8, ptr %.sink431, align 4
  %132 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %tlist.sink, ptr %8, align 4
  %133 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %.sink430, ptr %prev.i3.i.i, align 4
  %134 = ptrtoint ptr %.sink430 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %8, ptr %.sink430, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %if.end109.if.end110_crit_edge, %if.else.if.end110_crit_edge, %if.then82.if.end110_crit_edge
  %bytes_acked.4 = phi i32 [ %bytes_acked.1, %if.then82.if.end110_crit_edge ], [ %bytes_acked.1, %if.else.if.end110_crit_edge ], [ %bytes_acked.3, %if.end109.if.end110_crit_edge ], [ %bytes_acked.4.ph, %if.end110.sink.split ]
  %migrate_bytes.3 = phi i32 [ %migrate_bytes.2, %if.then82.if.end110_crit_edge ], [ %migrate_bytes.2, %if.else.if.end110_crit_edge ], [ %migrate_bytes.0.ph378, %if.end109.if.end110_crit_edge ], [ %migrate_bytes.3.ph, %if.end110.sink.split ]
  %forward_progress.2.off0 = phi i1 [ true, %if.then82.if.end110_crit_edge ], [ %forward_progress.1.off0, %if.else.if.end110_crit_edge ], [ %forward_progress.0.off0.ph380, %if.end109.if.end110_crit_edge ], [ %forward_progress.2.off0.ph, %if.end110.sink.split ]
  %restart_timer.2 = phi i8 [ 1, %if.then82.if.end110_crit_edge ], [ %restart_timer.0.ph382, %if.else.if.end110_crit_edge ], [ %restart_timer.1, %if.end109.if.end110_crit_edge ], [ %restart_timer.2.ph, %if.end110.sink.split ]
  %135 = ptrtoint ptr %transmitted_queue to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %transmitted_queue, align 4
  %cmp.i.not.i363 = icmp eq ptr %136, %transmitted_queue
  br i1 %cmp.i.not.i363, label %if.end110.while.end_crit_edge, label %if.end110.if.then.i.lr.ph_crit_edge

if.end110.if.then.i.lr.ph_crit_edge:              ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.lr.ph

if.end110.while.end_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end110.while.end_crit_edge, %if.end13.while.end_crit_edge, %sctp_list_dequeue.exit.while.end_crit_edge
  %bytes_acked.0.ph.lcssa = phi i32 [ %bytes_acked.0.ph376, %if.end13.while.end_crit_edge ], [ %bytes_acked.0.ph376, %sctp_list_dequeue.exit.while.end_crit_edge ], [ %bytes_acked.4, %if.end110.while.end_crit_edge ]
  %migrate_bytes.0.ph.lcssa = phi i32 [ %migrate_bytes.0.ph378, %if.end13.while.end_crit_edge ], [ %migrate_bytes.0.ph378, %sctp_list_dequeue.exit.while.end_crit_edge ], [ %migrate_bytes.3, %if.end110.while.end_crit_edge ]
  %forward_progress.0.off0.ph.lcssa = phi i1 [ %forward_progress.0.off0.ph380, %if.end13.while.end_crit_edge ], [ %forward_progress.0.off0.ph380, %sctp_list_dequeue.exit.while.end_crit_edge ], [ %forward_progress.2.off0, %if.end110.while.end_crit_edge ]
  %restart_timer.0.ph.lcssa = phi i8 [ %restart_timer.0.ph382, %if.end13.while.end_crit_edge ], [ %restart_timer.0.ph382, %sctp_list_dequeue.exit.while.end_crit_edge ], [ %restart_timer.2, %if.end110.while.end_crit_edge ]
  %tobool111.not = icmp eq ptr %transport, null
  br i1 %tobool111.not, label %while.end.if.end212_crit_edge, label %if.then112

while.end.if.end212_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

while.end.thread:                                 ; preds = %entry
  %tobool111.not399 = icmp eq ptr %transport, null
  br i1 %tobool111.not399, label %while.end.thread.if.end212_crit_edge, label %while.end.thread.if.else148_crit_edge

while.end.thread.if.else148_crit_edge:            ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else148

while.end.thread.if.end212_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then112:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_acked.0.ph.lcssa)
  %tobool113.not = icmp eq i32 %bytes_acked.0.ph.lcssa, 0
  br i1 %tobool113.not, label %if.then112.if.else148_crit_edge, label %if.then114

if.then112.if.else148_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else148

if.then114:                                       ; preds = %if.then112
  %asoc116 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %137 = ptrtoint ptr %asoc116 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %asoc116, align 8
  %sub117 = sub i32 %bytes_acked.0.ph.lcssa, %migrate_bytes.0.ph.lcssa
  %error_count = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 38
  %139 = ptrtoint ptr %error_count to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %error_count, align 8
  %overall_error_count = getelementptr inbounds %struct.sctp_association, ptr %138, i32 0, i32 7
  %140 = ptrtoint ptr %overall_error_count to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %overall_error_count, align 8
  %state = getelementptr inbounds %struct.sctp_association, ptr %138, i32 0, i32 6
  %141 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp119 = icmp eq i32 %142, 4
  br i1 %cmp119, label %land.lhs.true121, label %if.then114.if.end125_crit_edge

if.then114.if.end125_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

land.lhs.true121:                                 ; preds = %if.then114
  %arrayidx = getelementptr %struct.sctp_association, ptr %138, i32 0, i32 31, i32 6
  %call122 = call i32 @del_timer(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.lhs.true121.if.end125_crit_edge, label %if.then124

land.lhs.true121.if.end125_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then124:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #10
  call void @sctp_association_put(ptr noundef %138) #8
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %land.lhs.true121.if.end125_crit_edge, %if.then114.if.end125_crit_edge
  %state126 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %143 = ptrtoint ptr %state126 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %state126, align 4
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %144, label %if.end125.if.end137_crit_edge [
    i32 0, label %if.end125.land.lhs.true132_crit_edge
    i32 3, label %if.end125.land.lhs.true132_crit_edge449
  ]

if.end125.land.lhs.true132_crit_edge449:          ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true132

if.end125.land.lhs.true132_crit_edge:             ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true132

if.end125.if.end137_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

land.lhs.true132:                                 ; preds = %if.end125.land.lhs.true132_crit_edge, %if.end125.land.lhs.true132_crit_edge449
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 6
  %call133 = call i32 @sctp_cmp_addr_exact(ptr noundef %ipaddr, ptr noundef %saddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.if.end137_crit_edge, label %if.then135

land.lhs.true132.if.end137_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then135:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %asoc116 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %asoc116, align 8
  call void @sctp_assoc_control_transport(ptr noundef %147, ptr noundef nonnull %transport, i32 noundef 0, i32 noundef 1) #8
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %land.lhs.true132.if.end137_crit_edge, %if.end125.if.end137_crit_edge
  call void @sctp_transport_raise_cwnd(ptr noundef nonnull %transport, i32 noundef %2, i32 noundef %sub117) #8
  %flight_size138 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 16
  %148 = ptrtoint ptr %flight_size138 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flight_size138, align 8
  %sub139 = sub i32 %149, %sub117
  store i32 %sub139, ptr %flight_size138, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %sub117)
  %cmp141 = icmp eq i32 %149, %sub117
  br i1 %cmp141, label %if.then143, label %if.end137.if.end144_crit_edge

if.end137.if.end144_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then143:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %partial_bytes_acked = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 15
  %150 = ptrtoint ptr %partial_bytes_acked to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %partial_bytes_acked, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.end137.if.end144_crit_edge
  %outstanding_bytes146 = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 9
  %151 = ptrtoint ptr %outstanding_bytes146 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %outstanding_bytes146, align 4
  %sub147 = sub i32 %152, %bytes_acked.0.ph.lcssa
  store i32 %sub147, ptr %outstanding_bytes146, align 4
  br label %if.end186

if.else148:                                       ; preds = %if.then112.if.else148_crit_edge, %while.end.thread.if.else148_crit_edge
  %forward_progress.0.off0.ph.lcssa402411 = phi i1 [ %forward_progress.0.off0.ph.lcssa, %if.then112.if.else148_crit_edge ], [ false, %while.end.thread.if.else148_crit_edge ]
  %restart_timer.0.ph.lcssa403410 = phi i8 [ %restart_timer.0.ph.lcssa, %if.then112.if.else148_crit_edge ], [ 0, %while.end.thread.if.else148_crit_edge ]
  %153 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %q, align 4
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %154, i32 0, i32 5, i32 1
  %155 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rwnd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool151.not = icmp eq i32 %156, 0
  br i1 %tobool151.not, label %land.lhs.true152, label %if.else148.if.end186_crit_edge

if.else148.if.end186_crit_edge:                   ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

land.lhs.true152:                                 ; preds = %if.else148
  %157 = ptrtoint ptr %tlist to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile ptr, ptr %tlist, align 4
  %cmp.i346.not = icmp eq ptr %158, %tlist
  br i1 %cmp.i346.not, label %land.lhs.true152.if.end186_crit_edge, label %land.lhs.true155

land.lhs.true152.if.end186_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

land.lhs.true155:                                 ; preds = %land.lhs.true152
  %add156 = add i32 %2, 2
  %next_tsn = getelementptr inbounds %struct.sctp_association, ptr %154, i32 0, i32 35
  %159 = ptrtoint ptr %next_tsn to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %next_tsn, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add156, i32 %160)
  %cmp158 = icmp eq i32 %add156, %160
  br i1 %cmp158, label %land.lhs.true160, label %land.lhs.true155.if.end186_crit_edge

land.lhs.true155.if.end186_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

land.lhs.true160:                                 ; preds = %land.lhs.true155
  %state162 = getelementptr inbounds %struct.sctp_association, ptr %154, i32 0, i32 6
  %161 = ptrtoint ptr %state162 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %state162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %162)
  %cmp163 = icmp ult i32 %162, 4
  br i1 %cmp163, label %do.body166, label %land.lhs.true160.if.end186_crit_edge

land.lhs.true160.if.end186_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

do.body166:                                       ; preds = %land.lhs.true160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_check_transmitted.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_check_transmitted, %if.then178)) #8
          to label %do.end181 [label %if.then178], !srcloc !83

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_check_transmitted.__UNIQUE_ID_ddebug575, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, i32 noundef %2) #8
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.body166
  %163 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %q, align 4
  %overall_error_count183 = getelementptr inbounds %struct.sctp_association, ptr %164, i32 0, i32 7
  %165 = ptrtoint ptr %overall_error_count183 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %overall_error_count183, align 8
  %error_count184 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 38
  %166 = ptrtoint ptr %error_count184 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %error_count184, align 8
  br label %if.end186

if.end186:                                        ; preds = %do.end181, %land.lhs.true160.if.end186_crit_edge, %land.lhs.true155.if.end186_crit_edge, %land.lhs.true152.if.end186_crit_edge, %if.else148.if.end186_crit_edge, %if.end144
  %restart_timer.0.ph.lcssa403409 = phi i8 [ %restart_timer.0.ph.lcssa, %if.end144 ], [ %restart_timer.0.ph.lcssa403410, %if.else148.if.end186_crit_edge ], [ %restart_timer.0.ph.lcssa403410, %land.lhs.true152.if.end186_crit_edge ], [ %restart_timer.0.ph.lcssa403410, %do.end181 ], [ %restart_timer.0.ph.lcssa403410, %land.lhs.true160.if.end186_crit_edge ], [ %restart_timer.0.ph.lcssa403410, %land.lhs.true155.if.end186_crit_edge ]
  %forward_progress.3.off0 = phi i1 [ true, %if.end144 ], [ %forward_progress.0.off0.ph.lcssa402411, %if.else148.if.end186_crit_edge ], [ %forward_progress.0.off0.ph.lcssa402411, %land.lhs.true152.if.end186_crit_edge ], [ %forward_progress.0.off0.ph.lcssa402411, %do.end181 ], [ %forward_progress.0.off0.ph.lcssa402411, %land.lhs.true160.if.end186_crit_edge ], [ %forward_progress.0.off0.ph.lcssa402411, %land.lhs.true155.if.end186_crit_edge ]
  %flight_size187 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 16
  %167 = ptrtoint ptr %flight_size187 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flight_size187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool188.not = icmp eq i32 %168, 0
  br i1 %tobool188.not, label %if.then189, label %if.else194

if.then189:                                       ; preds = %if.end186
  %T3_rtx_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 39
  %call190 = call i32 @del_timer(ptr noundef %T3_rtx_timer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.then189.if.end205_crit_edge, label %if.then192

if.then189.if.end205_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then192:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  call void @sctp_transport_put(ptr noundef nonnull %transport) #8
  br label %if.end205

if.else194:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %restart_timer.0.ph.lcssa403409)
  %tobool195.not = icmp eq i8 %restart_timer.0.ph.lcssa403409, 0
  br i1 %tobool195.not, label %if.else194.if.end205_crit_edge, label %if.then196

if.else194.if.end205_crit_edge:                   ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then196:                                       ; preds = %if.else194
  %T3_rtx_timer197 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %169 = load volatile i32, ptr @jiffies, align 128
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 9
  %170 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rto, align 4
  %add198 = add i32 %171, %169
  %call199 = call i32 @mod_timer(ptr noundef %T3_rtx_timer197, i32 noundef %add198) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.then201, label %if.then196.if.end205_crit_edge

if.then196.if.end205_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then201:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  %call202 = call i32 @sctp_transport_hold(ptr noundef nonnull %transport) #8
  br label %if.end205

if.end205:                                        ; preds = %if.then201, %if.then196.if.end205_crit_edge, %if.else194.if.end205_crit_edge, %if.then192, %if.then189.if.end205_crit_edge
  br i1 %forward_progress.3.off0, label %if.then207, label %if.end205.if.end212_crit_edge

if.end205.if.end212_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then207:                                       ; preds = %if.end205
  %dst = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 18
  %172 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dst, align 8
  %tobool208.not = icmp eq ptr %173, null
  br i1 %tobool208.not, label %if.then207.if.end212_crit_edge, label %if.then209

if.then207.if.end212_crit_edge:                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then209:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  call void @sctp_transport_dst_confirm(ptr noundef nonnull %transport) #8
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %if.then207.if.end212_crit_edge, %if.end205.if.end212_crit_edge, %while.end.thread.if.end212_crit_edge, %while.end.if.end212_crit_edge
  %174 = ptrtoint ptr %tlist to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile ptr, ptr %tlist, align 4
  %cmp.i.not.i347 = icmp eq ptr %175, %tlist
  br i1 %cmp.i.not.i347, label %if.end212.list_splice.exit_crit_edge, label %if.then.i349

if.end212.list_splice.exit_crit_edge:             ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice.exit

if.then.i349:                                     ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %transmitted_queue to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %transmitted_queue, align 4
  %178 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %0, align 4
  %prev3.i.i348 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  %180 = ptrtoint ptr %prev3.i.i348 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %transmitted_queue, ptr %prev3.i.i348, align 4
  store ptr %175, ptr %transmitted_queue, align 4
  %181 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %177, ptr %179, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %177, i32 0, i32 1
  %182 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %179, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i349, %if.end212.list_splice.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tlist) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_mark_missing(ptr noundef %q, ptr noundef readonly %transmitted_queue, ptr noundef %transport, i32 noundef %highest_new_tsn_in_sack, i32 noundef %count_of_newacks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_path, align 8
  %4 = ptrtoint ptr %transmitted_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn101 = load ptr, ptr %transmitted_queue, align 4
  %cmp.not102 = icmp eq ptr %.pn101, %transmitted_queue
  %tobool50.not106 = icmp eq ptr %transport, null
  br i1 %cmp.not102, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %changeover_active.i = getelementptr inbounds %struct.sctp_transport, ptr %3, i32 0, i32 47, i32 1
  %cycling_changeover.i.i = getelementptr inbounds %struct.sctp_transport, ptr %3, i32 0, i32 47, i32 2
  %cacc.i.i = getelementptr inbounds %struct.sctp_transport, ptr %3, i32 0, i32 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count_of_newacks)
  %cmp.i.i.i = icmp sgt i32 %count_of_newacks, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn104 = phi ptr [ %.pn101, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %do_fast_retransmit.0103 = phi i8 [ 0, %for.body.lr.ph ], [ %do_fast_retransmit.1, %for.inc.for.body_crit_edge ]
  %subh = getelementptr i8, ptr %.pn104, i32 28
  %5 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subh, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %fast_retransmit = getelementptr i8, ptr %.pn104, i32 156
  %9 = ptrtoint ptr %fast_retransmit to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %fast_retransmit, align 4
  %10 = and i16 %bf.load, 259
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %11 = icmp eq i16 %10, 0
  %sub = sub i32 %8, %highest_new_tsn_in_sack
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp8 = icmp slt i32 %sub, 0
  %or.cond92 = select i1 %11, i1 %cmp8, i1 false
  br i1 %or.cond92, label %if.then, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then:                                          ; preds = %for.body
  br i1 %tobool50.not106, label %if.then.if.then13_crit_edge, label %lor.lhs.false

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.then
  %transport11 = getelementptr i8, ptr %.pn104, i32 148
  %12 = ptrtoint ptr %transport11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transport11, align 4
  %14 = ptrtoint ptr %changeover_active.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %changeover_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.then13_crit_edge, label %land.lhs.true.i

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %cycling_changeover.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cycling_changeover.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %cmp1.not.i.i.i = icmp ne ptr %13, %3
  %not.or.cond.i.i.i = and i1 %cmp.i.i.i, %cmp1.not.i.i.i
  br i1 %not.or.cond.i.i.i, label %if.then.i.i.if.end32_crit_edge, label %if.end.i.i

if.then.i.i.if.end32_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end.i.i:                                       ; preds = %if.then.i.i
  %tobool.not.i.i.i = icmp eq ptr %13, null
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.if.then13_crit_edge, label %land.lhs.true1.i.i.i

if.end.i.i.if.then13_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

land.lhs.true1.i.i.i:                             ; preds = %if.end.i.i
  %cacc_saw_newack.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %13, i32 0, i32 47, i32 3
  %18 = ptrtoint ptr %cacc_saw_newack.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cacc_saw_newack.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true1.i.i.i.if.end32_crit_edge, label %land.lhs.true1.i.i.i.if.then13_crit_edge

land.lhs.true1.i.i.i.if.then13_crit_edge:         ; preds = %land.lhs.true1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

land.lhs.true1.i.i.i.if.end32_crit_edge:          ; preds = %land.lhs.true1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %cacc.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cacc.i.i, align 4
  %sub.i.i = sub i32 %8, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i.if.end32_crit_edge, label %land.lhs.true.i.i.if.then13_crit_edge

land.lhs.true.i.i.if.then13_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

land.lhs.true.i.i.if.end32_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then13:                                        ; preds = %land.lhs.true.i.i.if.then13_crit_edge, %land.lhs.true1.i.i.i.if.then13_crit_edge, %if.end.i.i.if.then13_crit_edge, %lor.lhs.false.if.then13_crit_edge, %if.then.if.then13_crit_edge
  %22 = add nuw i16 %bf.load, 4
  %bf.shl = and i16 %22, 12
  %bf.clear18 = and i16 %bf.load, -13
  %bf.set = or i16 %bf.shl, %bf.clear18
  %23 = ptrtoint ptr %fast_retransmit to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %bf.set, ptr %fast_retransmit, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_mark_missing.__UNIQUE_ID_ddebug576, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_mark_missing, %if.then25)) #8
          to label %if.end32 [label %if.then25], !srcloc !83

if.then25:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %fast_retransmit to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load27 = load i16, ptr %fast_retransmit, align 4
  %bf.lshr28 = lshr i16 %bf.load27, 2
  %bf.clear29 = and i16 %bf.lshr28, 3
  %conv30 = zext i16 %bf.clear29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_mark_missing.__UNIQUE_ID_ddebug576, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %8, i32 noundef %conv30) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.then13, %land.lhs.true.i.i.if.end32_crit_edge, %land.lhs.true1.i.i.i.if.end32_crit_edge, %if.then.i.i.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %25 = ptrtoint ptr %fast_retransmit to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load34 = load i16, ptr %fast_retransmit, align 4
  %26 = and i16 %bf.load34, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %26)
  %cmp38 = icmp eq i16 %26, 12
  br i1 %cmp38, label %if.then40, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear43 = and i16 %bf.load34, -4
  %bf.set44 = or i16 %bf.clear43, 1
  %27 = ptrtoint ptr %fast_retransmit to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %bf.set44, ptr %fast_retransmit, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %if.end32.for.inc_crit_edge
  %do_fast_retransmit.1 = phi i8 [ 1, %if.then40 ], [ %do_fast_retransmit.0103, %if.end32.for.inc_crit_edge ]
  %28 = ptrtoint ptr %.pn104 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn104, align 4
  %cmp.not = icmp eq ptr %.pn, %transmitted_queue
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool50.not = icmp eq ptr %transport, null
  br i1 %tobool50.not, label %for.end.if.end71_crit_edge, label %if.then51

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

for.end.thread:                                   ; preds = %entry
  br i1 %tobool50.not106, label %for.end.thread.if.end71_crit_edge, label %for.end.thread.do.body55_crit_edge

for.end.thread.do.body55_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

for.end.thread.if.end71_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %do_fast_retransmit.1)
  %tobool52.not = icmp eq i8 %do_fast_retransmit.1, 0
  br i1 %tobool52.not, label %if.then51.do.body55_crit_edge, label %if.then53

if.then51.do.body55_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.then53:                                        ; preds = %if.then51
  %29 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %q, align 4
  %net1.i = getelementptr inbounds %struct.sctp_ep_common, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net1.i, align 8
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !87
  %sctp81.i = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 38
  %34 = ptrtoint ptr %sctp81.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sctp81.i, align 8
  %arrayidx84.i = getelementptr [34 x i32], ptr %35, i32 0, i32 29
  %36 = ptrtoint ptr %arrayidx84.i to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i287.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i287.i to ptr
  %cpu87.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu87.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu87.i, align 4
  %arrayidx88.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx88.i, align 4
  %add89.i = add i32 %42, %36
  %43 = inttoptr i32 %add89.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add90.i = add i32 %45, 1
  store i32 %add90.i, ptr %43, align 4
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i288.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i288.i)
  %tobool101.not.i = icmp eq i32 %and.i.i288.i, 0
  br i1 %tobool101.not.i, label %if.then110.i, label %if.then53.sctp_retransmit.exit_crit_edge, !prof !85

if.then53.sctp_retransmit.exit_crit_edge:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_retransmit.exit

if.then110.i:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %sctp_retransmit.exit

sctp_retransmit.exit:                             ; preds = %if.then110.i, %if.then53.sctp_retransmit.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #8, !srcloc !86
  tail call void @sctp_transport_lower_cwnd(ptr noundef nonnull %transport, i32 noundef 1) #8
  %fast_rtx.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 10
  %47 = ptrtoint ptr %fast_rtx.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %fast_rtx.i, align 4
  tail call void @sctp_retransmit_mark(ptr noundef %q, ptr noundef nonnull %transport, i8 noundef zeroext 1) #8
  br label %do.body55

do.body55:                                        ; preds = %sctp_retransmit.exit, %if.then51.do.body55_crit_edge, %for.end.thread.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_mark_missing.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_mark_missing, %if.then67)) #8
          to label %if.end71 [label %if.then67], !srcloc !83

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %cwnd = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 13
  %48 = ptrtoint ptr %cwnd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cwnd, align 4
  %ssthresh = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 14
  %50 = ptrtoint ptr %ssthresh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ssthresh, align 8
  %flight_size = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 16
  %52 = ptrtoint ptr %flight_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flight_size, align 8
  %partial_bytes_acked = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 15
  %54 = ptrtoint ptr %partial_bytes_acked to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %partial_bytes_acked, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_mark_missing.__UNIQUE_ID_ddebug577, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34, ptr noundef nonnull %transport, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %do.body55, %for.end.thread.if.end71_crit_edge, %for.end.if.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sctp_outq_is_empty(ptr noundef %q) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %out_qlen = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %out_qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %outstanding_bytes = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outstanding_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %retransmit = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 7
  %4 = ptrtoint ptr %retransmit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %retransmit, align 4
  %cmp.i = icmp eq ptr %5, %retransmit
  %conv.i = zext i1 %cmp.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %6 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %conv.i, %land.rhs ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_generate_fwdtsn(ptr noundef %q, i32 noundef %ctsn) local_unnamed_addr #0 align 64 {
entry:
  %ftsn_skip_arr = alloca [10 x %struct.sctp_fwdtsn_skip], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ftsn_skip_arr) #8
  %2 = call ptr @memset(ptr %ftsn_skip_arr, i32 255, i32 40)
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 12
  %3 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %prsctp_capable, align 2
  %4 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %adv_peer_ack_point = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 37
  %5 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %adv_peer_ack_point, align 8
  %sub = sub i32 %6, %ctsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ctsn, ptr %adv_peer_ack_point, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %abandoned = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 8
  %8 = ptrtoint ptr %abandoned to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %abandoned, align 4
  %cmp.i.not143 = icmp eq ptr %9, %abandoned
  br i1 %cmp.i.not143, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %nskips.0146 = phi i32 [ %nskips.2, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %lchunk.0144 = phi ptr [ %temp.0149, %for.inc.for.body_crit_edge ], [ %9, %if.end4.for.body_crit_edge ]
  %10 = ptrtoint ptr %lchunk.0144 to i32
  call void @__asan_load4_noabort(i32 %10)
  %temp.0149 = load ptr, ptr %lchunk.0144, align 4
  %subh = getelementptr i8, ptr %lchunk.0144, i32 28
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
  %add.ptr = getelementptr i8, ptr %lchunk.0144, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lchunk.0144) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del_init.exit_crit_edge

if.then11.list_del_init.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0144, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %lchunk.0144 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lchunk.0144, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then11.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %lchunk.0144 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %lchunk.0144, ptr %lchunk.0144, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lchunk.0144, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lchunk.0144, ptr %prev.i3.i, align 4
  tail call void @sctp_chunk_free(ptr noundef %add.ptr) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then15:                                        ; preds = %if.else
  %25 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %14, ptr %adv_peer_ack_point, align 8
  %chunk_hdr = getelementptr i8, ptr %lchunk.0144, i32 36
  %26 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chunk_hdr, align 4
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags, align 1
  %30 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not = icmp eq i8 %30, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.for.inc_crit_edge

if.then15.for.inc_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end19:                                         ; preds = %if.then15
  %31 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %subh, align 4
  %stream = getelementptr inbounds %struct.sctp_datahdr, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %stream to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nskips.0146)
  %cmp9.i = icmp sgt i32 %nskips.0146, 0
  br i1 %cmp9.i, label %if.end19.for.body.i_crit_edge, label %if.end19.sctp_get_skip_pos.exit_crit_edge

if.end19.sctp_get_skip_pos.exit_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_get_skip_pos.exit

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end19.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sctp_fwdtsn_skip, ptr %ftsn_skip_arr, i32 %i.010.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %34)
  %cmp3.i = icmp eq i16 %36, %34
  br i1 %cmp3.i, label %for.body.i.sctp_get_skip_pos.exit_crit_edge, label %for.inc.i

for.body.i.sctp_get_skip_pos.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_get_skip_pos.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nskips.0146
  br i1 %exitcond.not.i, label %for.inc.i.sctp_get_skip_pos.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.sctp_get_skip_pos.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_get_skip_pos.exit

sctp_get_skip_pos.exit:                           ; preds = %for.inc.i.sctp_get_skip_pos.exit_crit_edge, %for.body.i.sctp_get_skip_pos.exit_crit_edge, %if.end19.sctp_get_skip_pos.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end19.sctp_get_skip_pos.exit_crit_edge ], [ %i.010.i, %for.body.i.sctp_get_skip_pos.exit_crit_edge ], [ %nskips.0146, %for.inc.i.sctp_get_skip_pos.exit_crit_edge ]
  %arrayidx24 = getelementptr [10 x %struct.sctp_fwdtsn_skip], ptr %ftsn_skip_arr, i32 0, i32 %i.0.lcssa.i
  %37 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %34, ptr %arrayidx24, align 2
  %38 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subh, align 4
  %ssn = getelementptr inbounds %struct.sctp_datahdr, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ssn, align 2
  %ssn28 = getelementptr [10 x %struct.sctp_fwdtsn_skip], ptr %ftsn_skip_arr, i32 0, i32 %i.0.lcssa.i, i32 1
  %42 = ptrtoint ptr %ssn28 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %ssn28, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %nskips.0146)
  %cmp29 = icmp eq i32 %i.0.lcssa.i, %nskips.0146
  %inc = zext i1 %cmp29 to i32
  %spec.select = add i32 %nskips.0146, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %spec.select)
  %cmp33 = icmp eq i32 %spec.select, 10
  br i1 %cmp33, label %sctp_get_skip_pos.exit.for.end_crit_edge, label %sctp_get_skip_pos.exit.for.inc_crit_edge

sctp_get_skip_pos.exit.for.inc_crit_edge:         ; preds = %sctp_get_skip_pos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sctp_get_skip_pos.exit.for.end_crit_edge:         ; preds = %sctp_get_skip_pos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %sctp_get_skip_pos.exit.for.inc_crit_edge, %if.then15.for.inc_crit_edge, %list_del_init.exit
  %nskips.2 = phi i32 [ %nskips.0146, %list_del_init.exit ], [ %nskips.0146, %if.then15.for.inc_crit_edge ], [ %spec.select, %sctp_get_skip_pos.exit.for.inc_crit_edge ]
  %cmp.i.not = icmp eq ptr %temp.0149, %abandoned
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sctp_get_skip_pos.exit.for.end_crit_edge, %if.else.for.end_crit_edge, %if.end4.for.end_crit_edge
  %nskips.3 = phi i32 [ 0, %if.end4.for.end_crit_edge ], [ %nskips.0146, %if.else.for.end_crit_edge ], [ 10, %sctp_get_skip_pos.exit.for.end_crit_edge ], [ %nskips.2, %for.inc.for.end_crit_edge ]
  %43 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %adv_peer_ack_point, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %ctsn)
  %cmp42 = icmp ugt i32 %44, %ctsn
  br i1 %cmp42, label %if.end48, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %for.end
  %call47 = call ptr @sctp_make_fwdtsn(ptr noundef %1, i32 noundef %44, i32 noundef %nskips.3, ptr noundef nonnull %ftsn_skip_arr) #8
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %if.end48.cleanup_crit_edge, label %if.then50

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.end48
  %control_chunk_list = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i138 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call47, ptr noundef %46, ptr noundef %control_chunk_list) #8
  br i1 %call.i.i138, label %if.end.i.i139, label %if.then50.list_add_tail.exit_crit_edge

if.then50.list_add_tail.exit_crit_edge:           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i139:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call47, ptr %prev.i, align 4
  %48 = ptrtoint ptr %call47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %control_chunk_list, ptr %call47, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call47, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call47, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i139, %if.then50.list_add_tail.exit_crit_edge
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !87
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net, align 8
  %sctp = getelementptr inbounds %struct.net, ptr %53, i32 0, i32 38
  %54 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sctp, align 8
  %arrayidx66 = getelementptr [34 x i32], ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %arrayidx66 to i32
  %57 = call i32 @llvm.read_register.i32(metadata !73) #8
  %and.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu, align 4
  %arrayidx69 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx69, align 4
  %add70 = add i32 %62, %56
  %63 = inttoptr i32 %add70 to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add71 = add i32 %65, 1
  store i32 %add71, ptr %63, align 4
  %66 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool82.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool82.not, label %if.then87, label %list_add_tail.exit.do.end90_crit_edge, !prof !85

list_add_tail.exit.do.end90_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end90

if.then87:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %list_add_tail.exit.do.end90_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #8, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.end48.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ftsn_skip_arr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_fwdtsn(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_fail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_dequeue_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_dequeue_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_outq_flush_data(ptr noundef %ctx, i32 noundef %rtx_timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %state = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %3, label %entry.cleanup116_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge273
    i32 6, label %entry.sw.epilog_crit_edge274
  ]

entry.sw.epilog_crit_edge274:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge273:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup116_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

sw.bb:                                            ; preds = %entry
  %packet = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 4
  %5 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %packet, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.cleanup116_crit_edge, label %lor.lhs.false

sw.bb.cleanup116_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

lor.lhs.false:                                    ; preds = %sw.bb
  %has_cookie_echo = getelementptr inbounds %struct.sctp_packet, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %has_cookie_echo to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %has_cookie_echo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %lor.lhs.false.cleanup116_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.cleanup116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

sw.epilog:                                        ; preds = %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge273, %entry.sw.epilog_crit_edge274
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %retransmit = getelementptr inbounds %struct.sctp_outq, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %retransmit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %retransmit, align 4
  %cmp.i.not = icmp eq ptr %11, %retransmit
  br i1 %cmp.i.not, label %sw.epilog.if.end7_crit_edge, label %land.lhs.true

sw.epilog.if.end7_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %sw.epilog
  %retran_path.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 7
  %12 = ptrtoint ptr %retran_path.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %retran_path.i, align 4
  %state.i = getelementptr inbounds %struct.sctp_transport, ptr %13, i32 0, i32 37
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i173 = icmp eq i32 %15, 3
  br i1 %cmp.i173, label %land.lhs.true.cleanup116_crit_edge, label %if.end.i

land.lhs.true.cleanup116_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end.i:                                         ; preds = %land.lhs.true
  %transport.i = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transport.i, align 4
  %cmp4.not.i = icmp eq ptr %17, %13
  br i1 %cmp4.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.then5.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then5.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %transport.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %transport.i, align 4
  %packet.i = getelementptr inbounds %struct.sctp_transport, ptr %13, i32 0, i32 45
  %packet11.i = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 4
  %19 = ptrtoint ptr %packet11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %packet.i, ptr %packet11.i, align 4
  %send_ready.i = getelementptr inbounds %struct.sctp_transport, ptr %13, i32 0, i32 46
  %20 = ptrtoint ptr %send_ready.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %send_ready.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %send_ready.i
  br i1 %cmp.i.not.i, label %if.then13.i, label %if.then5.i.if.end16.i_crit_edge

if.then5.i.if.end16.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.then5.i
  %transport_list.i = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %send_ready.i, ptr noundef %23, ptr noundef %transport_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then13.i.if.end16.i_crit_edge

if.then13.i.if.end16.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end.i.i.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %send_ready.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %send_ready.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transport_list.i, ptr %send_ready.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %13, i32 0, i32 46, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %send_ready.i, ptr %23, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i.i.i, %if.then13.i.if.end16.i_crit_edge, %if.then5.i.if.end16.i_crit_edge
  %28 = ptrtoint ptr %packet11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %packet11.i, align 4
  %30 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %asoc, align 4
  %i.i = getelementptr inbounds %struct.sctp_association, ptr %31, i32 0, i32 5, i32 15
  %32 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i.i, align 4
  %ecn_capable.i = getelementptr inbounds %struct.sctp_association, ptr %31, i32 0, i32 5, i32 12
  %34 = ptrtoint ptr %ecn_capable.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %ecn_capable.i, align 2
  %bf.lshr.i = lshr i16 %bf.load.i, 15
  %conv.i174 = zext i16 %bf.lshr.i to i32
  tail call void @sctp_packet_config(ptr noundef %29, i32 noundef %33, i32 noundef %conv.i174) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end16.i, %if.end.i.if.end22.i_crit_edge
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %packet23.i = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 4
  %37 = ptrtoint ptr %packet23.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %packet23.i, align 4
  %gfp.i = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 5
  %39 = ptrtoint ptr %gfp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gfp.i, align 4
  %retransmit.i.i = getelementptr inbounds %struct.sctp_outq, ptr %36, i32 0, i32 7
  %fast_rtx2.i.i = getelementptr inbounds %struct.sctp_outq, ptr %36, i32 0, i32 10
  %41 = ptrtoint ptr %fast_rtx2.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fast_rtx2.i.i, align 4
  %43 = ptrtoint ptr %retransmit.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retransmit.i.i, align 4
  %cmp.not180.i.i = icmp eq ptr %44, %retransmit.i.i
  br i1 %cmp.not180.i.i, label %if.end22.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end22.i.for.end.i.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end22.i
  %transport1.i.i = getelementptr inbounds %struct.sctp_packet, ptr %38, i32 0, i32 7
  %45 = ptrtoint ptr %transport1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transport1.i.i, align 4
  %abandoned.i.i = getelementptr inbounds %struct.sctp_outq, ptr %36, i32 0, i32 8
  %prev.i.i144.i.i = getelementptr inbounds %struct.sctp_outq, ptr %36, i32 0, i32 8, i32 1
  %transmitted.i.i = getelementptr inbounds %struct.sctp_transport, ptr %46, i32 0, i32 44
  %prev.i2.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %46, i32 0, i32 44, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool11.not.i.i = icmp ne i8 %42, 0
  %has_data.i.i = getelementptr inbounds %struct.sctp_packet, ptr %38, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rtx_timeout)
  %tobool30.not.i.i = icmp ne i32 %rtx_timeout, 0
  %brmerge.i.i = select i1 %tobool30.not.i.i, i1 true, i1 %tobool11.not.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn.in183.i.i = phi ptr [ %44, %for.body.lr.ph.i.i ], [ %.pn188.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %error.0182.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %error.3.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %timer.0181.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %timer.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %chunk.0187.i.i = getelementptr i8, ptr %.pn.in183.i.i, i32 -16
  %47 = ptrtoint ptr %.pn.in183.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn188.i.i = load ptr, ptr %.pn.in183.i.i, align 4
  %call.i.i = tail call i32 @sctp_chunk_abandoned(ptr noundef %chunk.0187.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in183.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in183.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i.i, align 4
  %50 = ptrtoint ptr %.pn.in183.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in183.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %54 = ptrtoint ptr %.pn.in183.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %.pn.in183.i.i, ptr %.pn.in183.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in183.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %.pn.in183.i.i, ptr %prev.i3.i.i.i, align 4
  %subh.i.i.i = getelementptr i8, ptr %.pn.in183.i.i, i32 28
  %56 = ptrtoint ptr %subh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %subh.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %list_del_init.exit.i.i
  %pos.0.in.i.i.i = phi ptr [ %abandoned.i.i, %list_del_init.exit.i.i ], [ %pos.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %60 = ptrtoint ptr %pos.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %pos.0.i.i.i = load ptr, ptr %pos.0.in.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %pos.0.i.i.i, %abandoned.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then8.critedge.i.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %subh4.i.i.i = getelementptr i8, ptr %pos.0.i.i.i, i32 28
  %61 = ptrtoint ptr %subh4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %subh4.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %sub.i.i.i = sub i32 %59, %64
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in183.i.i, ptr noundef %66, ptr noundef %68) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.for.inc.i.i_crit_edge

if.then.i.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i143.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  br label %if.end9.sink.split.i.i.i

if.then8.critedge.i.i.i:                          ; preds = %for.cond.i.i.i
  %69 = ptrtoint ptr %prev.i.i144.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i144.i.i, align 4
  %call.i.i17.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in183.i.i, ptr noundef %70, ptr noundef %abandoned.i.i) #8
  br i1 %call.i.i17.i.i.i, label %if.then8.critedge.i.i.i.if.end9.sink.split.i.i.i_crit_edge, label %if.then8.critedge.i.i.i.for.inc.i.i_crit_edge

if.then8.critedge.i.i.i.for.inc.i.i_crit_edge:    ; preds = %if.then8.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then8.critedge.i.i.i.if.end9.sink.split.i.i.i_crit_edge: ; preds = %if.then8.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i.i.i

if.end9.sink.split.i.i.i:                         ; preds = %if.then8.critedge.i.i.i.if.end9.sink.split.i.i.i_crit_edge, %if.end.i.i.i.i.i
  %prev.i.sink.i.i.i = phi ptr [ %prev1.i.i.i143.i.i, %if.end.i.i.i.i.i ], [ %prev.i.i144.i.i, %if.then8.critedge.i.i.i.if.end9.sink.split.i.i.i_crit_edge ]
  %head.sink.i.i.i = phi ptr [ %68, %if.end.i.i.i.i.i ], [ %abandoned.i.i, %if.then8.critedge.i.i.i.if.end9.sink.split.i.i.i_crit_edge ]
  %.sink23.i.i.i = phi ptr [ %66, %if.end.i.i.i.i.i ], [ %70, %if.then8.critedge.i.i.i.if.end9.sink.split.i.i.i_crit_edge ]
  %71 = ptrtoint ptr %prev.i.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %.pn.in183.i.i, ptr %prev.i.sink.i.i.i, align 4
  %72 = ptrtoint ptr %.pn.in183.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %head.sink.i.i.i, ptr %.pn.in183.i.i, align 4
  %73 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %.sink23.i.i.i, ptr %prev.i3.i.i.i, align 4
  %74 = ptrtoint ptr %.sink23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %.pn.in183.i.i, ptr %.sink23.i.i.i, align 4
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %tsn_gap_acked.i.i = getelementptr i8, ptr %.pn.in183.i.i, i32 156
  %75 = ptrtoint ptr %tsn_gap_acked.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load.i.i = load i16, ptr %tsn_gap_acked.i.i, align 4
  %76 = and i16 %bf.load.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool8.not.i.i = icmp eq i16 %76, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  %call.i.i145.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in183.i.i) #8
  br i1 %call.i.i145.i.i, label %if.end.i.i148.i.i, label %if.then9.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then9.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i.i

if.end.i.i148.i.i:                                ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i146.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in183.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i146.i.i, align 4
  %79 = ptrtoint ptr %.pn.in183.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %.pn.in183.i.i, align 4
  %prev1.i.i.i147.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i147.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i147.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i148.i.i, %if.then9.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %83 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i149.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in183.i.i, ptr noundef %84, ptr noundef %transmitted.i.i) #8
  br i1 %call.i.i.i149.i.i, label %if.end.i.i.i150.i.i, label %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge

__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i.i150.i.i:                              ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %.pn.in183.i.i, ptr %prev.i2.i.i.i, align 4
  %86 = ptrtoint ptr %.pn.in183.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %transmitted.i.i, ptr %.pn.in183.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in183.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i.i.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %.pn.in183.i.i, ptr %84, align 4
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %bf.clear13.i.i = and i16 %bf.load.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear13.i.i)
  %tobool14.not.i.i = icmp eq i16 %bf.clear13.i.i, 0
  %or.cond.i.i = select i1 %tobool11.not.i.i, i1 %tobool14.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end10.i.i.for.inc.i.i_crit_edge, label %if.end10.i.i.redo.outer.i.i_crit_edge

if.end10.i.i.redo.outer.i.i_crit_edge:            ; preds = %if.end10.i.i
  br label %redo.outer.i.i

if.end10.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

redo.outer.i.i:                                   ; preds = %if.end28.i.i.redo.outer.i.i_crit_edge, %if.end10.i.i.redo.outer.i.i_crit_edge
  %error.1.ph.i.i = phi i32 [ %call27.i.i, %if.end28.i.i.redo.outer.i.i_crit_edge ], [ %error.0182.i.i, %if.end10.i.i.redo.outer.i.i_crit_edge ]
  br label %redo.i.i

redo.i.i:                                         ; preds = %sw.bb.i.i.redo.i.i_crit_edge, %redo.outer.i.i
  %call17.i.i = tail call i32 @sctp_packet_append_chunk(ptr noundef %38, ptr noundef %chunk.0187.i.i) #8
  %89 = zext i32 %call17.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call17.i.i, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %redo.i.i.sw.epilog.thread.sink.split.i.i_crit_edge
    i32 3, label %redo.i.i.sw.epilog.thread.sink.split.i.i_crit_edge275
  ]

redo.i.i.sw.epilog.thread.sink.split.i.i_crit_edge275: ; preds = %redo.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split.i.i

redo.i.i.sw.epilog.thread.sink.split.i.i_crit_edge: ; preds = %redo.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.sink.split.i.i

sw.bb.i.i:                                        ; preds = %redo.i.i
  %90 = ptrtoint ptr %has_data.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load18.i.i = load i8, ptr %has_data.i.i, align 4
  %91 = and i8 %bf.load18.i.i, -112
  %92 = icmp eq i8 %91, 0
  %call27.i.i = tail call i32 @sctp_packet_transmit(ptr noundef %38, i32 noundef %40) #8
  br i1 %92, label %sw.bb.i.i.redo.i.i_crit_edge, label %if.end28.i.i

sw.bb.i.i.redo.i.i_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %redo.i.i

if.end28.i.i:                                     ; preds = %sw.bb.i.i
  br i1 %brmerge.i.i, label %if.end28.i.i.sw.epilog.thread.i.i_crit_edge, label %if.end28.i.i.redo.outer.i.i_crit_edge

if.end28.i.i.redo.outer.i.i_crit_edge:            ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %redo.outer.i.i

if.end28.i.i.sw.epilog.thread.i.i_crit_edge:      ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread.i.i

sw.default.i.i:                                   ; preds = %redo.i.i
  %call.i.i151.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in183.i.i) #8
  br i1 %call.i.i151.i.i, label %if.end.i.i154.i.i, label %sw.default.i.i.__list_del_entry.exit.i157.i.i_crit_edge

sw.default.i.i.__list_del_entry.exit.i157.i.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i157.i.i

if.end.i.i154.i.i:                                ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i152.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in183.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i152.i.i, align 4
  %95 = ptrtoint ptr %.pn.in183.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %.pn.in183.i.i, align 4
  %prev1.i.i.i153.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i153.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %__list_del_entry.exit.i157.i.i

__list_del_entry.exit.i157.i.i:                   ; preds = %if.end.i.i154.i.i, %sw.default.i.i.__list_del_entry.exit.i157.i.i_crit_edge
  %99 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i156.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in183.i.i, ptr noundef %100, ptr noundef %transmitted.i.i) #8
  br i1 %call.i.i.i156.i.i, label %if.end.i.i.i159.i.i, label %__list_del_entry.exit.i157.i.i.list_move_tail.exit160.i.i_crit_edge

__list_del_entry.exit.i157.i.i.list_move_tail.exit160.i.i_crit_edge: ; preds = %__list_del_entry.exit.i157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit160.i.i

if.end.i.i.i159.i.i:                              ; preds = %__list_del_entry.exit.i157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %.pn.in183.i.i, ptr %prev.i2.i.i.i, align 4
  %102 = ptrtoint ptr %.pn.in183.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %transmitted.i.i, ptr %.pn.in183.i.i, align 4
  %prev3.i.i.i158.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in183.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i158.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev3.i.i.i158.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %.pn.in183.i.i, ptr %100, align 4
  br label %list_move_tail.exit160.i.i

list_move_tail.exit160.i.i:                       ; preds = %if.end.i.i.i159.i.i, %__list_del_entry.exit.i157.i.i.list_move_tail.exit160.i.i_crit_edge
  %105 = ptrtoint ptr %tsn_gap_acked.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load40.i.i = load i16, ptr %tsn_gap_acked.i.i, align 4
  %bf.clear41.i.i = and i16 %bf.load40.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.clear41.i.i)
  %cmp43.i.i = icmp eq i16 %bf.clear41.i.i, 1
  br i1 %cmp43.i.i, label %if.then45.i.i, label %list_move_tail.exit160.i.i.sw.epilog.i.i_crit_edge

list_move_tail.exit160.i.i.sw.epilog.i.i_crit_edge: ; preds = %list_move_tail.exit160.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.then45.i.i:                                    ; preds = %list_move_tail.exit160.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear48.i.i = and i16 %bf.load40.i.i, -4
  %bf.set.i.i = or i16 %bf.clear48.i.i, 2
  %106 = ptrtoint ptr %tsn_gap_acked.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %bf.set.i.i, ptr %tsn_gap_acked.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.thread.sink.split.i.i:                  ; preds = %redo.i.i.sw.epilog.thread.sink.split.i.i_crit_edge, %redo.i.i.sw.epilog.thread.sink.split.i.i_crit_edge275
  %call37.i.i = tail call i32 @sctp_packet_transmit(ptr noundef %38, i32 noundef %40) #8
  br label %sw.epilog.thread.i.i

sw.epilog.thread.i.i:                             ; preds = %sw.epilog.thread.sink.split.i.i, %if.end28.i.i.sw.epilog.thread.i.i_crit_edge
  %error.2.ph.i.i = phi i32 [ %call37.i.i, %sw.epilog.thread.sink.split.i.i ], [ %call27.i.i, %if.end28.i.i.sw.epilog.thread.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2.ph.i.i)
  %tobool50.not163.i.i = icmp eq i32 %error.2.ph.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer.0181.i.i)
  %tobool52.not164.i.i = icmp eq i32 %timer.0181.i.i, 0
  %107 = select i1 %tobool50.not163.i.i, i1 %tobool52.not164.i.i, i1 false
  %timer.1166.i.i = select i1 %107, i32 1, i32 %timer.0181.i.i
  br label %for.end.i.i

sw.epilog.i.i:                                    ; preds = %if.then45.i.i, %list_move_tail.exit160.i.i.sw.epilog.i.i_crit_edge
  %108 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %36, align 4
  %rtxchunks.i.i = getelementptr inbounds %struct.sctp_association, ptr %109, i32 0, i32 85, i32 6
  %110 = ptrtoint ptr %rtxchunks.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rtxchunks.i.i, align 8
  %inc.i.i = add i64 %111, 1
  store i64 %inc.i.i, ptr %rtxchunks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.ph.i.i)
  %tobool50.not.i.i = icmp eq i32 %error.1.ph.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer.0181.i.i)
  %tobool52.not.i.i = icmp eq i32 %timer.0181.i.i, 0
  %112 = select i1 %tobool50.not.i.i, i1 %tobool52.not.i.i, i1 false
  %timer.1.i.i = select i1 %112, i32 1, i32 %timer.0181.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.epilog.i.i, %if.end10.i.i.for.inc.i.i_crit_edge, %if.end.i.i.i150.i.i, %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge, %if.end9.sink.split.i.i.i, %if.then8.critedge.i.i.i.for.inc.i.i_crit_edge, %if.then.i.i.i.for.inc.i.i_crit_edge
  %timer.2.i.i = phi i32 [ %timer.1.i.i, %sw.epilog.i.i ], [ %timer.0181.i.i, %if.end10.i.i.for.inc.i.i_crit_edge ], [ %timer.0181.i.i, %if.then.i.i.i.for.inc.i.i_crit_edge ], [ %timer.0181.i.i, %if.then8.critedge.i.i.i.for.inc.i.i_crit_edge ], [ %timer.0181.i.i, %if.end9.sink.split.i.i.i ], [ %timer.0181.i.i, %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge ], [ %timer.0181.i.i, %if.end.i.i.i150.i.i ]
  %error.3.i.i = phi i32 [ %error.1.ph.i.i, %sw.epilog.i.i ], [ %error.0182.i.i, %if.end10.i.i.for.inc.i.i_crit_edge ], [ %error.0182.i.i, %if.then.i.i.i.for.inc.i.i_crit_edge ], [ %error.0182.i.i, %if.then8.critedge.i.i.i.for.inc.i.i_crit_edge ], [ %error.0182.i.i, %if.end9.sink.split.i.i.i ], [ %error.0182.i.i, %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge ], [ %error.0182.i.i, %if.end.i.i.i150.i.i ]
  %cmp.not.i.i = icmp eq ptr %.pn188.i.i, %retransmit.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %sw.epilog.thread.i.i, %if.end22.i.for.end.i.i_crit_edge
  %timer.3.i.i = phi i32 [ %timer.1166.i.i, %sw.epilog.thread.i.i ], [ 0, %if.end22.i.for.end.i.i_crit_edge ], [ %timer.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %error.4.i.i = phi i32 [ %error.2.ph.i.i, %sw.epilog.thread.i.i ], [ 0, %if.end22.i.for.end.i.i_crit_edge ], [ %error.3.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rtx_timeout)
  %tobool62.not.i.i = icmp eq i32 %rtx_timeout, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool64.not.i.i = icmp eq i8 %42, 0
  %or.cond142.i.i = select i1 %tobool62.not.i.i, i1 %tobool64.not.i.i, i1 false
  br i1 %or.cond142.i.i, label %for.end.i.i.if.end93.i.i_crit_edge, label %for.cond70.preheader.i.i

for.end.i.i.if.end93.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

for.cond70.preheader.i.i:                         ; preds = %for.end.i.i
  %113 = ptrtoint ptr %retransmit.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pn138190.i.i = load ptr, ptr %retransmit.i.i, align 4
  %cmp71.not191.i.i = icmp eq ptr %.pn138190.i.i, %retransmit.i.i
  br i1 %cmp71.not191.i.i, label %for.cond70.preheader.i.i.if.end93.i.i_crit_edge, label %for.cond70.preheader.i.i.for.body74.i.i_crit_edge

for.cond70.preheader.i.i.for.body74.i.i_crit_edge: ; preds = %for.cond70.preheader.i.i
  br label %for.body74.i.i

for.cond70.preheader.i.i.if.end93.i.i_crit_edge:  ; preds = %for.cond70.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

for.body74.i.i:                                   ; preds = %for.inc87.i.i.for.body74.i.i_crit_edge, %for.cond70.preheader.i.i.for.body74.i.i_crit_edge
  %.pn138192.i.i = phi ptr [ %.pn138.i.i, %for.inc87.i.i.for.body74.i.i_crit_edge ], [ %.pn138190.i.i, %for.cond70.preheader.i.i.for.body74.i.i_crit_edge ]
  %fast_retransmit75.i.i = getelementptr i8, ptr %.pn138192.i.i, i32 156
  %114 = ptrtoint ptr %fast_retransmit75.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load76.i.i = load i16, ptr %fast_retransmit75.i.i, align 4
  %bf.clear77.i.i = and i16 %bf.load76.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.clear77.i.i)
  %cmp79.i.i = icmp eq i16 %bf.clear77.i.i, 1
  br i1 %cmp79.i.i, label %if.then81.i.i, label %for.body74.i.i.for.inc87.i.i_crit_edge

for.body74.i.i.for.inc87.i.i_crit_edge:           ; preds = %for.body74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc87.i.i

if.then81.i.i:                                    ; preds = %for.body74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear84.i.i = and i16 %bf.load76.i.i, -4
  %bf.set85.i.i = or i16 %bf.clear84.i.i, 2
  %115 = ptrtoint ptr %fast_retransmit75.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %bf.set85.i.i, ptr %fast_retransmit75.i.i, align 4
  br label %for.inc87.i.i

for.inc87.i.i:                                    ; preds = %if.then81.i.i, %for.body74.i.i.for.inc87.i.i_crit_edge
  %116 = ptrtoint ptr %.pn138192.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pn138.i.i = load ptr, ptr %.pn138192.i.i, align 4
  %cmp71.not.i.i = icmp eq ptr %.pn138.i.i, %retransmit.i.i
  br i1 %cmp71.not.i.i, label %for.inc87.i.i.if.end93.i.i_crit_edge, label %for.inc87.i.i.for.body74.i.i_crit_edge

for.inc87.i.i.for.body74.i.i_crit_edge:           ; preds = %for.inc87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body74.i.i

for.inc87.i.i.if.end93.i.i_crit_edge:             ; preds = %for.inc87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %for.inc87.i.i.if.end93.i.i_crit_edge, %for.cond70.preheader.i.i.if.end93.i.i_crit_edge, %for.end.i.i.if.end93.i.i_crit_edge
  br i1 %tobool64.not.i.i, label %if.end93.i.i.__sctp_outq_flush_rtx.exit.i_crit_edge, label %if.then95.i.i

if.end93.i.i.__sctp_outq_flush_rtx.exit.i_crit_edge: ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sctp_outq_flush_rtx.exit.i

if.then95.i.i:                                    ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %fast_rtx2.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %fast_rtx2.i.i, align 4
  br label %__sctp_outq_flush_rtx.exit.i

__sctp_outq_flush_rtx.exit.i:                     ; preds = %if.then95.i.i, %if.end93.i.i.__sctp_outq_flush_rtx.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.4.i.i)
  %cmp25.i = icmp slt i32 %error.4.i.i, 0
  br i1 %cmp25.i, label %if.then27.i, label %__sctp_outq_flush_rtx.exit.i.if.end29.i_crit_edge

__sctp_outq_flush_rtx.exit.i.if.end29.i_crit_edge: ; preds = %__sctp_outq_flush_rtx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then27.i:                                      ; preds = %__sctp_outq_flush_rtx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 0, %error.4.i.i
  %118 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %asoc, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sk.i, align 4
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %121, i32 0, i32 51
  %122 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %sub.i, ptr %sk_err.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %__sctp_outq_flush_rtx.exit.i.if.end29.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer.3.i.i)
  %tobool30.not.i = icmp eq i32 %timer.3.i.i, 0
  br i1 %tobool30.not.i, label %if.end29.i.if.end34.i_crit_edge, label %if.then31.i

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %transport.i, align 4
  tail call void @sctp_transport_reset_t3_rtx(ptr noundef %124) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %126 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %transport.i, align 4
  %last_time_sent.i = getelementptr inbounds %struct.sctp_transport, ptr %127, i32 0, i32 26
  %128 = ptrtoint ptr %last_time_sent.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %125, ptr %last_time_sent.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.end29.i.if.end34.i_crit_edge
  %129 = ptrtoint ptr %packet23.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %packet23.i, align 4
  %has_cookie_echo.i = getelementptr inbounds %struct.sctp_packet, ptr %130, i32 0, i32 9
  %131 = ptrtoint ptr %has_cookie_echo.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load36.i = load i8, ptr %has_cookie_echo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load36.i)
  %tobool38.not.i = icmp sgt i8 %bf.load36.i, -1
  br i1 %tobool38.not.i, label %sctp_outq_flush_rtx.exit, label %if.end34.i.cleanup116_crit_edge

if.end34.i.cleanup116_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

sctp_outq_flush_rtx.exit:                         ; preds = %if.end34.i
  %132 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ctx, align 4
  %retransmit.i = getelementptr inbounds %struct.sctp_outq, ptr %133, i32 0, i32 7
  %134 = ptrtoint ptr %retransmit.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile ptr, ptr %retransmit.i, align 4
  %cmp.i68.not.i = icmp eq ptr %135, %retransmit.i
  br i1 %cmp.i68.not.i, label %sctp_outq_flush_rtx.exit.if.end7_crit_edge, label %sctp_outq_flush_rtx.exit.cleanup116_crit_edge

sctp_outq_flush_rtx.exit.cleanup116_crit_edge:    ; preds = %sctp_outq_flush_rtx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

sctp_outq_flush_rtx.exit.if.end7_crit_edge:       ; preds = %sctp_outq_flush_rtx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %sctp_outq_flush_rtx.exit.if.end7_crit_edge, %sw.epilog.if.end7_crit_edge
  %transport = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 1
  %136 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %transport, align 4
  %tobool8.not = icmp eq ptr %137, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sctp_transport_burst_limited(ptr noundef nonnull %137) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %packet60 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 4
  %gfp = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %if.end11
  %138 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx, align 4
  %sched.i = getelementptr inbounds %struct.sctp_outq, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sched.i, align 4
  %dequeue.i = getelementptr inbounds %struct.sctp_sched_ops, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dequeue.i, align 4
  %call.i = tail call ptr %143(ptr noundef %139) #8
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %while.cond.cleanup116_crit_edge, label %while.body

while.cond.cleanup116_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

while.body:                                       ; preds = %while.cond
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 8
  %144 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %subh, align 4
  %stream = getelementptr inbounds %struct.sctp_datahdr, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %stream to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %stream, align 4
  %148 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %asoc, align 4
  %stream15 = getelementptr inbounds %struct.sctp_association, ptr %149, i32 0, i32 60
  %conv.i176 = zext i16 %147 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i176, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream15, i32 noundef %mul17.i.i) #8
  %state18 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 3
  %150 = ptrtoint ptr %state18 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %state18, align 4
  %call19 = tail call i32 @sctp_chunk_abandoned(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctx, align 4
  tail call void @sctp_sched_dequeue_done(ptr noundef %153, ptr noundef nonnull %call.i) #8
  tail call void @sctp_chunk_fail(ptr noundef nonnull %call.i, i32 noundef 0) #8
  tail call void @sctp_chunk_free(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end23:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp25 = icmp eq i8 %151, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %154 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ctx, align 4
  %out_chunk_list.i = getelementptr inbounds %struct.sctp_outq, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %out_chunk_list.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %out_chunk_list.i, align 4
  %call.i.i.i177 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %out_chunk_list.i, ptr noundef %157) #8
  br i1 %call.i.i.i177, label %if.end.i.i.i179, label %if.then27.list_add.exit.i_crit_edge

if.then27.list_add.exit.i_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i179:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i, ptr %prev1.i.i.i, align 4
  %159 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %157, ptr %call.i, align 4
  %prev3.i.i.i178 = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %160 = ptrtoint ptr %prev3.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %out_chunk_list.i, ptr %prev3.i.i.i178, align 4
  %161 = ptrtoint ptr %out_chunk_list.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %call.i, ptr %out_chunk_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i179, %if.then27.list_add.exit.i_crit_edge
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %162 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 6
  %164 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len.i, align 4
  %out_qlen.i = getelementptr inbounds %struct.sctp_outq, ptr %155, i32 0, i32 3
  %166 = ptrtoint ptr %out_qlen.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %out_qlen.i, align 4
  %add.i = add i32 %167, %165
  store i32 %add.i, ptr %out_qlen.i, align 4
  %168 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %subh, align 4
  %stream.i.i = getelementptr inbounds %struct.sctp_datahdr, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %stream.i.i, align 4
  %172 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %155, align 4
  %stream1.i = getelementptr inbounds %struct.sctp_association, ptr %173, i32 0, i32 60
  %conv.i.i = zext i16 %171 to i32
  %mul17.i.i.i = shl nuw nsw i32 %conv.i.i, 4
  %call1.i.i = tail call ptr @__genradix_ptr(ptr noundef %stream1.i, i32 noundef %mul17.i.i.i) #8
  %ext.i = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i.i, i32 0, i32 2
  %174 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ext.i, align 4
  %176 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 3
  %outq.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %175, i32 0, i32 2
  %177 = ptrtoint ptr %outq.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %outq.i, align 4
  %call.i.i8.i = tail call zeroext i1 @__list_add_valid(ptr noundef %176, ptr noundef %outq.i, ptr noundef %178) #8
  br i1 %call.i.i8.i, label %if.end.i.i11.i, label %list_add.exit.i.cleanup116_crit_edge

list_add.exit.i.cleanup116_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end.i.i11.i:                                   ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i9.i = getelementptr inbounds %struct.list_head, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %prev1.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %176, ptr %prev1.i.i9.i, align 4
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %178, ptr %176, align 4
  %prev3.i.i10.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %181 = ptrtoint ptr %prev3.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %outq.i, ptr %prev3.i.i10.i, align 4
  %182 = ptrtoint ptr %outq.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %176, ptr %outq.i, align 4
  br label %cleanup116

if.end29:                                         ; preds = %if.end23
  tail call fastcc void @sctp_outq_select_transport(ptr noundef %ctx, ptr noundef nonnull %call.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_outq_flush_data.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_outq_flush_data, %if.then34)) #8
          to label %do.end [label %if.then34], !srcloc !83

if.then34:                                        ; preds = %if.end29
  %183 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ctx, align 4
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %185 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %chunk_hdr, align 4
  %tobool38.not = icmp eq ptr %186, null
  br i1 %tobool38.not, label %if.then34.cond.end_crit_edge, label %cond.true

if.then34.cond.end_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %186, align 2
  %conv40 = zext i8 %188 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %conv40, 0
  %call43 = tail call ptr @sctp_cname([1 x i32] %.fca.0.insert) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then34.cond.end_crit_edge
  %cond = phi ptr [ %call43, %cond.true ], [ @.str.5, %if.then34.cond.end_crit_edge ]
  %189 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %subh, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %193 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %skb, align 4
  %tobool45.not = icmp eq ptr %194, null
  br i1 %tobool45.not, label %cond.end.cond.end57_crit_edge, label %cond.true53

cond.end.cond.end57_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end57

cond.true53:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %head = getelementptr inbounds %struct.sk_buff, ptr %194, i32 0, i32 18
  %195 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %head, align 8
  %users = getelementptr inbounds %struct.sk_buff, ptr %194, i32 0, i32 21
  %call.i.i.i180 = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #8
  %197 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %users, align 4
  br label %cond.end57

cond.end57:                                       ; preds = %cond.true53, %cond.end.cond.end57_crit_edge
  %cond50209 = phi ptr [ %196, %cond.true53 ], [ null, %cond.end.cond.end57_crit_edge ]
  %cond58 = phi i32 [ %198, %cond.true53 ], [ -1, %cond.end.cond.end57_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_outq_flush_data.__UNIQUE_ID_ddebug570, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef %184, ptr noundef nonnull %call.i, ptr noundef %cond, i32 noundef %192, ptr noundef %cond50209, i32 noundef %cond58) #8
  br label %do.end

do.end:                                           ; preds = %cond.end57, %if.end29
  %199 = ptrtoint ptr %packet60 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %packet60, align 4
  %201 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %gfp, align 4
  %call61 = tail call i32 @sctp_packet_transmit_chunk(ptr noundef %200, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef %202) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.end84, label %do.body65

do.body65:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_outq_flush_data.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_outq_flush_data, %if.then77)) #8
          to label %do.end82 [label %if.then77], !srcloc !83

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %subh, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %204, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_outq_flush_data.__UNIQUE_ID_ddebug571, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef %206, i32 noundef %call61) #8
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %do.body65
  %207 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ctx, align 4
  %out_chunk_list.i181 = getelementptr inbounds %struct.sctp_outq, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %out_chunk_list.i181 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %out_chunk_list.i181, align 4
  %call.i.i.i182 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %out_chunk_list.i181, ptr noundef %210) #8
  br i1 %call.i.i.i182, label %if.end.i.i.i185, label %do.end82.list_add.exit.i199_crit_edge

do.end82.list_add.exit.i199_crit_edge:            ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i199

if.end.i.i.i185:                                  ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i183 = getelementptr inbounds %struct.list_head, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %prev1.i.i.i183 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call.i, ptr %prev1.i.i.i183, align 4
  %212 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %210, ptr %call.i, align 4
  %prev3.i.i.i184 = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %213 = ptrtoint ptr %prev3.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %out_chunk_list.i181, ptr %prev3.i.i.i184, align 4
  %214 = ptrtoint ptr %out_chunk_list.i181 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile ptr %call.i, ptr %out_chunk_list.i181, align 4
  br label %list_add.exit.i199

list_add.exit.i199:                               ; preds = %if.end.i.i.i185, %do.end82.list_add.exit.i199_crit_edge
  %skb.i186 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 5
  %215 = ptrtoint ptr %skb.i186 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %skb.i186, align 4
  %len.i187 = getelementptr inbounds %struct.sk_buff, ptr %216, i32 0, i32 6
  %217 = ptrtoint ptr %len.i187 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %len.i187, align 4
  %out_qlen.i188 = getelementptr inbounds %struct.sctp_outq, ptr %208, i32 0, i32 3
  %219 = ptrtoint ptr %out_qlen.i188 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %out_qlen.i188, align 4
  %add.i189 = add i32 %220, %218
  store i32 %add.i189, ptr %out_qlen.i188, align 4
  %221 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %subh, align 4
  %stream.i.i191 = getelementptr inbounds %struct.sctp_datahdr, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %stream.i.i191 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %stream.i.i191, align 4
  %225 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %208, align 4
  %stream1.i192 = getelementptr inbounds %struct.sctp_association, ptr %226, i32 0, i32 60
  %conv.i.i193 = zext i16 %224 to i32
  %mul17.i.i.i194 = shl nuw nsw i32 %conv.i.i193, 4
  %call1.i.i195 = tail call ptr @__genradix_ptr(ptr noundef %stream1.i192, i32 noundef %mul17.i.i.i194) #8
  %ext.i196 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i.i195, i32 0, i32 2
  %227 = ptrtoint ptr %ext.i196 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ext.i196, align 4
  %229 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 3
  %outq.i197 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %228, i32 0, i32 2
  %230 = ptrtoint ptr %outq.i197 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %outq.i197, align 4
  %call.i.i8.i198 = tail call zeroext i1 @__list_add_valid(ptr noundef %229, ptr noundef %outq.i197, ptr noundef %231) #8
  br i1 %call.i.i8.i198, label %if.end.i.i11.i202, label %list_add.exit.i199.cleanup116_crit_edge

list_add.exit.i199.cleanup116_crit_edge:          ; preds = %list_add.exit.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end.i.i11.i202:                                ; preds = %list_add.exit.i199
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i9.i200 = getelementptr inbounds %struct.list_head, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %prev1.i.i9.i200 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %229, ptr %prev1.i.i9.i200, align 4
  %233 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %231, ptr %229, align 4
  %prev3.i.i10.i201 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %234 = ptrtoint ptr %prev3.i.i10.i201 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %outq.i197, ptr %prev3.i.i10.i201, align 4
  %235 = ptrtoint ptr %outq.i197 to i32
  call void @__asan_store4_noabort(i32 %235)
  store volatile ptr %229, ptr %outq.i197, align 4
  br label %cleanup116

if.end84:                                         ; preds = %do.end
  %236 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %asoc, align 4
  %state86 = getelementptr inbounds %struct.sctp_association, ptr %237, i32 0, i32 6
  %238 = ptrtoint ptr %state86 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %state86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %239)
  %cmp87 = icmp eq i32 %239, 4
  br i1 %cmp87, label %if.then89, label %if.end84.if.end93_crit_edge

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_hdr90 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %240 = ptrtoint ptr %chunk_hdr90 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %chunk_hdr90, align 4
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %flags, align 1
  %244 = or i8 %243, 8
  store i8 %244, ptr %flags, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end84.if.end93_crit_edge
  %chunk_hdr94 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 10
  %245 = ptrtoint ptr %chunk_hdr94 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %chunk_hdr94, align 4
  %flags95 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %flags95 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %flags95, align 1
  %249 = and i8 %248, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool97.not = icmp eq i8 %249, 0
  %250 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %asoc, align 4
  %oodchunks = getelementptr inbounds %struct.sctp_association, ptr %251, i32 0, i32 85, i32 12
  %ouodchunks = getelementptr inbounds %struct.sctp_association, ptr %251, i32 0, i32 85, i32 10
  %oodchunks.sink245 = select i1 %tobool97.not, ptr %oodchunks, ptr %ouodchunks
  %252 = ptrtoint ptr %oodchunks.sink245 to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %oodchunks.sink245, align 8
  %inc102 = add i64 %253, 1
  store i64 %inc102, ptr %oodchunks.sink245, align 8
  %254 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ctx, align 4
  tail call void @sctp_sched_dequeue_done(ptr noundef %255, ptr noundef nonnull %call.i) #8
  %256 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 3
  %257 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %transport, align 4
  %transmitted = getelementptr inbounds %struct.sctp_transport, ptr %258, i32 0, i32 44
  %prev.i = getelementptr inbounds %struct.sctp_transport, ptr %258, i32 0, i32 44, i32 1
  %259 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %prev.i, align 4
  %call.i.i204 = tail call zeroext i1 @__list_add_valid(ptr noundef %256, ptr noundef %260, ptr noundef %transmitted) #8
  br i1 %call.i.i204, label %if.end.i.i205, label %if.end93.list_add_tail.exit_crit_edge

if.end93.list_add_tail.exit_crit_edge:            ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i205:                                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %261 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %256, ptr %prev.i, align 4
  %262 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %transmitted, ptr %256, align 4
  %prev3.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %263 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %260, ptr %prev3.i.i, align 4
  %264 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile ptr %256, ptr %260, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i205, %if.end93.list_add_tail.exit_crit_edge
  %265 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %transport, align 4
  tail call void @sctp_transport_reset_t3_rtx(ptr noundef %266) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %267 = load volatile i32, ptr @jiffies, align 128
  %268 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %transport, align 4
  %last_time_sent = getelementptr inbounds %struct.sctp_transport, ptr %269, i32 0, i32 26
  %270 = ptrtoint ptr %last_time_sent to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %267, ptr %last_time_sent, align 8
  %271 = ptrtoint ptr %packet60 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %packet60, align 4
  %has_cookie_echo109 = getelementptr inbounds %struct.sctp_packet, ptr %272, i32 0, i32 9
  %273 = ptrtoint ptr %has_cookie_echo109 to i32
  call void @__asan_load1_noabort(i32 %273)
  %bf.load110 = load i8, ptr %has_cookie_echo109, align 4
  %274 = lshr i8 %bf.load110, 5
  %275 = and i8 %274, 4
  %276 = zext i8 %275 to i32
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then21
  %cleanup.dest.slot.0 = phi i32 [ 3, %if.then21 ], [ %276, %list_add_tail.exit ]
  %switch = icmp eq i32 %cleanup.dest.slot.0, 4
  br i1 %switch, label %cleanup.cleanup116_crit_edge, label %cleanup.while.cond_crit_edge

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

cleanup.cleanup116_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

cleanup116:                                       ; preds = %cleanup.cleanup116_crit_edge, %if.end.i.i11.i202, %list_add.exit.i199.cleanup116_crit_edge, %if.end.i.i11.i, %list_add.exit.i.cleanup116_crit_edge, %while.cond.cleanup116_crit_edge, %sctp_outq_flush_rtx.exit.cleanup116_crit_edge, %if.end34.i.cleanup116_crit_edge, %land.lhs.true.cleanup116_crit_edge, %lor.lhs.false.cleanup116_crit_edge, %sw.bb.cleanup116_crit_edge, %entry.cleanup116_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_outq_select_transport(ptr noundef %ctx, ptr noundef %chunk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %2 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_hdr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %5, label %if.then7 [
    i8 0, label %if.then.if.end41.sink.split_crit_edge
    i8 64, label %if.then.if.end41.sink.split_crit_edge94
  ]

if.then.if.end41.sink.split_crit_edge94:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.then.if.end41.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.then7:                                         ; preds = %if.then
  %transport8 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %transport8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transport8, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.then7.if.else_crit_edge, label %land.lhs.true

if.then7.if.else_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then7
  %dest = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 17
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %8, i32 0, i32 6
  %call = tail call i32 @sctp_cmp_addr_exact(ptr noundef %dest, ptr noundef %ipaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %land.lhs.true.if.else_crit_edge, label %if.then12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %transport8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transport8, align 4
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then7.if.else_crit_edge
  %asoc = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 3
  %11 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asoc, align 4
  %dest14 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 17
  %call15 = tail call ptr @sctp_assoc_lookup_paddr(ptr noundef %12, ptr noundef %dest14) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %new_transport.0 = phi ptr [ %10, %if.then12 ], [ %call15, %if.else ]
  %tobool17.not = icmp eq ptr %new_transport.0, null
  br i1 %tobool17.not, label %if.end16.if.end41.sink.split_crit_edge, label %if.end16.if.end41_crit_edge

if.end16.if.end41_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end16.if.end41.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.else21:                                        ; preds = %entry
  %state = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 37
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %14, label %if.else21.if.end41_crit_edge [
    i32 0, label %if.else21.sw.bb_crit_edge
    i32 3, label %if.else21.sw.bb_crit_edge95
    i32 1, label %if.else21.sw.bb_crit_edge96
  ]

if.else21.sw.bb_crit_edge96:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.else21.sw.bb_crit_edge95:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.else21.sw.bb_crit_edge:                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.else21.if.end41_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

sw.bb:                                            ; preds = %if.else21.sw.bb_crit_edge, %if.else21.sw.bb_crit_edge95, %if.else21.sw.bb_crit_edge96
  %chunk_hdr23 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %16 = ptrtoint ptr %chunk_hdr23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chunk_hdr23, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %19, label %sw.bb.if.end41.sink.split_crit_edge [
    i8 4, label %sw.bb.if.end41_crit_edge
    i8 5, label %sw.bb.if.end41_crit_edge97
    i8 -128, label %sw.bb.if.end41_crit_edge98
  ]

sw.bb.if.end41_crit_edge98:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

sw.bb.if.end41_crit_edge97:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

sw.bb.if.end41_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

sw.bb.if.end41.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %sw.bb.if.end41.sink.split_crit_edge, %if.end16.if.end41.sink.split_crit_edge, %if.then.if.end41.sink.split_crit_edge, %if.then.if.end41.sink.split_crit_edge94
  %asoc37 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 3
  %21 = ptrtoint ptr %asoc37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %asoc37, align 4
  %active_path39 = getelementptr inbounds %struct.sctp_association, ptr %22, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %active_path39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %active_path39, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %sw.bb.if.end41_crit_edge, %sw.bb.if.end41_crit_edge97, %sw.bb.if.end41_crit_edge98, %if.else21.if.end41_crit_edge, %if.end16.if.end41_crit_edge
  %new_transport.2 = phi ptr [ %new_transport.0, %if.end16.if.end41_crit_edge ], [ %1, %if.else21.if.end41_crit_edge ], [ %1, %sw.bb.if.end41_crit_edge ], [ %1, %sw.bb.if.end41_crit_edge97 ], [ %1, %sw.bb.if.end41_crit_edge98 ], [ %24, %if.end41.sink.split ]
  %transport42 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 1
  %25 = ptrtoint ptr %transport42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transport42, align 4
  %cmp43.not = icmp eq ptr %new_transport.2, %26
  br i1 %cmp43.not, label %if.end41.if.end63_crit_edge, label %if.then45

if.end41.if.end63_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then45:                                        ; preds = %if.end41
  %27 = ptrtoint ptr %transport42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %new_transport.2, ptr %transport42, align 4
  %packet = getelementptr inbounds %struct.sctp_transport, ptr %new_transport.2, i32 0, i32 45
  %packet48 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 4
  %28 = ptrtoint ptr %packet48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %packet, ptr %packet48, align 4
  %send_ready = getelementptr inbounds %struct.sctp_transport, ptr %new_transport.2, i32 0, i32 46
  %29 = ptrtoint ptr %send_ready to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %send_ready, align 4
  %cmp.i.not = icmp eq ptr %30, %send_ready
  br i1 %cmp.i.not, label %if.then52, label %if.then45.if.end55_crit_edge

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then52:                                        ; preds = %if.then45
  %transport_list = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %send_ready, ptr noundef %32, ptr noundef %transport_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then52.if.end55_crit_edge

if.then52.if.end55_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.end.i.i:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %send_ready, ptr %prev.i, align 4
  %34 = ptrtoint ptr %send_ready to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transport_list, ptr %send_ready, align 4
  %prev3.i.i = getelementptr inbounds %struct.sctp_transport, ptr %new_transport.2, i32 0, i32 46, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %send_ready, ptr %32, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end.i.i, %if.then52.if.end55_crit_edge, %if.then45.if.end55_crit_edge
  %37 = ptrtoint ptr %packet48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %packet48, align 4
  %asoc57 = getelementptr inbounds %struct.sctp_flush_ctx, ptr %ctx, i32 0, i32 3
  %39 = ptrtoint ptr %asoc57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %asoc57, align 4
  %i = getelementptr inbounds %struct.sctp_association, ptr %40, i32 0, i32 5, i32 15
  %41 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i, align 4
  %ecn_capable = getelementptr inbounds %struct.sctp_association, ptr %40, i32 0, i32 5, i32 12
  %43 = ptrtoint ptr %ecn_capable to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load = load i16, ptr %ecn_capable, align 2
  %bf.lshr = lshr i16 %bf.load, 15
  %conv61 = zext i16 %bf.lshr to i32
  tail call void @sctp_packet_config(ptr noundef %38, i32 noundef %42, i32 noundef %conv61) #8
  %44 = ptrtoint ptr %transport42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transport42, align 4
  tail call void @sctp_transport_burst_limited(ptr noundef %45) #8
  br label %if.end63

if.end63:                                         ; preds = %if.end55, %if.end41.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_packet_singleton(ptr noundef %transport, ptr noundef %chunk, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %singleton = alloca %struct.sctp_packet, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bind_addr, align 4
  %port2 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %port2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port2, align 2
  %i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 15
  %6 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %singleton) #8
  %8 = call ptr @memset(ptr %singleton, i32 255, i32 40)
  call void @sctp_packet_init(ptr noundef nonnull %singleton, ptr noundef %transport, i16 noundef zeroext %3, i16 noundef zeroext %5) #8
  call void @sctp_packet_config(ptr noundef nonnull %singleton, i32 noundef %7, i32 noundef 0) #8
  %call = call i32 @sctp_packet_append_chunk(ptr noundef nonnull %singleton, ptr noundef %chunk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %chunk) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chunk, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chunk, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %chunk, ptr %chunk, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %chunk, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chunk, ptr %prev.i3.i, align 4
  call void @sctp_chunk_free(ptr noundef %chunk) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call i32 @sctp_packet_transmit(ptr noundef nonnull %singleton, i32 noundef %gfp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %list_del_init.exit
  %retval.0 = phi i32 [ -12, %list_del_init.exit ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %singleton) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_packet_transmit_chunk(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset_t3_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset_reconf_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_cmp_addr_exact(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_assoc_lookup_paddr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_packet_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_burst_limited(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_packet_init(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_packet_append_chunk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_packet_transmit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_burst_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sctp_probe_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_update_rto(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_control_transport(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_raise_cwnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_transport_hold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_dst_confirm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72}
!llvm.named.register.sp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/outqueue.c", i32 285, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sctp_outq_tail.__UNIQUE_ID_ddebug567, !1, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sctp/outqueue.c", i32 294, i32 3}
!10 = !{ptr @sctp_outq_tail.__UNIQUE_ID_ddebug568, !9, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sctp/outqueue.c", i32 525, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sctp_retransmit_mark.__UNIQUE_ID_ddebug569, !13, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sctp/outqueue.c", i32 1393, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sctp_outq_sack.__UNIQUE_ID_ddebug572, !18, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!21 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sctp/outqueue.c", i32 1394, i32 2}
!24 = !{ptr @sctp_outq_sack.__UNIQUE_ID_ddebug573, !23, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!25 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sctp/outqueue.c", i32 1096, i32 3}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sctp_outq_flush_data.__UNIQUE_ID_ddebug570, !27, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!30 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sctp/outqueue.c", i32 1110, i32 4}
!33 = !{ptr @sctp_outq_flush_data.__UNIQUE_ID_ddebug571, !32, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!34 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/net/sock.h", i32 2067, i32 9}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/net/dst.h", i32 231, i32 2}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/trace/events/sctp.h", i32 11, i32 1}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/sctp/outqueue.c", i32 1569, i32 5}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sctp_check_transmitted.__UNIQUE_ID_ddebug574, !56, !"__UNIQUE_ID_ddebug574", i1 false, i1 false}
!59 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sctp/outqueue.c", i32 1666, i32 5}
!62 = !{ptr @sctp_check_transmitted.__UNIQUE_ID_ddebug575, !61, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!63 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/sctp/outqueue.c", i32 1734, i32 5}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sctp_mark_missing.__UNIQUE_ID_ddebug576, !65, !"__UNIQUE_ID_ddebug576", i1 false, i1 false}
!68 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/sctp/outqueue.c", i32 1755, i32 3}
!71 = !{ptr @sctp_mark_missing.__UNIQUE_ID_ddebug577, !70, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!72 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!73 = !{!"sp"}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148875878, i64 2148875883, i64 2148875896, i64 2148875940, i64 2148875974, i64 2148875995}
!84 = !{i64 799638}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 799923}
!87 = !{i64 796906, i64 796967}
!88 = !{i64 2158488239, i64 2158488723, i64 2158488276, i64 2158488332, i64 2158488366, i64 2158488390, i64 2158488431, i64 2158488452, i64 2158488480, i64 2158488514}
!89 = !{i64 2149378069}
!90 = !{i64 2148393422}
!91 = !{i64 878245, i64 878270, i64 878292, i64 878308, i64 878320, i64 878340, i64 878364, i64 878380, i64 878392}
!92 = !{i64 2148393610}
!93 = !{i64 2149378335}
!94 = !{i64 2158468043, i64 2158468527, i64 2158468080, i64 2158468136, i64 2158468170, i64 2158468194, i64 2158468235, i64 2158468256, i64 2158468284, i64 2158468318}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2158304543}
!97 = !{i64 2158304752}
!98 = !{i64 2149386628}
!99 = !{i64 2149387664}
