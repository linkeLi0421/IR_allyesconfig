; ModuleID = '/llk/IR_all_yes/net/sctp/ulpqueue.c_pt.bc'
source_filename = "../net/sctp/ulpqueue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.108, %union.anon.109, [48 x i8], %union.anon.110, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.112, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%union.anon.108 = type { ptr }
%union.anon.109 = type { i64 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { i32, ptr }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.114, i32, i32, i32, i16, i16, %union.anon.116, i32, %union.anon.117, %union.anon.118, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.114 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.157, %struct.list_head, ptr, %union.anon.158, %union.sctp_params, %union.anon.159, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon.157 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.158 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.159 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.102 }
%union.anon.102 = type { [4 x i32] }
%struct.sctp_datahdr = type { i32, i16, i16, i32, [0 x i8] }
%struct.sctp_ulpevent = type <{ ptr, ptr, i32, %union.anon.164, %union.anon.165, i32, i32, i16, i16, i16 }>
%union.anon.164 = type { i32 }
%union.anon.165 = type { i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.170, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.170 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sctp_stream = type { %struct.anon.171, %struct.anon.176, i16, i16, ptr, %union.anon.178, ptr }
%struct.anon.171 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.172, i32, ptr, i8 }
%union.anon.172 = type { i32 }
%struct.anon.176 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.177, i32, i32, i32, i8, i8 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { %struct.anon.180 }
%struct.anon.180 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.137, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.138, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.139, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.125, %union.anon.127, %union.anon.128, i16, i8, i8, i32, %union.anon.130, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.133, [0 x i32], %union.anon.134, i16, i16, %union.anon.135, %struct.refcount_struct, [0 x i32], %union.anon.136 }
%union.anon.125 = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.130 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { %struct.hlist_node }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.137 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.138 = type { ptr }
%union.anon.139 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.143 }
%union.anon.143 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.132, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.132 = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.48, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.145, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.145 = type { %struct.hlist_head, %struct.spinlock, i32 }
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

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_ = private constant [23 x i8] c"../net/sctp/ulpqueue.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 1984, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 1750, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @skb_queue_head_init.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpq_init(ptr noundef returned %ulpq, ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ulpq, i32 0, i32 176)
  %asoc1 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %1 = ptrtoint ptr %asoc1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %asoc, ptr %asoc1, align 4
  %reasm = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %2 = ptrtoint ptr %reasm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reasm, ptr %reasm, align 4
  %prev.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reasm, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i.i, align 4
  %reasm_uo = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3
  %lock.i8 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i8, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %5 = ptrtoint ptr %reasm_uo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %reasm_uo, ptr %reasm_uo, align 4
  %prev.i.i9 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reasm_uo, ptr %prev.i.i9, align 4
  %qlen.i.i10 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %qlen.i.i10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i10, align 4
  %lobby = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %lock.i11 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i11, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %8 = ptrtoint ptr %lobby to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lobby, ptr %lobby, align 4
  %prev.i.i12 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lobby, ptr %prev.i.i12, align 4
  %qlen.i.i13 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %qlen.i.i13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i13, align 4
  %11 = ptrtoint ptr %ulpq to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ulpq, align 4
  ret ptr %ulpq
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpq_flush(ptr noundef %ulpq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lobby = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %0 = ptrtoint ptr %lobby to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lobby, align 4
  %cmp.i.i43 = icmp eq ptr %1, %lobby
  %tobool.not.i4044 = icmp eq ptr %1, null
  %tobool.not.i45 = or i1 %cmp.i.i43, %tobool.not.i4044
  br i1 %tobool.not.i45, label %entry.while.cond2.preheader_crit_edge, label %while.body.lr.ph

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond2.preheader

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 1
  br label %while.body

while.cond2.preheader:                            ; preds = %while.body.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %reasm = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %2 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reasm, align 4
  %cmp.i.i2046 = icmp eq ptr %3, %reasm
  %tobool.not.i224147 = icmp eq ptr %3, null
  %tobool.not.i2248 = or i1 %cmp.i.i2046, %tobool.not.i224147
  br i1 %tobool.not.i2248, label %while.cond2.preheader.while.cond8.preheader_crit_edge, label %while.body5.lr.ph

while.cond2.preheader.while.cond8.preheader_crit_edge: ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond8.preheader

while.body5.lr.ph:                                ; preds = %while.cond2.preheader
  %qlen.i.i23 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 1
  br label %while.body5

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %1, %while.body.lr.ph ], [ %14, %while.body.while.body_crit_edge ]
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %4, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i) #6
  %13 = ptrtoint ptr %lobby to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lobby, align 4
  %cmp.i.i = icmp eq ptr %14, %lobby
  %tobool.not.i40 = icmp eq ptr %14, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i40
  br i1 %tobool.not.i, label %while.body.while.cond2.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.cond2.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond2.preheader

while.cond8.preheader:                            ; preds = %while.body5.while.cond8.preheader_crit_edge, %while.cond2.preheader.while.cond8.preheader_crit_edge
  %reasm_uo = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3
  %15 = ptrtoint ptr %reasm_uo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reasm_uo, align 4
  %cmp.i.i3049 = icmp eq ptr %16, %reasm_uo
  %tobool.not.i324250 = icmp eq ptr %16, null
  %tobool.not.i3251 = or i1 %cmp.i.i3049, %tobool.not.i324250
  br i1 %tobool.not.i3251, label %while.cond8.preheader.while.end13_crit_edge, label %while.body11.lr.ph

while.cond8.preheader.while.end13_crit_edge:      ; preds = %while.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end13

while.body11.lr.ph:                               ; preds = %while.cond8.preheader
  %qlen.i.i33 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 3, i32 1
  br label %while.body11

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %while.body5.lr.ph
  %17 = phi ptr [ %3, %while.body5.lr.ph ], [ %27, %while.body5.while.body5_crit_edge ]
  %18 = ptrtoint ptr %qlen.i.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i23, align 4
  %sub.i.i24 = add i32 %19, -1
  store volatile i32 %sub.i.i24, ptr %qlen.i.i23, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 8
  %prev9.i.i25 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev9.i.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev9.i.i25, align 4
  store ptr null, ptr %prev9.i.i25, align 4
  store ptr null, ptr %17, align 8
  %prev17.i.i26 = getelementptr inbounds %struct.anon.1, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %prev17.i.i26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %prev17.i.i26, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %21, ptr %23, align 8
  %cb.i29 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i29) #6
  %26 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reasm, align 4
  %cmp.i.i20 = icmp eq ptr %27, %reasm
  %tobool.not.i2241 = icmp eq ptr %27, null
  %tobool.not.i22 = or i1 %cmp.i.i20, %tobool.not.i2241
  br i1 %tobool.not.i22, label %while.body5.while.cond8.preheader_crit_edge, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body5

while.body5.while.cond8.preheader_crit_edge:      ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond8.preheader

while.body11:                                     ; preds = %while.body11.while.body11_crit_edge, %while.body11.lr.ph
  %28 = phi ptr [ %16, %while.body11.lr.ph ], [ %38, %while.body11.while.body11_crit_edge ]
  %29 = ptrtoint ptr %qlen.i.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i.i33, align 4
  %sub.i.i34 = add i32 %30, -1
  store volatile i32 %sub.i.i34, ptr %qlen.i.i33, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 8
  %prev9.i.i35 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev9.i.i35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev9.i.i35, align 4
  store ptr null, ptr %prev9.i.i35, align 4
  store ptr null, ptr %28, align 8
  %prev17.i.i36 = getelementptr inbounds %struct.anon.1, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %prev17.i.i36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %prev17.i.i36, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %32, ptr %34, align 8
  %cb.i39 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i39) #6
  %37 = ptrtoint ptr %reasm_uo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reasm_uo, align 4
  %cmp.i.i30 = icmp eq ptr %38, %reasm_uo
  %tobool.not.i3242 = icmp eq ptr %38, null
  %tobool.not.i32 = or i1 %cmp.i.i30, %tobool.not.i3242
  br i1 %tobool.not.i32, label %while.body11.while.end13_crit_edge, label %while.body11.while.body11_crit_edge

while.body11.while.body11_crit_edge:              ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body11

while.body11.while.end13_crit_edge:               ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end13

while.end13:                                      ; preds = %while.body11.while.end13_crit_edge, %while.cond8.preheader.while.end13_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpevent_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpq_free(ptr noundef %ulpq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sctp_ulpq_flush(ptr noundef %ulpq)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_ulpq_tail_data(ptr noundef %ulpq, ptr noundef %chunk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #6
  %0 = call ptr @memset(ptr %temp, i32 255, i32 56)
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %1 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asoc, align 4
  %call = tail call ptr @sctp_ulpevent_make_rcvmsg(ptr noundef %2, ptr noundef %chunk, i32 noundef %gfp) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %3 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subh, align 4
  %ssn = getelementptr inbounds %struct.sctp_datahdr, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ssn, align 2
  %7 = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %6, ptr %7, align 1
  %9 = load ptr, ptr %subh, align 4
  %ppid = getelementptr inbounds %struct.sctp_datahdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ppid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ppid, align 4
  %12 = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %11, ptr %12, align 1
  %msg_flags.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 9
  %14 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %msg_flags.i, align 1
  %16 = and i16 %15, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp.i = icmp eq i16 %16, 3
  br i1 %cmp.i, label %if.end.if.then4.sink.split_crit_edge, label %if.end.i

if.end.if.then4.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.sink.split

if.end.i:                                         ; preds = %if.end
  %tsn1.i.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %tsn1.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %tsn1.i.i, align 1
  %reasm.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %prev.i.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %prev.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %20, %reasm.i.i
  %tobool.not49.i.i = icmp eq ptr %20, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not49.i.i
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %call, i32 -24
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %reasm.i.i, ptr %add.ptr.i.i.i, align 8
  %prev10.i.i.i.i.i = getelementptr i8, ptr %call, i32 -20
  %22 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %prev10.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %add.ptr.i.i.i, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %add.ptr.i.i.i, ptr %20, align 4
  br label %sctp_ulpq_store_reasm.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %tsn5.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 20
  %25 = ptrtoint ptr %tsn5.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %tsn5.i.i, align 1
  %sub.i.i = sub i32 %26, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.end.i.i.for.cond.i.i_crit_edge

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.cond.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i41.i.i = getelementptr i8, ptr %call, i32 -24
  %27 = ptrtoint ptr %add.ptr.i41.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %reasm.i.i, ptr %add.ptr.i41.i.i, align 8
  %prev10.i.i.i43.i.i = getelementptr i8, ptr %call, i32 -20
  %28 = ptrtoint ptr %prev10.i.i.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %20, ptr %prev10.i.i.i43.i.i, align 4
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %add.ptr.i41.i.i, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %add.ptr.i41.i.i, ptr %20, align 4
  br label %sctp_ulpq_store_reasm.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i.for.cond.i.i_crit_edge
  %pos.0.in.i.i = phi ptr [ %pos.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %reasm.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %31 = ptrtoint ptr %pos.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %pos.0.i.i = load ptr, ptr %pos.0.in.i.i, align 4
  %cmp12.not.i.i = icmp eq ptr %pos.0.i.i, %reasm.i.i
  br i1 %cmp12.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %tsn14.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0.i.i, i32 0, i32 3, i32 20
  %32 = ptrtoint ptr %tsn14.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %tsn14.i.i, align 1
  %sub15.i.i = sub i32 %18, %33
  %cmp16.i.i = icmp slt i32 %sub15.i.i, 0
  br i1 %cmp16.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %pos.0.lcssa.i.i = phi ptr [ %pos.0.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %reasm.i.i, %for.cond.i.i.for.end.i.i_crit_edge ]
  %add.ptr.i47.i.i = getelementptr i8, ptr %call, i32 -24
  %prev.i48.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %pos.0.lcssa.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i48.i.i, align 4
  %36 = ptrtoint ptr %add.ptr.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %pos.0.lcssa.i.i, ptr %add.ptr.i47.i.i, align 8
  %prev10.i.i.i.i = getelementptr i8, ptr %call, i32 -20
  %37 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %add.ptr.i47.i.i, ptr %prev.i48.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %add.ptr.i47.i.i, ptr %35, align 4
  br label %sctp_ulpq_store_reasm.exit.i

sctp_ulpq_store_reasm.exit.i:                     ; preds = %for.end.i.i, %if.then6.i.i, %if.then.i.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %41 = ptrtoint ptr %ulpq to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ulpq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %sctp_ulpq_store_reasm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call fastcc ptr @sctp_ulpq_retrieve_reassembled(ptr noundef %ulpq) #6
  br label %sctp_ulpq_reasm.exit

if.else.i:                                        ; preds = %sctp_ulpq_store_reasm.exit.i
  %43 = ptrtoint ptr %tsn1.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %tsn1.i.i, align 1
  %asoc.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %45 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %asoc.i, align 4
  %cumulative_tsn_ack_point.i.i = getelementptr inbounds %struct.sctp_association, ptr %46, i32 0, i32 5, i32 10, i32 2
  %47 = ptrtoint ptr %cumulative_tsn_ack_point.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cumulative_tsn_ack_point.i.i, align 4
  %sub.i = sub i32 %44, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp8.i = icmp slt i32 %sub.i, 1
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i:                                      ; preds = %if.else.i
  %49 = ptrtoint ptr %reasm.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reasm.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %50, %reasm.i.i
  br i1 %cmp.i.not.i.i, label %if.then10.i.cleanup_crit_edge, label %if.then10.i.for.body.i23.i_crit_edge

if.then10.i.for.body.i23.i_crit_edge:             ; preds = %if.then10.i
  br label %for.body.i23.i

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i23.i:                                   ; preds = %for.inc.i.i.for.body.i23.i_crit_edge, %if.then10.i.for.body.i23.i_crit_edge
  %pos.083.i.i = phi ptr [ %pos.0.i24.i, %for.inc.i.i.for.body.i23.i_crit_edge ], [ %50, %if.then10.i.for.body.i23.i_crit_edge ]
  %next_tsn.082.i.i = phi i32 [ %next_tsn.1.i.i, %for.inc.i.i.for.body.i23.i_crit_edge ], [ 0, %if.then10.i.for.body.i23.i_crit_edge ]
  %first_frag.081.i.i = phi ptr [ %first_frag.2.i.i, %for.inc.i.i.for.body.i23.i_crit_edge ], [ null, %if.then10.i.for.body.i23.i_crit_edge ]
  %last_frag.080.i.i = phi ptr [ %pos.083.i.i, %for.inc.i.i.for.body.i23.i_crit_edge ], [ null, %if.then10.i.for.body.i23.i_crit_edge ]
  %tsn.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.083.i.i, i32 0, i32 3, i32 20
  %51 = ptrtoint ptr %tsn.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %tsn.i.i, align 1
  %msg_flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.083.i.i, i32 0, i32 3, i32 32
  %53 = ptrtoint ptr %msg_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %msg_flags.i.i, align 1
  %55 = and i16 %54, 3
  %and.i.i = zext i16 %55 to i32
  %56 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %for.body.i23.i.cleanup_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 0, label %sw.bb8.i.i
    i32 1, label %sw.bb17.i.i
  ]

for.body.i23.i.cleanup_crit_edge:                 ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i.i:                                        ; preds = %for.body.i23.i
  %tobool5.not.i.i = icmp eq ptr %first_frag.081.i.i, null
  br i1 %tobool5.not.i.i, label %sw.bb.i.i.cleanup_crit_edge, label %sw.bb.i.i.done.i.i_crit_edge

sw.bb.i.i.done.i.i_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i.i

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i.i:                                       ; preds = %for.body.i23.i
  %tobool9.not.i.i = icmp eq ptr %first_frag.081.i.i, null
  br i1 %tobool9.not.i.i, label %sw.bb8.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

sw.bb8.i.i.for.inc.i.i_crit_edge:                 ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %next_tsn.082.i.i, i32 %52)
  %cmp11.i.i = icmp eq i32 %next_tsn.082.i.i, %52
  br i1 %cmp11.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.else.i.i.done.i.i_crit_edge

if.else.i.i.done.i.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

sw.bb17.i.i:                                      ; preds = %for.body.i23.i
  %tobool18.not.i.i = icmp eq ptr %first_frag.081.i.i, null
  br i1 %tobool18.not.i.i, label %sw.bb17.i.i.if.end25.i.i_crit_edge, label %if.else20.i.i

sw.bb17.i.i.if.end25.i.i_crit_edge:               ; preds = %sw.bb17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i.i

if.else20.i.i:                                    ; preds = %sw.bb17.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %next_tsn.082.i.i)
  %cmp21.not.i.i = icmp eq i32 %52, %next_tsn.082.i.i
  br i1 %cmp21.not.i.i, label %if.else20.i.i.if.end25.i.i_crit_edge, label %if.else20.i.i.done.i.i_crit_edge

if.else20.i.i.done.i.i_crit_edge:                 ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i.i

if.else20.i.i.if.end25.i.i_crit_edge:             ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else20.i.i.if.end25.i.i_crit_edge, %sw.bb17.i.i.if.end25.i.i_crit_edge
  %first_frag.1.i.i = phi ptr [ %first_frag.081.i.i, %if.else20.i.i.if.end25.i.i_crit_edge ], [ %pos.083.i.i, %sw.bb17.i.i.if.end25.i.i_crit_edge ]
  br label %done.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i.for.inc.i.i_crit_edge, %sw.bb8.i.i.for.inc.i.i_crit_edge
  %first_frag.2.i.i = phi ptr [ %pos.083.i.i, %sw.bb8.i.i.for.inc.i.i_crit_edge ], [ %first_frag.081.i.i, %if.else.i.i.for.inc.i.i_crit_edge ]
  %next_tsn.1.in.i.i = phi i32 [ %52, %sw.bb8.i.i.for.inc.i.i_crit_edge ], [ %next_tsn.082.i.i, %if.else.i.i.for.inc.i.i_crit_edge ]
  %next_tsn.1.i.i = add i32 %next_tsn.1.in.i.i, 1
  %57 = ptrtoint ptr %pos.083.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %pos.0.i24.i = load ptr, ptr %pos.083.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pos.0.i24.i, %reasm.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.done.i.i_crit_edge, label %for.inc.i.i.for.body.i23.i_crit_edge

for.inc.i.i.for.body.i23.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i23.i

for.inc.i.i.done.i.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i.i

done.i.i:                                         ; preds = %for.inc.i.i.done.i.i_crit_edge, %if.end25.i.i, %if.else20.i.i.done.i.i_crit_edge, %if.else.i.i.done.i.i_crit_edge, %sw.bb.i.i.done.i.i_crit_edge
  %last_frag.2.i.i = phi ptr [ %last_frag.080.i.i, %if.else20.i.i.done.i.i_crit_edge ], [ %pos.083.i.i, %if.end25.i.i ], [ %last_frag.080.i.i, %sw.bb.i.i.done.i.i_crit_edge ], [ %last_frag.080.i.i, %if.else.i.i.done.i.i_crit_edge ], [ %pos.083.i.i, %for.inc.i.i.done.i.i_crit_edge ]
  %first_frag.3.i.i = phi ptr [ %first_frag.081.i.i, %if.else20.i.i.done.i.i_crit_edge ], [ %first_frag.1.i.i, %if.end25.i.i ], [ %first_frag.081.i.i, %sw.bb.i.i.done.i.i_crit_edge ], [ %first_frag.081.i.i, %if.else.i.i.done.i.i_crit_edge ], [ %first_frag.2.i.i, %for.inc.i.i.done.i.i_crit_edge ]
  %tobool30.not.i.i = phi i1 [ true, %if.else20.i.i.done.i.i_crit_edge ], [ false, %if.end25.i.i ], [ true, %sw.bb.i.i.done.i.i_crit_edge ], [ true, %if.else.i.i.done.i.i_crit_edge ], [ true, %for.inc.i.i.done.i.i_crit_edge ]
  %net.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %46, i32 0, i32 4
  %58 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net.i.i, align 8
  %call28.i.i = tail call ptr @sctp_make_reassembled_event(ptr noundef %59, ptr noundef %reasm.i.i, ptr noundef %first_frag.3.i.i, ptr noundef %last_frag.2.i.i) #6
  %tobool29.not.i.i = icmp eq ptr %call28.i.i, null
  %brmerge.i.i = or i1 %tobool30.not.i.i, %tobool29.not.i.i
  br i1 %brmerge.i.i, label %done.i.i.sctp_ulpq_reasm.exit_crit_edge, label %if.then31.i.i

done.i.i.sctp_ulpq_reasm.exit_crit_edge:          ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_reasm.exit

if.then31.i.i:                                    ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %msg_flags32.i.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %call28.i.i, i32 0, i32 9
  %60 = ptrtoint ptr %msg_flags32.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %msg_flags32.i.i, align 1
  br label %if.then4.sink.split

sctp_ulpq_reasm.exit:                             ; preds = %done.i.i.sctp_ulpq_reasm.exit_crit_edge, %if.then6.i
  %retval.0.i = phi ptr [ %call.i, %if.then6.i ], [ %call28.i.i, %done.i.i.sctp_ulpq_reasm.exit_crit_edge ]
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %sctp_ulpq_reasm.exit.cleanup_crit_edge, label %sctp_ulpq_reasm.exit.if.then4_crit_edge

sctp_ulpq_reasm.exit.if.then4_crit_edge:          ; preds = %sctp_ulpq_reasm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

sctp_ulpq_reasm.exit.cleanup_crit_edge:           ; preds = %sctp_ulpq_reasm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.sink.split:                              ; preds = %if.then31.i.i, %if.end.if.then4.sink.split_crit_edge
  %.sink94 = phi i16 [ %61, %if.then31.i.i ], [ %15, %if.end.if.then4.sink.split_crit_edge ]
  %msg_flags32.i.i.sink = phi ptr [ %msg_flags32.i.i, %if.then31.i.i ], [ %msg_flags.i, %if.end.if.then4.sink.split_crit_edge ]
  %retval.0.i42.ph = phi ptr [ %call28.i.i, %if.then31.i.i ], [ %call, %if.end.if.then4.sink.split_crit_edge ]
  %62 = or i16 %.sink94, 128
  %63 = ptrtoint ptr %msg_flags32.i.i.sink to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %62, ptr %msg_flags32.i.i.sink, align 1
  br label %if.then4

if.then4:                                         ; preds = %if.then4.sink.split, %sctp_ulpq_reasm.exit.if.then4_crit_edge
  %retval.0.i42 = phi ptr [ %retval.0.i, %sctp_ulpq_reasm.exit.if.then4_crit_edge ], [ %retval.0.i42.ph, %if.then4.sink.split ]
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %prev.i.i = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  %64 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %qlen.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i42, i32 -24
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %temp, ptr %add.ptr.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %retval.0.i42, i32 -20
  %66 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %temp, ptr %prev10.i.i.i, align 4
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %add.ptr.i, ptr %prev.i.i, align 4
  %68 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %add.ptr.i, ptr %temp, align 4
  %69 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %69, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  %msg_flags = getelementptr inbounds %struct.sctp_ulpevent, ptr %retval.0.i42, i32 0, i32 9
  %70 = ptrtoint ptr %msg_flags to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %msg_flags, align 1
  %72 = and i16 %71, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool6.not = icmp eq i16 %72, 0
  br i1 %tobool6.not, label %if.then4.if.then12_crit_edge, label %if.end10

if.then4.if.then12_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end10:                                         ; preds = %if.then4
  %call8 = call fastcc ptr @sctp_ulpq_order(ptr noundef %ulpq, ptr noundef nonnull %retval.0.i42)
  %tobool11.not = icmp eq ptr %call8, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then4.if.then12_crit_edge
  %event.048 = phi ptr [ %call8, %if.end10.if.then12_crit_edge ], [ %retval.0.i42, %if.then4.if.then12_crit_edge ]
  %msg_flags13 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event.048, i32 0, i32 9
  %73 = ptrtoint ptr %msg_flags13 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %msg_flags13, align 1
  %75 = lshr i16 %74, 7
  %.lobit = and i16 %75, 1
  %76 = zext i16 %.lobit to i32
  %call17 = call i32 @sctp_ulpq_tail_event(ptr noundef %ulpq, ptr noundef nonnull %temp)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %sctp_ulpq_reasm.exit.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %for.body.i23.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %76, %if.then12 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %sctp_ulpq_reasm.exit.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.then10.i.cleanup_crit_edge ], [ 0, %sw.bb.i.i.cleanup_crit_edge ], [ 0, %for.body.i23.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_rcvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sctp_ulpq_order(ptr noundef %ulpq, ptr noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_flags = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 9
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg_flags, align 1
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream1 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 7
  %3 = ptrtoint ptr %stream1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %stream1, align 1
  %5 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %8 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asoc, align 4
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %9, i32 0, i32 60, i32 1
  %.frozen = freeze i16 %4
  %div14.i2.i = udiv i16 %.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %10 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %.frozen, %10
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %11 = ptrtoint ptr %call1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %call1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %12)
  %cmp.not = icmp eq i16 %7, %12
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %lobby.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %14, %lobby.i
  %tobool.not99.i = icmp eq ptr %14, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not99.i
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %event, i32 -24
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %lobby.i, ptr %add.ptr.i.i, align 8
  %prev10.i.i.i.i = getelementptr i8, ptr %event, i32 -20
  %16 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %prev10.i.i.i.i, align 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %add.ptr.i.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %add.ptr.i.i, ptr %14, align 4
  br label %sctp_ulpq_store_ordered.exit

if.end.i:                                         ; preds = %if.then6
  %19 = ptrtoint ptr %stream1 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %stream1, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %5, align 1
  %stream3.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 28
  %23 = ptrtoint ptr %stream3.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %stream3.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %24)
  %cmp.i = icmp ugt i16 %20, %24
  br i1 %cmp.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i87.i = getelementptr i8, ptr %event, i32 -24
  %25 = ptrtoint ptr %add.ptr.i87.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %lobby.i, ptr %add.ptr.i87.i, align 8
  %prev10.i.i.i89.i = getelementptr i8, ptr %event, i32 -20
  %26 = ptrtoint ptr %prev10.i.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %14, ptr %prev10.i.i.i89.i, align 4
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %add.ptr.i87.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %add.ptr.i87.i, ptr %14, align 4
  br label %sctp_ulpq_store_ordered.exit

if.end9.i:                                        ; preds = %if.end.i
  %29 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %29, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %24)
  %cmp12.i = icmp eq i16 %20, %24
  %sub.i = sub i16 %31, %22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp18.i = icmp slt i16 %sub.i, 0
  %or.cond.i = select i1 %cmp12.i, i1 %cmp18.i, i1 false
  br i1 %or.cond.i, label %if.then20.i, label %if.end9.i.for.cond.i_crit_edge

if.end9.i.for.cond.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.cond.i

if.then20.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i92.i = getelementptr i8, ptr %event, i32 -24
  %32 = ptrtoint ptr %add.ptr.i92.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %lobby.i, ptr %add.ptr.i92.i, align 8
  %prev10.i.i.i94.i = getelementptr i8, ptr %event, i32 -20
  %33 = ptrtoint ptr %prev10.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %14, ptr %prev10.i.i.i94.i, align 4
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %add.ptr.i92.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %add.ptr.i92.i, ptr %14, align 4
  br label %sctp_ulpq_store_ordered.exit

for.cond.i:                                       ; preds = %if.end36.i.for.cond.i_crit_edge, %if.end9.i.for.cond.i_crit_edge
  %pos.0.in.i = phi ptr [ %pos.0.i, %if.end36.i.for.cond.i_crit_edge ], [ %lobby.i, %if.end9.i.for.cond.i_crit_edge ]
  %36 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %pos.0.i, %lobby.i
  br i1 %cmp26.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %stream30.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0.i, i32 0, i32 3, i32 28
  %37 = ptrtoint ptr %stream30.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %stream30.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %20)
  %cmp33.i = icmp ugt i16 %38, %20
  br i1 %cmp33.i, label %for.body.i.for.end.i_crit_edge, label %if.end36.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end36.i:                                       ; preds = %for.body.i
  %39 = getelementptr inbounds %struct.sk_buff, ptr %pos.0.i, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %39, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %20)
  %cmp39.i = icmp eq i16 %38, %20
  %sub44.i = sub i16 %22, %41
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub44.i)
  %cmp47.i = icmp slt i16 %sub44.i, 0
  %or.cond86.i = select i1 %cmp39.i, i1 %cmp47.i, i1 false
  br i1 %or.cond86.i, label %if.end36.i.for.end.i_crit_edge, label %if.end36.i.for.cond.i_crit_edge

if.end36.i.for.cond.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end36.i.for.end.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end36.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %pos.0.lcssa.i = phi ptr [ %pos.0.i, %if.end36.i.for.end.i_crit_edge ], [ %pos.0.i, %for.body.i.for.end.i_crit_edge ], [ %lobby.i, %for.cond.i.for.end.i_crit_edge ]
  %add.ptr.i97.i = getelementptr i8, ptr %event, i32 -24
  %prev.i98.i = getelementptr inbounds %struct.sk_buff_list, ptr %pos.0.lcssa.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i98.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i98.i, align 4
  %44 = ptrtoint ptr %add.ptr.i97.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %pos.0.lcssa.i, ptr %add.ptr.i97.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %event, i32 -20
  %45 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %prev10.i.i.i, align 4
  store volatile ptr %add.ptr.i97.i, ptr %prev.i98.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %add.ptr.i97.i, ptr %43, align 4
  br label %sctp_ulpq_store_ordered.exit

sctp_ulpq_store_ordered.exit:                     ; preds = %for.end.i, %if.then20.i, %if.then6.i, %if.then.i
  %qlen.i.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i29 = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %49 = ptrtoint ptr %call1.i29 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %call1.i29, align 4
  %inc = add i16 %50, 1
  store i16 %inc, ptr %call1.i29, align 4
  tail call fastcc void @sctp_ulpq_retrieve_ordered(ptr noundef %ulpq, ptr noundef %event)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sctp_ulpq_store_ordered.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sctp_ulpq_store_ordered.exit ], [ %event, %if.end7 ], [ %event, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_ulpq_tail_event(ptr noundef %ulpq, ptr noundef %skb_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %land.lhs.true.out_free_crit_edge

land.lhs.true.out_free_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call8 = tail call i32 @sctp_ulpevent_is_notification(ptr noundef %cb.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false.out_free_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call10 = tail call i32 @sctp_ulpevent_is_notification(ptr noundef %cb.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.not.i, label %if.then12.if.end.i_crit_edge, label %do.body5.i, !prof !16

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.body5.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_mark_napi_id.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  %sub.i.i.i.i = add i16 %15, -1
  %skc_rx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 17
  %16 = ptrtoint ptr %skc_rx_queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load volatile i16, ptr %skc_rx_queue_mapping.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i16 %17, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.then.i.i.i.sk_mark_napi_id.exit_crit_edge, label %do.body11.i.i.i, !prof !16

if.then.i.i.i.sk_mark_napi_id.exit_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_mark_napi_id.exit

do.body11.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %skc_rx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store volatile i16 %sub.i.i.i.i, ptr %skc_rx_queue_mapping.i.i.i, align 2
  br label %sk_mark_napi_id.exit

sk_mark_napi_id.exit:                             ; preds = %do.body11.i.i.i, %if.then.i.i.i.sk_mark_napi_id.exit_crit_edge, %if.end.i.sk_mark_napi_id.exit_crit_edge
  %19 = tail call i32 @llvm.read_register.i32(metadata !6) #6
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
  %cmp.not.i109 = icmp eq i32 %25, %22
  br i1 %cmp.not.i109, label %sk_mark_napi_id.exit.if.end13_crit_edge, label %do.body7.i, !prof !16

sk_mark_napi_id.exit.if.end13_crit_edge:          ; preds = %sk_mark_napi_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.body7.i:                                       ; preds = %sk_mark_napi_id.exit
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = tail call i32 @sctp_ulpevent_is_notification(ptr noundef %cb.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end13.if.end17_crit_edge, label %if.end.i111

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end.i111:                                      ; preds = %if.end13
  %call1.i = tail call zeroext i16 @sctp_ulpevent_get_notification_type(ptr noundef %cb.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32755, i16 %call1.i)
  %cmp.i.i = icmp ugt i16 %call1.i, -32755
  br i1 %cmp.i.i, label %if.end.i111.out_free_crit_edge, label %sctp_ulpevent_is_enabled.exit

if.end.i111.out_free_crit_edge:                   ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

sctp_ulpevent_is_enabled.exit:                    ; preds = %if.end.i111
  %conv.i.i = zext i16 %call1.i to i32
  %conv2.i.i = zext i16 %30 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -32768
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  %and.i.i112 = and i32 %shl.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool.i.i.not = icmp eq i32 %and.i.i112, 0
  br i1 %tobool.i.i.not, label %sctp_ulpevent_is_enabled.exit.out_free_crit_edge, label %sctp_ulpevent_is_enabled.exit.if.end17_crit_edge

sctp_ulpevent_is_enabled.exit.if.end17_crit_edge: ; preds = %sctp_ulpevent_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

sctp_ulpevent_is_enabled.exit.out_free_crit_edge: ; preds = %sctp_ulpevent_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end17:                                         ; preds = %sctp_ulpevent_is_enabled.exit.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %pd_mode = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pd_mode, i32 noundef 4) #6
  %31 = ptrtoint ptr %pd_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %pd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp = icmp eq i32 %32, 0
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  br label %if.end48

if.else:                                          ; preds = %if.end17
  %33 = ptrtoint ptr %ulpq to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ulpq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool22.not = icmp eq i8 %34, 0
  br i1 %tobool22.not, label %if.else40, label %if.then23

if.then23:                                        ; preds = %if.else
  %msg_flags = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 32
  %35 = ptrtoint ptr %msg_flags to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %msg_flags, align 1
  %conv24 = zext i16 %36 to i32
  %and25 = and i32 %conv24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp ne i32 %and25, 0
  %and30 = and i32 %conv24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and30)
  %cmp31 = icmp eq i32 %and30, 3
  %or.cond = or i1 %tobool26.not, %cmp31
  br i1 %or.cond, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %pd_lobby = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 39
  br label %if.end48

if.else34:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %and37 = and i32 %conv24, 128
  %sk_receive_queue38 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %phi.cmp = icmp eq i32 %and37, 0
  br label %if.end48

if.else40:                                        ; preds = %if.else
  %frag_interleave = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 37
  %37 = ptrtoint ptr %frag_interleave to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load = load i16, ptr %frag_interleave, align 8
  %38 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool41.not = icmp eq i16 %38, 0
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  %sk_receive_queue43 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  br label %if.end48

if.else44:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  %pd_lobby45 = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 39
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then42, %if.else34, %if.then33, %if.then20
  %queue.0 = phi ptr [ %sk_receive_queue, %if.then20 ], [ %pd_lobby, %if.then33 ], [ %sk_receive_queue38, %if.else34 ], [ %sk_receive_queue43, %if.then42 ], [ %pd_lobby45, %if.else44 ]
  %clear_pd.0 = phi i1 [ true, %if.then20 ], [ true, %if.then33 ], [ %phi.cmp, %if.else34 ], [ true, %if.then42 ], [ true, %if.else44 ]
  %39 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb_list, align 4
  %cmp.i.not.i = icmp eq ptr %40, %skb_list
  br i1 %cmp.i.not.i, label %if.end48.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

if.end48.skb_queue_splice_tail_init.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i = getelementptr inbounds %struct.anon, ptr %queue.0, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.anon, ptr %skb_list, i32 0, i32 1
  %43 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.1, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %42, ptr %prev5.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %40, ptr %42, align 8
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %queue.0, ptr %44, align 8
  store volatile ptr %44, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %skb_list, i32 0, i32 1
  %48 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.0, i32 0, i32 1
  %50 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %51, %49
  store i32 %add.i, ptr %qlen1.i, align 4
  %52 = ptrtoint ptr %skb_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %skb_list, ptr %skb_list, align 4
  store ptr %skb_list, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %if.end48.skb_queue_splice_tail_init.exit_crit_edge
  br i1 %clear_pd.0, label %skb_queue_splice_tail_init.exit.if.end52_crit_edge, label %if.then50

skb_queue_splice_tail_init.exit.if.end52_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then50:                                        ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %ulpq to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %ulpq, align 4
  tail call fastcc void @sctp_ulpq_reasm_drain(ptr noundef %ulpq) #6
  %54 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %asoc, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sk.i, align 4
  %call.i114 = tail call i32 @sctp_clear_pd(ptr noundef %57, ptr noundef %55) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %skb_queue_splice_tail_init.exit.if.end52_crit_edge
  %sk_receive_queue53 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  %cmp54 = icmp eq ptr %queue.0, %sk_receive_queue53
  br i1 %cmp54, label %land.lhs.true56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true56:                                  ; preds = %if.end52
  %data_ready_signalled = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 37
  %58 = ptrtoint ptr %data_ready_signalled to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load57 = load i16, ptr %data_ready_signalled, align 8
  %59 = and i16 %bf.load57, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool60.not = icmp eq i16 %59, 0
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true56.cleanup_crit_edge

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then61:                                        ; preds = %land.lhs.true56
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.then61.sock_owned_by_user.exit_crit_edge

if.then61.sock_owned_by_user.exit_crit_edge:      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.then61
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %60 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !16

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1750, i32 noundef 9, ptr noundef null) #6
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.then61.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not = icmp eq i32 %62, 0
  br i1 %tobool.i.not, label %if.then63, label %sock_owned_by_user.exit.if.end67_crit_edge

sock_owned_by_user.exit.if.end67_crit_edge:       ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then63:                                        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %data_ready_signalled to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load65 = load i16, ptr %data_ready_signalled, align 8
  %bf.set = or i16 %bf.load65, 64
  store i16 %bf.set, ptr %data_ready_signalled, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %sock_owned_by_user.exit.if.end67_crit_edge
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  %64 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sk_data_ready, align 8
  tail call void %65(ptr noundef %3) #6
  br label %cleanup

out_free:                                         ; preds = %sctp_ulpevent_is_enabled.exit.out_free_crit_edge, %if.end.i111.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %land.lhs.true.out_free_crit_edge
  %tobool69.not = icmp eq ptr %skb_list, null
  br i1 %tobool69.not, label %if.else72, label %if.then70

if.then70:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = tail call i32 @sctp_queue_purge_ulpevents(ptr noundef nonnull %skb_list) #6
  br label %cleanup

if.else72:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else72, %if.then70, %if.end67, %land.lhs.true56.cleanup_crit_edge, %if.end52.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end67 ], [ 1, %land.lhs.true56.cleanup_crit_edge ], [ 1, %if.end52.cleanup_crit_edge ], [ 0, %if.else72 ], [ 0, %if.then70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_clear_pd(ptr noundef %sk, ptr noundef readnone %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd_mode = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pd_mode, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr %pd_mode, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pd_mode, ptr %pd_mode, i32 1, ptr elementtype(i32) %pd_mode) #6, !srcloc !18
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  %pd_lobby = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 39
  %1 = ptrtoint ptr %pd_lobby to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pd_lobby, align 4
  %cmp.i = icmp eq ptr %2, %pd_lobby
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 39, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %4, ptr %prev5.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %2, ptr %4, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %sk_receive_queue, ptr %6, align 8
  store volatile ptr %6, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 39, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %13, %11
  store i32 %add.i, ptr %qlen1.i, align 4
  %14 = ptrtoint ptr %pd_lobby to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pd_lobby, ptr %pd_lobby, align 4
  store ptr %pd_lobby, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool8.not = icmp eq ptr %asoc, null
  %or.cond = or i1 %tobool8.not, %cmp.i
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %for.cond.preheader

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.else
  %qlen.i39 = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 39, i32 1
  %sk_receive_queue18 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 0, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %skb.042 = phi ptr [ %2, %for.cond.preheader ], [ %tmp.043, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %skb.042 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.043 = load ptr, ptr %skb.042, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.042, i32 0, i32 3
  %16 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load ptr, ptr %cb.i, align 1
  %cmp15 = icmp eq ptr %17, %asoc
  br i1 %cmp15, label %if.then16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %qlen.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i39, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %qlen.i39, align 4
  %20 = ptrtoint ptr %skb.042 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.042, align 8
  %prev9.i = getelementptr inbounds %struct.anon.1, ptr %skb.042, i32 0, i32 1
  %22 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.042, align 8
  %prev17.i = getelementptr inbounds %struct.anon.1, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %prev17.i, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %21, ptr %23, align 8
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %sk_receive_queue18, ptr %skb.042, align 8
  store volatile ptr %27, ptr %prev9.i, align 4
  store volatile ptr %skb.042, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %skb.042, ptr %27, align 4
  %29 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.043, %pd_lobby
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %if.then.i ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_ulpevent_is_notification(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_queue_purge_ulpevents(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_make_reassembled_event(ptr nocapture noundef readonly %net, ptr noundef %queue, ptr noundef %f_frag, ptr noundef readnone %l_frag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %f_frag, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frag_list, align 8
  %cmp = icmp eq ptr %f_frag, %l_frag
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %f_frag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_frag, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %pos.0 = phi ptr [ %5, %if.else ], [ null, %entry.if.end_crit_edge ]
  %tobool.not120 = icmp eq ptr %3, null
  br i1 %tobool.not120, label %if.else5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %list.0121 = phi ptr [ %7, %for.inc.for.inc_crit_edge ], [ %3, %if.end.for.inc_crit_edge ]
  %6 = ptrtoint ptr %list.0121 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.0121, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.inc.if.end19_crit_edge, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc.if.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else5:                                         ; preds = %if.end
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %f_frag, i32 0, i32 12
  %8 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else5.if.end19.sink.split_crit_edge, label %skb_cloned.exit

if.else5.if.end19.sink.split_crit_edge:           ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

skb_cloned.exit:                                  ; preds = %if.else5
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #6
  %9 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.end19.sink.split_crit_edge, label %if.then8

skb_cloned.exit.if.end19.sink.split_crit_edge:    ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

if.then8:                                         ; preds = %skb_cloned.exit
  %call9 = tail call ptr @skb_copy(ptr noundef %f_frag, i32 noundef 2592) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %f_frag, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef nonnull %call9) #6
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.end12
  %16 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool3.not.i.i = icmp eq ptr %18, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !16

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !20
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %19 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %13, ptr %19, align 4
  %21 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i, align 4
  %rmem_len.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %rmem_len.i, align 1
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 9
  %call.i.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #6
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %23, ptr elementtype(i32) %sk_backlog.i) #6, !srcloc !21
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 8
  %25 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %26, i32 0, i32 32
  %27 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.sctp_skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.sctp_skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %rmem_len.i, align 1
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 11
  %31 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %32, %30
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %sctp_skb_set_owner_r.exit

sctp_skb_set_owner_r.exit:                        ; preds = %if.end.i.i, %skb_orphan.exit.i.sctp_skb_set_owner_r.exit_crit_edge
  %end.i112 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 17
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %sctp_skb_set_owner_r.exit, %skb_cloned.exit.if.end19.sink.split_crit_edge, %if.else5.if.end19.sink.split_crit_edge
  %end.i112.sink = phi ptr [ %end.i112, %sctp_skb_set_owner_r.exit ], [ %end.i, %if.else5.if.end19.sink.split_crit_edge ], [ %end.i, %skb_cloned.exit.if.end19.sink.split_crit_edge ]
  %new.0.ph = phi ptr [ %call9, %sctp_skb_set_owner_r.exit ], [ null, %if.else5.if.end19.sink.split_crit_edge ], [ null, %skb_cloned.exit.if.end19.sink.split_crit_edge ]
  %33 = ptrtoint ptr %end.i112.sink to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i112.sink, align 4
  %frag_list14 = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 6
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %for.inc.if.end19_crit_edge
  %frag_list14.sink = phi ptr [ %frag_list14, %if.end19.sink.split ], [ %list.0121, %for.inc.if.end19_crit_edge ]
  %new.0 = phi ptr [ %new.0.ph, %if.end19.sink.split ], [ null, %for.inc.if.end19_crit_edge ]
  %35 = ptrtoint ptr %frag_list14.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pos.0, ptr %frag_list14.sink, align 8
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %37, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %38 = ptrtoint ptr %f_frag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %f_frag, align 8
  %prev9.i = getelementptr inbounds %struct.anon.1, ptr %f_frag, i32 0, i32 1
  %40 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %f_frag, align 8
  %prev17.i = getelementptr inbounds %struct.anon.1, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %prev17.i, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %39, ptr %41, align 8
  %tobool20.not = icmp eq ptr %new.0, null
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %f_frag, i32 noundef 0) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  %f_frag.addr.0 = phi ptr [ %new.0, %if.then21 ], [ %f_frag, %if.end19.if.end22_crit_edge ]
  %tobool23.not122 = icmp eq ptr %pos.0, null
  br i1 %tobool23.not122, label %if.end22.while.end_crit_edge, label %while.body.lr.ph

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end22
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %f_frag.addr.0, i32 0, i32 6
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %f_frag.addr.0, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %pos.1123 = phi ptr [ %pos.0, %while.body.lr.ph ], [ %45, %if.end30.while.body_crit_edge ]
  %44 = ptrtoint ptr %pos.1123 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pos.1123, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %pos.1123, i32 0, i32 6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len25, align 4
  %add = add i32 %49, %47
  store i32 %add, ptr %len25, align 4
  %50 = load i32, ptr %len, align 4
  %51 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len, align 8
  %add27 = add i32 %52, %50
  store i32 %add27, ptr %data_len, align 8
  %53 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen.i, align 4
  %sub.i115 = add i32 %54, -1
  store volatile i32 %sub.i115, ptr %qlen.i, align 4
  %55 = load ptr, ptr %pos.1123, align 8
  %prev9.i116 = getelementptr inbounds %struct.anon.1, ptr %pos.1123, i32 0, i32 1
  %56 = ptrtoint ptr %prev9.i116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev9.i116, align 4
  store ptr null, ptr %prev9.i116, align 4
  store ptr null, ptr %pos.1123, align 8
  %prev17.i117 = getelementptr inbounds %struct.anon.1, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %prev17.i117 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %prev17.i117, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %55, ptr %57, align 8
  %cmp28 = icmp eq ptr %pos.1123, %l_frag
  br i1 %cmp28, label %while.body.while.end_crit_edge, label %if.end30

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end30:                                         ; preds = %while.body
  %60 = ptrtoint ptr %pos.1123 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %45, ptr %pos.1123, align 8
  %tobool23.not = icmp eq ptr %45, null
  br i1 %tobool23.not, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end22.while.end_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %f_frag.addr.0, i32 0, i32 3
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !22
  %sctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38
  %62 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %arrayidx to i32
  %65 = tail call i32 @llvm.read_register.i32(metadata !6) #6
  %and.i118 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i118 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu, align 4
  %arrayidx48 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %70, %64
  %71 = inttoptr i32 %add49 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add50 = add i32 %73, 1
  store i32 %add50, ptr %71, align 4
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !23
  %and.i.i = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool61.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool61.not, label %if.then65, label %while.end.do.end68_crit_edge, !prof !24

while.end.do.end68_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

if.then65:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %while.end.do.end68_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #6, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %if.then8.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i, %do.end68 ], [ null, %if.then8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpq_reasm_flushtsn(ptr noundef %ulpq, i32 noundef %fwd_tsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reasm = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %0 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reasm, align 4
  %cmp.i.not = icmp eq ptr %1, %reasm
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %qlen.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %if.then7.for.body_crit_edge, %for.cond.preheader
  %pos.024 = phi ptr [ %1, %for.cond.preheader ], [ %tmp.025, %if.then7.for.body_crit_edge ]
  %tsn5 = getelementptr inbounds %struct.sk_buff, ptr %pos.024, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %tsn5 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %tsn5, align 1
  %sub = sub i32 %3, %fwd_tsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 1
  br i1 %cmp6, label %if.then7, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %for.body
  %4 = ptrtoint ptr %pos.024 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.025 = load ptr, ptr %pos.024, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %pos.024, i32 0, i32 3
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %6, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %7 = load ptr, ptr %pos.024, align 8
  %prev9.i = getelementptr inbounds %struct.anon.1, ptr %pos.024, i32 0, i32 1
  %8 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %pos.024, align 8
  %prev17.i = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %prev17.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %9, align 8
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i) #6
  %cmp.not = icmp eq ptr %tmp.025, %reasm
  br i1 %cmp.not, label %if.then7.cleanup_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpq_skip(ptr noundef %ulpq, i16 noundef zeroext %sid, i16 noundef zeroext %ssn) local_unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 1
  %div14.i2.i = udiv i16 %sid, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %2 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %sid, %2
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %3 = ptrtoint ptr %call1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %call1.i, align 4
  %sub = sub i16 %ssn, %4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub)
  %cmp = icmp slt i16 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i16 %ssn, 1
  %call1.i22 = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %5 = ptrtoint ptr %call1.i22 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %add, ptr %call1.i22, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp.i) #6
  %6 = call ptr @memset(ptr %temp.i, i32 255, i32 56)
  %lobby1.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %7 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asoc, align 4
  %lock.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %9 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %temp.i, ptr %temp.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon, ptr %temp.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %temp.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp.i, i32 0, i32 1
  %11 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i.i, align 4
  %12 = ptrtoint ptr %lobby1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lobby1.i, align 4
  %cmp.not125.i = icmp eq ptr %13, %lobby1.i
  br i1 %cmp.not125.i, label %if.end.sctp_ulpq_reap_ordered.exit_crit_edge, label %for.body.lr.ph.i

if.end.sctp_ulpq_reap_ordered.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_reap_ordered.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %in.i.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 60, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 1
  br label %for.body.i

for.end.thread.i:                                 ; preds = %for.inc.i
  %cmp26115.not.i = icmp eq ptr %event.2.i, null
  br i1 %cmp26115.not.i, label %for.end.thread.i.sctp_ulpq_reap_ordered.exit_crit_edge, label %for.end.thread.i.if.then50.i_crit_edge

for.end.thread.i.if.then50.i_crit_edge:           ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i

for.end.thread.i.sctp_ulpq_reap_ordered.exit_crit_edge: ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_reap_ordered.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %event.0127.i = phi ptr [ null, %for.body.lr.ph.i ], [ %event.2.i, %for.inc.i.for.body.i_crit_edge ]
  %pos.0126.i = phi ptr [ %13, %for.body.lr.ph.i ], [ %tmp.0128.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %pos.0126.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0128.i = load ptr, ptr %pos.0126.i, align 8
  %stream4.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0126.i, i32 0, i32 3, i32 28
  %15 = ptrtoint ptr %stream4.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %stream4.i, align 1
  %17 = getelementptr inbounds %struct.sk_buff, ptr %pos.0126.i, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %17, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %sid)
  %cmp6.i = icmp ugt i16 %16, %sid
  br i1 %cmp6.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %sid)
  %cmp10.i = icmp ult i16 %16, %sid
  br i1 %cmp10.i, label %if.end.i.for.inc.i_crit_edge, label %if.end13.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end.i
  %.frozen = freeze i16 %16
  %div14.i2.i.i = udiv i16 %.frozen, 204
  %div14.i.zext.i.i = zext i16 %div14.i2.i.i to i32
  %mul.i.i.i = shl nuw nsw i32 %div14.i.zext.i.i, 12
  %20 = mul i16 %div14.i2.i.i, 204
  %rem.i3.i.i.decomposed = sub i16 %.frozen, %20
  %narrow.i.i = mul nuw nsw i16 %rem.i3.i.i.decomposed, 20
  %mul15.i.i.i = zext i16 %narrow.i.i to i32
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %mul15.i.i.i
  %call1.i.i = call ptr @__genradix_ptr(ptr noundef %in.i.i, i32 noundef %add.i.i.i) #6
  %21 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %call1.i.i, align 4
  %sub.i = sub i16 %19, %22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp18.i = icmp slt i16 %sub.i, 0
  br i1 %cmp18.i, label %if.end21.i, label %if.end13.i.for.end.i_crit_edge

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end21.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %25 = ptrtoint ptr %pos.0126.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pos.0126.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.1, ptr %pos.0126.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %pos.0126.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.1, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %prev17.i.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %28, align 8
  %tobool.not.i = icmp eq ptr %event.0127.i, null
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0126.i, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr %cb.i.i, ptr %event.0127.i
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  store volatile ptr %temp.i, ptr %pos.0126.i, align 8
  store volatile ptr %32, ptr %prev9.i.i, align 4
  store volatile ptr %pos.0126.i, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %pos.0126.i, ptr %32, align 4
  %34 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end21.i, %if.end.i.for.inc.i_crit_edge
  %event.2.i = phi ptr [ %event.0127.i, %if.end.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end21.i ]
  %cmp.not.i = icmp eq ptr %tmp.0128.i, %lobby1.i
  br i1 %cmp.not.i, label %for.end.thread.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end13.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %36 = getelementptr inbounds %struct.sk_buff, ptr %pos.0126.i, i32 0, i32 3, i32 12
  %cmp26.not.i = icmp eq ptr %event.0127.i, null
  br i1 %cmp26.not.i, label %if.then30.i, label %for.end.i.if.then50.i_crit_edge

for.end.i.if.then50.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i

if.then30.i:                                      ; preds = %for.end.i
  %stream4.i.le = getelementptr inbounds %struct.sk_buff, ptr %pos.0126.i, i32 0, i32 3, i32 28
  %37 = ptrtoint ptr %stream4.i.le to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %stream4.i.le, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %sid)
  %cmp36.i = icmp eq i16 %38, %sid
  br i1 %cmp36.i, label %land.lhs.true38.i, label %if.then30.i.sctp_ulpq_reap_ordered.exit_crit_edge

if.then30.i.sctp_ulpq_reap_ordered.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_reap_ordered.exit

land.lhs.true38.i:                                ; preds = %if.then30.i
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %36, align 1
  %call1.i96.i = call ptr @__genradix_ptr(ptr noundef %in.i.i, i32 noundef %add.i.i) #6
  %41 = ptrtoint ptr %call1.i96.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %call1.i96.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp42.i = icmp eq i16 %40, %42
  br i1 %cmp42.i, label %if.end48.i, label %land.lhs.true38.i.sctp_ulpq_reap_ordered.exit_crit_edge

land.lhs.true38.i.sctp_ulpq_reap_ordered.exit_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_reap_ordered.exit

if.end48.i:                                       ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i105.i = call ptr @__genradix_ptr(ptr noundef %in.i.i, i32 noundef %add.i.i) #6
  %43 = ptrtoint ptr %call1.i105.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %call1.i105.i, align 4
  %inc.i = add i16 %44, 1
  store i16 %inc.i, ptr %call1.i105.i, align 4
  %45 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qlen.i.i, align 4
  %sub.i107.i = add i32 %46, -1
  store volatile i32 %sub.i107.i, ptr %qlen.i.i, align 4
  %47 = ptrtoint ptr %pos.0126.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pos.0126.i, align 8
  %prev9.i108.i = getelementptr inbounds %struct.anon.1, ptr %pos.0126.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev9.i108.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev9.i108.i, align 4
  store ptr null, ptr %prev9.i108.i, align 4
  store ptr null, ptr %pos.0126.i, align 8
  %prev17.i109.i = getelementptr inbounds %struct.anon.1, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %prev17.i109.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %prev17.i109.i, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %48, ptr %50, align 8
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i, align 4
  store volatile ptr %temp.i, ptr %pos.0126.i, align 8
  store volatile ptr %54, ptr %prev9.i108.i, align 4
  store volatile ptr %pos.0126.i, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %pos.0126.i, ptr %54, align 4
  %56 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i113.i = add i32 %57, 1
  store volatile i32 %add.i.i.i113.i, ptr %qlen.i.i.i, align 4
  %cb.i114.i = getelementptr inbounds %struct.sk_buff, ptr %pos.0126.i, i32 0, i32 3
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.end48.i, %for.end.i.if.then50.i_crit_edge, %for.end.thread.i.if.then50.i_crit_edge
  %event.3137.i = phi ptr [ %cb.i114.i, %if.end48.i ], [ %event.2.i, %for.end.thread.i.if.then50.i_crit_edge ], [ %event.0127.i, %for.end.i.if.then50.i_crit_edge ]
  call fastcc void @sctp_ulpq_retrieve_ordered(ptr noundef %ulpq, ptr noundef nonnull %event.3137.i) #6
  %call51.i = call i32 @sctp_ulpq_tail_event(ptr noundef %ulpq, ptr noundef nonnull %temp.i) #6
  br label %sctp_ulpq_reap_ordered.exit

sctp_ulpq_reap_ordered.exit:                      ; preds = %if.then50.i, %land.lhs.true38.i.sctp_ulpq_reap_ordered.exit_crit_edge, %if.then30.i.sctp_ulpq_reap_ordered.exit_crit_edge, %for.end.thread.i.sctp_ulpq_reap_ordered.exit_crit_edge, %if.end.sctp_ulpq_reap_ordered.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sctp_ulpq_reap_ordered.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @sctp_ulpq_renege_list(ptr nocapture noundef readonly %ulpq, ptr noundef %list, i16 noundef zeroext %needed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 10
  %prev.i = getelementptr inbounds %struct.anon, ptr %list, i32 0, i32 1
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 10, i32 2
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %entry
  %freed.0 = phi i16 [ 0, %entry ], [ %freed.1.lcssa71, %while.end.while.cond_crit_edge ]
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %3, %list
  %cmp.not60 = icmp eq ptr %3, null
  %cmp.not = or i1 %cmp.i, %cmp.not60
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %tsn2 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 20
  %4 = ptrtoint ptr %tsn2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tsn2, align 1
  %6 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 1
  br i1 %cmp4, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.body
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %9, %11
  %12 = trunc i32 %sub.i to i16
  %conv6 = add i16 %freed.0, %12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %frag_list, align 8
  %tobool.not61 = icmp eq ptr %16, null
  br i1 %tobool.not61, label %if.end.if.end16_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %flist.063 = phi ptr [ %23, %for.body.for.body_crit_edge ], [ %16, %if.end.for.body_crit_edge ]
  %freed.162 = phi i16 [ %conv11, %for.body.for.body_crit_edge ], [ %conv6, %if.end.for.body_crit_edge ]
  %len.i55 = getelementptr inbounds %struct.sk_buff, ptr %flist.063, i32 0, i32 6
  %17 = ptrtoint ptr %len.i55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i55, align 4
  %data_len.i56 = getelementptr inbounds %struct.sk_buff, ptr %flist.063, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i56, align 8
  %sub.i57 = sub i32 %18, %20
  %21 = trunc i32 %sub.i57 to i16
  %conv11 = add i16 %freed.162, %21
  %22 = ptrtoint ptr %flist.063 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %flist.063, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.then13, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %tsn15 = getelementptr inbounds %struct.sk_buff, ptr %flist.063, i32 0, i32 3, i32 20
  %24 = ptrtoint ptr %tsn15 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %tsn15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %freed.1.lcssa71 = phi i16 [ %conv11, %if.then13 ], [ %conv6, %if.end.if.end16_crit_edge ]
  %last_tsn.0 = phi i32 [ %25, %if.then13 ], [ %5, %if.end.if.end16_crit_edge ]
  %26 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i, align 4
  %sub.i59 = add i32 %27, -1
  store volatile i32 %sub.i59, ptr %qlen.i, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %prev9.i = getelementptr inbounds %struct.anon.1, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %3, align 8
  %prev17.i = getelementptr inbounds %struct.anon.1, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %prev17.i, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %29, ptr %31, align 8
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i) #6
  %sub1865 = sub i32 %5, %last_tsn.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub1865)
  %cmp1966 = icmp slt i32 %sub1865, 1
  br i1 %cmp1966, label %if.end16.while.body21_crit_edge, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end16.while.body21_crit_edge:                  ; preds = %if.end16
  br label %while.body21

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %if.end16.while.body21_crit_edge
  %tsn.067 = phi i32 [ %inc, %while.body21.while.body21_crit_edge ], [ %5, %if.end16.while.body21_crit_edge ]
  tail call void @sctp_tsnmap_renege(ptr noundef %tsn_map, i32 noundef %tsn.067) #6
  %inc = add i32 %tsn.067, 1
  %sub18 = sub i32 %inc, %last_tsn.0
  %cmp19 = icmp slt i32 %sub18, 1
  br i1 %cmp19, label %while.body21.while.body21_crit_edge, label %while.body21.while.end_crit_edge

while.body21.while.end_crit_edge:                 ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body21

while.end:                                        ; preds = %while.body21.while.end_crit_edge, %if.end16.while.end_crit_edge
  %cmp24.not = icmp ult i16 %freed.1.lcssa71, %needed
  br i1 %cmp24.not, label %while.end.while.cond_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i16 [ %freed.1.lcssa71, %while.end.cleanup_crit_edge ], [ %freed.0, %while.body.cleanup_crit_edge ], [ %freed.0, %while.cond.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_tsnmap_renege(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpq_partial_delivery(ptr noundef %ulpq, i32 %gfp) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 4
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %4 = ptrtoint ptr %ulpq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ulpq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reasm = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 62, i32 2
  %6 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reasm, align 4
  %cmp.i = icmp eq ptr %7, %reasm
  %cmp.not41 = icmp eq ptr %7, null
  %cmp.not = or i1 %cmp.i, %cmp.not41
  br i1 %cmp.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %tsn = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 20
  %8 = ptrtoint ptr %tsn to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %tsn, align 1
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 10, i32 2
  %10 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  %sub = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp7 = icmp slt i32 %sub, 1
  br i1 %cmp7, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %frag_interleave = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 37
  %12 = ptrtoint ptr %frag_interleave to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %frag_interleave, align 8
  %13 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool11.not = icmp eq i16 %13, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end10.if.then16_crit_edge

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end10
  %pd_mode12 = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pd_mode12, i32 noundef 4) #6
  %14 = ptrtoint ptr %pd_mode12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %pd_mode12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end10.if.then16_crit_edge
  %reasm.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %16 = ptrtoint ptr %reasm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reasm.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %reasm.i
  br i1 %cmp.i.not.i, label %if.then16.cleanup_crit_edge, label %if.then16.for.body.i_crit_edge

if.then16.for.body.i_crit_edge:                   ; preds = %if.then16
  br label %for.body.i

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then16.for.body.i_crit_edge
  %pos.056.i = phi ptr [ %pos.0.i, %for.inc.i.for.body.i_crit_edge ], [ %17, %if.then16.for.body.i_crit_edge ]
  %next_tsn.055.i = phi i32 [ %next_tsn.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then16.for.body.i_crit_edge ]
  %first_frag.054.i = phi ptr [ %first_frag.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then16.for.body.i_crit_edge ]
  %last_frag.053.i = phi ptr [ %pos.056.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then16.for.body.i_crit_edge ]
  %tsn.i = getelementptr inbounds %struct.sk_buff, ptr %pos.056.i, i32 0, i32 3, i32 20
  %18 = ptrtoint ptr %tsn.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %tsn.i, align 1
  %msg_flags.i = getelementptr inbounds %struct.sk_buff, ptr %pos.056.i, i32 0, i32 3, i32 32
  %20 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %msg_flags.i, align 1
  %22 = and i16 %21, 3
  %and.i = zext i16 %22 to i32
  %23 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and.i, label %for.body.i.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb8.i
    i32 1, label %sw.bb17.i
  ]

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %for.body.i
  %tobool5.not.i = icmp eq ptr %first_frag.054.i, null
  br i1 %tobool5.not.i, label %sw.bb.i.for.inc.i_crit_edge, label %sw.bb.i.sctp_ulpq_retrieve_first.exit_crit_edge

sw.bb.i.sctp_ulpq_retrieve_first.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_retrieve_first.exit

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb8.i:                                         ; preds = %for.body.i
  %tobool9.not.i = icmp eq ptr %first_frag.054.i, null
  br i1 %tobool9.not.i, label %sw.bb8.i.cleanup_crit_edge, label %if.end11.i

sw.bb8.i.cleanup_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %next_tsn.055.i)
  %cmp12.i = icmp eq i32 %19, %next_tsn.055.i
  br i1 %cmp12.i, label %if.end11.i.for.inc.i_crit_edge, label %if.end11.i.sctp_ulpq_retrieve_first.exit_crit_edge

if.end11.i.sctp_ulpq_retrieve_first.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_retrieve_first.exit

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb17.i:                                        ; preds = %for.body.i
  %tobool18.not.i = icmp eq ptr %first_frag.054.i, null
  br i1 %tobool18.not.i, label %sw.bb17.i.cleanup_crit_edge, label %sw.bb17.i.sctp_ulpq_retrieve_first.exit_crit_edge

sw.bb17.i.sctp_ulpq_retrieve_first.exit_crit_edge: ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_retrieve_first.exit

sw.bb17.i.cleanup_crit_edge:                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i:                                        ; preds = %if.end11.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge
  %first_frag.1.i = phi ptr [ %pos.056.i, %sw.bb.i.for.inc.i_crit_edge ], [ %first_frag.054.i, %if.end11.i.for.inc.i_crit_edge ]
  %next_tsn.1.in.i = phi i32 [ %19, %sw.bb.i.for.inc.i_crit_edge ], [ %next_tsn.055.i, %if.end11.i.for.inc.i_crit_edge ]
  %next_tsn.1.i = add i32 %next_tsn.1.in.i, 1
  %24 = ptrtoint ptr %pos.056.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %pos.0.i = load ptr, ptr %pos.056.i, align 4
  %cmp.not.i = icmp eq ptr %pos.0.i, %reasm.i
  br i1 %cmp.not.i, label %for.inc.i.sctp_ulpq_retrieve_first.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.sctp_ulpq_retrieve_first.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpq_retrieve_first.exit

sctp_ulpq_retrieve_first.exit:                    ; preds = %for.inc.i.sctp_ulpq_retrieve_first.exit_crit_edge, %sw.bb17.i.sctp_ulpq_retrieve_first.exit_crit_edge, %if.end11.i.sctp_ulpq_retrieve_first.exit_crit_edge, %sw.bb.i.sctp_ulpq_retrieve_first.exit_crit_edge
  %last_frag.050.i = phi ptr [ %last_frag.053.i, %sw.bb17.i.sctp_ulpq_retrieve_first.exit_crit_edge ], [ %pos.056.i, %for.inc.i.sctp_ulpq_retrieve_first.exit_crit_edge ], [ %last_frag.053.i, %if.end11.i.sctp_ulpq_retrieve_first.exit_crit_edge ], [ %last_frag.053.i, %sw.bb.i.sctp_ulpq_retrieve_first.exit_crit_edge ]
  %first_frag.047.i = phi ptr [ %first_frag.054.i, %sw.bb17.i.sctp_ulpq_retrieve_first.exit_crit_edge ], [ %first_frag.1.i, %for.inc.i.sctp_ulpq_retrieve_first.exit_crit_edge ], [ %first_frag.054.i, %if.end11.i.sctp_ulpq_retrieve_first.exit_crit_edge ], [ %first_frag.054.i, %sw.bb.i.sctp_ulpq_retrieve_first.exit_crit_edge ]
  %25 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %asoc1, align 4
  %net.i = getelementptr inbounds %struct.sctp_ep_common, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i, align 8
  %call23.i = tail call ptr @sctp_make_reassembled_event(ptr noundef %28, ptr noundef %reasm.i, ptr noundef %first_frag.047.i, ptr noundef %last_frag.050.i) #6
  %tobool18.not = icmp eq ptr %call23.i, null
  br i1 %tobool18.not, label %sctp_ulpq_retrieve_first.exit.cleanup_crit_edge, label %if.then19

sctp_ulpq_retrieve_first.exit.cleanup_crit_edge:  ; preds = %sctp_ulpq_retrieve_first.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %sctp_ulpq_retrieve_first.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #6
  %29 = call ptr @memset(ptr %temp, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %prev.i.i = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  %30 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %qlen.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call23.i, i32 -24
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %temp, ptr %add.ptr.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %call23.i, i32 -20
  %32 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %temp, ptr %prev10.i.i.i, align 4
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %add.ptr.i, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %add.ptr.i, ptr %temp, align 4
  %35 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  %call21 = call i32 @sctp_ulpq_tail_event(ptr noundef %ulpq, ptr noundef nonnull %temp)
  %36 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %asoc1, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk.i, align 4
  %pd_mode.i = getelementptr inbounds %struct.sctp_sock, ptr %39, i32 0, i32 38
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pd_mode.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %pd_mode.i, i32 1, i32 3, i32 1) #6
  %40 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pd_mode.i, ptr %pd_mode.i, i32 1, ptr elementtype(i32) %pd_mode.i) #6, !srcloc !21
  %41 = ptrtoint ptr %ulpq to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ulpq, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %sctp_ulpq_retrieve_first.exit.cleanup_crit_edge, %sw.bb17.i.cleanup_crit_edge, %sw.bb8.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpq_renege(ptr noundef %ulpq, ptr noundef %chunk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %sub = add i16 %5, -16
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %9, %sk_receive_queue
  br i1 %cmp.i.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  %lobby.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %call.i = tail call zeroext i16 @sctp_ulpq_renege_list(ptr noundef %ulpq, ptr noundef %lobby.i, i16 noundef zeroext %sub) #6
  %conv4 = zext i16 %call.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %call.i)
  %cmp = icmp ugt i16 %sub, %call.i
  br i1 %cmp, label %if.then7, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sub9 = sub i16 %sub, %call.i
  %reasm.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %call.i53 = tail call zeroext i16 @sctp_ulpq_renege_list(ptr noundef %ulpq, ptr noundef %reasm.i, i16 noundef zeroext %sub9) #6
  %conv12 = zext i16 %call.i53 to i32
  %add = add nuw nsw i32 %conv12, %conv4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %freed.0 = phi i32 [ %add, %if.then7 ], [ %conv4, %if.then.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  %10 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk, align 4
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb, align 4
  %conv16 = zext i16 %sub to i32
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %17, null
  br i1 %tobool.i.not.i, label %if.end13.sk_rmem_schedule.exit_crit_edge, label %if.end.i

if.end13.sk_rmem_schedule.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_rmem_schedule.exit

if.end.i:                                         ; preds = %if.end13
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 11
  %18 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_forward_alloc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv16)
  %cmp.not.i = icmp slt i32 %19, %conv16
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.sk_rmem_schedule.exit_crit_edge

if.end.i.sk_rmem_schedule.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_rmem_schedule.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call1.i = tail call i32 @__sk_mem_schedule(ptr noundef %11, i32 noundef %conv16, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.lhs.false.i.sk_rmem_schedule.exit_crit_edge

lor.lhs.false.i.sk_rmem_schedule.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_rmem_schedule.exit

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 12
  %20 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %21 = and i8 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i6.i = icmp eq i8 %21, 0
  br label %sk_rmem_schedule.exit

sk_rmem_schedule.exit:                            ; preds = %lor.rhs.i, %lor.lhs.false.i.sk_rmem_schedule.exit_crit_edge, %if.end.i.sk_rmem_schedule.exit_crit_edge, %if.end13.sk_rmem_schedule.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end13.sk_rmem_schedule.exit_crit_edge ], [ false, %lor.lhs.false.i.sk_rmem_schedule.exit_crit_edge ], [ false, %if.end.i.sk_rmem_schedule.exit_crit_edge ], [ %tobool.i6.i, %lor.rhs.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %freed.0, i32 %conv16)
  %cmp20.not = icmp ult i32 %freed.0, %conv16
  %or.cond = select i1 %retval.0.i, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %sk_rmem_schedule.exit.if.end32_crit_edge, label %if.then22

sk_rmem_schedule.exit.if.end32_crit_edge:         ; preds = %sk_rmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then22:                                        ; preds = %sk_rmem_schedule.exit
  %call23 = tail call i32 @sctp_ulpq_tail_data(ptr noundef %ulpq, ptr noundef %chunk, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.then26, label %if.then29

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sctp_ulpq_partial_delivery(ptr noundef %ulpq, i32 undef)
  br label %if.end32

if.then29:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sctp_ulpq_reasm_drain(ptr noundef %ulpq)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then26, %sk_rmem_schedule.exit.if.end32_crit_edge
  %22 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk, align 4
  %skc_prot.i.i54 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %skc_prot.i.i54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_prot.i.i54, align 8
  %memory_allocated.i.i55 = getelementptr inbounds %struct.proto, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %memory_allocated.i.i55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %memory_allocated.i.i55, align 4
  %tobool.i.not.i56 = icmp eq ptr %27, null
  br i1 %tobool.i.not.i56, label %if.end32.sk_mem_reclaim.exit_crit_edge, label %if.end.i58

if.end32.sk_mem_reclaim.exit_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_mem_reclaim.exit

if.end.i58:                                       ; preds = %if.end32
  %sk_forward_alloc.i57 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 11
  %28 = ptrtoint ptr %sk_forward_alloc.i57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_forward_alloc.i57, align 8
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 12
  %30 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if.end.i58.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i, !prof !16

if.end.i58.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 22
  %32 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  %34 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %36 = add i32 %33, %35
  %sub5.i.i = sub i32 %31, %36
  %37 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #6
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i, %if.end.i58.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %37, %if.end.i.i ], [ 0, %if.end.i58.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i = sub i32 %29, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i)
  %cmp.i59 = icmp sgt i32 %sub.i, 4095
  br i1 %cmp.i59, label %if.then2.i, label %sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge

sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_mem_reclaim.exit

if.then2.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__sk_mem_reclaim(ptr noundef %23, i32 noundef %sub.i) #6
  br label %sk_mem_reclaim.exit

sk_mem_reclaim.exit:                              ; preds = %if.then2.i, %sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge, %if.end32.sk_mem_reclaim.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_ulpq_reasm_drain(ptr noundef %ulpq) unnamed_addr #0 align 64 {
entry:
  %temp = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reasm = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %0 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reasm, align 4
  %cmp.i.not = icmp eq ptr %1, %reasm
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call120 = tail call fastcc ptr @sctp_ulpq_retrieve_reassembled(ptr noundef %ulpq)
  %cmp.not21 = icmp eq ptr %call120, null
  br i1 %cmp.not21, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.lr.ph
  %call122 = phi ptr [ %call120, %while.body.lr.ph ], [ %call1, %if.end10.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #6
  %2 = call ptr @memset(ptr %temp, i32 255, i32 56)
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call122, i32 -24
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %temp, ptr %add.ptr.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %call122, i32 -20
  %5 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %temp, ptr %prev10.i.i.i, align 4
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %add.ptr.i, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %add.ptr.i, ptr %temp, align 4
  %8 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  %msg_flags = getelementptr inbounds %struct.sctp_ulpevent, ptr %call122, i32 0, i32 9
  %9 = ptrtoint ptr %msg_flags to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %msg_flags, align 1
  %11 = and i16 %10, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not = icmp eq i16 %11, 0
  br i1 %tobool3.not, label %while.body.if.then8_crit_edge, label %if.end6

while.body.if.then8_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.end6:                                          ; preds = %while.body
  %call5 = call fastcc ptr @sctp_ulpq_order(ptr noundef %ulpq, ptr noundef nonnull %call122)
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %while.body.if.then8_crit_edge
  %call9 = call i32 @sctp_ulpq_tail_event(ptr noundef %ulpq, ptr noundef nonnull %temp)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #6
  %call1 = call fastcc ptr @sctp_ulpq_retrieve_reassembled(ptr noundef %ulpq)
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %if.end10.cleanup_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpq_abort_pd(ptr noundef %ulpq, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ulpq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ulpq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %2 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc, align 4
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1, align 4
  %subscribe = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 87
  %6 = ptrtoint ptr %subscribe to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subscribe, align 4
  %8 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i.not = icmp eq i16 %8, 0
  br i1 %tobool.i.not, label %if.end.if.end11_crit_edge, label %if.end7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end7:                                          ; preds = %if.end
  %call6 = tail call ptr @sctp_ulpevent_make_pdapi(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %gfp) #6
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %add.ptr.i = getelementptr i8, ptr %call6, i32 -24
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %sk_receive_queue, ptr %add.ptr.i, align 8
  %prev10.i.i.i = getelementptr i8, ptr %call6, i32 -20
  %12 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %prev10.i.i.i, align 4
  store volatile ptr %add.ptr.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %add.ptr.i, ptr %10, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %tobool8.not35 = phi i1 [ true, %if.then9 ], [ false, %if.end7.if.end11_crit_edge ], [ false, %if.end.if.end11_crit_edge ]
  %16 = ptrtoint ptr %ulpq to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ulpq, align 4
  tail call fastcc void @sctp_ulpq_reasm_drain(ptr noundef %ulpq) #6
  %17 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asoc, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk.i, align 4
  %call.i = tail call i32 @sctp_clear_pd(ptr noundef %20, ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp ne i32 %call.i, 0
  %brmerge = or i1 %tobool8.not35, %tobool13.not
  br i1 %brmerge, label %land.lhs.true, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11
  %data_ready_signalled = getelementptr inbounds %struct.sctp_sock, ptr %5, i32 0, i32 37
  %21 = ptrtoint ptr %data_ready_signalled to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %data_ready_signalled, align 8
  %22 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool15.not = icmp eq i16 %22, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set = or i16 %bf.load, 64
  %23 = ptrtoint ptr %data_ready_signalled to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %bf.set, ptr %data_ready_signalled, align 8
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 77
  %24 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_data_ready, align 8
  tail call void %25(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_pdapi(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sctp_ulpevent_get_notification_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sock_rfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sctp_ulpq_retrieve_reassembled(ptr noundef %ulpq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reasm = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 2
  %0 = ptrtoint ptr %reasm to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.0110 = load ptr, ptr %reasm, align 4
  %cmp.not111 = icmp eq ptr %pos.0110, %reasm
  br i1 %cmp.not111, label %entry.done_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.0117 = phi ptr [ %pos.0, %for.inc.for.body_crit_edge ], [ %pos.0110, %entry.for.body_crit_edge ]
  %pd_len.0116 = phi i32 [ %pd_len.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %pd_last.0115 = phi ptr [ %pd_last.2, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %pd_first.0114 = phi ptr [ %pd_first.2, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %next_tsn.0113 = phi i32 [ %next_tsn.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %first_frag.0112 = phi ptr [ %first_frag.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %tsn = getelementptr inbounds %struct.sk_buff, ptr %pos.0117, i32 0, i32 3, i32 20
  %1 = ptrtoint ptr %tsn to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %tsn, align 1
  %msg_flags = getelementptr inbounds %struct.sk_buff, ptr %pos.0117, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %msg_flags, align 1
  %5 = and i16 %4, 3
  %and = zext i16 %5 to i32
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and, label %for.body.for.inc_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
    i32 1, label %sw.bb16
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %prev.i = getelementptr inbounds %struct.anon.1, ptr %pos.0117, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %8, %reasm
  br i1 %cmp.i, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %pos.0117, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %pd_last.1 = phi ptr [ %pos.0117, %if.then ], [ null, %sw.bb.if.end_crit_edge ]
  %pd_len.1 = phi i32 [ %10, %if.then ], [ 0, %sw.bb.if.end_crit_edge ]
  %add = add i32 %2, 1
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  %tobool.not = icmp ne ptr %first_frag.0112, null
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %next_tsn.0113)
  %cmp6 = icmp eq i32 %2, %next_tsn.0113
  %or.cond = select i1 %tobool.not, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then8, label %sw.bb5.for.inc_crit_edge

sw.bb5.for.inc_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8:                                         ; preds = %sw.bb5
  %inc = add i32 %next_tsn.0113, 1
  %tobool9.not = icmp eq ptr %pd_first.0114, null
  br i1 %tobool9.not, label %if.then8.for.inc_crit_edge, label %if.then10

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %len11 = getelementptr inbounds %struct.sk_buff, ptr %pos.0117, i32 0, i32 6
  %11 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len11, align 4
  %add12 = add i32 %12, %pd_len.0116
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  %tobool17.not = icmp ne ptr %first_frag.0112, null
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %next_tsn.0113)
  %cmp19 = icmp eq i32 %2, %next_tsn.0113
  %or.cond102 = select i1 %tobool17.not, i1 %cmp19, i1 false
  br i1 %or.cond102, label %found, label %sw.bb16.for.inc_crit_edge

sw.bb16.for.inc_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %sw.bb16.for.inc_crit_edge, %if.then10, %if.then8.for.inc_crit_edge, %sw.bb5.for.inc_crit_edge, %if.end, %for.body.for.inc_crit_edge
  %first_frag.1 = phi ptr [ %first_frag.0112, %for.body.for.inc_crit_edge ], [ %first_frag.0112, %if.then10 ], [ %first_frag.0112, %if.then8.for.inc_crit_edge ], [ %pos.0117, %if.end ], [ null, %sw.bb5.for.inc_crit_edge ], [ null, %sw.bb16.for.inc_crit_edge ]
  %next_tsn.1 = phi i32 [ %next_tsn.0113, %for.body.for.inc_crit_edge ], [ %inc, %if.then10 ], [ %inc, %if.then8.for.inc_crit_edge ], [ %add, %if.end ], [ %next_tsn.0113, %sw.bb5.for.inc_crit_edge ], [ %next_tsn.0113, %sw.bb16.for.inc_crit_edge ]
  %pd_first.2 = phi ptr [ %pd_first.0114, %for.body.for.inc_crit_edge ], [ %pd_first.0114, %if.then10 ], [ null, %if.then8.for.inc_crit_edge ], [ %pd_last.1, %if.end ], [ %pd_first.0114, %sw.bb5.for.inc_crit_edge ], [ %pd_first.0114, %sw.bb16.for.inc_crit_edge ]
  %pd_last.2 = phi ptr [ %pd_last.0115, %for.body.for.inc_crit_edge ], [ %pos.0117, %if.then10 ], [ %pd_last.0115, %if.then8.for.inc_crit_edge ], [ %pd_last.1, %if.end ], [ %pd_last.0115, %sw.bb5.for.inc_crit_edge ], [ %pd_last.0115, %sw.bb16.for.inc_crit_edge ]
  %pd_len.2 = phi i32 [ %pd_len.0116, %for.body.for.inc_crit_edge ], [ %add12, %if.then10 ], [ %pd_len.0116, %if.then8.for.inc_crit_edge ], [ %pd_len.1, %if.end ], [ %pd_len.0116, %sw.bb5.for.inc_crit_edge ], [ %pd_len.0116, %sw.bb16.for.inc_crit_edge ]
  %13 = ptrtoint ptr %pos.0117 to i32
  call void @__asan_load4_noabort(i32 %13)
  %pos.0 = load ptr, ptr %pos.0117, align 4
  %cmp.not = icmp eq ptr %pos.0, %reasm
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %asoc25 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %14 = ptrtoint ptr %asoc25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asoc25, align 4
  %tobool26.not = icmp eq ptr %pd_first.2, null
  br i1 %tobool26.not, label %for.end.done_crit_edge, label %if.then27

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then27:                                        ; preds = %for.end
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 4
  %frag_interleave = getelementptr inbounds %struct.sctp_sock, ptr %17, i32 0, i32 37
  %18 = ptrtoint ptr %frag_interleave to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %frag_interleave, align 8
  %19 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool29.not = icmp eq i16 %19, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.then27.if.end37_crit_edge

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true30:                                  ; preds = %if.then27
  %pd_mode = getelementptr inbounds %struct.sctp_sock, ptr %17, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pd_mode, i32 noundef 4) #6
  %20 = ptrtoint ptr %pd_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %pd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool35.not = icmp eq i32 %21, 0
  br i1 %tobool35.not, label %land.lhs.true30.if.end37_crit_edge, label %land.lhs.true30.done_crit_edge

land.lhs.true30.done_crit_edge:                   ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true30.if.end37_crit_edge, %if.then27.if.end37_crit_edge
  %22 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk, align 4
  %pd_point42 = getelementptr inbounds %struct.sctp_sock, ptr %23, i32 0, i32 36
  %24 = ptrtoint ptr %pd_point42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pd_point42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool43.not = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %pd_len.2)
  %cmp45.not = icmp ugt i32 %25, %pd_len.2
  %or.cond103 = select i1 %tobool43.not, i1 true, i1 %cmp45.not
  br i1 %or.cond103, label %if.end37.done_crit_edge, label %if.then47

if.end37.done_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then47:                                        ; preds = %if.end37
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %15, i32 0, i32 4
  %26 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net, align 8
  %call50 = tail call ptr @sctp_make_reassembled_event(ptr noundef %27, ptr noundef %reasm, ptr noundef nonnull %pd_first.2, ptr noundef %pd_last.2)
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.then47.done_crit_edge, label %if.then52

if.then47.done_crit_edge:                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %asoc25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asoc25, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk.i, align 4
  %pd_mode.i = getelementptr inbounds %struct.sctp_sock, ptr %31, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pd_mode.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %pd_mode.i, i32 1, i32 3, i32 1) #6
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pd_mode.i, ptr %pd_mode.i, i32 1, ptr elementtype(i32) %pd_mode.i) #6, !srcloc !21
  %33 = ptrtoint ptr %ulpq to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %ulpq, align 4
  br label %done

done:                                             ; preds = %if.then62, %found.done_crit_edge, %if.then52, %if.then47.done_crit_edge, %if.end37.done_crit_edge, %land.lhs.true30.done_crit_edge, %for.end.done_crit_edge, %entry.done_crit_edge
  %retval1.0 = phi ptr [ %call60, %if.then62 ], [ null, %found.done_crit_edge ], [ %call50, %if.then52 ], [ null, %if.then47.done_crit_edge ], [ null, %if.end37.done_crit_edge ], [ null, %land.lhs.true30.done_crit_edge ], [ null, %for.end.done_crit_edge ], [ null, %entry.done_crit_edge ]
  ret ptr %retval1.0

found:                                            ; preds = %sw.bb16
  %asoc56 = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %34 = ptrtoint ptr %asoc56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asoc56, align 4
  %net58 = getelementptr inbounds %struct.sctp_ep_common, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %net58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net58, align 8
  %call60 = tail call ptr @sctp_make_reassembled_event(ptr noundef %37, ptr noundef %reasm, ptr noundef nonnull %first_frag.0112, ptr noundef %pos.0117)
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %found.done_crit_edge, label %if.then62

found.done_crit_edge:                             ; preds = %found
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then62:                                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #8
  %msg_flags63 = getelementptr inbounds %struct.sctp_ulpevent, ptr %call60, i32 0, i32 9
  %38 = ptrtoint ptr %msg_flags63 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %msg_flags63, align 1
  %40 = or i16 %39, 128
  store i16 %40, ptr %msg_flags63, align 1
  br label %done
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_ulpq_retrieve_ordered(ptr noundef %ulpq, ptr nocapture noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 7
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %stream1, align 1
  %asoc = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 1
  %2 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc, align 4
  %prev = getelementptr i8, ptr %event, i32 -20
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %lobby = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4
  %6 = ptrtoint ptr %lobby to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lobby, align 4
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 60, i32 1
  %.frozen = freeze i16 %1
  %div14.i2.i = udiv i16 %.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %8 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %.frozen, %8
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %cmp.not50 = icmp eq ptr %7, %lobby
  br i1 %cmp.not50, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %qlen.i = getelementptr inbounds %struct.sctp_ulpq, ptr %ulpq, i32 0, i32 4, i32 1
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %5, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.051 = phi ptr [ %7, %for.body.lr.ph ], [ %tmp.052, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %pos.051 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.052 = load ptr, ptr %pos.051, align 8
  %stream5 = getelementptr inbounds %struct.sk_buff, ptr %pos.051, i32 0, i32 3, i32 28
  %10 = ptrtoint ptr %stream5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %stream5, align 1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %pos.051, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %12, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %1)
  %cmp7 = icmp ugt i16 %11, %1
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %1)
  %cmp11 = icmp ult i16 %11, %1
  br i1 %cmp11, label %if.end.for.inc_crit_edge, label %if.end14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end14:                                         ; preds = %if.end
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %call1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp18.not = icmp eq i16 %14, %16
  br i1 %cmp18.not, label %if.end21, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i48 = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %17 = ptrtoint ptr %call1.i48 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call1.i48, align 4
  %inc = add i16 %18, 1
  store i16 %inc, ptr %call1.i48, align 4
  %19 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %21 = ptrtoint ptr %pos.051 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pos.051, align 8
  %prev9.i = getelementptr inbounds %struct.anon.1, ptr %pos.051, i32 0, i32 1
  %23 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %pos.051, align 8
  %prev17.i = getelementptr inbounds %struct.anon.1, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %prev17.i, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %24, align 8
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %5, ptr %pos.051, align 8
  store volatile ptr %28, ptr %prev9.i, align 4
  store volatile ptr %pos.051, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %pos.051, ptr %28, align 4
  %30 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.end.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.052, %lobby
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_schedule(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @skb_queue_head_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../include/net/sock.h", i32 1750, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148696390}
!18 = !{i64 2148611099, i64 2148611131, i64 2148611160, i64 2148611194, i64 2148611225, i64 2148611248}
!19 = !{i64 2148696619}
!20 = !{i64 2154606891, i64 2154607379, i64 2154606928, i64 2154606984, i64 2154607018, i64 2154607042, i64 2154607083, i64 2154607104, i64 2154607132, i64 2154607166}
!21 = !{i64 2148607914, i64 2148607940, i64 2148607969, i64 2148608003, i64 2148608034, i64 2148608057}
!22 = !{i64 1012594, i64 1012655}
!23 = !{i64 1015326}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 1015611}
