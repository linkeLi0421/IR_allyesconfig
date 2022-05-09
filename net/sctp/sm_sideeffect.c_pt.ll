; ModuleID = '/llk/IR_all_yes/net/sctp/sm_sideeffect.c_pt.bc'
source_filename = "../net/sctp/sm_sideeffect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sock_common = type { %union.anon.109, %union.anon.111, %union.anon.112, i16, i8, i8, i32, %union.anon.114, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.117, [0 x i32], %union.anon.118, i16, i16, %union.anon.119, %struct.refcount_struct, [0 x i32], %union.anon.120 }
%union.anon.109 = type { i64 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i32 }
%union.anon.114 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { %struct.hlist_node }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.121, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.122, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.123, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.121 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.122 = type { ptr }
%union.anon.123 = type { ptr }
%struct.sk_buff_head = type { %union.anon.98, i32, %struct.spinlock }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.160, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.160 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.sctp_stream = type { %struct.anon.161, %struct.anon.166, i16, i16, ptr, %union.anon.168, ptr }
%struct.anon.161 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.162, i32, ptr, i8 }
%union.anon.162 = type { i32 }
%struct.anon.166 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.167, i32, i32, i32, i8, i8 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { %struct.anon.170 }
%struct.anon.170 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.171 }
%union.anon.171 = type { ptr, [124 x i8] }
%struct.sctp_cmd_seq = type { [20 x %struct.sctp_cmd], ptr, ptr }
%struct.sctp_cmd = type { %union.sctp_arg, i32 }
%union.sctp_arg = type { ptr }
%struct.sctp_sm_table_entry = type { ptr, ptr }
%struct.sctp_sackhdr = type { i32, i32, i16, i16, [0 x %union.sctp_sack_variable] }
%union.sctp_sack_variable = type { i32 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.0 }
%union.anon.0 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.175, %struct.anon.176, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.175 = type { i32, i8, i8, i8 }
%struct.anon.176 = type { i16, i16, i16, i8, i8 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.156, %struct.list_head, ptr, %union.anon.157, %union.sctp_params, %union.anon.158, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon.156 = type { %struct.list_head }
%union.anon.157 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.158 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.5, %union.anon.136, %union.anon.137, [48 x i8], %union.anon.138, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.140, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr, %union.anon.7 }
%union.anon.7 = type { ptr }
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
%struct.sctp_sender_hb_info = type { %struct.sctp_paramhdr, %union.sctp_addr, i32, i64, i32 }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.sctp_errhdr = type { i16, i16, [0 x i8] }
%struct.sctp_sched_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.108, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.108 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }

@sctp_generate_t3_rtx_event.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sctp_generate_t3_rtx_event\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/sctp/sm_sideeffect.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: sock is busy\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sctp: %s: sock is busy\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sctp_generate_heartbeat_event.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sctp_generate_heartbeat_event\00", [34 x i8] zeroinitializer }, align 32
@sctp_generate_proto_unreach_event.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sctp_generate_proto_unreach_event\00", [62 x i8] zeroinitializer }, align 32
@sctp_generate_reconf_event.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sctp_generate_reconf_event\00", [37 x i8] zeroinitializer }, align 32
@sctp_generate_probe_event.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp_generate_probe_event\00", [38 x i8] zeroinitializer }, align 32
@sctp_timer_events = dso_local global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr null, ptr @sctp_generate_t1_cookie_event, ptr @sctp_generate_t1_init_event, ptr @sctp_generate_t2_shutdown_event, ptr null, ptr @sctp_generate_t4_rto_event, ptr @sctp_generate_t5_shutdown_guard_event, ptr null, ptr null, ptr null, ptr @sctp_generate_sack_event, ptr @sctp_generate_autoclose_event], [48 x i8] zeroinitializer }, align 32
@sctp_do_sm.table = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @sctp_cname, ptr @sctp_tname, ptr @sctp_oname, ptr @sctp_pname], [44 x i8] zeroinitializer }, align 32
@sctp_do_sm.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sctp_do_sm\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s[pre-fn]: ep:%p, %s, %s, asoc:%p[%s], %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sctp: %s[pre-fn]: ep:%p, %s, %s, asoc:%p[%s], %s\0A\00", [46 x i8] zeroinitializer }, align 32
@sctp_evttype_tbl = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@sctp_state_tbl = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@sctp_do_sm.__UNIQUE_ID_ddebug574 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 1, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s[post-fn]: asoc:%p, status:%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sctp: %s[post-fn]: asoc:%p, status:%s\0A\00", [57 x i8] zeroinitializer }, align 32
@sctp_status_tbl = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@sctp_do_sm.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s[post-sfx]: error:%d, asoc:%p[%s]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sctp: %s[post-sfx]: error:%d, asoc:%p[%s]\0A\00", [53 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@sctp_generate_timeout_event.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sctp_generate_timeout_event\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: sock is busy: timer %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sctp: %s: sock is busy: timer %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sctp_side_effects.__UNIQUE_ID_ddebug576 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_side_effects\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: ignored sctp protocol event - state:%d, event_type:%d, event_id:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"sctp: %s: ignored sctp protocol event - state:%d, event_type:%d, event_id:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@sctp_side_effects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013sctp: protocol violation state %d chunkid %d\0A\00", [48 x i8] zeroinitializer }, align 32
@sctp_side_effects._entry_ptr = internal global ptr @sctp_side_effects._entry, section ".printk_index", align 4
@sctp_side_effects._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014sctp: unimplemented feature in state %d, event_type %d, event_id %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sctp_side_effects._entry_ptr.26 = internal global ptr @sctp_side_effects._entry.24, section ".printk_index", align 4
@sctp_side_effects._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013sctp: bug in state %d, event_type %d, event_id %d\0A\00", [43 x i8] zeroinitializer }, align 32
@sctp_side_effects._entry_ptr.29 = internal global ptr @sctp_side_effects._entry.27, section ".printk_index", align 4
@sctp_side_effects._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013sctp: impossible disposition %d in state %d, event_type %d, event_id %d\0A\00", [53 x i8] zeroinitializer }, align 32
@sctp_side_effects._entry_ptr.32 = internal global ptr @sctp_side_effects._entry.30, section ".printk_index", align 4
@sctp_cmd_interpreter.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_cmd_interpreter\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: sm_sideff: chunk_up:%p, ulpq:%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sctp: %s: sm_sideff: chunk_up:%p, ulpq:%p\0A\00", [53 x i8] zeroinitializer }, align 32
@sctp_cmd_interpreter.__UNIQUE_ID_ddebug578 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 1, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: sm_sideff: event_up:%p, ulpq:%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sctp: %s: sm_sideff: event_up:%p, ulpq:%p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COOKIE\00", [25 x i8] zeroinitializer }, align 32
@sctp_cmd_interpreter.__UNIQUE_ID_ddebug579 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.40, i8 1, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: vtag mismatch!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp: %s: vtag mismatch!\0A\00", [38 x i8] zeroinitializer }, align 32
@sctp_cmd_interpreter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.33, ptr @.str.2, i32 1789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014sctp: Impossible command: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@sctp_cmd_interpreter._entry_ptr = internal global ptr @sctp_cmd_interpreter._entry, section ".printk_index", align 4
@sctp_cmd_new_state.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_cmd_new_state\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: asoc:%p[%s]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sctp: %s: asoc:%p[%s]\0A\00", [41 x i8] zeroinitializer }, align 32
@sctp_cmd_t1_timer_update.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_cmd_t1_timer_update\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: T1[%s] timeout adjustment init_err_counter:%d cycle:%d timeout:%ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"sctp: %s: T1[%s] timeout adjustment init_err_counter:%d cycle:%d timeout:%ld\0A\00", [50 x i8] zeroinitializer }, align 32
@sctp_do_8_2_transport_strike.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sctp_do_8_2_transport_strike\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: association:%p transport addr:%pISpc failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sctp: %s: association:%p transport addr:%pISpc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [68 x i64] [i64 66, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 6]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 244, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 373, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 417, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 453, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 485, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"sctp_timer_events\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 515, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1146, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1162, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1164, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1169, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1750, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 279, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1203, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1232, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1237, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1242, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1248, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1451, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1461, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1578, i32 7 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1593, i32 7 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1637, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1788, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 870, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1092, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [28 x i8] c"../net/sctp/sm_sideeffect.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 592, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @sctp_cmd_interpreter._entry, ptr @sctp_cmd_interpreter._entry_ptr, ptr @sctp_side_effects._entry, ptr @sctp_side_effects._entry.24, ptr @sctp_side_effects._entry.27, ptr @sctp_side_effects._entry.30, ptr @sctp_side_effects._entry_ptr, ptr @sctp_side_effects._entry_ptr.26, ptr @sctp_side_effects._entry_ptr.29, ptr @sctp_side_effects._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sctp_timer_events, ptr @sctp_do_sm.table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_timer_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_do_sm.table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_side_effects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_side_effects._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_side_effects._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_side_effects._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_cmd_interpreter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_generate_t3_rtx_event(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -300
  %asoc1 = getelementptr i8, ptr %t, i32 -148
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %sk2 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #5
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !110

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1750, i32 noundef 9, ptr noundef null) #5
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end14, label %do.body

do.body:                                          ; preds = %sock_owned_by_user.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_generate_t3_rtx_event.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_generate_t3_rtx_event, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !111

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_generate_t3_rtx_event.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 5
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @sctp_transport_hold(ptr noundef %add.ptr) #5
  br label %out_unlock

if.end14:                                         ; preds = %sock_owned_by_user.exit
  %state = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep, align 4
  %call17 = tail call i32 @sctp_do_sm(ptr noundef %5, i32 noundef 2, [1 x i32] [i32 4], i32 noundef %11, ptr noundef %13, ptr noundef %1, ptr noundef %add.ptr, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end14.out_unlock_crit_edge, label %if.then19

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 0, %call17
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %14 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %sk_err, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then19, %if.end14.out_unlock_crit_edge, %if.then11, %do.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #5
  tail call void @sctp_transport_put(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_transport_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_do_sm(ptr noundef %net, i32 noundef %event_type, [1 x i32] %subtype.coerce, i32 noundef %state, ptr noundef %ep, ptr noundef %asoc, ptr noundef %event_arg, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %asoc.addr = alloca ptr, align 4
  %commands = alloca %struct.sctp_cmd_seq, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %asoc.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %asoc, ptr %asoc.addr, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @sctp_do_sm.table, i32 0, i32 %event_type
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %commands) #5
  %3 = call ptr @memset(ptr %commands, i32 255, i32 160)
  %call = tail call ptr @sctp_sm_lookup_event(ptr noundef %net, i32 noundef %event_type, i32 noundef %state, [1 x i32] %subtype.coerce) #5
  %add.ptr.i = getelementptr inbounds %struct.sctp_cmd, ptr %commands, i32 20
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %add.ptr.i, align 4
  %next_cmd.i = getelementptr inbounds %struct.sctp_cmd_seq, ptr %commands, i32 0, i32 2
  %5 = ptrtoint ptr %next_cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %next_cmd.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_do_sm.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_do_sm, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6 = getelementptr [0 x ptr], ptr @sctp_evttype_tbl, i32 0, i32 %event_type
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %call8 = call ptr %2([1 x i32] %subtype.coerce) #5
  %arrayidx9 = getelementptr [0 x ptr], ptr @sctp_state_tbl, i32 0, i32 %state
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %name = getelementptr inbounds %struct.sctp_sm_table_entry, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_do_sm.__UNIQUE_ID_ddebug573, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef %ep, ptr noundef %7, ptr noundef %call8, ptr noundef %asoc, ptr noundef %9, ptr noundef %11) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %call11 = call i32 %13(ptr noundef %net, ptr noundef %ep, ptr noundef %asoc, [1 x i32] %subtype.coerce, ptr noundef %event_arg, ptr noundef nonnull %commands) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_do_sm.__UNIQUE_ID_ddebug574, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_do_sm, %if.then24)) #5
          to label %do.end28 [label %if.then24], !srcloc !111

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25 = getelementptr [0 x ptr], ptr @sctp_status_tbl, i32 0, i32 %call11
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx25, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_do_sm.__UNIQUE_ID_ddebug574, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, ptr noundef %asoc, ptr noundef %15) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.end
  %call30 = call fastcc i32 @sctp_side_effects(i32 noundef %event_type, [1 x i32] %subtype.coerce, i32 noundef %state, ptr noundef %ep, ptr noundef nonnull %asoc.addr, ptr noundef %event_arg, i32 noundef %call11, ptr noundef nonnull %commands, i32 noundef %gfp)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_do_sm.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_do_sm, %if.then43)) #5
          to label %do.end52 [label %if.then43], !srcloc !111

if.then43:                                        ; preds = %do.end28
  %16 = ptrtoint ptr %asoc.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asoc.addr, align 4
  %tobool44.not = icmp eq ptr %17, null
  br i1 %tobool44.not, label %if.then43.cond.end_crit_edge, label %sctp_assoc2id.exit

if.then43.cond.end_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

sctp_assoc2id.exit:                               ; preds = %if.then43
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %18 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk, align 4
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %assoc_id.i, align 8
  %call46 = call ptr @sctp_id2assoc(ptr noundef %19, i32 noundef %21) #5
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %sctp_assoc2id.exit.cond.end_crit_edge, label %cond.true

sctp_assoc2id.exit.cond.end_crit_edge:            ; preds = %sctp_assoc2id.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %sctp_assoc2id.exit
  call void @__sanitizer_cov_trace_pc() #7
  %state48 = getelementptr inbounds %struct.sctp_association, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %state48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state48, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sctp_assoc2id.exit.cond.end_crit_edge, %if.then43.cond.end_crit_edge
  %cond = phi i32 [ %23, %cond.true ], [ 0, %sctp_assoc2id.exit.cond.end_crit_edge ], [ 0, %if.then43.cond.end_crit_edge ]
  %arrayidx49 = getelementptr [0 x ptr], ptr @sctp_state_tbl, i32 0, i32 %cond
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx49, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_do_sm.__UNIQUE_ID_ddebug575, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9, i32 noundef %call30, ptr noundef %17, ptr noundef %25) #5
  br label %do.end52

do.end52:                                         ; preds = %cond.end, %do.end28
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %commands) #5
  ret i32 %call30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_generate_heartbeat_event(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -348
  %asoc1 = getelementptr i8, ptr %t, i32 -196
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %sk2 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #5
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !110

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1750, i32 noundef 9, ptr noundef null) #5
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end14, label %do.body

do.body:                                          ; preds = %sock_owned_by_user.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_generate_heartbeat_event.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_generate_heartbeat_event, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !111

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_generate_heartbeat_event.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 5
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @sctp_transport_hold(ptr noundef %add.ptr) #5
  br label %out_unlock

if.end14:                                         ; preds = %sock_owned_by_user.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %last_time_sent = getelementptr i8, ptr %t, i32 -92
  %11 = ptrtoint ptr %last_time_sent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_time_sent, align 8
  %sub = sub i32 %10, %12
  %call15 = tail call i32 @sctp_transport_timeout(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %sub)
  %cmp = icmp ugt i32 %call15, %sub
  br i1 %cmp, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.end14
  %sub17 = sub i32 %call15, %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add19 = add i32 %sub17, %13
  %call20 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.then16.out_unlock_crit_edge

if.then16.out_unlock_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @sctp_transport_hold(ptr noundef %add.ptr) #5
  br label %out_unlock

if.end25:                                         ; preds = %if.end14
  %state = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep, align 4
  %call28 = tail call i32 @sctp_do_sm(ptr noundef %5, i32 noundef 2, [1 x i32] [i32 7], i32 noundef %15, ptr noundef %17, ptr noundef %1, ptr noundef %add.ptr, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end25.out_unlock_crit_edge, label %if.then30

if.end25.out_unlock_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %sub31 = sub i32 0, %call28
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %18 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub31, ptr %sk_err, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then30, %if.end25.out_unlock_crit_edge, %if.then22, %if.then16.out_unlock_crit_edge, %if.then11, %do.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #5
  tail call void @sctp_transport_put(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_transport_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_generate_proto_unreach_event(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -396
  %asoc1 = getelementptr i8, ptr %t, i32 -244
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %sk2 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #5
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !110

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1750, i32 noundef 9, ptr noundef null) #5
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end14, label %do.body

do.body:                                          ; preds = %sock_owned_by_user.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_generate_proto_unreach_event.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_generate_proto_unreach_event, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !111

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_generate_proto_unreach_event.__UNIQUE_ID_ddebug565, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 5
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @sctp_transport_hold(ptr noundef %add.ptr) #5
  br label %out_unlock

if.end14:                                         ; preds = %sock_owned_by_user.exit
  %dead = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dead, align 8, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_unlock_crit_edge

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep, align 4
  %call21 = tail call i32 @sctp_do_sm(ptr noundef %5, i32 noundef 3, [1 x i32] [i32 1], i32 noundef %13, ptr noundef %15, ptr noundef %1, ptr noundef %add.ptr, i32 noundef 2592)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end18, %if.end14.out_unlock_crit_edge, %if.then11, %do.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #5
  tail call void @sctp_transport_put(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_generate_reconf_event(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -444
  %asoc1 = getelementptr i8, ptr %t, i32 -292
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %sk2 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #5
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !110

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1750, i32 noundef 9, ptr noundef null) #5
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end14, label %do.body

do.body:                                          ; preds = %sock_owned_by_user.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_generate_reconf_event.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_generate_reconf_event, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !111

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_generate_reconf_event.__UNIQUE_ID_ddebug566, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 5
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @sctp_transport_hold(ptr noundef %add.ptr) #5
  br label %out_unlock

if.end14:                                         ; preds = %sock_owned_by_user.exit
  %state = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep, align 4
  %call17 = tail call i32 @sctp_do_sm(ptr noundef %5, i32 noundef 2, [1 x i32] [i32 8], i32 noundef %11, ptr noundef %13, ptr noundef %1, ptr noundef %add.ptr, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end14.out_unlock_crit_edge, label %if.then19

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 0, %call17
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %14 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %sk_err, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then19, %if.end14.out_unlock_crit_edge, %if.then11, %do.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #5
  tail call void @sctp_transport_put(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_generate_probe_event(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -492
  %asoc1 = getelementptr i8, ptr %t, i32 -340
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %sk2 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #5
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !110

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1750, i32 noundef 9, ptr noundef null) #5
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end14, label %do.body

do.body:                                          ; preds = %sock_owned_by_user.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_generate_probe_event.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_generate_probe_event, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !111

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_generate_probe_event.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 5
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @sctp_transport_hold(ptr noundef %add.ptr) #5
  br label %out_unlock

if.end14:                                         ; preds = %sock_owned_by_user.exit
  %state = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep, align 4
  %call17 = tail call i32 @sctp_do_sm(ptr noundef %5, i32 noundef 2, [1 x i32] [i32 9], i32 noundef %11, ptr noundef %13, ptr noundef %1, ptr noundef %add.ptr, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end14.out_unlock_crit_edge, label %if.then19

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 0, %call17
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %14 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %sk_err, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then19, %if.end14.out_unlock_crit_edge, %if.then11, %do.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #5
  tail call void @sctp_transport_put(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_generate_t1_cookie_event(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -636
  tail call fastcc void @sctp_generate_timeout_event(ptr noundef %add.ptr, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_generate_t1_init_event(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -684
  tail call fastcc void @sctp_generate_timeout_event(ptr noundef %add.ptr, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_generate_t2_shutdown_event(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -732
  tail call fastcc void @sctp_generate_timeout_event(ptr noundef %add.ptr, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_generate_t4_rto_event(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -828
  tail call fastcc void @sctp_generate_timeout_event(ptr noundef %add.ptr, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_generate_t5_shutdown_guard_event(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -876
  tail call fastcc void @sctp_generate_timeout_event(ptr noundef %add.ptr, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_generate_sack_event(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1068
  tail call fastcc void @sctp_generate_timeout_event(ptr noundef %add.ptr, i32 noundef 10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_generate_autoclose_event(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1116
  tail call fastcc void @sctp_generate_timeout_event(ptr noundef %add.ptr, i32 noundef 11)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_cname([1 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_tname([1 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_oname([1 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_pname([1 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_sm_lookup_event(ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_side_effects(i32 noundef %event_type, [1 x i32] %subtype.coerce, i32 noundef %state, ptr noundef %ep, ptr nocapture noundef %asoc, ptr noundef %event_arg, i32 noundef %status, ptr noundef %commands, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subtype.coerce.fca.0.extract = extractvalue [1 x i32] %subtype.coerce, 0
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %call = tail call fastcc i32 @sctp_cmd_interpreter(i32 noundef %event_type, [1 x i32] %subtype.coerce, ptr noundef %ep, ptr noundef %1, ptr noundef %event_arg, ptr noundef %commands, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.bail_crit_edge

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail

if.end:                                           ; preds = %entry
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %do.end42 [
    i32 0, label %do.body
    i32 2, label %sw.bb7
    i32 3, label %if.end.sw.bb8_crit_edge
    i32 4, label %if.end.sw.bb8_crit_edge69
    i32 1, label %if.end.bail_crit_edge
    i32 5, label %do.body10
    i32 6, label %do.end25
    i32 8, label %do.end31
  ]

if.end.bail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail

if.end.sw.bb8_crit_edge69:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_side_effects.__UNIQUE_ID_ddebug576, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_side_effects, %if.then5)) #5
          to label %bail [label %if.then5], !srcloc !111

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_side_effects.__UNIQUE_ID_ddebug576, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %state, i32 noundef %event_type, i32 noundef %subtype.coerce.fca.0.extract) #5
  br label %bail

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail

sw.bb8:                                           ; preds = %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge69
  %3 = ptrtoint ptr %asoc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %asoc, align 4
  br label %bail

do.body10:                                        ; preds = %if.end
  %call11 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body10.bail_crit_edge, label %do.end16

do.body10.bail_crit_edge:                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %state, i32 noundef %subtype.coerce.fca.0.extract) #8
  br label %bail

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %state, i32 noundef %event_type, i32 noundef %subtype.coerce.fca.0.extract) #8
  br label %bail

do.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %state, i32 noundef %event_type, i32 noundef %subtype.coerce.fca.0.extract) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/sm_sideeffect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1244, 0\0A.popsection", ""() #5, !srcloc !113
  unreachable

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %status, i32 noundef %state, i32 noundef %event_type, i32 noundef %subtype.coerce.fca.0.extract) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/sm_sideeffect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1250, 0\0A.popsection", ""() #5, !srcloc !114
  unreachable

bail:                                             ; preds = %do.end25, %do.end16, %do.body10.bail_crit_edge, %sw.bb8, %sw.bb7, %if.then5, %do.body, %if.end.bail_crit_edge, %entry.bail_crit_edge
  %error.0 = phi i32 [ %call, %entry.bail_crit_edge ], [ 0, %do.end25 ], [ 0, %do.end16 ], [ 0, %do.body10.bail_crit_edge ], [ 0, %if.end.bail_crit_edge ], [ 0, %sw.bb8 ], [ -12, %sw.bb7 ], [ 0, %if.then5 ], [ 0, %do.body ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_id2assoc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_generate_timeout_event(ptr noundef %asoc, i32 noundef %timeout_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #5
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !110

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1750, i32 noundef 9, ptr noundef null) #5
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end11, label %do.body

do.body:                                          ; preds = %sock_owned_by_user.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_generate_timeout_event.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_generate_timeout_event, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !111

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_generate_timeout_event.__UNIQUE_ID_ddebug563, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %timeout_type) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 %timeout_type
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 5
  %call7 = tail call i32 @mod_timer(ptr noundef %arrayidx, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sctp_association_hold(ptr noundef %asoc) #5
  br label %out_unlock

if.end11:                                         ; preds = %sock_owned_by_user.exit
  %dead = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 2
  %8 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dead, align 8, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_unlock_crit_edge

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end15:                                         ; preds = %if.end11
  %state = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep, align 4
  %14 = inttoptr i32 %timeout_type to ptr
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %timeout_type, 0
  %call18 = tail call i32 @sctp_do_sm(ptr noundef %3, i32 noundef 2, [1 x i32] %.fca.0.insert, i32 noundef %11, ptr noundef %13, ptr noundef %asoc, ptr noundef %14, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.out_unlock_crit_edge, label %if.then20

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 0, %call18
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %15 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %sk_err, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then20, %if.end15.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge, %if.then9, %do.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #5
  tail call void @sctp_association_put(ptr noundef %asoc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_cmd_interpreter(i32 noundef %event_type, [1 x i32] %subtype.coerce, ptr noundef %ep, ptr noundef %asoc, ptr noundef %event_arg, ptr noundef %commands, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %sackh = alloca %struct.sctp_sackhdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sackh) #5
  %2 = getelementptr inbounds %struct.sctp_sackhdr, ptr %sackh, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sctp_sackhdr, ptr %sackh, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sctp_sackhdr, ptr %sackh, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event_type)
  %cmp.not = icmp eq i32 %event_type, 2
  %spec.select = select i1 %cmp.not, ptr null, ptr %event_arg
  %next_cmd.i = getelementptr inbounds %struct.sctp_cmd_seq, ptr %commands, i32 0, i32 2
  %last_used_slot.i = getelementptr inbounds %struct.sctp_cmd_seq, ptr %commands, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event_type)
  %cmp.i116 = icmp eq i32 %event_type, 1
  %subtype.coerce.fca.0.extract.i = extractvalue [1 x i32] %subtype.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %subtype.coerce.fca.0.extract.i)
  %cmp1.i = icmp eq i32 %subtype.coerce.fca.0.extract.i, 6
  %or.cond.i = select i1 %cmp.i116, i1 %cmp1.i, i1 false
  %5 = call ptr @memset(ptr %sackh, i32 255, i32 12)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.while.cond_crit_edge, %entry
  %local_cork.0 = phi i32 [ 0, %entry ], [ %local_cork.6, %sw.epilog.while.cond_crit_edge ]
  %chunk.1 = phi ptr [ %spec.select, %entry ], [ %chunk.2, %sw.epilog.while.cond_crit_edge ]
  %asoc.addr.0 = phi ptr [ %asoc, %entry ], [ %asoc.addr.1, %sw.epilog.while.cond_crit_edge ]
  %6 = ptrtoint ptr %next_cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_cmd.i, align 4
  %8 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %last_used_slot.i, align 4
  %cmp.not.i = icmp ugt ptr %7, %9
  br i1 %cmp.not.i, label %sctp_next_cmd.exit, label %while.cond.while.end444_crit_edge

while.cond.while.end444_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end444

sctp_next_cmd.exit:                               ; preds = %while.cond
  %incdec.ptr.i = getelementptr %struct.sctp_cmd, ptr %7, i32 -1
  %10 = ptrtoint ptr %next_cmd.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %incdec.ptr.i, ptr %next_cmd.i, align 4
  %cmp2.not = icmp eq ptr %incdec.ptr.i, null
  br i1 %cmp2.not, label %sctp_next_cmd.exit.while.end444_crit_edge, label %while.body

sctp_next_cmd.exit.while.end444_crit_edge:        ; preds = %sctp_next_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end444

while.body:                                       ; preds = %sctp_next_cmd.exit
  %verb = getelementptr %struct.sctp_cmd, ptr %7, i32 -1, i32 1
  %11 = ptrtoint ptr %verb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %verb, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %12, label %do.end426 [
    i32 0, label %while.body.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 43, label %sw.bb16
    i32 2, label %sw.bb18
    i32 3, label %sw.bb23
    i32 4, label %sw.bb25
    i32 50, label %sw.bb29
    i32 51, label %sw.bb31
    i32 5, label %sw.bb36
    i32 6, label %sw.bb39
    i32 7, label %sw.bb42
    i32 8, label %sw.bb50
    i32 9, label %sw.bb53
    i32 42, label %sw.bb95
    i32 10, label %do.body106
    i32 11, label %do.body127
    i32 12, label %sw.bb150
    i32 13, label %sw.bb158
    i32 61, label %sw.bb161
    i32 14, label %sw.bb164
    i32 15, label %sw.bb167
    i32 16, label %sw.bb169
    i32 17, label %sw.bb180
    i32 44, label %sw.bb182
    i32 19, label %sw.bb184
    i32 18, label %while.body.sw.bb190_crit_edge
    i32 20, label %sw.bb221
    i32 21, label %sw.bb233
    i32 22, label %sw.bb241
    i32 25, label %sw.bb249
    i32 26, label %sw.bb255
    i32 27, label %sw.bb274
    i32 40, label %sw.bb276
    i32 24, label %sw.bb280
    i32 23, label %sw.bb283
    i32 28, label %sw.bb308
    i32 38, label %do.body313
    i32 29, label %sw.bb329
    i32 35, label %sw.bb331
    i32 34, label %sw.bb333
    i32 36, label %sw.bb335
    i32 30, label %sw.bb337
    i32 31, label %sw.bb338
    i32 32, label %sw.bb340
    i32 33, label %sw.bb341
    i32 37, label %sw.bb343
    i32 39, label %sw.bb345
    i32 41, label %sw.bb355
    i32 45, label %sw.bb363
    i32 46, label %sw.bb368
    i32 47, label %sw.bb372
    i32 48, label %sw.bb377
    i32 49, label %sw.bb379
    i32 52, label %sw.bb380
    i32 53, label %sw.bb382
    i32 54, label %sw.bb383
    i32 55, label %sw.bb384
    i32 56, label %sw.bb394
    i32 57, label %sw.bb396
    i32 58, label %sw.bb398
    i32 59, label %sw.bb399
    i32 60, label %sw.bb400
    i32 62, label %sw.bb402
    i32 63, label %sw.bb407
    i32 64, label %sw.bb415
    i32 65, label %sw.bb416
  ]

while.body.sw.bb190_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb190

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local_cork.0)
  %tobool.not = icmp eq i32 %local_cork.0, 0
  br i1 %tobool.not, label %sw.bb.if.end4_crit_edge, label %if.then3

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  call void @sctp_outq_uncork(ptr noundef %outqueue, i32 noundef %gfp) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %sw.bb.if.end4_crit_edge
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %incdec.ptr.i, align 4
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %15, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %primary_path, align 8
  %cmp5 = icmp eq ptr %17, null
  br i1 %cmp5, label %do.body9, label %do.end15, !prof !115

do.body9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/sm_sideeffect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1310, 0\0A.popsection", ""() #5, !srcloc !116
  unreachable

do.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_endpoint_add_asoc(ptr noundef %ep, ptr noundef %15) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %outqueue17 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  call void @sctp_outq_teardown(ptr noundef %outqueue17) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local_cork.0)
  %tobool19.not = icmp eq i32 %local_cork.0, 0
  br i1 %tobool19.not, label %sw.bb18.if.end22_crit_edge, label %if.then20

sw.bb18.if.end22_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then20:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %outqueue21 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  call void @sctp_outq_uncork(ptr noundef %outqueue21, i32 noundef %gfp) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %sw.bb18.if.end22_crit_edge
  %sk1.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc.addr.0, i32 0, i32 3
  %18 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk1.i, align 4
  %type.i.i = getelementptr inbounds %struct.sctp_sock, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.not.i = icmp eq i32 %21, 2
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.end22.if.end.i11_crit_edge

if.end22.if.end.i11_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i11

land.lhs.true.i:                                  ; preds = %if.end22
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %23)
  %cmp.i2.not.i = icmp eq i8 %23, 10
  br i1 %cmp.i2.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end.i11_crit_edge

land.lhs.true.i.if.end.i11_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i11

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %temp.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 78
  %24 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %temp.i, align 8
  %25 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool5.not.i = icmp eq i8 %25, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true4.i.if.end.i11_crit_edge

land.lhs.true4.i.if.end.i11_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i11

land.lhs.true6.i:                                 ; preds = %land.lhs.true4.i
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 66
  %26 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sk_shutdown.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp.not.i10 = icmp eq i8 %27, 3
  br i1 %cmp.not.i10, label %land.lhs.true6.i.if.end.i11_crit_edge, label %land.lhs.true6.i.sw.epilog_crit_edge

land.lhs.true6.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true6.i.if.end.i11_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i11

if.end.i11:                                       ; preds = %land.lhs.true6.i.if.end.i11_crit_edge, %land.lhs.true4.i.if.end.i11_crit_edge, %land.lhs.true.i.if.end.i11_crit_edge, %if.end22.if.end.i11_crit_edge
  call void @sctp_association_free(ptr noundef %asoc.addr.0) #5
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr.i, align 4
  call fastcc void @sctp_cmd_new_state(ptr noundef %asoc.addr.0, i32 noundef %29)
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 10
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr.i, align 4
  %call28 = call i32 @sctp_tsnmap_mark(ptr noundef %tsn_map, i32 noundef %31, ptr noundef null) #5
  br label %sw.epilog

sw.bb29:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %si = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %32 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %si, align 4
  %report_ftsn = getelementptr inbounds %struct.sctp_stream_interleave, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %report_ftsn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %report_ftsn, align 4
  %ulpq = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %36 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %incdec.ptr.i, align 4
  call void %35(ptr noundef %ulpq, i32 noundef %37) #5
  br label %sw.epilog

sw.bb31:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %si33 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %38 = ptrtoint ptr %si33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %si33, align 4
  %handle_ftsn = getelementptr inbounds %struct.sctp_stream_interleave, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %handle_ftsn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle_ftsn, align 4
  %ulpq34 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %42 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %incdec.ptr.i, align 4
  call void %41(ptr noundef %ulpq34, ptr noundef %43) #5
  br label %sw.epilog

sw.bb36:                                          ; preds = %while.body
  %44 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %incdec.ptr.i, align 4
  %last_data_from.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 9
  %46 = ptrtoint ptr %last_data_from.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %last_data_from.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb36.if.then.i_crit_edge

sw.bb36.if.then.i_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb36
  %tobool1.not.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i, label %land.lhs.true.i12, label %land.lhs.true5.critedge.i

land.lhs.true.i12:                                ; preds = %lor.lhs.false.i
  %param_flags.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 27
  %48 = ptrtoint ptr %param_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %param_flags.i, align 8
  %and.i = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i12.if.end.i15_crit_edge, label %land.lhs.true.i12.if.then.i_crit_edge

land.lhs.true.i12.if.then.i_crit_edge:            ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

land.lhs.true.i12.if.end.i15_crit_edge:           ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i15

land.lhs.true5.critedge.i:                        ; preds = %lor.lhs.false.i
  %param_flags6.i = getelementptr inbounds %struct.sctp_transport, ptr %47, i32 0, i32 35
  %50 = ptrtoint ptr %param_flags6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %param_flags6.i, align 4
  %and7.i = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true5.critedge.i.if.end.i15_crit_edge, label %land.lhs.true5.critedge.i.if.then.i_crit_edge

land.lhs.true5.critedge.i.if.then.i_crit_edge:    ; preds = %land.lhs.true5.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

land.lhs.true5.critedge.i.if.end.i15_crit_edge:   ; preds = %land.lhs.true5.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i15

if.then.i:                                        ; preds = %land.lhs.true5.critedge.i.if.then.i_crit_edge, %land.lhs.true.i12.if.then.i_crit_edge, %sw.bb36.if.then.i_crit_edge
  %sack_needed.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 12
  %52 = ptrtoint ptr %sack_needed.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i13 = load i16, ptr %sack_needed.i, align 2
  %bf.set.i = or i16 %bf.load.i13, 64
  store i16 %bf.set.i, ptr %sack_needed.i, align 2
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then.i, %land.lhs.true5.critedge.i.if.end.i15_crit_edge, %land.lhs.true.i12.if.end.i15_crit_edge
  %cumulative_tsn_ack_point.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 10, i32 2
  %53 = ptrtoint ptr %cumulative_tsn_ack_point.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cumulative_tsn_ack_point.i.i, align 4
  %max_tsn_seen.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 10, i32 3
  %55 = ptrtoint ptr %max_tsn_seen.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_tsn_seen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %54)
  %cmp.not.i14 = icmp eq i32 %56, %54
  br i1 %cmp.not.i14, label %if.end.i15.if.end20.i_crit_edge, label %if.then14.i

if.end.i15.if.end20.i_crit_edge:                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  %sack_needed16.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 12
  %57 = ptrtoint ptr %sack_needed16.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load17.i = load i16, ptr %sack_needed16.i, align 2
  %bf.set19.i = or i16 %bf.load17.i, 64
  store i16 %bf.set19.i, ptr %sack_needed16.i, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.end.i15.if.end20.i_crit_edge
  %sack_needed22.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 12
  %58 = ptrtoint ptr %sack_needed22.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load23.i = load i16, ptr %sack_needed22.i, align 2
  %59 = and i16 %bf.load23.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool25.not.i = icmp eq i16 %59, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.else58.i

if.then26.i:                                      ; preds = %if.end20.i
  %sack_cnt.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 13
  %60 = ptrtoint ptr %sack_cnt.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sack_cnt.i, align 4
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %sack_cnt.i, align 4
  %tobool28.not.i = icmp eq ptr %47, null
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then26.i
  %sackfreq.i = getelementptr inbounds %struct.sctp_transport, ptr %47, i32 0, i32 23
  %62 = ptrtoint ptr %sackfreq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sackfreq.i, align 4
  %sub.i = add i32 %63, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %sub.i)
  %cmp32.not.i = icmp ult i32 %inc.i, %sub.i
  br i1 %cmp32.not.i, label %if.then29.i.if.end39.i_crit_edge, label %if.then33.i

if.then29.i.if.end39.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.then33.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set38.i = or i16 %bf.load23.i, 64
  %64 = ptrtoint ptr %sack_needed22.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %bf.set38.i, ptr %sack_needed22.i, align 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then33.i, %if.then29.i.if.end39.i_crit_edge
  %sackdelay.i = getelementptr inbounds %struct.sctp_transport, ptr %47, i32 0, i32 22
  br label %if.end55.i

if.else.i:                                        ; preds = %if.then26.i
  %sackfreq42.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 28
  %65 = ptrtoint ptr %sackfreq42.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sackfreq42.i, align 4
  %sub43.i = add i32 %66, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %sub43.i)
  %cmp44.not.i = icmp ult i32 %inc.i, %sub43.i
  br i1 %cmp44.not.i, label %if.else.i.if.end51.i_crit_edge, label %if.then45.i

if.else.i.if.end51.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set50.i = or i16 %bf.load23.i, 64
  %67 = ptrtoint ptr %sack_needed22.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %bf.set50.i, ptr %sack_needed22.i, align 2
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then45.i, %if.else.i.if.end51.i_crit_edge
  %sackdelay52.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 29
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end51.i, %if.end39.i
  %sackdelay52.sink.i = phi ptr [ %sackdelay52.i, %if.end51.i ], [ %sackdelay.i, %if.end39.i ]
  %68 = ptrtoint ptr %sackdelay52.sink.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sackdelay52.sink.i, align 8
  %arrayidx54.i = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 30, i32 10
  %70 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx54.i, align 4
  %71 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i.i = getelementptr %struct.sctp_cmd, ptr %72, i32 -1
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %commands
  br i1 %cmp.i.i, label %do.body2.i.i, label %sctp_add_cmd_sf.exit.i, !prof !115

do.body2.i.i:                                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit.i:                           ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  %verb8.i.i = getelementptr %struct.sctp_cmd, ptr %72, i32 -1, i32 1
  %73 = ptrtoint ptr %verb8.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 20, ptr %verb8.i.i, align 4
  %74 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 10, ptr %add.ptr.i.i, align 4
  %75 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.i.i, ptr %last_used_slot.i, align 4
  br label %sw.epilog

if.else58.i:                                      ; preds = %if.end20.i
  %a_rwnd.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 44
  %76 = ptrtoint ptr %a_rwnd.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %a_rwnd.i, align 8
  %rwnd.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 43
  %78 = ptrtoint ptr %rwnd.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rwnd.i, align 4
  store i32 %79, ptr %a_rwnd.i, align 8
  %call60.i = call ptr @sctp_make_sack(ptr noundef %asoc.addr.0) #5
  %tobool61.not.i = icmp eq ptr %call60.i, null
  br i1 %tobool61.not.i, label %cleanup.i, label %if.end64.i

if.end64.i:                                       ; preds = %if.else58.i
  %80 = ptrtoint ptr %sack_needed22.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load67.i = load i16, ptr %sack_needed22.i, align 2
  %bf.clear68.i = and i16 %bf.load67.i, -65
  store i16 %bf.clear68.i, ptr %sack_needed22.i, align 2
  %sack_cnt71.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 13
  %81 = ptrtoint ptr %sack_cnt71.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %sack_cnt71.i, align 4
  %82 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i123.i = getelementptr %struct.sctp_cmd, ptr %83, i32 -1
  %cmp.i124.i = icmp ult ptr %add.ptr.i123.i, %commands
  br i1 %cmp.i124.i, label %do.body2.i125.i, label %sctp_add_cmd_sf.exit127.i, !prof !115

do.body2.i125.i:                                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit127.i:                        ; preds = %if.end64.i
  %coerce.val.pi.i.i = ptrtoint ptr %call60.i to i32
  %verb8.i126.i = getelementptr %struct.sctp_cmd, ptr %83, i32 -1, i32 1
  %84 = ptrtoint ptr %verb8.i126.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 12, ptr %verb8.i126.i, align 4
  %85 = ptrtoint ptr %add.ptr.i123.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %coerce.val.pi.i.i, ptr %add.ptr.i123.i, align 4
  %86 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr.i123.i, ptr %last_used_slot.i, align 4
  %add.ptr.i129.i = getelementptr %struct.sctp_cmd, ptr %83, i32 -2
  %cmp.i130.i = icmp ult ptr %add.ptr.i129.i, %commands
  br i1 %cmp.i130.i, label %do.body2.i131.i, label %88, !prof !115

do.body2.i131.i:                                  ; preds = %sctp_add_cmd_sf.exit127.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

cleanup.i:                                        ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #7
  %a_rwnd.i.le = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 44
  %87 = ptrtoint ptr %a_rwnd.i.le to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %77, ptr %a_rwnd.i.le, align 8
  br label %if.then431

88:                                               ; preds = %sctp_add_cmd_sf.exit127.i
  call void @__sanitizer_cov_trace_pc() #7
  %verb8.i132.i = getelementptr %struct.sctp_cmd, ptr %83, i32 -2, i32 1
  %89 = ptrtoint ptr %verb8.i132.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 21, ptr %verb8.i132.i, align 4
  %90 = ptrtoint ptr %add.ptr.i129.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 10, ptr %add.ptr.i129.i, align 4
  %91 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i129.i, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %while.body
  %92 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %incdec.ptr.i, align 4
  %outqueue.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  %call.i = call i32 @sctp_outq_sack(ptr noundef %outqueue.i, ptr noundef %93) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i17 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i17, label %sw.bb39.sw.epilog_crit_edge, label %if.then.i18

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i18:                                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  %net.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc.addr.0, i32 0, i32 4
  %94 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %net.i, align 8
  %state.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 6
  %96 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %state.i, align 4
  %ep.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 3
  %98 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ep.i, align 4
  %call3.i = call i32 @sctp_do_sm(ptr noundef %95, i32 noundef 3, [1 x i32] zeroinitializer, i32 noundef %97, ptr noundef %99, ptr noundef %asoc.addr.0, ptr noundef null, i32 noundef 2592) #5
  br label %sw.epilog

sw.bb42:                                          ; preds = %while.body
  %call43 = call ptr @sctp_make_init_ack(ptr noundef %asoc.addr.0, ptr noundef %chunk.1, i32 noundef 2592, i32 noundef 0) #5
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %sw.bb42.if.then431_crit_edge, label %if.end46

sw.bb42.if.then431_crit_edge:                     ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then431

if.end46:                                         ; preds = %sw.bb42
  %100 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i = getelementptr %struct.sctp_cmd, ptr %101, i32 -1
  %cmp.i = icmp ult ptr %add.ptr.i, %commands
  br i1 %cmp.i, label %do.body2.i, label %sctp_add_cmd_sf.exit, !prof !115

do.body2.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit:                             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %coerce.val.pi.i = ptrtoint ptr %call43 to i32
  %verb8.i = getelementptr %struct.sctp_cmd, ptr %101, i32 -1, i32 1
  %102 = ptrtoint ptr %verb8.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 12, ptr %verb8.i, align 4
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %coerce.val.pi.i, ptr %add.ptr.i, align 4
  %104 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr.i, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %while.body
  %105 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %incdec.ptr.i, align 4
  %call.i21 = call ptr @sctp_source(ptr noundef %chunk.1) #5
  %call1.i22 = call i32 @sctp_process_init(ptr noundef %asoc.addr.0, ptr noundef %chunk.1, ptr noundef %call.i21, ptr noundef %106, i32 noundef %gfp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %sw.bb50.if.then431_crit_edge, label %sw.bb50.sw.epilog_crit_edge

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb50.if.then431_crit_edge:                     ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then431

sw.bb53:                                          ; preds = %while.body
  %call54 = call ptr @sctp_make_cookie_echo(ptr noundef %asoc.addr.0, ptr noundef %chunk.1) #5
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.then56, label %if.end62

if.then56:                                        ; preds = %sw.bb53
  %107 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool58.not = icmp eq ptr %108, null
  br i1 %tobool58.not, label %if.then56.if.then431_crit_edge, label %if.then59

if.then56.if.then431_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then431

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_chunk_free(ptr noundef nonnull %108) #5
  br label %if.then431

if.end62:                                         ; preds = %sw.bb53
  %109 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i26 = getelementptr %struct.sctp_cmd, ptr %110, i32 -1
  %cmp.i27 = icmp ult ptr %add.ptr.i26, %commands
  br i1 %cmp.i27, label %do.body2.i28, label %sctp_add_cmd_sf.exit30, !prof !115

do.body2.i28:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit30:                           ; preds = %if.end62
  %coerce.val.pi.i24 = ptrtoint ptr %call54 to i32
  %verb8.i29 = getelementptr %struct.sctp_cmd, ptr %110, i32 -1, i32 1
  %111 = ptrtoint ptr %verb8.i29 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 12, ptr %verb8.i29, align 4
  %112 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %coerce.val.pi.i24, ptr %add.ptr.i26, align 4
  %113 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %add.ptr.i26, ptr %last_used_slot.i, align 4
  %114 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool69.not = icmp eq ptr %115, null
  br i1 %tobool69.not, label %sctp_add_cmd_sf.exit30.if.end77_crit_edge, label %if.then70

sctp_add_cmd_sf.exit30.if.end77_crit_edge:        ; preds = %sctp_add_cmd_sf.exit30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then70:                                        ; preds = %sctp_add_cmd_sf.exit30
  %add.ptr.i33 = getelementptr %struct.sctp_cmd, ptr %110, i32 -2
  %cmp.i34 = icmp ult ptr %add.ptr.i33, %commands
  br i1 %cmp.i34, label %do.body2.i35, label %sctp_add_cmd_sf.exit37, !prof !115

do.body2.i35:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit37:                           ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  %coerce.val.pi.i31 = ptrtoint ptr %115 to i32
  %verb8.i36 = getelementptr %struct.sctp_cmd, ptr %110, i32 -2, i32 1
  %116 = ptrtoint ptr %verb8.i36 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 12, ptr %verb8.i36, align 4
  %117 = ptrtoint ptr %add.ptr.i33 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %coerce.val.pi.i31, ptr %add.ptr.i33, align 4
  %118 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr.i33, ptr %last_used_slot.i, align 4
  br label %if.end77

if.end77:                                         ; preds = %sctp_add_cmd_sf.exit37, %sctp_add_cmd_sf.exit30.if.end77_crit_edge
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %call54, i32 0, i32 19
  %119 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %transport, align 4
  %tobool78.not = icmp eq ptr %120, null
  br i1 %tobool78.not, label %if.end77.if.end82_crit_edge, label %if.then79

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %init_sent_count = getelementptr inbounds %struct.sctp_transport, ptr %120, i32 0, i32 36
  %121 = ptrtoint ptr %init_sent_count to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %init_sent_count, align 8
  %inc = add i32 %122, 1
  store i32 %inc, ptr %init_sent_count, align 8
  %123 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %transport, align 4
  %init_last_sent_to = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 33
  %125 = ptrtoint ptr %init_last_sent_to to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %init_last_sent_to, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end77.if.end82_crit_edge
  %retran_path = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 7
  %126 = ptrtoint ptr %retran_path to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %retran_path, align 4
  %primary_path85 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 4
  %128 = ptrtoint ptr %primary_path85 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %primary_path85, align 8
  %cmp86.not = icmp eq ptr %127, %129
  br i1 %cmp86.not, label %if.end82.sw.epilog_crit_edge, label %land.lhs.true

if.end82.sw.epilog_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end82
  %init_err_counter = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 52
  %130 = ptrtoint ptr %init_err_counter to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %init_err_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp87 = icmp sgt i32 %131, 0
  br i1 %cmp87, label %if.then88, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then88:                                        ; preds = %land.lhs.true
  %132 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i39 = getelementptr %struct.sctp_cmd, ptr %133, i32 -1
  %cmp.i40 = icmp ult ptr %add.ptr.i39, %commands
  br i1 %cmp.i40, label %do.body2.i41, label %sctp_add_cmd_sf.exit43, !prof !115

do.body2.i41:                                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit43:                           ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  %verb8.i42 = getelementptr %struct.sctp_cmd, ptr %133, i32 -1, i32 1
  %134 = ptrtoint ptr %verb8.i42 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 55, ptr %verb8.i42, align 4
  %135 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %add.ptr.i39, align 4
  %136 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %add.ptr.i39, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb95:                                          ; preds = %while.body
  %overall_error_count = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 7
  %137 = ptrtoint ptr %overall_error_count to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %overall_error_count, align 8
  %call96 = call ptr @sctp_make_shutdown(ptr noundef %asoc.addr.0, ptr noundef %chunk.1) #5
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %sw.bb95.if.then431_crit_edge, label %if.end99

sw.bb95.if.then431_crit_edge:                     ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then431

if.end99:                                         ; preds = %sw.bb95
  %138 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i46 = getelementptr %struct.sctp_cmd, ptr %139, i32 -1
  %cmp.i47 = icmp ult ptr %add.ptr.i46, %commands
  br i1 %cmp.i47, label %do.body2.i48, label %sctp_add_cmd_sf.exit50, !prof !115

do.body2.i48:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit50:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  %coerce.val.pi.i44 = ptrtoint ptr %call96 to i32
  %verb8.i49 = getelementptr %struct.sctp_cmd, ptr %139, i32 -1, i32 1
  %140 = ptrtoint ptr %verb8.i49 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 12, ptr %verb8.i49, align 4
  %141 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %coerce.val.pi.i44, ptr %add.ptr.i46, align 4
  %142 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %add.ptr.i46, ptr %last_used_slot.i, align 4
  br label %sw.epilog

do.body106:                                       ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_cmd_interpreter.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_cmd_interpreter, %if.then115)) #5
          to label %do.end120 [label %if.then115], !srcloc !111

if.then115:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #7
  %143 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %incdec.ptr.i, align 4
  %ulpq117 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_cmd_interpreter.__UNIQUE_ID_ddebug577, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, ptr noundef %144, ptr noundef %ulpq117) #5
  br label %do.end120

do.end120:                                        ; preds = %if.then115, %do.body106
  %si122 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %145 = ptrtoint ptr %si122 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %si122, align 4
  %ulpevent_data = getelementptr inbounds %struct.sctp_stream_interleave, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %ulpevent_data to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ulpevent_data, align 4
  %ulpq123 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %149 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %incdec.ptr.i, align 4
  %call125 = call i32 %148(ptr noundef %ulpq123, ptr noundef %150, i32 noundef 2592) #5
  br label %sw.epilog

do.body127:                                       ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_cmd_interpreter.__UNIQUE_ID_ddebug578, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_cmd_interpreter, %if.then139)) #5
          to label %do.end144 [label %if.then139], !srcloc !111

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #7
  %151 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %incdec.ptr.i, align 4
  %ulpq141 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_cmd_interpreter.__UNIQUE_ID_ddebug578, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33, ptr noundef %152, ptr noundef %ulpq141) #5
  br label %do.end144

do.end144:                                        ; preds = %if.then139, %do.body127
  %si146 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %153 = ptrtoint ptr %si146 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %si146, align 4
  %enqueue_event = getelementptr inbounds %struct.sctp_stream_interleave, ptr %154, i32 0, i32 6
  %155 = ptrtoint ptr %enqueue_event to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %enqueue_event, align 4
  %ulpq147 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %157 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %incdec.ptr.i, align 4
  %call149 = call i32 %156(ptr noundef %ulpq147, ptr noundef %158) #5
  br label %sw.epilog

sw.bb150:                                         ; preds = %while.body
  %outqueue151 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  %cork = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61, i32 11
  %159 = ptrtoint ptr %cork to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %cork, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool152.not = icmp eq i8 %160, 0
  br i1 %tobool152.not, label %if.then153, label %sw.bb150.if.end155_crit_edge

sw.bb150.if.end155_crit_edge:                     ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

if.then153:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #7
  %161 = ptrtoint ptr %cork to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %cork, align 1
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %sw.bb150.if.end155_crit_edge
  %local_cork.3 = phi i32 [ %local_cork.0, %sw.bb150.if.end155_crit_edge ], [ 1, %if.then153 ]
  %162 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %incdec.ptr.i, align 4
  call void @sctp_outq_tail(ptr noundef %outqueue151, ptr noundef %163, i32 noundef %gfp) #5
  br label %sw.epilog

sw.bb158:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %incdec.ptr.i, align 4
  %call160 = call i32 @sctp_packet_transmit(ptr noundef %165, i32 noundef %gfp) #5
  call void @sctp_ootb_pkt_free(ptr noundef %165) #5
  br label %sw.epilog

sw.bb161:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %outqueue162 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  %166 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %incdec.ptr.i, align 4
  call void @sctp_retransmit(ptr noundef %outqueue162, ptr noundef %167, i32 noundef 3) #5
  br label %sw.epilog

sw.bb164:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %outqueue165 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  %168 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %incdec.ptr.i, align 4
  call void @sctp_retransmit(ptr noundef %outqueue165, ptr noundef %169, i32 noundef 0) #5
  br label %sw.epilog

sw.bb167:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %incdec.ptr.i, align 4
  %last_ecne_tsn.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 63
  %172 = ptrtoint ptr %last_ecne_tsn.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %last_ecne_tsn.i, align 4
  %need_ecne.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 78
  %173 = ptrtoint ptr %need_ecne.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %bf.load.i51 = load i8, ptr %need_ecne.i, align 8
  %bf.set.i52 = or i8 %bf.load.i51, -128
  store i8 %bf.set.i52, ptr %need_ecne.i, align 8
  br label %sw.epilog

sw.bb169:                                         ; preds = %while.body
  %174 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %incdec.ptr.i, align 4
  %last_cwr_tsn.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 64
  %176 = ptrtoint ptr %last_cwr_tsn.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %last_cwr_tsn.i, align 8
  %sub.i53 = sub i32 %177, %175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i53)
  %cmp.i54 = icmp slt i32 %sub.i53, 0
  br i1 %cmp.i54, label %if.then.i57, label %sw.bb169.sctp_do_ecn_ecne_work.exit_crit_edge

sw.bb169.sctp_do_ecn_ecne_work.exit_crit_edge:    ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_do_ecn_ecne_work.exit

if.then.i57:                                      ; preds = %sw.bb169
  %call.i55 = call ptr @sctp_assoc_lookup_tsn(ptr noundef %asoc.addr.0, i32 noundef %175) #5
  %tobool.not.i56 = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i56, label %if.then.i57.if.end.i58_crit_edge, label %if.then1.i

if.then.i57.if.end.i58_crit_edge:                 ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i58

if.then1.i:                                       ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_transport_lower_cwnd(ptr noundef nonnull %call.i55, i32 noundef 2) #5
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.then1.i, %if.then.i57.if.end.i58_crit_edge
  %178 = ptrtoint ptr %last_cwr_tsn.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %175, ptr %last_cwr_tsn.i, align 8
  br label %sctp_do_ecn_ecne_work.exit

sctp_do_ecn_ecne_work.exit:                       ; preds = %if.end.i58, %sw.bb169.sctp_do_ecn_ecne_work.exit_crit_edge
  %179 = ptrtoint ptr %last_cwr_tsn.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %last_cwr_tsn.i, align 8
  %call5.i = call ptr @sctp_make_cwr(ptr noundef %asoc.addr.0, i32 noundef %180, ptr noundef %chunk.1) #5
  %tobool172.not = icmp eq ptr %call5.i, null
  br i1 %tobool172.not, label %sctp_do_ecn_ecne_work.exit.sw.epilog_crit_edge, label %if.then173

sctp_do_ecn_ecne_work.exit.sw.epilog_crit_edge:   ; preds = %sctp_do_ecn_ecne_work.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then173:                                       ; preds = %sctp_do_ecn_ecne_work.exit
  %181 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i61 = getelementptr %struct.sctp_cmd, ptr %182, i32 -1
  %cmp.i62 = icmp ult ptr %add.ptr.i61, %commands
  br i1 %cmp.i62, label %do.body2.i63, label %sctp_add_cmd_sf.exit65, !prof !115

do.body2.i63:                                     ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit65:                           ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #7
  %coerce.val.pi.i59 = ptrtoint ptr %call5.i to i32
  %verb8.i64 = getelementptr %struct.sctp_cmd, ptr %182, i32 -1, i32 1
  %183 = ptrtoint ptr %verb8.i64 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 12, ptr %verb8.i64, align 4
  %184 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %coerce.val.pi.i59, ptr %add.ptr.i61, align 4
  %185 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %add.ptr.i61, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb180:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %need_ecne.i66 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 78
  %186 = ptrtoint ptr %need_ecne.i66 to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load.i67 = load i8, ptr %need_ecne.i66, align 8
  %bf.clear.i = and i8 %bf.load.i67, 127
  store i8 %bf.clear.i, ptr %need_ecne.i66, align 8
  br label %sw.epilog

sw.bb182:                                         ; preds = %while.body
  %187 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %incdec.ptr.i, align 4
  %transport.i = getelementptr inbounds %struct.sctp_chunk, ptr %188, i32 0, i32 19
  %189 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %transport.i, align 4
  %tobool.not.i68 = icmp eq ptr %190, null
  br i1 %tobool.not.i68, label %if.else.i70, label %sw.bb182.sctp_cmd_setup_t2.exit_crit_edge

sw.bb182.sctp_cmd_setup_t2.exit_crit_edge:        ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_cmd_setup_t2.exit

if.else.i70:                                      ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #7
  %shutdown_last_sent_to.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 32
  %191 = ptrtoint ptr %shutdown_last_sent_to.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %shutdown_last_sent_to.i, align 4
  %call.i69 = call ptr @sctp_assoc_choose_alter_transport(ptr noundef %asoc.addr.0, ptr noundef %192) #5
  %193 = ptrtoint ptr %transport.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %call.i69, ptr %transport.i, align 4
  br label %sctp_cmd_setup_t2.exit

sctp_cmd_setup_t2.exit:                           ; preds = %if.else.i70, %sw.bb182.sctp_cmd_setup_t2.exit_crit_edge
  %t.0.i = phi ptr [ %call.i69, %if.else.i70 ], [ %190, %sw.bb182.sctp_cmd_setup_t2.exit_crit_edge ]
  %shutdown_last_sent_to3.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 32
  %194 = ptrtoint ptr %shutdown_last_sent_to3.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %t.0.i, ptr %shutdown_last_sent_to3.i, align 4
  %rto.i = getelementptr inbounds %struct.sctp_transport, ptr %t.0.i, i32 0, i32 9
  %195 = ptrtoint ptr %rto.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %rto.i, align 4
  %arrayidx.i = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 30, i32 3
  %197 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %arrayidx.i, align 4
  br label %sw.epilog

sw.bb184:                                         ; preds = %while.body
  %198 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %incdec.ptr.i, align 4
  %pprev.i.i = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 31, i32 %199, i32 0, i32 1
  %200 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %201, null
  br i1 %tobool.not.i.i.not, label %sw.bb184.sw.bb190_crit_edge, label %sw.bb184.sw.epilog_crit_edge

sw.bb184.sw.epilog_crit_edge:                     ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb184.sw.bb190_crit_edge:                      ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb190

sw.bb190:                                         ; preds = %sw.bb184.sw.bb190_crit_edge, %while.body.sw.bb190_crit_edge
  %202 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %incdec.ptr.i, align 4
  %arrayidx193 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 31, i32 %203
  %arrayidx195 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 30, i32 %203
  %204 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool197.not = icmp eq i32 %205, 0
  br i1 %tobool197.not, label %do.body207, label %do.end215, !prof !115

do.body207:                                       ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/sm_sideeffect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1530, 0\0A.popsection", ""() #5, !srcloc !118
  unreachable

do.end215:                                        ; preds = %sw.bb190
  %pprev.i.i72 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx193, i32 0, i32 1
  %206 = ptrtoint ptr %pprev.i.i72 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile ptr, ptr %pprev.i.i72, align 4
  %tobool.not.i.i73.not = icmp eq ptr %207, null
  br i1 %tobool.not.i.i73.not, label %if.then218, label %do.end215.if.end219_crit_edge

do.end215.if.end219_crit_edge:                    ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

if.then218:                                       ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_association_hold(ptr noundef %asoc.addr.0) #5
  br label %if.end219

if.end219:                                        ; preds = %if.then218, %do.end215.if.end219_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %208 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %208, %205
  %call220 = call i32 @timer_reduce(ptr noundef %arrayidx193, i32 noundef %add) #5
  br label %sw.epilog

sw.bb221:                                         ; preds = %while.body
  %209 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %incdec.ptr.i, align 4
  %arrayidx224 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 31, i32 %210
  %arrayidx227 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 30, i32 %210
  %211 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx227, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %213 = load volatile i32, ptr @jiffies, align 128
  %add228 = add i32 %213, %212
  %call229 = call i32 @mod_timer(ptr noundef %arrayidx224, i32 noundef %add228) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then231, label %sw.bb221.sw.epilog_crit_edge

sw.bb221.sw.epilog_crit_edge:                     ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then231:                                       ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_association_hold(ptr noundef %asoc.addr.0) #5
  br label %sw.epilog

sw.bb233:                                         ; preds = %while.body
  %214 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %incdec.ptr.i, align 4
  %arrayidx236 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 31, i32 %215
  %call237 = call i32 @del_timer(ptr noundef %arrayidx236) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %sw.bb233.sw.epilog_crit_edge, label %if.then239

sw.bb233.sw.epilog_crit_edge:                     ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then239:                                       ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_association_put(ptr noundef %asoc.addr.0) #5
  br label %sw.epilog

sw.bb241:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %216 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %incdec.ptr.i, align 4
  %init_last_sent_to243 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 33
  %218 = ptrtoint ptr %init_last_sent_to243 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %init_last_sent_to243, align 8
  %call244 = call ptr @sctp_assoc_choose_alter_transport(ptr noundef %asoc.addr.0, ptr noundef %219) #5
  %220 = ptrtoint ptr %init_last_sent_to243 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call244, ptr %init_last_sent_to243, align 8
  %transport246 = getelementptr inbounds %struct.sctp_chunk, ptr %217, i32 0, i32 19
  %221 = ptrtoint ptr %transport246 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call244, ptr %transport246, align 4
  %init_sent_count247 = getelementptr inbounds %struct.sctp_transport, ptr %call244, i32 0, i32 36
  %222 = ptrtoint ptr %init_sent_count247 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %init_sent_count247, align 8
  %inc248 = add i32 %223, 1
  store i32 %inc248, ptr %init_sent_count247, align 8
  call void @sctp_assoc_set_primary(ptr noundef %asoc.addr.0, ptr noundef %call244) #5
  br label %sw.epilog

sw.bb249:                                         ; preds = %while.body
  %init_last_sent_to.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 33
  %224 = ptrtoint ptr %init_last_sent_to.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %init_last_sent_to.i, align 8
  %init_err_counter.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 52
  %226 = ptrtoint ptr %init_err_counter.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %init_err_counter.i, align 8
  %inc.i75 = add i32 %227, 1
  store i32 %inc.i75, ptr %init_err_counter.i, align 8
  %init_sent_count.i = getelementptr inbounds %struct.sctp_transport, ptr %225, i32 0, i32 36
  %228 = ptrtoint ptr %init_sent_count.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %init_sent_count.i, align 8
  %init_cycle.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 53
  %230 = ptrtoint ptr %init_cycle.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %init_cycle.i, align 4
  %add.i = add i32 %231, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %add.i)
  %cmp.i76 = icmp sgt i32 %229, %add.i
  br i1 %cmp.i76, label %if.then.i78, label %sw.bb249.sctp_cmd_t1_timer_update.exit_crit_edge

sw.bb249.sctp_cmd_t1_timer_update.exit_crit_edge: ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_cmd_t1_timer_update.exit

if.then.i78:                                      ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i77 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 30, i32 2
  %232 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx.i77, align 4
  %mul.i = shl i32 %233, 1
  %max_init_timeo.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 18
  %234 = ptrtoint ptr %max_init_timeo.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %max_init_timeo.i, align 4
  %236 = call i32 @llvm.umin.i32(i32 %mul.i, i32 %235) #5
  %237 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %arrayidx.i77, align 4
  %238 = ptrtoint ptr %init_cycle.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %add.i, ptr %init_cycle.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_cmd_t1_timer_update.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_cmd_interpreter, %if.then12.i)) #5
          to label %sctp_cmd_t1_timer_update.exit [label %if.then12.i], !srcloc !111

if.then12.i:                                      ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #7
  %239 = ptrtoint ptr %init_err_counter.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %init_err_counter.i, align 8
  %241 = ptrtoint ptr %init_cycle.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %init_cycle.i, align 4
  %243 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx.i77, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_cmd_t1_timer_update.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38, i32 noundef %240, i32 noundef %242, i32 noundef %244) #5
  br label %sctp_cmd_t1_timer_update.exit

sctp_cmd_t1_timer_update.exit:                    ; preds = %if.then12.i, %if.then.i78, %sw.bb249.sctp_cmd_t1_timer_update.exit_crit_edge
  %245 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i80 = getelementptr %struct.sctp_cmd, ptr %246, i32 -1
  %cmp.i81 = icmp ult ptr %add.ptr.i80, %commands
  br i1 %cmp.i81, label %do.body2.i82, label %sctp_add_cmd_sf.exit84, !prof !115

do.body2.i82:                                     ; preds = %sctp_cmd_t1_timer_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit84:                           ; preds = %sctp_cmd_t1_timer_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  %verb8.i83 = getelementptr %struct.sctp_cmd, ptr %246, i32 -1, i32 1
  %247 = ptrtoint ptr %verb8.i83 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 20, ptr %verb8.i83, align 4
  %248 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 2, ptr %add.ptr.i80, align 4
  %249 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %add.ptr.i80, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb255:                                         ; preds = %while.body
  %init_last_sent_to.i85 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 33
  %250 = ptrtoint ptr %init_last_sent_to.i85 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %init_last_sent_to.i85, align 8
  %init_err_counter.i86 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 52
  %252 = ptrtoint ptr %init_err_counter.i86 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %init_err_counter.i86, align 8
  %inc.i87 = add i32 %253, 1
  store i32 %inc.i87, ptr %init_err_counter.i86, align 8
  %init_sent_count.i88 = getelementptr inbounds %struct.sctp_transport, ptr %251, i32 0, i32 36
  %254 = ptrtoint ptr %init_sent_count.i88 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %init_sent_count.i88, align 8
  %init_cycle.i89 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 53
  %256 = ptrtoint ptr %init_cycle.i89 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %init_cycle.i89, align 4
  %add.i90 = add i32 %257, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %add.i90)
  %cmp.i91 = icmp sgt i32 %255, %add.i90
  br i1 %cmp.i91, label %if.then.i96, label %sw.bb255.sctp_cmd_t1_timer_update.exit98_crit_edge

sw.bb255.sctp_cmd_t1_timer_update.exit98_crit_edge: ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_cmd_t1_timer_update.exit98

if.then.i96:                                      ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i92 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 30, i32 1
  %258 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx.i92, align 4
  %mul.i93 = shl i32 %259, 1
  %max_init_timeo.i94 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 18
  %260 = ptrtoint ptr %max_init_timeo.i94 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %max_init_timeo.i94, align 4
  %262 = call i32 @llvm.umin.i32(i32 %mul.i93, i32 %261) #5
  %263 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %arrayidx.i92, align 4
  %264 = ptrtoint ptr %init_cycle.i89 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %add.i90, ptr %init_cycle.i89, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_cmd_t1_timer_update.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_cmd_interpreter, %if.then12.i97)) #5
          to label %sctp_cmd_t1_timer_update.exit98 [label %if.then12.i97], !srcloc !111

if.then12.i97:                                    ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #7
  %265 = ptrtoint ptr %init_err_counter.i86 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %init_err_counter.i86, align 8
  %267 = ptrtoint ptr %init_cycle.i89 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %init_cycle.i89, align 4
  %269 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx.i92, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_cmd_t1_timer_update.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.39, i32 noundef %266, i32 noundef %268, i32 noundef %270) #5
  br label %sctp_cmd_t1_timer_update.exit98

sctp_cmd_t1_timer_update.exit98:                  ; preds = %if.then12.i97, %if.then.i96, %sw.bb255.sctp_cmd_t1_timer_update.exit98_crit_edge
  %peer256 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5
  %271 = ptrtoint ptr %peer256 to i32
  call void @__asan_load4_noabort(i32 %271)
  %t.0431 = load ptr, ptr %peer256, align 8
  %cmp260.not432 = icmp eq ptr %t.0431, %peer256
  br i1 %cmp260.not432, label %sctp_cmd_t1_timer_update.exit98.for.end_crit_edge, label %for.body.lr.ph

sctp_cmd_t1_timer_update.exit98.for.end_crit_edge: ; preds = %sctp_cmd_t1_timer_update.exit98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %sctp_cmd_t1_timer_update.exit98
  %outqueue263 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %t.0433 = phi ptr [ %t.0431, %for.body.lr.ph ], [ %t.0, %for.body.for.body_crit_edge ]
  call void @sctp_retransmit_mark(ptr noundef %outqueue263, ptr noundef %t.0433, i8 noundef zeroext 3) #5
  %272 = ptrtoint ptr %t.0433 to i32
  call void @__asan_load4_noabort(i32 %272)
  %t.0 = load ptr, ptr %t.0433, align 8
  %cmp260.not = icmp eq ptr %t.0, %peer256
  br i1 %cmp260.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sctp_cmd_t1_timer_update.exit98.for.end_crit_edge
  %273 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i100 = getelementptr %struct.sctp_cmd, ptr %274, i32 -1
  %cmp.i101 = icmp ult ptr %add.ptr.i100, %commands
  br i1 %cmp.i101, label %do.body2.i102, label %sctp_add_cmd_sf.exit104, !prof !115

do.body2.i102:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit104:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %verb8.i103 = getelementptr %struct.sctp_cmd, ptr %274, i32 -1, i32 1
  %275 = ptrtoint ptr %verb8.i103 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 20, ptr %verb8.i103, align 4
  %276 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 1, ptr %add.ptr.i100, align 4
  %277 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %add.ptr.i100, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb274:                                         ; preds = %while.body
  %278 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %incdec.ptr.i, align 4
  %conv = zext i16 %279 to i32
  %call.i105 = call ptr @sctp_ulpevent_make_assoc_change(ptr noundef %asoc.addr.0, i16 noundef zeroext 0, i16 noundef zeroext 4, i16 noundef zeroext %279, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 2592) #5
  %tobool.not.i106 = icmp eq ptr %call.i105, null
  br i1 %tobool.not.i106, label %sw.bb274.if.end.i115_crit_edge, label %if.then.i110

sw.bb274.if.end.i115_crit_edge:                   ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i115

if.then.i110:                                     ; preds = %sw.bb274
  %280 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i.i108 = getelementptr %struct.sctp_cmd, ptr %281, i32 -1
  %cmp.i.i109 = icmp ult ptr %add.ptr.i.i108, %commands
  br i1 %cmp.i.i109, label %do.body2.i.i111, label %sctp_add_cmd_sf.exit.i114, !prof !115

do.body2.i.i111:                                  ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit.i114:                        ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #7
  %coerce.val.pi.i.i112 = ptrtoint ptr %call.i105 to i32
  %verb8.i.i113 = getelementptr %struct.sctp_cmd, ptr %281, i32 -1, i32 1
  %282 = ptrtoint ptr %verb8.i.i113 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 11, ptr %verb8.i.i113, align 4
  %283 = ptrtoint ptr %add.ptr.i.i108 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %coerce.val.pi.i.i112, ptr %add.ptr.i.i108, align 4
  %284 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %add.ptr.i.i108, ptr %last_used_slot.i, align 4
  br label %if.end.i115

if.end.i115:                                      ; preds = %sctp_add_cmd_sf.exit.i114, %sw.bb274.if.end.i115_crit_edge
  %285 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i22.i = getelementptr %struct.sctp_cmd, ptr %286, i32 -1
  %cmp.i23.i = icmp ult ptr %add.ptr.i22.i, %commands
  br i1 %cmp.i23.i, label %do.body2.i24.i, label %sctp_add_cmd_sf.exit26.i, !prof !115

do.body2.i24.i:                                   ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit26.i:                         ; preds = %if.end.i115
  %verb8.i25.i = getelementptr %struct.sctp_cmd, ptr %286, i32 -1, i32 1
  %287 = ptrtoint ptr %verb8.i25.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 3, ptr %verb8.i25.i, align 4
  %288 = ptrtoint ptr %add.ptr.i22.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 0, ptr %add.ptr.i22.i, align 4
  %289 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %add.ptr.i22.i, ptr %last_used_slot.i, align 4
  %error8.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61, i32 4
  %290 = ptrtoint ptr %error8.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %conv, ptr %error8.i, align 4
  %291 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i28.i = getelementptr %struct.sctp_cmd, ptr %291, i32 -1
  %cmp.i29.i = icmp ult ptr %add.ptr.i28.i, %commands
  br i1 %cmp.i29.i, label %do.body2.i30.i, label %sctp_cmd_init_failed.exit, !prof !115

do.body2.i30.i:                                   ; preds = %sctp_add_cmd_sf.exit26.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_cmd_init_failed.exit:                        ; preds = %sctp_add_cmd_sf.exit26.i
  call void @__sanitizer_cov_trace_pc() #7
  %verb8.i31.i = getelementptr %struct.sctp_cmd, ptr %291, i32 -1, i32 1
  %292 = ptrtoint ptr %verb8.i31.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 2, ptr %verb8.i31.i, align 4
  %293 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %add.ptr.i28.i, align 4
  %294 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %add.ptr.i28.i, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb276:                                         ; preds = %while.body
  %295 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %incdec.ptr.i, align 4
  %conv278 = zext i16 %296 to i32
  %si.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %297 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %si.i, align 4
  %abort_pd.i = getelementptr inbounds %struct.sctp_stream_interleave, ptr %298, i32 0, i32 9
  %299 = ptrtoint ptr %abort_pd.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %abort_pd.i, align 4
  %ulpq.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  call void %300(ptr noundef %ulpq.i, i32 noundef 2592) #5
  %chunk..i = select i1 %or.cond.i, ptr %chunk.1, ptr null
  %call3.i117 = call ptr @sctp_ulpevent_make_assoc_change(ptr noundef %asoc.addr.0, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext %296, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %chunk..i, i32 noundef 2592) #5
  %tobool.not.i118 = icmp eq ptr %call3.i117, null
  br i1 %tobool.not.i118, label %sw.bb276.if.end8.i_crit_edge, label %if.then4.i

sw.bb276.if.end8.i_crit_edge:                     ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then4.i:                                       ; preds = %sw.bb276
  %301 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i.i120 = getelementptr %struct.sctp_cmd, ptr %302, i32 -1
  %cmp.i.i121 = icmp ult ptr %add.ptr.i.i120, %commands
  br i1 %cmp.i.i121, label %do.body2.i.i122, label %sctp_add_cmd_sf.exit.i125, !prof !115

do.body2.i.i122:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit.i125:                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %coerce.val.pi.i.i123 = ptrtoint ptr %call3.i117 to i32
  %verb8.i.i124 = getelementptr %struct.sctp_cmd, ptr %302, i32 -1, i32 1
  %303 = ptrtoint ptr %verb8.i.i124 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 11, ptr %verb8.i.i124, align 4
  %304 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %coerce.val.pi.i.i123, ptr %add.ptr.i.i120, align 4
  %305 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %add.ptr.i.i120, ptr %last_used_slot.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %sctp_add_cmd_sf.exit.i125, %sw.bb276.if.end8.i_crit_edge
  %overall_error_count.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 7
  %306 = ptrtoint ptr %overall_error_count.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %overall_error_count.i, align 8
  %max_retrans.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 13
  %308 = ptrtoint ptr %max_retrans.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %max_retrans.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %307, i32 %309)
  %cmp9.not.i = icmp slt i32 %307, %309
  br i1 %cmp9.not.i, label %if.end8.i.if.end21.i_crit_edge, label %if.then11.i

if.end8.i.if.end21.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then11.i:                                      ; preds = %if.end8.i
  %call12.i = call ptr @sctp_make_violation_max_retrans(ptr noundef %asoc.addr.0, ptr noundef %chunk.1) #5
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.then11.i.if.end21.i_crit_edge, label %if.then14.i126

if.then11.i.if.end21.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then14.i126:                                   ; preds = %if.then11.i
  %310 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i53.i = getelementptr %struct.sctp_cmd, ptr %311, i32 -1
  %cmp.i54.i = icmp ult ptr %add.ptr.i53.i, %commands
  br i1 %cmp.i54.i, label %do.body2.i55.i, label %sctp_add_cmd_sf.exit57.i, !prof !115

do.body2.i55.i:                                   ; preds = %if.then14.i126
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit57.i:                         ; preds = %if.then14.i126
  call void @__sanitizer_cov_trace_pc() #7
  %coerce.val.pi.i51.i = ptrtoint ptr %call12.i to i32
  %verb8.i56.i = getelementptr %struct.sctp_cmd, ptr %311, i32 -1, i32 1
  %312 = ptrtoint ptr %verb8.i56.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 12, ptr %verb8.i56.i, align 4
  %313 = ptrtoint ptr %add.ptr.i53.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %coerce.val.pi.i51.i, ptr %add.ptr.i53.i, align 4
  %314 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %add.ptr.i53.i, ptr %last_used_slot.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %sctp_add_cmd_sf.exit57.i, %if.then11.i.if.end21.i_crit_edge, %if.end8.i.if.end21.i_crit_edge
  %315 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i59.i = getelementptr %struct.sctp_cmd, ptr %316, i32 -1
  %cmp.i60.i = icmp ult ptr %add.ptr.i59.i, %commands
  br i1 %cmp.i60.i, label %do.body2.i61.i, label %sctp_add_cmd_sf.exit63.i, !prof !115

do.body2.i61.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit63.i:                         ; preds = %if.end21.i
  %verb8.i62.i = getelementptr %struct.sctp_cmd, ptr %316, i32 -1, i32 1
  %317 = ptrtoint ptr %verb8.i62.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 3, ptr %verb8.i62.i, align 4
  %318 = ptrtoint ptr %add.ptr.i59.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 0, ptr %add.ptr.i59.i, align 4
  %319 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %add.ptr.i59.i, ptr %last_used_slot.i, align 4
  %error27.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61, i32 4
  %320 = ptrtoint ptr %error27.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %conv278, ptr %error27.i, align 4
  %321 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i65.i = getelementptr %struct.sctp_cmd, ptr %321, i32 -1
  %cmp.i66.i = icmp ult ptr %add.ptr.i65.i, %commands
  br i1 %cmp.i66.i, label %do.body2.i67.i, label %sctp_cmd_assoc_failed.exit, !prof !115

do.body2.i67.i:                                   ; preds = %sctp_add_cmd_sf.exit63.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_cmd_assoc_failed.exit:                       ; preds = %sctp_add_cmd_sf.exit63.i
  call void @__sanitizer_cov_trace_pc() #7
  %verb8.i68.i = getelementptr %struct.sctp_cmd, ptr %321, i32 -1, i32 1
  %322 = ptrtoint ptr %verb8.i68.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 2, ptr %verb8.i68.i, align 4
  %323 = ptrtoint ptr %add.ptr.i65.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 0, ptr %add.ptr.i65.i, align 4
  %324 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %add.ptr.i65.i, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb280:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %init_err_counter281 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 52
  %325 = ptrtoint ptr %init_err_counter281 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %init_err_counter281, align 8
  %inc282 = add i32 %326, 1
  store i32 %inc282, ptr %init_err_counter281, align 8
  br label %sw.epilog

sw.bb283:                                         ; preds = %while.body
  %init_err_counter284 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 52
  %327 = ptrtoint ptr %init_err_counter284 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %init_err_counter284, align 8
  %init_cycle = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 53
  %328 = ptrtoint ptr %init_cycle to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %init_cycle, align 4
  %peer286 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5
  %329 = ptrtoint ptr %peer286 to i32
  call void @__asan_load4_noabort(i32 %329)
  %t.1428 = load ptr, ptr %peer286, align 8
  %cmp295.not429 = icmp eq ptr %t.1428, %peer286
  br i1 %cmp295.not429, label %sw.bb283.sw.epilog_crit_edge, label %sw.bb283.for.body299_crit_edge

sw.bb283.for.body299_crit_edge:                   ; preds = %sw.bb283
  br label %for.body299

sw.bb283.sw.epilog_crit_edge:                     ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body299:                                      ; preds = %for.body299.for.body299_crit_edge, %sw.bb283.for.body299_crit_edge
  %t.1430 = phi ptr [ %t.1, %for.body299.for.body299_crit_edge ], [ %t.1428, %sw.bb283.for.body299_crit_edge ]
  %init_sent_count300 = getelementptr inbounds %struct.sctp_transport, ptr %t.1430, i32 0, i32 36
  %330 = ptrtoint ptr %init_sent_count300 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %init_sent_count300, align 8
  %331 = ptrtoint ptr %t.1430 to i32
  call void @__asan_load4_noabort(i32 %331)
  %t.1 = load ptr, ptr %t.1430, align 8
  %cmp295.not = icmp eq ptr %t.1, %peer286
  br i1 %cmp295.not, label %for.body299.sw.epilog_crit_edge, label %for.body299.for.body299_crit_edge

for.body299.for.body299_crit_edge:                ; preds = %for.body299
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body299

for.body299.sw.epilog_crit_edge:                  ; preds = %for.body299
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb308:                                         ; preds = %while.body
  %num_dup_tsns.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 10, i32 6
  %332 = ptrtoint ptr %num_dup_tsns.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %num_dup_tsns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %333)
  %cmp.i127 = icmp ult i16 %333, 16
  br i1 %cmp.i127, label %if.then.i130, label %sw.bb308.sw.epilog_crit_edge

sw.bb308.sw.epilog_crit_edge:                     ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i130:                                     ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #7
  %334 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %incdec.ptr.i, align 4
  %conv.i = zext i16 %333 to i32
  %inc.i128 = add nuw nsw i16 %333, 1
  %336 = ptrtoint ptr %num_dup_tsns.i to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %inc.i128, ptr %num_dup_tsns.i, align 4
  %arrayidx.i129 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 10, i32 7, i32 %conv.i
  %337 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %335, ptr %arrayidx.i129, align 4
  br label %sw.epilog

do.body313:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_cmd_interpreter.__UNIQUE_ID_ddebug579, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_cmd_interpreter, %if.then325)) #5
          to label %sw.epilog [label %if.then325], !srcloc !111

if.then325:                                       ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_cmd_interpreter.__UNIQUE_ID_ddebug579, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33) #5
  br label %sw.epilog

sw.bb329:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %338 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %incdec.ptr.i, align 4
  call fastcc void @sctp_do_8_2_transport_strike(ptr noundef %asoc.addr.0, ptr noundef %339, i32 noundef 0)
  br label %sw.epilog

sw.bb331:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %340 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %incdec.ptr.i, align 4
  call void @sctp_transport_lower_cwnd(ptr noundef %341, i32 noundef 3) #5
  br label %sw.epilog

sw.bb333:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %342 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %incdec.ptr.i, align 4
  call fastcc void @sctp_do_8_2_transport_strike(ptr noundef %asoc.addr.0, ptr noundef %343, i32 noundef 1)
  %hb_sent = getelementptr inbounds %struct.sctp_transport, ptr %343, i32 0, i32 3
  %344 = ptrtoint ptr %hb_sent to i32
  call void @__asan_load1_noabort(i32 %344)
  %bf.load = load i8, ptr %hb_sent, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %hb_sent, align 4
  br label %sw.epilog

sw.bb335:                                         ; preds = %while.body
  %345 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %incdec.ptr.i, align 4
  %error_count.i = getelementptr inbounds %struct.sctp_transport, ptr %346, i32 0, i32 38
  %347 = ptrtoint ptr %error_count.i to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 0, ptr %error_count.i, align 8
  %asoc1.i = getelementptr inbounds %struct.sctp_transport, ptr %346, i32 0, i32 8
  %348 = ptrtoint ptr %asoc1.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %asoc1.i, align 8
  %state.i132 = getelementptr inbounds %struct.sctp_association, ptr %349, i32 0, i32 6
  %350 = ptrtoint ptr %state.i132 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %state.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %351)
  %cmp.i133 = icmp ult i32 %351, 4
  br i1 %cmp.i133, label %if.then.i135, label %sw.bb335.if.end.i138_crit_edge

sw.bb335.if.end.i138_crit_edge:                   ; preds = %sw.bb335
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i138

if.then.i135:                                     ; preds = %sw.bb335
  call void @__sanitizer_cov_trace_pc() #7
  %overall_error_count.i134 = getelementptr inbounds %struct.sctp_association, ptr %349, i32 0, i32 7
  %352 = ptrtoint ptr %overall_error_count.i134 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 0, ptr %overall_error_count.i134, align 8
  br label %if.end.i138

if.end.i138:                                      ; preds = %if.then.i135, %sw.bb335.if.end.i138_crit_edge
  %hb_sent.i = getelementptr inbounds %struct.sctp_transport, ptr %346, i32 0, i32 3
  %353 = ptrtoint ptr %hb_sent.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %bf.load.i136 = load i8, ptr %hb_sent.i, align 4
  %bf.clear.i137 = and i8 %bf.load.i136, -65
  store i8 %bf.clear.i137, ptr %hb_sent.i, align 4
  %state3.i = getelementptr inbounds %struct.sctp_transport, ptr %346, i32 0, i32 37
  %354 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %state3.i, align 4
  %356 = zext i32 %355 to i64
  call void @__sanitizer_cov_trace_switch(i64 %356, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %355, label %if.end.i138.if.end8.i139_crit_edge [
    i32 0, label %if.end.i138.if.then7.i_crit_edge
    i32 3, label %if.end.i138.if.then7.i_crit_edge1300
  ]

if.end.i138.if.then7.i_crit_edge1300:             ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.end.i138.if.then7.i_crit_edge:                 ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.end.i138.if.end8.i139_crit_edge:               ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i139

if.then7.i:                                       ; preds = %if.end.i138.if.then7.i_crit_edge, %if.end.i138.if.then7.i_crit_edge1300
  call void @sctp_assoc_control_transport(ptr noundef %asoc.addr.0, ptr noundef %346, i32 noundef 0, i32 noundef 2) #5
  %357 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %.pr.i = load i32, ptr %state3.i, align 4
  br label %if.end8.i139

if.end8.i139:                                     ; preds = %if.then7.i, %if.end.i138.if.end8.i139_crit_edge
  %358 = phi i32 [ %355, %if.end.i138.if.end8.i139_crit_edge ], [ %.pr.i, %if.then7.i ]
  %tobool23.not.i = phi i1 [ true, %if.end.i138.if.end8.i139_crit_edge ], [ false, %if.then7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %358)
  %cmp10.i = icmp eq i32 %358, 1
  br i1 %cmp10.i, label %if.then11.i140, label %if.end8.i139.if.end12.i_crit_edge

if.end8.i139.if.end12.i_crit_edge:                ; preds = %if.end8.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then11.i140:                                   ; preds = %if.end8.i139
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_assoc_control_transport(ptr noundef %asoc.addr.0, ptr noundef %346, i32 noundef 0, i32 noundef 2) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i140, %if.end8.i139.if.end12.i_crit_edge
  %dst.i = getelementptr inbounds %struct.sctp_transport, ptr %346, i32 0, i32 18
  %359 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dst.i, align 8
  %tobool.not.i141 = icmp eq ptr %360, null
  br i1 %tobool.not.i141, label %if.end12.i.if.end14.i_crit_edge, label %if.then13.i

if.end12.i.if.end14.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_transport_dst_confirm(ptr noundef %346) #5
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end12.i.if.end14.i_crit_edge
  %361 = ptrtoint ptr %hb_sent.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %bf.load15.i = load i8, ptr %hb_sent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load15.i)
  %cmp16.i = icmp sgt i8 %bf.load15.i, -1
  br i1 %cmp16.i, label %if.then17.i, label %if.end14.i.if.end22.i_crit_edge

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set21.i = or i8 %bf.load15.i, -128
  %362 = ptrtoint ptr %hb_sent.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %bf.set21.i, ptr %hb_sent.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end22.i_crit_edge
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 5
  %363 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %skb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %364, i32 0, i32 19
  %365 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %367 = load volatile i32, ptr @jiffies, align 128
  %sent_at.i = getelementptr inbounds %struct.sctp_sender_hb_info, ptr %366, i32 0, i32 2
  %368 = ptrtoint ptr %sent_at.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %sent_at.i, align 8
  %sub.i142 = sub i32 %367, %369
  call void @sctp_transport_update_rto(ptr noundef %346, i32 noundef %sub.i142) #5
  call void @sctp_transport_reset_hb_timer(ptr noundef %346) #5
  br i1 %tobool23.not.i, label %if.end22.i.sw.epilog_crit_edge, label %land.lhs.true.i143

if.end22.i.sw.epilog_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true.i143:                               ; preds = %if.end22.i
  %transport_count.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 2
  %370 = ptrtoint ptr %transport_count.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %transport_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %371)
  %cmp24.i = icmp eq i16 %371, 1
  br i1 %cmp24.i, label %if.then26.i144, label %land.lhs.true.i143.sw.epilog_crit_edge

land.lhs.true.i143.sw.epilog_crit_edge:           ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then26.i144:                                   ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_transport_immediate_rtx(ptr noundef %346) #5
  br label %sw.epilog

sw.bb337:                                         ; preds = %while.body
  %peer.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5
  %372 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %t.01.i = load ptr, ptr %peer.i, align 8
  %cmp.not2.i = icmp eq ptr %t.01.i, %peer.i
  br i1 %cmp.not2.i, label %sw.bb337.sw.epilog_crit_edge, label %sw.bb337.for.body.i_crit_edge

sw.bb337.for.body.i_crit_edge:                    ; preds = %sw.bb337
  br label %for.body.i

sw.bb337.sw.epilog_crit_edge:                     ; preds = %sw.bb337
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb337.for.body.i_crit_edge
  %t.03.i = phi ptr [ %t.0.i145, %for.body.i.for.body.i_crit_edge ], [ %t.01.i, %sw.bb337.for.body.i_crit_edge ]
  call void @sctp_transport_reset_hb_timer(ptr noundef %t.03.i) #5
  %373 = ptrtoint ptr %t.03.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %t.0.i145 = load ptr, ptr %t.03.i, align 8
  %cmp.not.i146 = icmp eq ptr %t.0.i145, %peer.i
  br i1 %cmp.not.i146, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb338:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %374 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %incdec.ptr.i, align 4
  call void @sctp_transport_reset_hb_timer(ptr noundef %375) #5
  br label %sw.epilog

sw.bb340:                                         ; preds = %while.body
  %peer.i147 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5
  %376 = ptrtoint ptr %peer.i147 to i32
  call void @__asan_load4_noabort(i32 %376)
  %t.01.i148 = load ptr, ptr %peer.i147, align 8
  %cmp.not2.i149 = icmp eq ptr %t.01.i148, %peer.i147
  br i1 %cmp.not2.i149, label %sw.bb340.sw.epilog_crit_edge, label %sw.bb340.for.body.i153_crit_edge

sw.bb340.for.body.i153_crit_edge:                 ; preds = %sw.bb340
  br label %for.body.i153

sw.bb340.sw.epilog_crit_edge:                     ; preds = %sw.bb340
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.i153:                                    ; preds = %for.inc.i.for.body.i153_crit_edge, %sw.bb340.for.body.i153_crit_edge
  %t.03.i150 = phi ptr [ %t.0.i155, %for.inc.i.for.body.i153_crit_edge ], [ %t.01.i148, %sw.bb340.for.body.i153_crit_edge ]
  %hb_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %t.03.i150, i32 0, i32 40
  %call.i151 = call i32 @del_timer(ptr noundef %hb_timer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %for.body.i153.for.inc.i_crit_edge, label %if.then.i154

for.body.i153.for.inc.i_crit_edge:                ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i154:                                     ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_transport_put(ptr noundef %t.03.i150) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i154, %for.body.i153.for.inc.i_crit_edge
  %377 = ptrtoint ptr %t.03.i150 to i32
  call void @__asan_load4_noabort(i32 %377)
  %t.0.i155 = load ptr, ptr %t.03.i150, align 8
  %cmp.not.i156 = icmp eq ptr %t.0.i155, %peer.i147
  br i1 %cmp.not.i156, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.for.body.i153_crit_edge

for.inc.i.for.body.i153_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i153

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb341:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %378 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %incdec.ptr.i, align 4
  call void @sctp_transport_reset_probe_timer(ptr noundef %379) #5
  br label %sw.epilog

sw.bb343:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %380 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %incdec.ptr.i, align 4
  br label %sw.epilog

sw.bb345:                                         ; preds = %while.body
  %382 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %incdec.ptr.i, align 4
  %384 = ptrtoint ptr %sackh to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %383, ptr %sackh, align 4
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 1
  %385 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %rwnd, align 8
  %outstanding_bytes = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61, i32 9
  %387 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %outstanding_bytes, align 4
  %add349 = add i32 %388, %386
  %389 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %add349, ptr %2, align 4
  %390 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 0, ptr %3, align 4
  %391 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 0, ptr %4, align 2
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 8
  %392 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %sackh, ptr %subh, align 4
  %393 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i159 = getelementptr %struct.sctp_cmd, ptr %394, i32 -1
  %cmp.i160 = icmp ult ptr %add.ptr.i159, %commands
  br i1 %cmp.i160, label %do.body2.i161, label %sctp_add_cmd_sf.exit163, !prof !115

do.body2.i161:                                    ; preds = %sw.bb345
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit163:                          ; preds = %sw.bb345
  call void @__sanitizer_cov_trace_pc() #7
  %coerce.val.pi.i157 = ptrtoint ptr %chunk.1 to i32
  %verb8.i162 = getelementptr %struct.sctp_cmd, ptr %394, i32 -1, i32 1
  %395 = ptrtoint ptr %verb8.i162 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 6, ptr %verb8.i162, align 4
  %396 = ptrtoint ptr %add.ptr.i159 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %coerce.val.pi.i157, ptr %add.ptr.i159, align 4
  %397 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %add.ptr.i159, ptr %last_used_slot.i, align 4
  br label %sw.epilog

sw.bb355:                                         ; preds = %while.body
  %pdiscard = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 21
  %398 = ptrtoint ptr %pdiscard to i32
  call void @__asan_load2_noabort(i32 %398)
  %bf.load356 = load i16, ptr %pdiscard, align 4
  %bf.set358 = or i16 %bf.load356, 512
  store i16 %bf.set358, ptr %pdiscard, align 4
  %tobool359.not = icmp eq ptr %asoc.addr.0, null
  br i1 %tobool359.not, label %sw.bb355.sw.epilog_crit_edge, label %if.then360

sw.bb355.sw.epilog_crit_edge:                     ; preds = %sw.bb355
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then360:                                       ; preds = %sw.bb355
  call void @__sanitizer_cov_trace_pc() #7
  %outqueue361 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  call void @sctp_outq_uncork(ptr noundef %outqueue361, i32 noundef %gfp) #5
  br label %sw.epilog

sw.bb363:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %399 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %incdec.ptr.i, align 4
  %rto_pending = getelementptr inbounds %struct.sctp_transport, ptr %400, i32 0, i32 3
  %401 = ptrtoint ptr %rto_pending to i32
  call void @__asan_load1_noabort(i32 %401)
  %bf.load365 = load i8, ptr %rto_pending, align 4
  %bf.set367 = or i8 %bf.load365, -128
  store i8 %bf.set367, ptr %rto_pending, align 4
  br label %sw.epilog

sw.bb368:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %si370 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %402 = ptrtoint ptr %si370 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %si370, align 4
  %start_pd = getelementptr inbounds %struct.sctp_stream_interleave, ptr %403, i32 0, i32 8
  %404 = ptrtoint ptr %start_pd to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %start_pd, align 4
  %ulpq371 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  call void %405(ptr noundef %ulpq371, i32 noundef 2592) #5
  br label %sw.epilog

sw.bb372:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %si374 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %406 = ptrtoint ptr %si374 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %si374, align 4
  %renege_events = getelementptr inbounds %struct.sctp_stream_interleave, ptr %407, i32 0, i32 7
  %408 = ptrtoint ptr %renege_events to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %renege_events, align 4
  %ulpq375 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %410 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %incdec.ptr.i, align 4
  call void %409(ptr noundef %ulpq375, ptr noundef %411, i32 noundef 2592) #5
  br label %sw.epilog

sw.bb377:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %412 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %incdec.ptr.i, align 4
  %transport.i164 = getelementptr inbounds %struct.sctp_chunk, ptr %413, i32 0, i32 19
  %414 = ptrtoint ptr %transport.i164 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %transport.i164, align 4
  %call.i165 = call ptr @sctp_assoc_choose_alter_transport(ptr noundef %asoc.addr.0, ptr noundef %415) #5
  %rto.i166 = getelementptr inbounds %struct.sctp_transport, ptr %call.i165, i32 0, i32 9
  %416 = ptrtoint ptr %rto.i166 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %rto.i166, align 4
  %arrayidx.i167 = getelementptr %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 30, i32 5
  %418 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %417, ptr %arrayidx.i167, align 4
  %419 = ptrtoint ptr %transport.i164 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %call.i165, ptr %transport.i164, align 4
  br label %sw.epilog

sw.bb379:                                         ; preds = %while.body
  %chunk_end.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 9
  %skb.i168 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 5
  %420 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %chunk_end.i, align 4
  %422 = ptrtoint ptr %skb.i168 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %skb.i168, align 4
  %data30.i = getelementptr inbounds %struct.sk_buff, ptr %423, i32 0, i32 19
  %424 = ptrtoint ptr %data30.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %data30.i, align 4
  %cmp31.i = icmp ugt ptr %421, %425
  br i1 %cmp31.i, label %while.body.lr.ph.i, label %sw.bb379.sw.epilog_crit_edge

sw.bb379.sw.epilog_crit_edge:                     ; preds = %sw.bb379
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.lr.ph.i:                               ; preds = %sw.bb379
  %si.i169 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %ulpq.i170 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %asconf_capable.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog18.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %426 = phi ptr [ %425, %while.body.lr.ph.i ], [ %448, %sw.epilog18.i.while.body.i_crit_edge ]
  %call.i172 = call ptr @sctp_ulpevent_make_remote_error(ptr noundef %asoc.addr.0, ptr noundef %chunk.1, i16 noundef zeroext 0, i32 noundef 2592) #5
  %tobool.not.i173 = icmp eq ptr %call.i172, null
  br i1 %tobool.not.i173, label %while.body.i.sw.epilog_crit_edge, label %if.end.i175

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i175:                                      ; preds = %while.body.i
  %427 = ptrtoint ptr %si.i169 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %si.i169, align 4
  %enqueue_event.i = getelementptr inbounds %struct.sctp_stream_interleave, ptr %428, i32 0, i32 6
  %429 = ptrtoint ptr %enqueue_event.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %enqueue_event.i, align 4
  %call3.i174 = call i32 %430(ptr noundef %ulpq.i170, ptr noundef nonnull %call.i172) #5
  %431 = ptrtoint ptr %426 to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %426, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %432)
  %cond.i = icmp eq i16 %432, 6
  br i1 %cond.i, label %sw.bb.i, label %if.end.i175.sw.epilog18.i_crit_edge

if.end.i175.sw.epilog18.i_crit_edge:              ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

sw.bb.i:                                          ; preds = %if.end.i175
  %variable.i = getelementptr inbounds %struct.sctp_errhdr, ptr %426, i32 0, i32 2
  %433 = ptrtoint ptr %variable.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %variable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %434)
  %cond20.i = icmp eq i8 %434, -63
  br i1 %cond20.i, label %sw.bb5.i, label %sw.bb.i.sw.epilog18.i_crit_edge

sw.bb.i.sw.epilog18.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

sw.bb5.i:                                         ; preds = %sw.bb.i
  %435 = ptrtoint ptr %asconf_capable.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %bf.load.i176 = load i16, ptr %asconf_capable.i, align 2
  %436 = and i16 %bf.load.i176, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %436)
  %cmp7.i = icmp eq i16 %436, 0
  br i1 %cmp7.i, label %sw.bb5.i.sw.epilog18.i_crit_edge, label %if.end10.i

sw.bb5.i.sw.epilog18.i_crit_edge:                 ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

if.end10.i:                                       ; preds = %sw.bb5.i
  %bf.clear14.i = and i16 %bf.load.i176, -2049
  %437 = ptrtoint ptr %asconf_capable.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %bf.clear14.i, ptr %asconf_capable.i, align 2
  %438 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %last_used_slot.i, align 4
  %add.ptr.i.i177 = getelementptr %struct.sctp_cmd, ptr %439, i32 -1
  %cmp.i.i178 = icmp ult ptr %add.ptr.i.i177, %commands
  br i1 %cmp.i.i178, label %do.body2.i.i179, label %sctp_add_cmd_sf.exit.i181, !prof !115

do.body2.i.i179:                                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/sctp/command.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !117
  unreachable

sctp_add_cmd_sf.exit.i181:                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %verb8.i.i180 = getelementptr %struct.sctp_cmd, ptr %439, i32 -1, i32 1
  %440 = ptrtoint ptr %verb8.i.i180 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 21, ptr %verb8.i.i180, align 4
  %441 = ptrtoint ptr %add.ptr.i.i177 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 5, ptr %add.ptr.i.i177, align 4
  %442 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %add.ptr.i.i177, ptr %last_used_slot.i, align 4
  br label %sw.epilog18.i

sw.epilog18.i:                                    ; preds = %sctp_add_cmd_sf.exit.i181, %sw.bb5.i.sw.epilog18.i_crit_edge, %sw.bb.i.sw.epilog18.i_crit_edge, %if.end.i175.sw.epilog18.i_crit_edge
  %443 = ptrtoint ptr %chunk_end.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %chunk_end.i, align 4
  %445 = ptrtoint ptr %skb.i168 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %skb.i168, align 4
  %data.i182 = getelementptr inbounds %struct.sk_buff, ptr %446, i32 0, i32 19
  %447 = ptrtoint ptr %data.i182 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %data.i182, align 4
  %cmp.i183 = icmp ugt ptr %444, %448
  br i1 %cmp.i183, label %sw.epilog18.i.while.body.i_crit_edge, label %sw.epilog18.i.sw.epilog_crit_edge

sw.epilog18.i.sw.epilog_crit_edge:                ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog18.i.while.body.i_crit_edge:             ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

sw.bb380:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 15
  %449 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 0, ptr %i, align 4
  br label %sw.epilog

sw.bb382:                                         ; preds = %while.body
  %peer.i185 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5
  %450 = ptrtoint ptr %peer.i185 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %peer.i185, align 8
  %cmp.i.not16.i = icmp eq ptr %451, %peer.i185
  br i1 %cmp.i.not16.i, label %sw.bb382.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb382.sw.epilog_crit_edge:                     ; preds = %sw.bb382
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb382
  %primary_addr.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 5
  br label %for.body.i187

for.body.i187:                                    ; preds = %for.inc.i190.for.body.i187_crit_edge, %for.body.lr.ph.i
  %pos.017.i = phi ptr [ %451, %for.body.lr.ph.i ], [ %temp.018.i, %for.inc.i190.for.body.i187_crit_edge ]
  %452 = ptrtoint ptr %pos.017.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %temp.018.i = load ptr, ptr %pos.017.i, align 4
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %pos.017.i, i32 0, i32 6
  %call5.i186 = call i32 @sctp_cmp_addr_exact(ptr noundef %ipaddr.i, ptr noundef %primary_addr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i186)
  %tobool6.not.i = icmp eq i32 %call5.i186, 0
  br i1 %tobool6.not.i, label %if.then.i188, label %for.body.i187.for.inc.i190_crit_edge

for.body.i187.for.inc.i190_crit_edge:             ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i190

if.then.i188:                                     ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_assoc_rm_peer(ptr noundef %asoc.addr.0, ptr noundef %pos.017.i) #5
  br label %for.inc.i190

for.inc.i190:                                     ; preds = %if.then.i188, %for.body.i187.for.inc.i190_crit_edge
  %cmp.i.not.i189 = icmp eq ptr %temp.018.i, %peer.i185
  br i1 %cmp.i.not.i189, label %for.inc.i190.sw.epilog_crit_edge, label %for.inc.i190.for.body.i187_crit_edge

for.inc.i190.for.body.i187_crit_edge:             ; preds = %for.inc.i190
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i187

for.inc.i190.sw.epilog_crit_edge:                 ; preds = %for.inc.i190
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb383:                                         ; preds = %while.body
  %peer.i191 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5
  %453 = ptrtoint ptr %peer.i191 to i32
  call void @__asan_load4_noabort(i32 %453)
  %t.01.i192 = load ptr, ptr %peer.i191, align 8
  %cmp.not2.i193 = icmp eq ptr %t.01.i192, %peer.i191
  br i1 %cmp.not2.i193, label %sw.bb383.sw.epilog_crit_edge, label %sw.bb383.for.body.i197_crit_edge

sw.bb383.for.body.i197_crit_edge:                 ; preds = %sw.bb383
  br label %for.body.i197

sw.bb383.sw.epilog_crit_edge:                     ; preds = %sw.bb383
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.i197:                                    ; preds = %for.inc.i201.for.body.i197_crit_edge, %sw.bb383.for.body.i197_crit_edge
  %t.03.i194 = phi ptr [ %t.0.i199, %for.inc.i201.for.body.i197_crit_edge ], [ %t.01.i192, %sw.bb383.for.body.i197_crit_edge ]
  %T3_rtx_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %t.03.i194, i32 0, i32 39
  %call.i195 = call i32 @del_timer(ptr noundef %T3_rtx_timer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool.not.i196 = icmp eq i32 %call.i195, 0
  br i1 %tobool.not.i196, label %for.body.i197.for.inc.i201_crit_edge, label %if.then.i198

for.body.i197.for.inc.i201_crit_edge:             ; preds = %for.body.i197
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i201

if.then.i198:                                     ; preds = %for.body.i197
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_transport_put(ptr noundef %t.03.i194) #5
  br label %for.inc.i201

for.inc.i201:                                     ; preds = %if.then.i198, %for.body.i197.for.inc.i201_crit_edge
  %454 = ptrtoint ptr %t.03.i194 to i32
  call void @__asan_load4_noabort(i32 %454)
  %t.0.i199 = load ptr, ptr %t.03.i194, align 8
  %cmp.not.i200 = icmp eq ptr %t.0.i199, %peer.i191
  br i1 %cmp.not.i200, label %for.inc.i201.sw.epilog_crit_edge, label %for.inc.i201.for.body.i197_crit_edge

for.inc.i201.for.body.i197_crit_edge:             ; preds = %for.inc.i201
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i197

for.inc.i201.sw.epilog_crit_edge:                 ; preds = %for.inc.i201
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb384:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %retran_path386 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 7
  %455 = ptrtoint ptr %retran_path386 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %retran_path386, align 4
  %primary_path388 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 4
  %457 = ptrtoint ptr %primary_path388 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %primary_path388, align 8
  store ptr %458, ptr %retran_path386, align 4
  %outqueue391 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  call void @sctp_outq_uncork(ptr noundef %outqueue391, i32 noundef %gfp) #5
  %459 = ptrtoint ptr %retran_path386 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %456, ptr %retran_path386, align 4
  br label %sw.epilog

sw.bb394:                                         ; preds = %while.body
  %sk1.i202 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc.addr.0, i32 0, i32 3
  %460 = ptrtoint ptr %sk1.i202 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %sk1.i202, align 4
  %type.i.i203 = getelementptr inbounds %struct.sctp_sock, ptr %461, i32 0, i32 1
  %462 = ptrtoint ptr %type.i.i203 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %type.i.i203, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %463)
  %cmp.i.not.i204 = icmp eq i32 %463, 0
  br i1 %cmp.i.not.i204, label %sw.bb394.sw.epilog_crit_edge, label %if.then.i205

sw.bb394.sw.epilog_crit_edge:                     ; preds = %sw.bb394
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i205:                                     ; preds = %sw.bb394
  call void @__sanitizer_cov_trace_pc() #7
  %464 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %incdec.ptr.i, align 4
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %461, i32 0, i32 51
  %466 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %sk_err.i, align 4
  br label %sw.epilog

sw.bb396:                                         ; preds = %while.body
  %467 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %incdec.ptr.i, align 4
  %conv.i207 = zext i8 %468 to i16
  %sinit_num_ostreams.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 4, i32 5
  %469 = ptrtoint ptr %sinit_num_ostreams.i to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %sinit_num_ostreams.i, align 8
  %sinit_max_instreams.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 4, i32 6
  %471 = ptrtoint ptr %sinit_max_instreams.i to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %sinit_max_instreams.i, align 2
  %call.i208 = call ptr @sctp_ulpevent_make_assoc_change(ptr noundef %asoc.addr.0, i16 noundef zeroext 0, i16 noundef zeroext %conv.i207, i16 noundef zeroext 0, i16 noundef zeroext %470, i16 noundef zeroext %472, ptr noundef null, i32 noundef 2592) #5
  %tobool.not.i209 = icmp eq ptr %call.i208, null
  br i1 %tobool.not.i209, label %sw.bb396.sw.epilog_crit_edge, label %if.then.i213

sw.bb396.sw.epilog_crit_edge:                     ; preds = %sw.bb396
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i213:                                     ; preds = %sw.bb396
  call void @__sanitizer_cov_trace_pc() #7
  %si.i210 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %473 = ptrtoint ptr %si.i210 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %si.i210, align 4
  %enqueue_event.i211 = getelementptr inbounds %struct.sctp_stream_interleave, ptr %474, i32 0, i32 6
  %475 = ptrtoint ptr %enqueue_event.i211 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %enqueue_event.i211, align 4
  %ulpq.i212 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %call2.i = call i32 %476(ptr noundef %ulpq.i212, ptr noundef nonnull %call.i208) #5
  br label %sw.epilog

sw.bb398:                                         ; preds = %while.body
  %call.i215 = call ptr @sctp_ulpevent_make_adaptation_indication(ptr noundef %asoc.addr.0, i32 noundef 2592) #5
  %tobool.not.i216 = icmp eq ptr %call.i215, null
  br i1 %tobool.not.i216, label %sw.bb398.sw.epilog_crit_edge, label %if.then.i221

sw.bb398.sw.epilog_crit_edge:                     ; preds = %sw.bb398
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i221:                                     ; preds = %sw.bb398
  call void @__sanitizer_cov_trace_pc() #7
  %si.i217 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %477 = ptrtoint ptr %si.i217 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %si.i217, align 4
  %enqueue_event.i218 = getelementptr inbounds %struct.sctp_stream_interleave, ptr %478, i32 0, i32 6
  %479 = ptrtoint ptr %enqueue_event.i218 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %enqueue_event.i218, align 4
  %ulpq.i219 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %call1.i220 = call i32 %480(ptr noundef %ulpq.i219, ptr noundef nonnull %call.i215) #5
  br label %sw.epilog

sw.bb399:                                         ; preds = %while.body
  %call.i223 = call ptr @sctp_ulpevent_make_authkey(ptr noundef %asoc.addr.0, i16 noundef zeroext 0, i32 noundef 2, i32 noundef 2592) #5
  %tobool.not.i224 = icmp eq ptr %call.i223, null
  br i1 %tobool.not.i224, label %sw.bb399.sw.epilog_crit_edge, label %if.then.i229

sw.bb399.sw.epilog_crit_edge:                     ; preds = %sw.bb399
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i229:                                     ; preds = %sw.bb399
  call void @__sanitizer_cov_trace_pc() #7
  %si.i225 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 60, i32 6
  %481 = ptrtoint ptr %si.i225 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %si.i225, align 4
  %enqueue_event.i226 = getelementptr inbounds %struct.sctp_stream_interleave, ptr %482, i32 0, i32 6
  %483 = ptrtoint ptr %enqueue_event.i226 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %enqueue_event.i226, align 4
  %ulpq.i227 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 62
  %call1.i228 = call i32 %484(ptr noundef %ulpq.i227, ptr noundef nonnull %call.i223) #5
  br label %sw.epilog

sw.bb400:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call401 = call i32 @sctp_auth_asoc_init_active_key(ptr noundef %asoc.addr.0, i32 noundef 2592) #5
  br label %sw.epilog

sw.bb402:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %485 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %incdec.ptr.i, align 4
  %i405 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 5, i32 15
  %487 = ptrtoint ptr %i405 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %486, ptr %i405, align 4
  br label %sw.epilog

sw.bb407:                                         ; preds = %while.body
  %cork409 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61, i32 11
  %488 = ptrtoint ptr %cork409 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %cork409, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %489)
  %tobool410.not = icmp eq i8 %489, 0
  br i1 %tobool410.not, label %if.then411, label %sw.bb407.if.end413_crit_edge

sw.bb407.if.end413_crit_edge:                     ; preds = %sw.bb407
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end413

if.then411:                                       ; preds = %sw.bb407
  call void @__sanitizer_cov_trace_pc() #7
  %490 = ptrtoint ptr %cork409 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 1, ptr %cork409, align 1
  br label %if.end413

if.end413:                                        ; preds = %if.then411, %sw.bb407.if.end413_crit_edge
  %local_cork.4 = phi i32 [ %local_cork.0, %sw.bb407.if.end413_crit_edge ], [ 1, %if.then411 ]
  %491 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %incdec.ptr.i, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %493)
  %.pn15.i = load ptr, ptr %492, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %492
  br i1 %cmp.not16.i, label %if.end413.sctp_cmd_send_msg.exit_crit_edge, label %for.body.lr.ph.i233

if.end413.sctp_cmd_send_msg.exit_crit_edge:       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_cmd_send_msg.exit

for.body.lr.ph.i233:                              ; preds = %if.end413
  %outqueue.i232 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  br label %for.body.i235

for.body.i235:                                    ; preds = %for.body.i235.for.body.i235_crit_edge, %for.body.lr.ph.i233
  %.pn17.i = phi ptr [ %.pn15.i, %for.body.lr.ph.i233 ], [ %.pn.i, %for.body.i235.for.body.i235_crit_edge ]
  %chunk.0.i = getelementptr i8, ptr %.pn17.i, i32 -24
  call void @sctp_outq_tail(ptr noundef %outqueue.i232, ptr noundef %chunk.0.i, i32 noundef %gfp) #5
  %494 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i234 = icmp eq ptr %.pn.i, %492
  br i1 %cmp.not.i234, label %for.body.i235.sctp_cmd_send_msg.exit_crit_edge, label %for.body.i235.for.body.i235_crit_edge

for.body.i235.for.body.i235_crit_edge:            ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i235

for.body.i235.sctp_cmd_send_msg.exit_crit_edge:   ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_cmd_send_msg.exit

sctp_cmd_send_msg.exit:                           ; preds = %for.body.i235.sctp_cmd_send_msg.exit_crit_edge, %if.end413.sctp_cmd_send_msg.exit_crit_edge
  %outqueue7.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  %sched.i = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61, i32 2
  %495 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %sched.i, align 4
  %enqueue.i = getelementptr inbounds %struct.sctp_sched_ops, ptr %496, i32 0, i32 5
  %497 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %enqueue.i, align 4
  call void %498(ptr noundef %outqueue7.i, ptr noundef %492) #5
  br label %sw.epilog

sw.bb415:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @sctp_asconf_queue_teardown(ptr noundef %asoc.addr.0) #5
  br label %sw.epilog

sw.bb416:                                         ; preds = %while.body
  %tobool417.not = icmp eq ptr %asoc.addr.0, null
  br i1 %tobool417.not, label %sw.bb416.if.end422_crit_edge, label %land.lhs.true418

sw.bb416.if.end422_crit_edge:                     ; preds = %sw.bb416
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end422

land.lhs.true418:                                 ; preds = %sw.bb416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local_cork.0)
  %tobool419.not = icmp eq i32 %local_cork.0, 0
  br i1 %tobool419.not, label %land.lhs.true418.if.end422_crit_edge, label %if.then420

land.lhs.true418.if.end422_crit_edge:             ; preds = %land.lhs.true418
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end422

if.then420:                                       ; preds = %land.lhs.true418
  call void @__sanitizer_cov_trace_pc() #7
  %outqueue421 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.0, i32 0, i32 61
  call void @sctp_outq_uncork(ptr noundef %outqueue421, i32 noundef %gfp) #5
  br label %if.end422

if.end422:                                        ; preds = %if.then420, %land.lhs.true418.if.end422_crit_edge, %sw.bb416.if.end422_crit_edge
  %local_cork.5 = phi i32 [ 0, %if.then420 ], [ 0, %land.lhs.true418.if.end422_crit_edge ], [ %local_cork.0, %sw.bb416.if.end422_crit_edge ]
  %499 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %incdec.ptr.i, align 4
  br label %sw.epilog

do.end426:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call429 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %12) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end426, %if.end422, %sw.bb415, %sctp_cmd_send_msg.exit, %sw.bb402, %sw.bb400, %if.then.i229, %sw.bb399.sw.epilog_crit_edge, %if.then.i221, %sw.bb398.sw.epilog_crit_edge, %if.then.i213, %sw.bb396.sw.epilog_crit_edge, %if.then.i205, %sw.bb394.sw.epilog_crit_edge, %sw.bb384, %for.inc.i201.sw.epilog_crit_edge, %sw.bb383.sw.epilog_crit_edge, %for.inc.i190.sw.epilog_crit_edge, %sw.bb382.sw.epilog_crit_edge, %sw.bb380, %sw.epilog18.i.sw.epilog_crit_edge, %while.body.i.sw.epilog_crit_edge, %sw.bb379.sw.epilog_crit_edge, %sw.bb377, %sw.bb372, %sw.bb368, %sw.bb363, %if.then360, %sw.bb355.sw.epilog_crit_edge, %sctp_add_cmd_sf.exit163, %sw.bb343, %sw.bb341, %for.inc.i.sw.epilog_crit_edge, %sw.bb340.sw.epilog_crit_edge, %sw.bb338, %for.body.i.sw.epilog_crit_edge, %sw.bb337.sw.epilog_crit_edge, %if.then26.i144, %land.lhs.true.i143.sw.epilog_crit_edge, %if.end22.i.sw.epilog_crit_edge, %sw.bb333, %sw.bb331, %sw.bb329, %if.then325, %do.body313, %if.then.i130, %sw.bb308.sw.epilog_crit_edge, %for.body299.sw.epilog_crit_edge, %sw.bb283.sw.epilog_crit_edge, %sw.bb280, %sctp_cmd_assoc_failed.exit, %sctp_cmd_init_failed.exit, %sctp_add_cmd_sf.exit104, %sctp_add_cmd_sf.exit84, %sw.bb241, %if.then239, %sw.bb233.sw.epilog_crit_edge, %if.then231, %sw.bb221.sw.epilog_crit_edge, %if.end219, %sw.bb184.sw.epilog_crit_edge, %sctp_cmd_setup_t2.exit, %sw.bb180, %sctp_add_cmd_sf.exit65, %sctp_do_ecn_ecne_work.exit.sw.epilog_crit_edge, %sw.bb167, %sw.bb164, %sw.bb161, %sw.bb158, %if.end155, %do.end144, %do.end120, %sctp_add_cmd_sf.exit50, %sctp_add_cmd_sf.exit43, %land.lhs.true.sw.epilog_crit_edge, %if.end82.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %sctp_add_cmd_sf.exit, %if.then.i18, %sw.bb39.sw.epilog_crit_edge, %88, %sctp_add_cmd_sf.exit.i, %sw.bb31, %sw.bb29, %sw.bb25, %sw.bb23, %if.end.i11, %land.lhs.true6.i.sw.epilog_crit_edge, %sw.bb16, %do.end15, %while.body.sw.epilog_crit_edge
  %error.1 = phi i32 [ 0, %do.end426 ], [ 0, %if.end422 ], [ 0, %sw.bb415 ], [ 0, %sctp_cmd_send_msg.exit ], [ 0, %sw.bb402 ], [ %call401, %sw.bb400 ], [ 0, %sw.bb384 ], [ 0, %sw.bb380 ], [ 0, %sw.bb377 ], [ 0, %sw.bb372 ], [ 0, %sw.bb368 ], [ 0, %sw.bb363 ], [ 0, %if.then360 ], [ 0, %sw.bb355.sw.epilog_crit_edge ], [ 0, %sctp_add_cmd_sf.exit163 ], [ %381, %sw.bb343 ], [ 0, %sw.bb341 ], [ 0, %sw.bb338 ], [ 0, %sw.bb333 ], [ 0, %sw.bb331 ], [ 0, %sw.bb329 ], [ 0, %if.then325 ], [ 0, %sw.bb280 ], [ 0, %sctp_cmd_assoc_failed.exit ], [ 0, %sctp_cmd_init_failed.exit ], [ 0, %sctp_add_cmd_sf.exit104 ], [ 0, %sctp_add_cmd_sf.exit84 ], [ 0, %sw.bb241 ], [ 0, %if.then239 ], [ 0, %sw.bb233.sw.epilog_crit_edge ], [ 0, %sw.bb221.sw.epilog_crit_edge ], [ 0, %if.then231 ], [ 0, %if.end219 ], [ 0, %sw.bb184.sw.epilog_crit_edge ], [ 0, %sctp_cmd_setup_t2.exit ], [ 0, %sw.bb180 ], [ 0, %sctp_add_cmd_sf.exit65 ], [ 0, %sctp_do_ecn_ecne_work.exit.sw.epilog_crit_edge ], [ 0, %sw.bb167 ], [ 0, %sw.bb164 ], [ 0, %sw.bb161 ], [ 0, %sw.bb158 ], [ 0, %if.end155 ], [ 0, %do.end144 ], [ 0, %do.end120 ], [ 0, %sctp_add_cmd_sf.exit50 ], [ 0, %sctp_add_cmd_sf.exit43 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %if.end82.sw.epilog_crit_edge ], [ 0, %sw.bb50.sw.epilog_crit_edge ], [ 0, %sctp_add_cmd_sf.exit ], [ 0, %sw.bb31 ], [ 0, %sw.bb29 ], [ %call28, %sw.bb25 ], [ 0, %sw.bb23 ], [ 0, %sw.bb16 ], [ 0, %do.end15 ], [ %12, %while.body.sw.epilog_crit_edge ], [ 0, %land.lhs.true6.i.sw.epilog_crit_edge ], [ 0, %if.end.i11 ], [ 0, %sctp_add_cmd_sf.exit.i ], [ 0, %88 ], [ %call3.i, %if.then.i18 ], [ 0, %sw.bb39.sw.epilog_crit_edge ], [ 0, %sw.bb308.sw.epilog_crit_edge ], [ 0, %if.then.i130 ], [ 0, %do.body313 ], [ 0, %if.end22.i.sw.epilog_crit_edge ], [ 0, %land.lhs.true.i143.sw.epilog_crit_edge ], [ 0, %if.then26.i144 ], [ 0, %sw.bb337.sw.epilog_crit_edge ], [ 0, %sw.bb340.sw.epilog_crit_edge ], [ 0, %sw.bb379.sw.epilog_crit_edge ], [ 0, %sw.bb382.sw.epilog_crit_edge ], [ 0, %sw.bb383.sw.epilog_crit_edge ], [ 0, %sw.bb394.sw.epilog_crit_edge ], [ 0, %if.then.i205 ], [ 0, %sw.bb396.sw.epilog_crit_edge ], [ 0, %if.then.i213 ], [ 0, %sw.bb398.sw.epilog_crit_edge ], [ 0, %if.then.i221 ], [ 0, %sw.bb399.sw.epilog_crit_edge ], [ 0, %if.then.i229 ], [ 0, %sw.bb283.sw.epilog_crit_edge ], [ 0, %for.body299.sw.epilog_crit_edge ], [ 0, %for.body.i.sw.epilog_crit_edge ], [ 0, %for.inc.i.sw.epilog_crit_edge ], [ 0, %while.body.i.sw.epilog_crit_edge ], [ 0, %sw.epilog18.i.sw.epilog_crit_edge ], [ 0, %for.inc.i190.sw.epilog_crit_edge ], [ 0, %for.inc.i201.sw.epilog_crit_edge ]
  %local_cork.6 = phi i32 [ %local_cork.0, %do.end426 ], [ %local_cork.5, %if.end422 ], [ %local_cork.0, %sw.bb415 ], [ %local_cork.4, %sctp_cmd_send_msg.exit ], [ %local_cork.0, %sw.bb402 ], [ %local_cork.0, %sw.bb400 ], [ 0, %sw.bb384 ], [ %local_cork.0, %sw.bb380 ], [ %local_cork.0, %sw.bb377 ], [ %local_cork.0, %sw.bb372 ], [ %local_cork.0, %sw.bb368 ], [ %local_cork.0, %sw.bb363 ], [ 0, %if.then360 ], [ %local_cork.0, %sw.bb355.sw.epilog_crit_edge ], [ %local_cork.0, %sctp_add_cmd_sf.exit163 ], [ %local_cork.0, %sw.bb343 ], [ %local_cork.0, %sw.bb341 ], [ %local_cork.0, %sw.bb338 ], [ %local_cork.0, %sw.bb333 ], [ %local_cork.0, %sw.bb331 ], [ %local_cork.0, %sw.bb329 ], [ %local_cork.0, %if.then325 ], [ %local_cork.0, %sw.bb280 ], [ %local_cork.0, %sctp_cmd_assoc_failed.exit ], [ %local_cork.0, %sctp_cmd_init_failed.exit ], [ %local_cork.0, %sctp_add_cmd_sf.exit104 ], [ %local_cork.0, %sctp_add_cmd_sf.exit84 ], [ %local_cork.0, %sw.bb241 ], [ %local_cork.0, %if.then239 ], [ %local_cork.0, %sw.bb233.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb221.sw.epilog_crit_edge ], [ %local_cork.0, %if.then231 ], [ %local_cork.0, %if.end219 ], [ %local_cork.0, %sw.bb184.sw.epilog_crit_edge ], [ %local_cork.0, %sctp_cmd_setup_t2.exit ], [ %local_cork.0, %sw.bb180 ], [ %local_cork.0, %sctp_add_cmd_sf.exit65 ], [ %local_cork.0, %sctp_do_ecn_ecne_work.exit.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb167 ], [ %local_cork.0, %sw.bb164 ], [ %local_cork.0, %sw.bb161 ], [ %local_cork.0, %sw.bb158 ], [ %local_cork.3, %if.end155 ], [ %local_cork.0, %do.end144 ], [ %local_cork.0, %do.end120 ], [ %local_cork.0, %sctp_add_cmd_sf.exit50 ], [ %local_cork.0, %sctp_add_cmd_sf.exit43 ], [ %local_cork.0, %land.lhs.true.sw.epilog_crit_edge ], [ %local_cork.0, %if.end82.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb50.sw.epilog_crit_edge ], [ %local_cork.0, %sctp_add_cmd_sf.exit ], [ %local_cork.0, %sw.bb31 ], [ %local_cork.0, %sw.bb29 ], [ %local_cork.0, %sw.bb25 ], [ %local_cork.0, %sw.bb23 ], [ %local_cork.0, %sw.bb16 ], [ 0, %do.end15 ], [ %local_cork.0, %while.body.sw.epilog_crit_edge ], [ 0, %land.lhs.true6.i.sw.epilog_crit_edge ], [ 0, %if.end.i11 ], [ %local_cork.0, %sctp_add_cmd_sf.exit.i ], [ %local_cork.0, %88 ], [ %local_cork.0, %if.then.i18 ], [ %local_cork.0, %sw.bb39.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb308.sw.epilog_crit_edge ], [ %local_cork.0, %if.then.i130 ], [ %local_cork.0, %do.body313 ], [ %local_cork.0, %if.end22.i.sw.epilog_crit_edge ], [ %local_cork.0, %land.lhs.true.i143.sw.epilog_crit_edge ], [ %local_cork.0, %if.then26.i144 ], [ %local_cork.0, %sw.bb337.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb340.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb379.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb382.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb383.sw.epilog_crit_edge ], [ %local_cork.0, %sw.bb394.sw.epilog_crit_edge ], [ %local_cork.0, %if.then.i205 ], [ %local_cork.0, %sw.bb396.sw.epilog_crit_edge ], [ %local_cork.0, %if.then.i213 ], [ %local_cork.0, %sw.bb398.sw.epilog_crit_edge ], [ %local_cork.0, %if.then.i221 ], [ %local_cork.0, %sw.bb399.sw.epilog_crit_edge ], [ %local_cork.0, %if.then.i229 ], [ %local_cork.0, %sw.bb283.sw.epilog_crit_edge ], [ %local_cork.0, %for.body299.sw.epilog_crit_edge ], [ %local_cork.0, %for.body.i.sw.epilog_crit_edge ], [ %local_cork.0, %for.inc.i.sw.epilog_crit_edge ], [ %local_cork.0, %while.body.i.sw.epilog_crit_edge ], [ %local_cork.0, %sw.epilog18.i.sw.epilog_crit_edge ], [ %local_cork.0, %for.inc.i190.sw.epilog_crit_edge ], [ %local_cork.0, %for.inc.i201.sw.epilog_crit_edge ]
  %chunk.2 = phi ptr [ %chunk.1, %do.end426 ], [ %chunk.1, %if.end422 ], [ %chunk.1, %sw.bb415 ], [ %chunk.1, %sctp_cmd_send_msg.exit ], [ %chunk.1, %sw.bb402 ], [ %chunk.1, %sw.bb400 ], [ %chunk.1, %sw.bb384 ], [ %chunk.1, %sw.bb380 ], [ %chunk.1, %sw.bb377 ], [ %chunk.1, %sw.bb372 ], [ %chunk.1, %sw.bb368 ], [ %chunk.1, %sw.bb363 ], [ %chunk.1, %if.then360 ], [ %chunk.1, %sw.bb355.sw.epilog_crit_edge ], [ %chunk.1, %sctp_add_cmd_sf.exit163 ], [ %chunk.1, %sw.bb343 ], [ %chunk.1, %sw.bb341 ], [ %chunk.1, %sw.bb338 ], [ %chunk.1, %sw.bb333 ], [ %chunk.1, %sw.bb331 ], [ %chunk.1, %sw.bb329 ], [ %chunk.1, %if.then325 ], [ %chunk.1, %sw.bb280 ], [ %chunk.1, %sctp_cmd_assoc_failed.exit ], [ %chunk.1, %sctp_cmd_init_failed.exit ], [ %chunk.1, %sctp_add_cmd_sf.exit104 ], [ %chunk.1, %sctp_add_cmd_sf.exit84 ], [ %217, %sw.bb241 ], [ %chunk.1, %if.then239 ], [ %chunk.1, %sw.bb233.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb221.sw.epilog_crit_edge ], [ %chunk.1, %if.then231 ], [ %chunk.1, %if.end219 ], [ %chunk.1, %sw.bb184.sw.epilog_crit_edge ], [ %chunk.1, %sctp_cmd_setup_t2.exit ], [ %chunk.1, %sw.bb180 ], [ %chunk.1, %sctp_add_cmd_sf.exit65 ], [ %chunk.1, %sctp_do_ecn_ecne_work.exit.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb167 ], [ %chunk.1, %sw.bb164 ], [ %chunk.1, %sw.bb161 ], [ %chunk.1, %sw.bb158 ], [ %chunk.1, %if.end155 ], [ %chunk.1, %do.end144 ], [ %chunk.1, %do.end120 ], [ %chunk.1, %sctp_add_cmd_sf.exit50 ], [ %chunk.1, %sctp_add_cmd_sf.exit43 ], [ %chunk.1, %land.lhs.true.sw.epilog_crit_edge ], [ %chunk.1, %if.end82.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb50.sw.epilog_crit_edge ], [ %chunk.1, %sctp_add_cmd_sf.exit ], [ %chunk.1, %sw.bb31 ], [ %chunk.1, %sw.bb29 ], [ %chunk.1, %sw.bb25 ], [ %chunk.1, %sw.bb23 ], [ %chunk.1, %sw.bb16 ], [ %chunk.1, %do.end15 ], [ %chunk.1, %while.body.sw.epilog_crit_edge ], [ %chunk.1, %land.lhs.true6.i.sw.epilog_crit_edge ], [ %chunk.1, %if.end.i11 ], [ %chunk.1, %sctp_add_cmd_sf.exit.i ], [ %chunk.1, %88 ], [ %chunk.1, %if.then.i18 ], [ %chunk.1, %sw.bb39.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb308.sw.epilog_crit_edge ], [ %chunk.1, %if.then.i130 ], [ %chunk.1, %do.body313 ], [ %chunk.1, %if.end22.i.sw.epilog_crit_edge ], [ %chunk.1, %land.lhs.true.i143.sw.epilog_crit_edge ], [ %chunk.1, %if.then26.i144 ], [ %chunk.1, %sw.bb337.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb340.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb379.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb382.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb383.sw.epilog_crit_edge ], [ %chunk.1, %sw.bb394.sw.epilog_crit_edge ], [ %chunk.1, %if.then.i205 ], [ %chunk.1, %sw.bb396.sw.epilog_crit_edge ], [ %chunk.1, %if.then.i213 ], [ %chunk.1, %sw.bb398.sw.epilog_crit_edge ], [ %chunk.1, %if.then.i221 ], [ %chunk.1, %sw.bb399.sw.epilog_crit_edge ], [ %chunk.1, %if.then.i229 ], [ %chunk.1, %sw.bb283.sw.epilog_crit_edge ], [ %chunk.1, %for.body299.sw.epilog_crit_edge ], [ %chunk.1, %for.body.i.sw.epilog_crit_edge ], [ %chunk.1, %for.inc.i.sw.epilog_crit_edge ], [ %chunk.1, %while.body.i.sw.epilog_crit_edge ], [ %chunk.1, %sw.epilog18.i.sw.epilog_crit_edge ], [ %chunk.1, %for.inc.i190.sw.epilog_crit_edge ], [ %chunk.1, %for.inc.i201.sw.epilog_crit_edge ]
  %asoc.addr.1 = phi ptr [ %asoc.addr.0, %do.end426 ], [ %500, %if.end422 ], [ %asoc.addr.0, %sw.bb415 ], [ %asoc.addr.0, %sctp_cmd_send_msg.exit ], [ %asoc.addr.0, %sw.bb402 ], [ %asoc.addr.0, %sw.bb400 ], [ %asoc.addr.0, %sw.bb384 ], [ %asoc.addr.0, %sw.bb380 ], [ %asoc.addr.0, %sw.bb377 ], [ %asoc.addr.0, %sw.bb372 ], [ %asoc.addr.0, %sw.bb368 ], [ %asoc.addr.0, %sw.bb363 ], [ %asoc.addr.0, %if.then360 ], [ null, %sw.bb355.sw.epilog_crit_edge ], [ %asoc.addr.0, %sctp_add_cmd_sf.exit163 ], [ %asoc.addr.0, %sw.bb343 ], [ %asoc.addr.0, %sw.bb341 ], [ %asoc.addr.0, %sw.bb338 ], [ %asoc.addr.0, %sw.bb333 ], [ %asoc.addr.0, %sw.bb331 ], [ %asoc.addr.0, %sw.bb329 ], [ %asoc.addr.0, %if.then325 ], [ %asoc.addr.0, %sw.bb280 ], [ %asoc.addr.0, %sctp_cmd_assoc_failed.exit ], [ %asoc.addr.0, %sctp_cmd_init_failed.exit ], [ %asoc.addr.0, %sctp_add_cmd_sf.exit104 ], [ %asoc.addr.0, %sctp_add_cmd_sf.exit84 ], [ %asoc.addr.0, %sw.bb241 ], [ %asoc.addr.0, %if.then239 ], [ %asoc.addr.0, %sw.bb233.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb221.sw.epilog_crit_edge ], [ %asoc.addr.0, %if.then231 ], [ %asoc.addr.0, %if.end219 ], [ %asoc.addr.0, %sw.bb184.sw.epilog_crit_edge ], [ %asoc.addr.0, %sctp_cmd_setup_t2.exit ], [ %asoc.addr.0, %sw.bb180 ], [ %asoc.addr.0, %sctp_add_cmd_sf.exit65 ], [ %asoc.addr.0, %sctp_do_ecn_ecne_work.exit.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb167 ], [ %asoc.addr.0, %sw.bb164 ], [ %asoc.addr.0, %sw.bb161 ], [ %asoc.addr.0, %sw.bb158 ], [ %asoc.addr.0, %if.end155 ], [ %asoc.addr.0, %do.end144 ], [ %asoc.addr.0, %do.end120 ], [ %asoc.addr.0, %sctp_add_cmd_sf.exit50 ], [ %asoc.addr.0, %sctp_add_cmd_sf.exit43 ], [ %asoc.addr.0, %land.lhs.true.sw.epilog_crit_edge ], [ %asoc.addr.0, %if.end82.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb50.sw.epilog_crit_edge ], [ %asoc.addr.0, %sctp_add_cmd_sf.exit ], [ %asoc.addr.0, %sw.bb31 ], [ %asoc.addr.0, %sw.bb29 ], [ %asoc.addr.0, %sw.bb25 ], [ %asoc.addr.0, %sw.bb23 ], [ %asoc.addr.0, %sw.bb16 ], [ %15, %do.end15 ], [ %asoc.addr.0, %while.body.sw.epilog_crit_edge ], [ null, %land.lhs.true6.i.sw.epilog_crit_edge ], [ null, %if.end.i11 ], [ %asoc.addr.0, %sctp_add_cmd_sf.exit.i ], [ %asoc.addr.0, %88 ], [ %asoc.addr.0, %if.then.i18 ], [ %asoc.addr.0, %sw.bb39.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb308.sw.epilog_crit_edge ], [ %asoc.addr.0, %if.then.i130 ], [ %asoc.addr.0, %do.body313 ], [ %asoc.addr.0, %if.end22.i.sw.epilog_crit_edge ], [ %asoc.addr.0, %land.lhs.true.i143.sw.epilog_crit_edge ], [ %asoc.addr.0, %if.then26.i144 ], [ %asoc.addr.0, %sw.bb337.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb340.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb379.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb382.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb383.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.bb394.sw.epilog_crit_edge ], [ %asoc.addr.0, %if.then.i205 ], [ %asoc.addr.0, %sw.bb396.sw.epilog_crit_edge ], [ %asoc.addr.0, %if.then.i213 ], [ %asoc.addr.0, %sw.bb398.sw.epilog_crit_edge ], [ %asoc.addr.0, %if.then.i221 ], [ %asoc.addr.0, %sw.bb399.sw.epilog_crit_edge ], [ %asoc.addr.0, %if.then.i229 ], [ %asoc.addr.0, %sw.bb283.sw.epilog_crit_edge ], [ %asoc.addr.0, %for.body299.sw.epilog_crit_edge ], [ %asoc.addr.0, %for.body.i.sw.epilog_crit_edge ], [ %asoc.addr.0, %for.inc.i.sw.epilog_crit_edge ], [ %asoc.addr.0, %while.body.i.sw.epilog_crit_edge ], [ %asoc.addr.0, %sw.epilog18.i.sw.epilog_crit_edge ], [ %asoc.addr.0, %for.inc.i190.sw.epilog_crit_edge ], [ %asoc.addr.0, %for.inc.i201.sw.epilog_crit_edge ]
  %tobool430.not = icmp eq i32 %error.1, 0
  br i1 %tobool430.not, label %sw.epilog.while.cond_crit_edge, label %sw.epilog.if.then431_crit_edge

sw.epilog.if.then431_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then431

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then431:                                       ; preds = %sw.epilog.if.then431_crit_edge, %sw.bb95.if.then431_crit_edge, %if.then59, %if.then56.if.then431_crit_edge, %sw.bb50.if.then431_crit_edge, %sw.bb42.if.then431_crit_edge, %cleanup.i
  %asoc.addr.1266 = phi ptr [ %asoc.addr.0, %if.then59 ], [ %asoc.addr.0, %if.then56.if.then431_crit_edge ], [ %asoc.addr.0, %cleanup.i ], [ %asoc.addr.1, %sw.epilog.if.then431_crit_edge ], [ %asoc.addr.0, %sw.bb42.if.then431_crit_edge ], [ %asoc.addr.0, %sw.bb95.if.then431_crit_edge ], [ %asoc.addr.0, %sw.bb50.if.then431_crit_edge ]
  %chunk.2265 = phi ptr [ %chunk.1, %if.then59 ], [ %chunk.1, %if.then56.if.then431_crit_edge ], [ %chunk.1, %cleanup.i ], [ %chunk.2, %sw.epilog.if.then431_crit_edge ], [ %chunk.1, %sw.bb42.if.then431_crit_edge ], [ %chunk.1, %sw.bb95.if.then431_crit_edge ], [ %chunk.1, %sw.bb50.if.then431_crit_edge ]
  %local_cork.6264 = phi i32 [ %local_cork.0, %if.then59 ], [ %local_cork.0, %if.then56.if.then431_crit_edge ], [ %local_cork.0, %cleanup.i ], [ %local_cork.6, %sw.epilog.if.then431_crit_edge ], [ %local_cork.0, %sw.bb42.if.then431_crit_edge ], [ %local_cork.0, %sw.bb95.if.then431_crit_edge ], [ %local_cork.0, %sw.bb50.if.then431_crit_edge ]
  %error.1263 = phi i32 [ -12, %if.then59 ], [ -12, %if.then56.if.then431_crit_edge ], [ -12, %cleanup.i ], [ %error.1, %sw.epilog.if.then431_crit_edge ], [ -12, %sw.bb42.if.then431_crit_edge ], [ -12, %sw.bb95.if.then431_crit_edge ], [ -12, %sw.bb50.if.then431_crit_edge ]
  %501 = ptrtoint ptr %next_cmd.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %next_cmd.i, align 4
  %503 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %last_used_slot.i, align 4
  %cmp.not.i238 = icmp ugt ptr %502, %504
  br i1 %cmp.not.i238, label %sctp_next_cmd.exit242, label %if.then431.while.end444_crit_edge

if.then431.while.end444_crit_edge:                ; preds = %if.then431
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end444

sctp_next_cmd.exit242:                            ; preds = %if.then431
  %incdec.ptr.i239 = getelementptr %struct.sctp_cmd, ptr %502, i32 -1
  %505 = ptrtoint ptr %next_cmd.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store ptr %incdec.ptr.i239, ptr %next_cmd.i, align 4
  %tobool434.not435 = icmp eq ptr %incdec.ptr.i239, null
  br i1 %tobool434.not435, label %sctp_next_cmd.exit242.while.end444_crit_edge, label %sctp_next_cmd.exit242.while.body435_crit_edge

sctp_next_cmd.exit242.while.body435_crit_edge:    ; preds = %sctp_next_cmd.exit242
  br label %while.body435

sctp_next_cmd.exit242.while.end444_crit_edge:     ; preds = %sctp_next_cmd.exit242
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end444

while.body435:                                    ; preds = %sctp_next_cmd.exit249.while.body435_crit_edge, %sctp_next_cmd.exit242.while.body435_crit_edge
  %cmd.0436 = phi ptr [ %incdec.ptr.i246, %sctp_next_cmd.exit249.while.body435_crit_edge ], [ %incdec.ptr.i239, %sctp_next_cmd.exit242.while.body435_crit_edge ]
  %verb436 = getelementptr inbounds %struct.sctp_cmd, ptr %cmd.0436, i32 0, i32 1
  %506 = ptrtoint ptr %verb436 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %verb436, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %507)
  %cmp437 = icmp eq i32 %507, 12
  br i1 %cmp437, label %if.then439, label %while.body435.if.end441_crit_edge

while.body435.if.end441_crit_edge:                ; preds = %while.body435
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end441

if.then439:                                       ; preds = %while.body435
  call void @__sanitizer_cov_trace_pc() #7
  %508 = ptrtoint ptr %cmd.0436 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %cmd.0436, align 4
  call void @sctp_chunk_free(ptr noundef %509) #5
  br label %if.end441

if.end441:                                        ; preds = %if.then439, %while.body435.if.end441_crit_edge
  %510 = ptrtoint ptr %next_cmd.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %next_cmd.i, align 4
  %512 = ptrtoint ptr %last_used_slot.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %last_used_slot.i, align 4
  %cmp.not.i245 = icmp ugt ptr %511, %513
  br i1 %cmp.not.i245, label %sctp_next_cmd.exit249, label %if.end441.while.end444_crit_edge

if.end441.while.end444_crit_edge:                 ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end444

sctp_next_cmd.exit249:                            ; preds = %if.end441
  %incdec.ptr.i246 = getelementptr %struct.sctp_cmd, ptr %511, i32 -1
  %514 = ptrtoint ptr %next_cmd.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store ptr %incdec.ptr.i246, ptr %next_cmd.i, align 4
  %tobool434.not = icmp eq ptr %incdec.ptr.i246, null
  br i1 %tobool434.not, label %sctp_next_cmd.exit249.while.end444_crit_edge, label %sctp_next_cmd.exit249.while.body435_crit_edge

sctp_next_cmd.exit249.while.body435_crit_edge:    ; preds = %sctp_next_cmd.exit249
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body435

sctp_next_cmd.exit249.while.end444_crit_edge:     ; preds = %sctp_next_cmd.exit249
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end444

while.end444:                                     ; preds = %sctp_next_cmd.exit249.while.end444_crit_edge, %if.end441.while.end444_crit_edge, %sctp_next_cmd.exit242.while.end444_crit_edge, %if.then431.while.end444_crit_edge, %sctp_next_cmd.exit.while.end444_crit_edge, %while.cond.while.end444_crit_edge
  %error.2 = phi i32 [ %error.1263, %sctp_next_cmd.exit242.while.end444_crit_edge ], [ %error.1263, %if.then431.while.end444_crit_edge ], [ %error.1263, %sctp_next_cmd.exit249.while.end444_crit_edge ], [ %error.1263, %if.end441.while.end444_crit_edge ], [ 0, %sctp_next_cmd.exit.while.end444_crit_edge ], [ 0, %while.cond.while.end444_crit_edge ]
  %local_cork.7 = phi i32 [ %local_cork.6264, %sctp_next_cmd.exit242.while.end444_crit_edge ], [ %local_cork.6264, %if.then431.while.end444_crit_edge ], [ %local_cork.6264, %sctp_next_cmd.exit249.while.end444_crit_edge ], [ %local_cork.6264, %if.end441.while.end444_crit_edge ], [ %local_cork.0, %sctp_next_cmd.exit.while.end444_crit_edge ], [ %local_cork.0, %while.cond.while.end444_crit_edge ]
  %chunk.3 = phi ptr [ %chunk.2265, %sctp_next_cmd.exit242.while.end444_crit_edge ], [ %chunk.2265, %if.then431.while.end444_crit_edge ], [ %chunk.2265, %sctp_next_cmd.exit249.while.end444_crit_edge ], [ %chunk.2265, %if.end441.while.end444_crit_edge ], [ %chunk.1, %sctp_next_cmd.exit.while.end444_crit_edge ], [ %chunk.1, %while.cond.while.end444_crit_edge ]
  %asoc.addr.2 = phi ptr [ %asoc.addr.1266, %sctp_next_cmd.exit242.while.end444_crit_edge ], [ %asoc.addr.1266, %if.then431.while.end444_crit_edge ], [ %asoc.addr.1266, %sctp_next_cmd.exit249.while.end444_crit_edge ], [ %asoc.addr.1266, %if.end441.while.end444_crit_edge ], [ %asoc.addr.0, %sctp_next_cmd.exit.while.end444_crit_edge ], [ %asoc.addr.0, %while.cond.while.end444_crit_edge ]
  %tobool445.not = icmp eq ptr %asoc.addr.2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event_type)
  %cmp447 = icmp ne i32 %event_type, 1
  %or.cond.not = or i1 %cmp447, %tobool445.not
  %tobool450.not = icmp eq ptr %chunk.3, null
  %or.cond1 = select i1 %or.cond.not, i1 true, i1 %tobool450.not
  br i1 %or.cond1, label %if.else, label %if.then451

if.then451:                                       ; preds = %while.end444
  %end_of_packet = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.3, i32 0, i32 21
  %515 = ptrtoint ptr %end_of_packet to i32
  call void @__asan_load2_noabort(i32 %515)
  %bf.load452 = load i16, ptr %end_of_packet, align 4
  %516 = and i16 %bf.load452, 6144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %516)
  %517 = icmp eq i16 %516, 0
  br i1 %517, label %if.then451.if.end468_crit_edge, label %if.then451.if.end468.sink.split_crit_edge

if.then451.if.end468.sink.split_crit_edge:        ; preds = %if.then451
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end468.sink.split

if.then451.if.end468_crit_edge:                   ; preds = %if.then451
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end468

if.else:                                          ; preds = %while.end444
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local_cork.7)
  %tobool464.not = icmp eq i32 %local_cork.7, 0
  br i1 %tobool464.not, label %if.else.if.end468_crit_edge, label %if.else.if.end468.sink.split_crit_edge

if.else.if.end468.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end468.sink.split

if.else.if.end468_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end468

if.end468.sink.split:                             ; preds = %if.else.if.end468.sink.split_crit_edge, %if.then451.if.end468.sink.split_crit_edge
  %outqueue466 = getelementptr inbounds %struct.sctp_association, ptr %asoc.addr.2, i32 0, i32 61
  call void @sctp_outq_uncork(ptr noundef %outqueue466, i32 noundef %gfp) #5
  br label %if.end468

if.end468:                                        ; preds = %if.end468.sink.split, %if.else.if.end468_crit_edge, %if.then451.if.end468_crit_edge
  %data_ready_signalled = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 37
  %518 = ptrtoint ptr %data_ready_signalled to i32
  call void @__asan_load2_noabort(i32 %518)
  %bf.load469 = load i16, ptr %data_ready_signalled, align 8
  %519 = and i16 %bf.load469, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %519)
  %tobool472.not = icmp eq i16 %519, 0
  br i1 %tobool472.not, label %if.end468.if.end478_crit_edge, label %if.then473

if.end468.if.end478_crit_edge:                    ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end478

if.then473:                                       ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear476 = and i16 %bf.load469, -65
  %520 = ptrtoint ptr %data_ready_signalled to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 %bf.clear476, ptr %data_ready_signalled, align 8
  br label %if.end478

if.end478:                                        ; preds = %if.then473, %if.end468.if.end478_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sackh) #5
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_outq_uncork(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_endpoint_add_asoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_outq_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_cmd_new_state(ptr noundef %asoc, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %state2 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %state, ptr %state2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_cmd_new_state.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_cmd_new_state, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [0 x ptr], ptr @sctp_state_tbl, i32 0, i32 %state
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_cmd_new_state.__UNIQUE_ID_ddebug571, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, ptr noundef %asoc, ptr noundef %4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type.i = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 2
  br i1 %cmp.i.not, label %if.then7, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then7:                                         ; preds = %do.end
  %7 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.i1.not = icmp eq i32 %8, 3
  br i1 %cmp.i1.not, label %land.lhs.true, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.then7
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %10)
  %cmp.i4.not = icmp eq i8 %10, 7
  br i1 %cmp.i4.not, label %if.then12, label %land.lhs.true.if.end13thread-pre-split_crit_edge

land.lhs.true.if.end13thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13thread-pre-split

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @inet_sk_set_state(ptr noundef %1, i32 noundef 1) #5
  br label %if.end13thread-pre-split

if.end13thread-pre-split:                         ; preds = %if.then12, %land.lhs.true.if.end13thread-pre-split_crit_edge
  %11 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %state2, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %if.then7.if.end13_crit_edge
  %12 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %8, %if.then7.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp.i6.not = icmp eq i32 %12, 6
  br i1 %cmp.i6.not, label %land.lhs.true16, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true16:                                  ; preds = %if.end13
  %skc_state.i8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state.i8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state.i8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i10.not = icmp eq i8 %14, 1
  br i1 %cmp.i10.not, label %if.then19, label %land.lhs.true16.if.end22_crit_edge

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @inet_sk_set_state(ptr noundef %1, i32 noundef 8) #5
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %15 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sk_shutdown, align 2
  %17 = or i8 %16, 1
  store i8 %17, ptr %sk_shutdown, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true16.if.end22_crit_edge, %if.end13.if.end22_crit_edge, %do.end.if.end22_crit_edge
  %18 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state2, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %19, label %if.end22.if.end36_crit_edge [
    i32 1, label %if.then25
    i32 3, label %if.then33
  ]

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %rto_initial = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 9
  %21 = ptrtoint ptr %rto_initial to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rto_initial, align 8
  %arrayidx26 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 30, i32 2
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx26, align 4
  %arrayidx29 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 30, i32 1
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %arrayidx29, align 4
  br label %if.end36thread-pre-split

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %cookie = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 16
  %25 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cookie, align 4
  tail call void @kfree(ptr noundef %26) #5
  %27 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cookie, align 4
  br label %if.end36thread-pre-split

if.end36thread-pre-split:                         ; preds = %if.then33, %if.then25
  %28 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr34 = load i32, ptr %state2, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36thread-pre-split, %if.end22.if.end36_crit_edge
  %29 = phi i32 [ %.pr34, %if.end36thread-pre-split ], [ %19, %if.end22.if.end36_crit_edge ]
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %29, label %if.end36.if.end54_crit_edge [
    i32 3, label %if.end36.if.then44_crit_edge
    i32 0, label %if.end36.if.then44_crit_edge35
    i32 6, label %if.end36.if.then44_crit_edge36
  ]

if.end36.if.then44_crit_edge36:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.end36.if.then44_crit_edge35:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.end36.if.then44_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.end36.if.end54_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then44:                                        ; preds = %if.end36.if.then44_crit_edge, %if.end36.if.then44_crit_edge35, %if.end36.if.then44_crit_edge36
  %head.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 49, i32 1
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %32, %head.i
  br i1 %cmp.i.i.not, label %if.then44.if.end49_crit_edge, label %if.then47

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %wait = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then44.if.end49_crit_edge
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i28.not = icmp eq i32 %34, 0
  br i1 %cmp.i28.not, label %if.end49.if.end54_crit_edge, label %if.then52

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %35 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_state_change, align 4
  tail call void %36(ptr noundef %1) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end49.if.end54_crit_edge, %if.end36.if.end54_crit_edge
  %37 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp.i31.not = icmp eq i32 %38, 4
  br i1 %cmp.i31.not, label %land.lhs.true57, label %if.end54.if.end62_crit_edge

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

land.lhs.true57:                                  ; preds = %if.end54
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  %call58 = tail call i32 @sctp_outq_is_empty(ptr noundef %outqueue) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %land.lhs.true57.if.end62_crit_edge

land.lhs.true57.if.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sctp_outq_uncork(ptr noundef %outqueue, i32 noundef 2592) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %land.lhs.true57.if.end62_crit_edge, %if.end54.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_tsnmap_mark(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_init_ack(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_cookie_echo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_shutdown(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_outq_tail(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_packet_transmit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ootb_pkt_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_retransmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_assoc_choose_alter_transport(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_set_primary(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_retransmit_mark(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_do_8_2_transport_strike(ptr noundef %asoc, ptr noundef %transport, i32 noundef %is_hb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_hb)
  %tobool.not = icmp eq i32 %is_hb, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %overall_error_count = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 7
  %0 = ptrtoint ptr %overall_error_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overall_error_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %overall_error_count, align 8
  %state = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.then.if.end18_crit_edge, label %if.then.if.end18.sink.split_crit_edge

if.then.if.end18.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.sink.split

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.else:                                          ; preds = %entry
  %hb_sent = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 3
  %4 = ptrtoint ptr %hb_sent to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %hb_sent, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.else.if.end18_crit_edge, label %if.then4

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then4:                                         ; preds = %if.else
  %state5 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %6 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp6.not = icmp eq i32 %7, 3
  br i1 %cmp6.not, label %if.then4.if.end18.sink.split_crit_edge, label %if.end10

if.then4.if.end18.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.sink.split

if.end10:                                         ; preds = %if.then4
  %overall_error_count8 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 7
  %8 = ptrtoint ptr %overall_error_count8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overall_error_count8, align 8
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr %overall_error_count8, align 8
  %10 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp12.not = icmp eq i32 %.pr, 0
  br i1 %cmp12.not, label %if.end10.if.end18_crit_edge, label %if.end10.if.end18.sink.split_crit_edge

if.end10.if.end18.sink.split_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.sink.split

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18.sink.split:                              ; preds = %if.end10.if.end18.sink.split_crit_edge, %if.then4.if.end18.sink.split_crit_edge, %if.then.if.end18.sink.split_crit_edge
  %error_count = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 38
  %11 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %error_count, align 8
  %inc15 = add i16 %12, 1
  store i16 %inc15, ptr %error_count, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end10.if.end18_crit_edge, %if.else.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 8
  %pf_enable = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 38, i32 31
  %15 = ptrtoint ptr %pf_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %if.end18.if.end34_crit_edge, label %land.lhs.true

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end18
  %state20 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %17 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp21 = icmp eq i32 %18, 2
  br i1 %cmp21, label %land.lhs.true22, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true22:                                  ; preds = %land.lhs.true
  %error_count23 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 38
  %19 = ptrtoint ptr %error_count23 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %error_count23, align 8
  %pathmaxrxt = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 29
  %21 = ptrtoint ptr %pathmaxrxt to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pathmaxrxt, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp25 = icmp ult i16 %20, %22
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true22.if.end34_crit_edge

land.lhs.true22.if.end34_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %pf_retrans = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 32
  %23 = ptrtoint ptr %pf_retrans to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pf_retrans, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %24)
  %cmp31 = icmp ugt i16 %20, %24
  br i1 %cmp31, label %if.then33, label %land.lhs.true27.if.end34_crit_edge

land.lhs.true27.if.end34_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then33:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sctp_assoc_control_transport(ptr noundef %asoc, ptr noundef %transport, i32 noundef 2, i32 noundef 0) #5
  tail call void @sctp_transport_reset_hb_timer(ptr noundef %transport) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true27.if.end34_crit_edge, %land.lhs.true22.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end18.if.end34_crit_edge
  %state35 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %25 = ptrtoint ptr %state35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp36.not = icmp eq i32 %26, 0
  br i1 %cmp36.not, label %if.end34.if.end51_crit_edge, label %land.lhs.true38

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

land.lhs.true38:                                  ; preds = %if.end34
  %error_count39 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 38
  %27 = ptrtoint ptr %error_count39 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %error_count39, align 8
  %pathmaxrxt41 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 29
  %29 = ptrtoint ptr %pathmaxrxt41 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pathmaxrxt41, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp43 = icmp ugt i16 %28, %30
  br i1 %cmp43, label %do.body, label %land.lhs.true38.if.end51_crit_edge

land.lhs.true38.if.end51_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.body:                                          ; preds = %land.lhs.true38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_do_8_2_transport_strike.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_do_8_2_transport_strike, %if.then49)) #5
          to label %do.end [label %if.then49], !srcloc !111

if.then49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_do_8_2_transport_strike.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, ptr noundef %asoc, ptr noundef %ipaddr) #5
  br label %do.end

do.end:                                           ; preds = %if.then49, %do.body
  tail call void @sctp_assoc_control_transport(ptr noundef %asoc, ptr noundef %transport, i32 noundef 1, i32 noundef 0) #5
  br label %if.end51

if.end51:                                         ; preds = %do.end, %land.lhs.true38.if.end51_crit_edge, %if.end34.if.end51_crit_edge
  %error_count52 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 38
  %31 = ptrtoint ptr %error_count52 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %error_count52, align 8
  %ps_retrans = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 33
  %33 = ptrtoint ptr %ps_retrans to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ps_retrans, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp55 = icmp ugt i16 %32, %34
  br i1 %cmp55, label %land.lhs.true57, label %if.end51.if.end67_crit_edge

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true57:                                  ; preds = %if.end51
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 4
  %35 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %primary_path, align 8
  %cmp58 = icmp eq ptr %36, %transport
  br i1 %cmp58, label %land.lhs.true60, label %land.lhs.true57.if.end67_crit_edge

land.lhs.true57.if.end67_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %active_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %37 = ptrtoint ptr %active_path to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %active_path, align 8
  %cmp62.not = icmp eq ptr %38, %transport
  br i1 %cmp62.not, label %land.lhs.true60.if.end67_crit_edge, label %if.then64

land.lhs.true60.if.end67_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then64:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sctp_assoc_set_primary(ptr noundef %asoc, ptr noundef %38) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %land.lhs.true60.if.end67_crit_edge, %land.lhs.true57.if.end67_crit_edge, %if.end51.if.end67_crit_edge
  br i1 %tobool.not, label %if.end67.if.then75_crit_edge, label %lor.lhs.false

if.end67.if.then75_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then75

lor.lhs.false:                                    ; preds = %if.end67
  %hb_sent69 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 3
  %39 = ptrtoint ptr %hb_sent69 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load70 = load i8, ptr %hb_sent69, align 4
  %40 = and i8 %bf.load70, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool74.not = icmp eq i8 %40, 0
  br i1 %tobool74.not, label %lor.lhs.false.if.end81_crit_edge, label %lor.lhs.false.if.then75_crit_edge

lor.lhs.false.if.then75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then75

lor.lhs.false.if.end81_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then75:                                        ; preds = %lor.lhs.false.if.then75_crit_edge, %if.end67.if.then75_crit_edge
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 9
  %41 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rto, align 4
  %mul = shl i32 %42, 1
  %asoc76 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %43 = ptrtoint ptr %asoc76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asoc76, align 8
  %rto_max = getelementptr inbounds %struct.sctp_association, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %rto_max to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rto_max, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %46)
  %48 = ptrtoint ptr %rto to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %rto, align 4
  %max_obs_rto.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 85, i32 1
  %49 = ptrtoint ptr %max_obs_rto.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %max_obs_rto.i, align 8
  %conv.i = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv.i)
  %cmp.i = icmp ult i64 %50, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.then75.if.end81_crit_edge

if.then75.if.end81_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then.i:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 85
  %51 = ptrtoint ptr %max_obs_rto.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv.i, ptr %max_obs_rto.i, align 8
  %52 = call ptr @memset(ptr %stats.i, i32 0, i32 128)
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 6
  %af_specific.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 7
  %53 = ptrtoint ptr %af_specific.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %af_specific.i, align 4
  %sockaddr_len.i = getelementptr inbounds %struct.sctp_af, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %sockaddr_len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sockaddr_len.i, align 4
  %57 = call ptr @memcpy(ptr %stats.i, ptr %ipaddr.i, i32 %56)
  br label %if.end81

if.end81:                                         ; preds = %if.then.i, %if.then75.if.end81_crit_edge, %lor.lhs.false.if.end81_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_lower_cwnd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset_hb_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset_probe_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_asoc_init_active_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_asconf_queue_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_outq_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_sack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_outq_sack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_process_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_assoc_lookup_tsn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_cwr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_assoc_change(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_violation_max_retrans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_control_transport(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_dst_confirm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_update_rto(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_immediate_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_remote_error(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_cmp_addr_exact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_rm_peer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_adaptation_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_authkey(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/sm_sideeffect.c", i32 244, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sctp_generate_t3_rtx_event.__UNIQUE_ID_ddebug562, !1, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/sctp/sm_sideeffect.c", i32 373, i32 3}
!9 = !{ptr @sctp_generate_heartbeat_event.__UNIQUE_ID_ddebug564, !8, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sctp/sm_sideeffect.c", i32 417, i32 3}
!12 = !{ptr @sctp_generate_proto_unreach_event.__UNIQUE_ID_ddebug565, !11, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/sctp/sm_sideeffect.c", i32 453, i32 3}
!15 = !{ptr @sctp_generate_reconf_event.__UNIQUE_ID_ddebug566, !14, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sctp/sm_sideeffect.c", i32 485, i32 3}
!18 = !{ptr @sctp_generate_probe_event.__UNIQUE_ID_ddebug567, !17, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!19 = !{ptr @sctp_timer_events, !20, !"sctp_timer_events", i1 false, i1 false}
!20 = !{!"../net/sctp/sm_sideeffect.c", i32 515, i32 21}
!21 = !{ptr @sctp_do_sm.table, !22, !"table", i1 false, i1 false}
!22 = !{!"../net/sctp/sm_sideeffect.c", i32 1146, i32 20}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/sctp/sm_sideeffect.c", i32 1162, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sctp_do_sm.__UNIQUE_ID_ddebug573, !24, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!27 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sctp/sm_sideeffect.c", i32 1164, i32 2}
!30 = !{ptr @sctp_do_sm.__UNIQUE_ID_ddebug574, !29, !"__UNIQUE_ID_ddebug574", i1 false, i1 false}
!31 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sctp/sm_sideeffect.c", i32 1169, i32 2}
!34 = !{ptr @sctp_do_sm.__UNIQUE_ID_ddebug575, !33, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!35 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/net/sock.h", i32 1750, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/sctp/sm_sideeffect.c", i32 279, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sctp_generate_timeout_event.__UNIQUE_ID_ddebug563, !40, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!43 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/sctp/sm_sideeffect.c", i32 1203, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sctp_side_effects.__UNIQUE_ID_ddebug576, !45, !"__UNIQUE_ID_ddebug576", i1 false, i1 false}
!48 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/sctp/sm_sideeffect.c", i32 1232, i32 3}
!51 = !{ptr @sctp_side_effects._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sctp_side_effects._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/sctp/sm_sideeffect.c", i32 1237, i32 3}
!55 = !{ptr @sctp_side_effects._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sctp_side_effects._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/sctp/sm_sideeffect.c", i32 1242, i32 3}
!59 = !{ptr @sctp_side_effects._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sctp_side_effects._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/sctp/sm_sideeffect.c", i32 1248, i32 3}
!63 = !{ptr @sctp_side_effects._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sctp_side_effects._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/sctp/sm_sideeffect.c", i32 1451, i32 4}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sctp_cmd_interpreter.__UNIQUE_ID_ddebug577, !66, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!69 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/sctp/sm_sideeffect.c", i32 1461, i32 4}
!72 = !{ptr @sctp_cmd_interpreter.__UNIQUE_ID_ddebug578, !71, !"__UNIQUE_ID_ddebug578", i1 false, i1 false}
!73 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/sctp/sm_sideeffect.c", i32 1578, i32 7}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/sctp/sm_sideeffect.c", i32 1593, i32 7}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/sctp/sm_sideeffect.c", i32 1637, i32 4}
!80 = !{ptr @sctp_cmd_interpreter.__UNIQUE_ID_ddebug579, !79, !"__UNIQUE_ID_ddebug579", i1 false, i1 false}
!81 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/sctp/sm_sideeffect.c", i32 1788, i32 4}
!84 = !{ptr @sctp_cmd_interpreter._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sctp_cmd_interpreter._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/sctp/sm_sideeffect.c", i32 870, i32 2}
!88 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sctp_cmd_new_state.__UNIQUE_ID_ddebug571, !87, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!90 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/sctp/sm_sideeffect.c", i32 1092, i32 3}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @sctp_cmd_t1_timer_update.__UNIQUE_ID_ddebug572, !92, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!95 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/sctp/sm_sideeffect.c", i32 592, i32 3}
!98 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sctp_do_8_2_transport_strike.__UNIQUE_ID_ddebug568, !97, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!100 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2148880523, i64 2148880528, i64 2148880541, i64 2148880585, i64 2148880619, i64 2148880640}
!112 = !{i8 0, i8 2}
!113 = !{i64 2158305556, i64 2158306046, i64 2158305593, i64 2158305649, i64 2158305683, i64 2158305707, i64 2158305748, i64 2158305769, i64 2158305797, i64 2158305831}
!114 = !{i64 2158309130, i64 2158309620, i64 2158309167, i64 2158309223, i64 2158309257, i64 2158309281, i64 2158309322, i64 2158309343, i64 2158309371, i64 2158309405}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 2158310816, i64 2158311306, i64 2158310853, i64 2158310909, i64 2158310943, i64 2158310967, i64 2158311008, i64 2158311029, i64 2158311057, i64 2158311091}
!117 = !{i64 2158217716, i64 2158218207, i64 2158217753, i64 2158217809, i64 2158217843, i64 2158217867, i64 2158217908, i64 2158217929, i64 2158217957, i64 2158217991}
!118 = !{i64 2158317840, i64 2158318330, i64 2158317877, i64 2158317933, i64 2158317967, i64 2158317991, i64 2158318032, i64 2158318053, i64 2158318081, i64 2158318115}
