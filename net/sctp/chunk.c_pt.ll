; ModuleID = '/llk/IR_all_yes/net/sctp/chunk.c_pt.bc'
source_filename = "../net/sctp/chunk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sctp_datamsg = type { %struct.list_head, %struct.refcount_struct, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.157, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.157 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.sctp_stream = type { %struct.anon.167, %struct.anon.172, i16, i16, ptr, %union.anon.174, ptr }
%struct.anon.167 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.168, i32, ptr, i8 }
%union.anon.168 = type { i32 }
%struct.anon.172 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.173, i32, i32, i32, i8, i8 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.99, i32, %struct.spinlock }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.163 }
%union.anon.163 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.88, %union.anon.89 }
%union.anon.88 = type { ptr }
%union.anon.89 = type { i64 }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.sctp_hmac = type { i16, ptr, i16 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.109, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon, %struct.list_head, ptr, %union.anon.154, %union.sctp_params, %union.anon.155, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon = type { %struct.list_head }
%union.anon.154 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.155 = type { ptr }
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
%struct.kuid_t = type { i32 }
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
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.sctp_stream_out_ext = type { [3 x i64], [3 x i64], %struct.list_head, %union.anon.169 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { %struct.list_head, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sctp_datamsg_from_user._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sctp_datamsg_from_user = private unnamed_addr constant [23 x i8] c"sctp_datamsg_from_user\00", align 1
@sctp_datamsg_from_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.sctp_datamsg_from_user, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014sctp: %s: asoc:%p frag_point is zero, forcing max_data to default minimum (%zu)\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/sctp/chunk.c\00", [47 x i8] zeroinitializer }, align 32
@sctp_datamsg_from_user._entry_ptr = internal global ptr @sctp_datamsg_from_user._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@sctp_dbg_objcnt_datamsg = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sctp_mtu_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/sctp/sctp.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 6, i64 0, i64 16]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 6, i64 0, i64 16, i64 32]
@___asan_gen_.5 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private constant [20 x i8] c"../net/sctp/chunk.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 178, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/net/sctp/sctp.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 591, i32 6 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @sctp_datamsg_from_user._entry, ptr @sctp_datamsg_from_user._entry_ptr, ptr @sctp_datamsg_from_user._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_datamsg_from_user._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_datamsg_from_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_datamsg_free(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11 = load ptr, ptr %msg, align 4
  %cmp.not12 = icmp eq ptr %.pn11, %msg
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %chunk.0 = getelementptr i8, ptr %.pn13, i32 -24
  tail call void @sctp_chunk_free(ptr noundef %chunk.0) #8
  %1 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @sctp_datamsg_put(ptr noundef %msg)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_datamsg_put(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_datamsg, ptr %msg, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !22
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !23

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !24
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msg, align 4
  %cmp.i.not66.i = icmp eq ptr %2, %msg
  br i1 %cmp.i.not66.i, label %if.then.sctp_datamsg_destroy.exit_crit_edge, label %for.body.lr.ph.i

if.then.sctp_datamsg_destroy.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_datamsg_destroy.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %send_failed.i = getelementptr inbounds %struct.sctp_datamsg, ptr %msg, i32 0, i32 4
  %send_error.i = getelementptr inbounds %struct.sctp_datamsg, ptr %msg, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.067.i = phi ptr [ %2, %for.body.lr.ph.i ], [ %temp.069.i, %for.inc.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %pos.067.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %temp.069.i = load ptr, ptr %pos.067.i, align 4
  %call.i.i61.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.067.i) #8
  br i1 %call.i.i61.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.067.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %pos.067.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pos.067.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %10 = ptrtoint ptr %pos.067.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %pos.067.i, ptr %pos.067.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pos.067.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pos.067.i, ptr %prev.i3.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %pos.067.i, i32 -24
  %12 = ptrtoint ptr %send_failed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %send_failed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %list_del_init.exit.i.for.inc.i_crit_edge, label %if.end.i

list_del_init.exit.i.for.inc.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %list_del_init.exit.i
  %asoc4.i = getelementptr i8, ptr %pos.067.i, i32 68
  %13 = ptrtoint ptr %asoc4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asoc4.i, align 4
  %15 = ptrtoint ptr %send_error.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %send_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not.i = icmp eq i32 %16, 0
  br i1 %tobool5.not.i, label %cond.false.i, label %if.end.i.cond.end.i_crit_edge

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %error6.i = getelementptr inbounds %struct.sctp_association, ptr %14, i32 0, i32 61, i32 4
  %17 = ptrtoint ptr %error6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error6.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %18, %cond.false.i ], [ %16, %if.end.i.cond.end.i_crit_edge ]
  %has_tsn.i = getelementptr i8, ptr %pos.067.i, i32 148
  %19 = ptrtoint ptr %has_tsn.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load7.i = load i16, ptr %has_tsn.i, align 4
  %20 = lshr i16 %bf.load7.i, 14
  %.lobit.i = and i16 %20, 1
  %subscribe.i = getelementptr inbounds %struct.sctp_association, ptr %14, i32 0, i32 87
  %21 = ptrtoint ptr %subscribe.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subscribe.i, align 4
  %23 = and i16 %22, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i.not.i = icmp eq i16 %23, 0
  br i1 %tobool.i.not.i, label %cond.end.i.if.end19.i_crit_edge, label %if.then12.i

cond.end.i.if.end19.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then12.i:                                      ; preds = %cond.end.i
  %call14.i = tail call ptr @sctp_ulpevent_make_send_failed(ptr noundef %14, ptr noundef %add.ptr.i, i16 noundef zeroext %.lobit.i, i32 noundef %cond.i, i32 noundef 2592) #8
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.then12.i.if.end19.i_crit_edge, label %if.then16.i

if.then12.i.if.end19.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %si.i = getelementptr inbounds %struct.sctp_association, ptr %14, i32 0, i32 60, i32 6
  %24 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %si.i, align 4
  %enqueue_event.i = getelementptr inbounds %struct.sctp_stream_interleave, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %enqueue_event.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enqueue_event.i, align 4
  %ulpq.i = getelementptr inbounds %struct.sctp_association, ptr %14, i32 0, i32 62
  %call17.i = tail call i32 %27(ptr noundef %ulpq.i, ptr noundef nonnull %call14.i) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.then12.i.if.end19.i_crit_edge, %cond.end.i.if.end19.i_crit_edge
  %28 = ptrtoint ptr %subscribe.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subscribe.i, align 4
  %30 = and i16 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.i64.not.i = icmp eq i16 %30, 0
  br i1 %tobool.i64.not.i, label %if.end19.i.for.inc.i_crit_edge, label %if.then22.i

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.end19.i
  %call24.i = tail call ptr @sctp_ulpevent_make_send_failed_event(ptr noundef %14, ptr noundef %add.ptr.i, i16 noundef zeroext %.lobit.i, i32 noundef %cond.i, i32 noundef 2592) #8
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.then22.i.for.inc.i_crit_edge, label %if.then26.i

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then26.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %si28.i = getelementptr inbounds %struct.sctp_association, ptr %14, i32 0, i32 60, i32 6
  %31 = ptrtoint ptr %si28.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %si28.i, align 4
  %enqueue_event29.i = getelementptr inbounds %struct.sctp_stream_interleave, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %enqueue_event29.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enqueue_event29.i, align 4
  %ulpq30.i = getelementptr inbounds %struct.sctp_association, ptr %14, i32 0, i32 62
  %call31.i = tail call i32 %34(ptr noundef %ulpq30.i, ptr noundef nonnull %call24.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then26.i, %if.then22.i.for.inc.i_crit_edge, %if.end19.i.for.inc.i_crit_edge, %list_del_init.exit.i.for.inc.i_crit_edge
  tail call void @sctp_chunk_put(ptr noundef %add.ptr.i) #8
  %cmp.i.not.i = icmp eq ptr %temp.069.i, %msg
  br i1 %cmp.i.not.i, label %for.inc.i.sctp_datamsg_destroy.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.sctp_datamsg_destroy.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_datamsg_destroy.exit

sctp_datamsg_destroy.exit:                        ; preds = %for.inc.i.sctp_datamsg_destroy.exit_crit_edge, %if.then.sctp_datamsg_destroy.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_datamsg, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_datamsg, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_datamsg, ptr nonnull @sctp_dbg_objcnt_datamsg, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_datamsg) #8, !srcloc !25
  tail call void @kfree(ptr noundef %msg) #8
  br label %if.end

if.end:                                           ; preds = %sctp_datamsg_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_datamsg_from_user(ptr noundef %asoc, ptr noundef %sinfo, ptr noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 24) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup200_crit_edge, label %if.end

entry.cleanup200_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end:                                           ; preds = %entry
  %refcnt.i.i = getelementptr inbounds %struct.sctp_datamsg, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %refcnt.i.i, align 8
  %send_failed.i.i = getelementptr inbounds %struct.sctp_datamsg, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %send_failed.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %send_failed.i.i, align 4
  %send_error.i.i = getelementptr inbounds %struct.sctp_datamsg, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %send_error.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %send_error.i.i, align 8
  %bf.clear2.i.i = and i8 %bf.load.i.i, 31
  %bf.set3.i.i = or i8 %bf.clear2.i.i, 64
  store i8 %bf.set3.i.i, ptr %send_failed.i.i, align 4
  %expires_at.i.i = getelementptr inbounds %struct.sctp_datamsg, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %expires_at.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %expires_at.i.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_datamsg, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_datamsg, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_datamsg, ptr nonnull @sctp_dbg_objcnt_datamsg, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_datamsg) #8, !srcloc !26
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %10 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %prsctp_capable, align 2
  %11 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not = icmp eq i16 %11, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %sinfo_timetolive = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 5
  %12 = ptrtoint ptr %sinfo_timetolive to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sinfo_timetolive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true5

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sinfo_flags = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 2
  %14 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sinfo_flags, align 4
  %16 = trunc i16 %15 to i6
  %trunc = and i6 %16, -16
  %17 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i6 %trunc, label %land.lhs.true5.if.end15_crit_edge [
    i6 16, label %land.lhs.true5.if.then12_crit_edge
    i6 0, label %land.lhs.true5.if.then12_crit_edge346
  ]

land.lhs.true5.if.then12_crit_edge346:            ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

land.lhs.true5.if.then12_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

land.lhs.true5.if.end15_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true5.if.then12_crit_edge, %land.lhs.true5.if.then12_crit_edge346
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #8
  %add = add i32 %call2.i, %18
  %19 = ptrtoint ptr %expires_at.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %expires_at.i.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true5.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %frag_point = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 50
  %20 = ptrtoint ptr %frag_point to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frag_point, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %if.then20, label %if.end15.if.end29_crit_edge, !prof !27

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then20:                                        ; preds = %if.end15
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %22 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk, align 4
  %si.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  %24 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %si.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  %call23 = tail call fastcc i32 @sctp_min_frag_point(ptr noundef %23, i16 noundef zeroext %27)
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @sctp_datamsg_from_user._rs, ptr noundef nonnull @__func__.sctp_datamsg_from_user) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then20.if.end29_crit_edge, label %do.end

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sctp_datamsg_from_user, ptr noundef %asoc, i32 noundef %call23) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.then20.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %max_data.0 = phi i32 [ %call23, %do.end ], [ %call23, %if.then20.if.end29_crit_edge ], [ %21, %if.end15.if.end29_crit_edge ]
  %call30 = tail call i32 @sctp_auth_send_cid(i32 noundef 0, ptr noundef %asoc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.if.end55_crit_edge, label %if.then32

if.end29.if.end55_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then32:                                        ; preds = %if.end29
  %call33 = tail call ptr @sctp_auth_asoc_get_hmac(ptr noundef %asoc) #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then32.if.end40_crit_edge, label %if.then35

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_len = getelementptr inbounds %struct.sctp_hmac, ptr %call33, i32 0, i32 2
  %28 = ptrtoint ptr %hmac_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hmac_len, align 4
  %conv36 = zext i16 %29 to i32
  %add38 = add nuw nsw i32 %conv36, 11
  %and39 = and i32 %add38, 131068
  %sub = sub i32 %max_data.0, %and39
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then32.if.end40_crit_edge
  %max_data.1 = phi i32 [ %sub, %if.then35 ], [ %max_data.0, %if.then32.if.end40_crit_edge ]
  %sinfo_tsn = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 6
  %30 = ptrtoint ptr %sinfo_tsn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sinfo_tsn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool41.not = icmp eq i32 %31, 0
  br i1 %tobool41.not, label %if.end40.if.else_crit_edge, label %land.lhs.true42

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true42:                                  ; preds = %if.end40
  %sinfo_ssn = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 1
  %32 = ptrtoint ptr %sinfo_ssn to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sinfo_ssn, align 2
  %active_key_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 77
  %34 = ptrtoint ptr %active_key_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %active_key_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp45.not = icmp eq i16 %33, %35
  br i1 %cmp45.not, label %land.lhs.true42.if.else_crit_edge, label %if.then47

land.lhs.true42.if.else_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then47:                                        ; preds = %land.lhs.true42
  %call49 = tail call ptr @sctp_auth_get_shkey(ptr noundef %asoc, i16 noundef zeroext %33) #8
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.then47.errout_crit_edge, label %if.then47.if.end55_crit_edge

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then47.errout_crit_edge:                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.else:                                          ; preds = %land.lhs.true42.if.else_crit_edge, %if.end40.if.else_crit_edge
  %shkey53 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 75
  %36 = ptrtoint ptr %shkey53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %shkey53, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then47.if.end55_crit_edge, %if.end29.if.end55_crit_edge
  %shkey.2 = phi ptr [ null, %if.end29.if.end55_crit_edge ], [ %call49, %if.then47.if.end55_crit_edge ], [ %37, %if.else ]
  %max_data.2 = phi i32 [ %max_data.0, %if.end29.if.end55_crit_edge ], [ %max_data.1, %if.then47.if.end55_crit_edge ], [ %max_data.1, %if.else ]
  %pprev.i.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 10, i32 0, i32 1
  %38 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.not, label %if.end55.if.end70_crit_edge, label %land.lhs.true58

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

land.lhs.true58:                                  ; preds = %if.end55
  %out_qlen = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 3
  %40 = ptrtoint ptr %out_qlen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out_qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp59 = icmp eq i32 %41, 0
  br i1 %cmp59, label %land.lhs.true61, label %land.lhs.true58.if.end70_crit_edge

land.lhs.true58.if.end70_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

land.lhs.true61:                                  ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  %retransmit = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 7
  %42 = ptrtoint ptr %retransmit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %retransmit, align 4
  %cmp.i290 = icmp eq ptr %43, %retransmit
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max_data.2)
  %cmp66 = icmp ugt i32 %1, %max_data.2
  %or.cond = select i1 %cmp.i290, i1 %cmp66, i1 false
  %sub69 = add i32 %max_data.2, -16
  %spec.select287 = select i1 %or.cond, i32 %sub69, i32 %max_data.2
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true61, %land.lhs.true58.if.end70_crit_edge, %if.end55.if.end70_crit_edge
  %first_len.0 = phi i32 [ %max_data.2, %land.lhs.true58.if.end70_crit_edge ], [ %max_data.2, %if.end55.if.end70_crit_edge ], [ %spec.select287, %land.lhs.true61 ]
  %state = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp71 = icmp ult i32 %45, 2
  %sub74 = add i32 %first_len.0, -200
  %spec.select = select i1 %cmp71, i32 %sub74, i32 %first_len.0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %spec.select)
  %cmp76.not = icmp ult i32 %1, %spec.select
  br i1 %cmp76.not, label %if.end70.if.end140_crit_edge, label %if.then78

if.end70.if.end140_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then78:                                        ; preds = %if.end70
  %46 = ptrtoint ptr %send_failed.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load79 = load i8, ptr %send_failed.i.i, align 4
  %bf.clear80 = and i8 %bf.load79, -65
  store i8 %bf.clear80, ptr %send_failed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %spec.select)
  %cmp81 = icmp ugt i32 %1, %spec.select
  br i1 %cmp81, label %do.body85, label %if.then78.if.end140_crit_edge

if.then78.if.end140_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

do.body85:                                        ; preds = %if.then78
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !28
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %48 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net, align 8
  %sctp = getelementptr inbounds %struct.net, ptr %49, i32 0, i32 38
  %50 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sctp, align 8
  %arrayidx103 = getelementptr [34 x i32], ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %arrayidx103 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !11) #8
  %and.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu, align 4
  %arrayidx106 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx106, align 4
  %add107 = add i32 %58, %52
  %59 = inttoptr i32 %add107 to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add108 = add i32 %61, 1
  store i32 %add108, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !29
  %and.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool119.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool119.not, label %if.then128, label %do.body85.if.end140.thread_crit_edge, !prof !27

do.body85.if.end140.thread_crit_edge:             ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140.thread

if.then128:                                       ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %if.end140.thread

if.end140.thread:                                 ; preds = %if.then128, %do.body85.if.end140.thread_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #8, !srcloc !30
  br label %for.body.lr.ph

if.end140:                                        ; preds = %if.then78.if.end140_crit_edge, %if.end70.if.end140_crit_edge
  %first_len.2 = phi i32 [ %spec.select, %if.then78.if.end140_crit_edge ], [ %1, %if.end70.if.end140_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool141.not310 = icmp eq i32 %1, 0
  br i1 %tobool141.not310, label %if.end140.cleanup200_crit_edge, label %if.end140.for.body.lr.ph_crit_edge

if.end140.for.body.lr.ph_crit_edge:               ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

if.end140.cleanup200_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

for.body.lr.ph:                                   ; preds = %if.end140.for.body.lr.ph_crit_edge, %if.end140.thread
  %first_len.2325 = phi i32 [ %spec.select, %if.end140.thread ], [ %first_len.2, %if.end140.for.body.lr.ph_crit_edge ]
  %sinfo_flags155 = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 2
  %si = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %remaining.0311 = phi i32 [ %1, %for.body.lr.ph ], [ %sub185, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.0311, i32 %1)
  %cmp142 = icmp eq i32 %remaining.0311, %1
  %. = select i1 %cmp142, i8 2, i8 0
  %first_len.2.max_data.2 = select i1 %cmp142, i32 %first_len.2325, i32 %max_data.2
  call void @__sanitizer_cov_trace_cmp4(i32 %first_len.2.max_data.2, i32 %remaining.0311)
  %cmp149.not = icmp ult i32 %first_len.2.max_data.2, %remaining.0311
  br i1 %cmp149.not, label %for.body.if.end169_crit_edge, label %if.then151

for.body.if.end169_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then151:                                       ; preds = %for.body
  %63 = ptrtoint ptr %sinfo_flags155 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sinfo_flags155, align 4
  %conv156 = zext i16 %64 to i32
  %and157 = and i32 %conv156, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %lor.lhs.false159, label %if.then151.if.then164_crit_edge

if.then151.if.then164_crit_edge:                  ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then164

lor.lhs.false159:                                 ; preds = %if.then151
  %65 = or i8 %., 1
  %and162 = and i32 %conv156, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %lor.lhs.false159.if.end169_crit_edge, label %lor.lhs.false159.if.then164_crit_edge

lor.lhs.false159.if.then164_crit_edge:            ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then164

lor.lhs.false159.if.end169_crit_edge:             ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then164:                                       ; preds = %lor.lhs.false159.if.then164_crit_edge, %if.then151.if.then164_crit_edge
  %66 = or i8 %., 9
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %lor.lhs.false159.if.end169_crit_edge, %for.body.if.end169_crit_edge
  %frag.1 = phi i8 [ %66, %if.then164 ], [ %65, %lor.lhs.false159.if.end169_crit_edge ], [ %., %for.body.if.end169_crit_edge ]
  %len.1 = phi i32 [ %remaining.0311, %if.then164 ], [ %remaining.0311, %lor.lhs.false159.if.end169_crit_edge ], [ %first_len.2.max_data.2, %for.body.if.end169_crit_edge ]
  %67 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %si, align 4
  %make_datafrag = getelementptr inbounds %struct.sctp_stream_interleave, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %make_datafrag to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %make_datafrag, align 4
  %call171 = tail call ptr %70(ptr noundef %asoc, ptr noundef %sinfo, i32 noundef %len.1, i8 noundef zeroext %frag.1, i32 noundef 3264) #8
  %tobool172.not = icmp eq ptr %call171, null
  br i1 %tobool172.not, label %if.end169.errout_crit_edge, label %if.end174

if.end169.errout_crit_edge:                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end174:                                        ; preds = %if.end169
  %call175 = tail call i32 @sctp_user_addto_chunk(ptr noundef nonnull %call171, i32 noundef %len.1, ptr noundef %from) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176 = icmp slt i32 %call175, 0
  br i1 %cmp176, label %errout_chunk_free, label %if.end179

if.end179:                                        ; preds = %if.end174
  %71 = getelementptr inbounds %struct.sctp_chunk, ptr %call171, i32 0, i32 6
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %shkey.2, ptr %71, align 4
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %call171, i32 0, i32 5
  %73 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skb, align 4
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call171, i32 0, i32 10
  %75 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chunk_hdr, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 19
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %78 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 6
  %79 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %80, %sub.ptr.sub
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 7
  %81 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %82)
  %cmp.i291 = icmp ult i32 %sub.i, %82
  br i1 %cmp.i291, label %do.body4.i, label %__skb_pull.exit, !prof !27

do.body4.i:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

__skb_pull.exit:                                  ; preds = %if.end179
  %add.ptr.i = getelementptr i8, ptr %78, i32 %sub.ptr.sub
  %83 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr.i, ptr %data, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #8
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #8, !srcloc !32
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %__skb_pull.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !27

__skb_pull.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %__skb_pull.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %85 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i.i.i = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sctp_datamsg_assign.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !23

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sctp_datamsg_assign.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_datamsg_assign.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %__skb_pull.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %__skb_pull.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %sctp_datamsg_assign.exit

sctp_datamsg_assign.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sctp_datamsg_assign.exit_crit_edge
  %msg1.i = getelementptr inbounds %struct.sctp_chunk, ptr %call171, i32 0, i32 18
  %86 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i, ptr %msg1.i, align 4
  %frag_list = getelementptr inbounds %struct.sctp_chunk, ptr %call171, i32 0, i32 4
  %87 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %frag_list, ptr noundef %88, ptr noundef nonnull %call7.i.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %sctp_datamsg_assign.exit.for.inc_crit_edge

sctp_datamsg_assign.exit.for.inc_crit_edge:       ; preds = %sctp_datamsg_assign.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i:                                       ; preds = %sctp_datamsg_assign.exit
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %frag_list, ptr %prev.i.i.i, align 4
  %90 = ptrtoint ptr %frag_list to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %frag_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %call171, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev3.i.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %frag_list, ptr %88, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %sctp_datamsg_assign.exit.for.inc_crit_edge
  %sub185 = sub i32 %remaining.0311, %len.1
  %tobool141.not = icmp eq i32 %sub185, 0
  br i1 %tobool141.not, label %for.inc.cleanup200_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup200_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

errout_chunk_free:                                ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sctp_chunk_free(ptr noundef nonnull %call171) #8
  %phi.cast = inttoptr i32 %call175 to ptr
  br label %errout

errout:                                           ; preds = %errout_chunk_free, %if.end169.errout_crit_edge, %if.then47.errout_crit_edge
  %err.2 = phi ptr [ %phi.cast, %errout_chunk_free ], [ inttoptr (i32 -22 to ptr), %if.then47.errout_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end169.errout_crit_edge ]
  %93 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call7.i.i, align 8
  %cmp.i293.not314 = icmp eq ptr %94, %call7.i.i
  br i1 %cmp.i293.not314, label %errout.for.end198_crit_edge, label %errout.for.body194_crit_edge

errout.for.body194_crit_edge:                     ; preds = %errout
  br label %for.body194

errout.for.end198_crit_edge:                      ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end198

for.body194:                                      ; preds = %list_del_init.exit.for.body194_crit_edge, %errout.for.body194_crit_edge
  %pos.0315 = phi ptr [ %temp.0317, %list_del_init.exit.for.body194_crit_edge ], [ %94, %errout.for.body194_crit_edge ]
  %95 = ptrtoint ptr %pos.0315 to i32
  call void @__asan_load4_noabort(i32 %95)
  %temp.0317 = load ptr, ptr %pos.0315, align 4
  %call.i.i295 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0315) #8
  br i1 %call.i.i295, label %if.end.i.i296, label %for.body194.list_del_init.exit_crit_edge

for.body194.list_del_init.exit_crit_edge:         ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i296:                                    ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0315, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %pos.0315 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pos.0315, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i296, %for.body194.list_del_init.exit_crit_edge
  %102 = ptrtoint ptr %pos.0315 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %pos.0315, ptr %pos.0315, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pos.0315, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %pos.0315, ptr %prev.i3.i, align 4
  %add.ptr = getelementptr i8, ptr %pos.0315, i32 -24
  tail call void @sctp_chunk_free(ptr noundef %add.ptr) #8
  %cmp.i293.not = icmp eq ptr %temp.0317, %call7.i.i
  br i1 %cmp.i293.not, label %list_del_init.exit.for.end198_crit_edge, label %list_del_init.exit.for.body194_crit_edge

list_del_init.exit.for.body194_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body194

list_del_init.exit.for.end198_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end198

for.end198:                                       ; preds = %list_del_init.exit.for.end198_crit_edge, %errout.for.end198_crit_edge
  tail call void @sctp_datamsg_put(ptr noundef nonnull %call7.i.i)
  br label %cleanup200

cleanup200:                                       ; preds = %for.end198, %for.inc.cleanup200_crit_edge, %if.end140.cleanup200_crit_edge, %entry.cleanup200_crit_edge
  %retval.0 = phi ptr [ %err.2, %for.end198 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup200_crit_edge ], [ %call7.i.i, %if.end140.cleanup200_crit_edge ], [ %call7.i.i, %for.inc.cleanup200_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_min_frag_point(ptr noundef readonly %sp, i16 noundef zeroext %datasize) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %datasize to i32
  %tobool.not.i.i = icmp eq ptr %sp, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add nuw nsw i32 %conv, 12
  %pf.i.i = getelementptr inbounds %struct.sctp_sock, ptr %sp, i32 0, i32 2
  %0 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf.i.i, align 4
  %af.i.i = getelementptr inbounds %struct.sctp_pf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %af.i.i, align 4
  %net_header_len.i.i = getelementptr inbounds %struct.sctp_af, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %net_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %net_header_len.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add1.i.i = add nuw nsw i32 %add.i.i, %conv.i.i
  %udp_port.i.i = getelementptr inbounds %struct.sctp_sock, ptr %sp, i32 0, i32 16
  %6 = ptrtoint ptr %udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool3.not.i.i = icmp eq i16 %7, 0
  %add8.i.i = add nuw nsw i32 %add1.i.i, 8
  %spec.select2.i.i = select i1 %tobool3.not.i.i, i32 %add1.i.i, i32 %add8.i.i
  br label %land.rhs.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add9.i.i = add nuw nsw i32 %conv, 52
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %overhead.0.i.i = phi i32 [ %add9.i.i, %if.else.i.i ], [ %spec.select2.i.i, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %overhead.0.i.i)
  %cmp.i.i = icmp ugt i32 %overhead.0.i.i, 511
  br i1 %cmp.i.i, label %land.rhs16.i.i, label %land.rhs.i.i.sctp_mtu_payload.exit_crit_edge

land.rhs.i.i.sctp_mtu_payload.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_mtu_payload.exit

land.rhs16.i.i:                                   ; preds = %land.rhs.i.i
  %.b1.i.i = load i1, ptr @__sctp_mtu_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.sctp_mtu_payload.exit_crit_edge, label %if.then23.i.i, !prof !23

land.rhs16.i.i.sctp_mtu_payload.exit_crit_edge:   ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_mtu_payload.exit

if.then23.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__sctp_mtu_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 591, i32 noundef 9, ptr noundef null) #8
  br label %sctp_mtu_payload.exit

sctp_mtu_payload.exit:                            ; preds = %if.then23.i.i, %land.rhs16.i.i.sctp_mtu_payload.exit_crit_edge, %land.rhs.i.i.sctp_mtu_payload.exit_crit_edge
  %spec.select.i.i = phi i32 [ 512, %land.rhs.i.i.sctp_mtu_payload.exit_crit_edge ], [ %overhead.0.i.i, %if.then23.i.i ], [ %overhead.0.i.i, %land.rhs16.i.i.sctp_mtu_payload.exit_crit_edge ]
  %sub.i.i = sub nsw i32 %spec.select.i.i, %overhead.0.i.i
  ret i32 %sub.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_send_cid(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_auth_asoc_get_hmac(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_auth_get_shkey(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_user_addto_chunk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_chunk_abandoned(ptr nocapture noundef readonly %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 4
  %prsctp_capable = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %prsctp_capable to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %prsctp_capable, align 2
  %3 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 18
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 4
  %abandoned = getelementptr inbounds %struct.sctp_datamsg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %abandoned to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1 = load i8, ptr %abandoned, align 4
  %7 = and i8 %bf.load1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6:                                          ; preds = %if.end
  %has_tsn = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 21
  %8 = ptrtoint ptr %has_tsn to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load7 = load i16, ptr %has_tsn, align 4
  %9 = and i16 %bf.load7, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool10.not = icmp eq i16 %9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %10 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chunk_hdr, align 4
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %sinfo = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12
  %sinfo_flags = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sinfo_flags, align 4
  %17 = trunc i16 %16 to i6
  %trunc = and i6 %17, -16
  %18 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.4)
  switch i6 %trunc, label %if.end13.return_crit_edge [
    i6 16, label %land.lhs.true17
    i6 -32, label %land.lhs.true49
    i6 0, label %land.lhs.true80
  ]

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true17:                                  ; preds = %if.end13
  %expires_at = getelementptr inbounds %struct.sctp_datamsg, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %expires_at to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %expires_at, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp19 = icmp slt i32 %sub, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true17.return_crit_edge

land.lhs.true17.return_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then21:                                        ; preds = %land.lhs.true17
  %stream = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60
  %22 = ptrtoint ptr %sinfo to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sinfo, align 4
  %conv.i = zext i16 %23 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #8
  %sent_count = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 2
  %24 = ptrtoint ptr %sent_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sent_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asoc, align 4
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %abandoned_sent = getelementptr inbounds %struct.sctp_association, ptr %27, i32 0, i32 89
  %28 = ptrtoint ptr %abandoned_sent to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %abandoned_sent, align 8
  %inc = add i64 %29, 1
  store i64 %inc, ptr %abandoned_sent, align 8
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %30 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ext, align 4
  %abandoned_sent27 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %31, i32 0, i32 1
  br label %return.sink.split.sink.split

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %abandoned_unsent = getelementptr inbounds %struct.sctp_association, ptr %27, i32 0, i32 88
  %32 = ptrtoint ptr %abandoned_unsent to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %abandoned_unsent, align 8
  %inc32 = add i64 %33, 1
  store i64 %inc32, ptr %abandoned_unsent, align 8
  %ext33 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %34 = ptrtoint ptr %ext33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ext33, align 4
  br label %return.sink.split.sink.split

land.lhs.true49:                                  ; preds = %if.end13
  %sent_count50 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 2
  %36 = ptrtoint ptr %sent_count50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sent_count50, align 4
  %sinfo_timetolive = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12, i32 5
  %38 = ptrtoint ptr %sinfo_timetolive to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sinfo_timetolive, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp52 = icmp ugt i32 %37, %39
  br i1 %cmp52, label %if.then54, label %land.lhs.true49.return_crit_edge

land.lhs.true49.return_crit_edge:                 ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then54:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  %stream57 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60
  %40 = ptrtoint ptr %sinfo to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sinfo, align 4
  %conv.i122 = zext i16 %41 to i32
  %mul17.i.i123 = shl nuw nsw i32 %conv.i122, 4
  %call1.i124 = tail call ptr @__genradix_ptr(ptr noundef %stream57, i32 noundef %mul17.i.i123) #8
  %42 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %asoc, align 4
  %arrayidx63 = getelementptr %struct.sctp_association, ptr %43, i32 0, i32 89, i32 1
  %44 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx63, align 8
  %inc64 = add i64 %45, 1
  store i64 %inc64, ptr %arrayidx63, align 8
  %ext65 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i124, i32 0, i32 2
  %46 = ptrtoint ptr %ext65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ext65, align 4
  %arrayidx67 = getelementptr %struct.sctp_stream_out_ext, ptr %47, i32 0, i32 1, i32 1
  br label %return.sink.split.sink.split

land.lhs.true80:                                  ; preds = %if.end13
  %expires_at82 = getelementptr inbounds %struct.sctp_datamsg, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %expires_at82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %expires_at82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool83.not = icmp eq i32 %49, 0
  br i1 %tobool83.not, label %land.lhs.true80.return_crit_edge, label %land.lhs.true84

land.lhs.true80.return_crit_edge:                 ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true84:                                  ; preds = %land.lhs.true80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub87 = sub i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub87)
  %cmp88 = icmp slt i32 %sub87, 0
  br i1 %cmp88, label %land.lhs.true84.return.sink.split_crit_edge, label %land.lhs.true84.return_crit_edge

land.lhs.true84.return_crit_edge:                 ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true84.return.sink.split_crit_edge:      ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

return.sink.split.sink.split:                     ; preds = %if.then54, %if.else, %if.then25
  %arrayidx67.sink129 = phi ptr [ %arrayidx67, %if.then54 ], [ %35, %if.else ], [ %abandoned_sent27, %if.then25 ]
  %51 = ptrtoint ptr %arrayidx67.sink129 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx67.sink129, align 8
  %inc68 = add i64 %52, 1
  store i64 %inc68, ptr %arrayidx67.sink129, align 8
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %msg, align 4
  %abandoned70 = getelementptr inbounds %struct.sctp_datamsg, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %abandoned70 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load40 = load i8, ptr %abandoned70, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %land.lhs.true84.return.sink.split_crit_edge
  %bf.load1.sink = phi i8 [ %bf.load1, %land.lhs.true84.return.sink.split_crit_edge ], [ %bf.load40, %return.sink.split.sink.split ]
  %abandoned.sink = phi ptr [ %abandoned, %land.lhs.true84.return.sink.split_crit_edge ], [ %abandoned70, %return.sink.split.sink.split ]
  %bf.set95 = or i8 %bf.load1.sink, 32
  %56 = ptrtoint ptr %abandoned.sink to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %bf.set95, ptr %abandoned.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %land.lhs.true84.return_crit_edge, %land.lhs.true80.return_crit_edge, %land.lhs.true49.return_crit_edge, %land.lhs.true17.return_crit_edge, %if.end13.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %land.lhs.true84.return_crit_edge ], [ 0, %land.lhs.true80.return_crit_edge ], [ 0, %land.lhs.true49.return_crit_edge ], [ 0, %land.lhs.true17.return_crit_edge ], [ 0, %if.end13.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sctp_chunk_fail(ptr nocapture noundef readonly %chunk, i32 noundef %error) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 18
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %send_failed = getelementptr inbounds %struct.sctp_datamsg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %send_failed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %send_failed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %send_failed, align 4
  %3 = load ptr, ptr %msg, align 4
  %send_error = getelementptr inbounds %struct.sctp_datamsg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %send_error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %error, ptr %send_error, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_send_failed(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_send_failed_event(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/chunk.c", i32 178, i32 3}
!2 = !{ptr @sctp_datamsg_from_user._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.sctp_datamsg_from_user, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sctp_datamsg_from_user._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sctp_datamsg_from_user._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/net/sctp/sctp.h", i32 591, i32 6}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148306978}
!22 = !{i64 2148221442, i64 2148221474, i64 2148221503, i64 2148221537, i64 2148221568, i64 2148221591}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2150435244}
!25 = !{i64 2148219912, i64 2148219938, i64 2148219967, i64 2148220001, i64 2148220032, i64 2148220055}
!26 = !{i64 2148217447, i64 2148217473, i64 2148217502, i64 2148217536, i64 2148217567, i64 2148217590}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 609928, i64 609989}
!29 = !{i64 612660}
!30 = !{i64 612945}
!31 = !{i64 2154767858, i64 2154768346, i64 2154767895, i64 2154767951, i64 2154767985, i64 2154768009, i64 2154768050, i64 2154768071, i64 2154768099, i64 2154768133}
!32 = !{i64 2148218977, i64 2148219009, i64 2148219038, i64 2148219072, i64 2148219103, i64 2148219126}
