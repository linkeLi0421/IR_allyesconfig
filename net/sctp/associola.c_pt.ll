; ModuleID = '/llk/IR_all_yes/net/sctp/associola.c_pt.bc'
source_filename = "../net/sctp/associola.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.165, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.165 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.161 }
%union.anon.161 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
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
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
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
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.163, %struct.anon.164, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.163 = type { i32, i8, i8, i8 }
%struct.anon.164 = type { i16, i16, i16, i8, i8 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.152, %struct.list_head, ptr, %union.anon.153, %union.sctp_params, %union.anon.154, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon.152 = type { %struct.list_head }
%union.anon.153 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.154 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
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

@sctp_dbg_objcnt_assoc = external dso_local global %struct.atomic_t, align 4
@sctp_association_new.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_association_new\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sctp/associola.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Created asoc %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sctp: Created asoc %p\0A\00", [41 x i8] zeroinitializer }, align 32
@sctp_assoc_rm_peer.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_assoc_rm_peer\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: association:%p addr:%pISpc\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sctp: %s: association:%p addr:%pISpc\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sctp_assoc_add_peer.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_assoc_add_peer\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: association:%p addr:%pISpc state:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sctp: %s: association:%p addr:%pISpc state:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@sctp_assoc_update_retran_path.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 1, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sctp_assoc_update_retran_path\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: association:%p updated new path to addr:%pISpc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sctp: %s: association:%p updated new path to addr:%pISpc\0A\00", [38 x i8] zeroinitializer }, align 32
@sctp_assoc_set_pmtu.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 1, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_assoc_set_pmtu\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: asoc:%p, pmtu:%d, frag_point:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sctp: %s: asoc:%p, pmtu:%d, frag_point:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@sctp_assoc_rwnd_increase.__UNIQUE_ID_ddebug582 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_assoc_rwnd_increase\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: asoc:%p rwnd increased by %d to (%u, %u) - %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sctp: %s: asoc:%p rwnd increased by %d to (%u, %u) - %u\0A\00", [39 x i8] zeroinitializer }, align 32
@sctp_assoc_rwnd_increase.__UNIQUE_ID_ddebug583 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 1, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: sending window update SACK- asoc:%p rwnd:%u a_rwnd:%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"sctp: %s: sending window update SACK- asoc:%p rwnd:%u a_rwnd:%u\0A\00", [63 x i8] zeroinitializer }, align 32
@sctp_assoc_rwnd_decrease.__UNIQUE_ID_ddebug584 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_assoc_rwnd_decrease\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: association:%p has asoc->rwnd:%u, asoc->rwnd_over:%u!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"sctp: %s: association:%p has asoc->rwnd:%u, asoc->rwnd_over:%u!\0A\00", [63 x i8] zeroinitializer }, align 32
@sctp_assoc_rwnd_decrease.__UNIQUE_ID_ddebug585 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 1, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: asoc:%p rwnd decreased by %d to (%u, %u, %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sctp: %s: asoc:%p rwnd decreased by %d to (%u, %u, %u)\0A\00", [40 x i8] zeroinitializer }, align 32
@sctp_assocs_id_lock = external dso_local global %struct.spinlock, align 4
@sctp_assocs_id = external dso_local global %struct.idr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sctp_association_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sctp_timer_events = external dso_local local_unnamed_addr global [12 x ptr], align 4
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&asoc->timers[i])\00", [45 x i8] zeroinitializer }, align 32
@sctp_association_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&asoc->wait\00", [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Attempt to destroy undead association %p!\0A\00", [53 x i8] zeroinitializer }, align 32
@__sctp_mtu_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/sctp/sctp.h\00", [40 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 65535]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 303, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 491, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 599, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1312, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1422, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1501, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1513, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1539, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1567, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 144, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 175, i32 2 }
@___asan_gen_.141 = private constant [24 x i8] c"../net/sctp/associola.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 405, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"../include/net/sctp/sctp.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 591, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 36, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @sctp_association_init.__key, ptr @.str.27, ptr @sctp_association_init.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_association_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_association_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_association_new(ptr noundef %ep, ptr noundef %sk, i32 noundef %scope, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !70

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 11
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 2000) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %ep1.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %ep1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ep, ptr %ep1.i, align 4
  %sk2.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %sk2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk2.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i.i, align 4
  %net.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %net.i, align 8
  %call6.i = tail call i32 @sctp_endpoint_hold(ptr noundef %ep) #9
  %7 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk2.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !72

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !70

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call7.i.i, align 8
  %refcnt.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %refcnt.i, align 4
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 6
  %bind_addr13.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6
  %13 = ptrtoint ptr %bind_addr13.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bind_addr13.i, align 4
  tail call void @sctp_bind_addr_init(ptr noundef %bind_addr.i, i16 noundef zeroext %14) #9
  %state.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state.i, align 4
  %sasoc_cookie_life.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 30, i32 5
  %16 = ptrtoint ptr %sasoc_cookie_life.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sasoc_cookie_life.i, align 8
  %conv.i = zext i32 %17 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000000
  %cookie_life.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %cookie_life.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %mul.i.i, ptr %cookie_life.i, align 8
  %user_frag.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 33
  %19 = ptrtoint ptr %user_frag.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %user_frag.i, align 8
  %user_frag15.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 51
  %21 = ptrtoint ptr %user_frag15.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %user_frag15.i, align 4
  %sasoc_asocmaxrxt.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 30, i32 1
  %22 = ptrtoint ptr %sasoc_asocmaxrxt.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sasoc_asocmaxrxt.i, align 4
  %conv17.i = zext i16 %23 to i32
  %max_retrans.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 13
  %24 = ptrtoint ptr %max_retrans.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv17.i, ptr %max_retrans.i, align 8
  %pf_retrans.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 21
  %25 = ptrtoint ptr %pf_retrans.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pf_retrans.i, align 2
  %pf_retrans18.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 14
  %27 = ptrtoint ptr %pf_retrans18.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %pf_retrans18.i, align 4
  %ps_retrans.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 22
  %28 = ptrtoint ptr %ps_retrans.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ps_retrans.i, align 4
  %ps_retrans19.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 15
  %30 = ptrtoint ptr %ps_retrans19.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %ps_retrans19.i, align 2
  %pf_expose.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 37
  %31 = ptrtoint ptr %pf_expose.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %pf_expose.i, align 8
  %pf_expose21.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 78
  %32 = ptrtoint ptr %pf_expose21.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load22.i = load i8, ptr %pf_expose21.i, align 8
  %sh.diff.i = lshr i16 %bf.load.i, 9
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %bf.shl.i = and i8 %tr.sh.diff.i, 48
  %bf.clear23.i = and i8 %bf.load22.i, -49
  %bf.set.i = or i8 %bf.shl.i, %bf.clear23.i
  store i8 %bf.set.i, ptr %pf_expose21.i, align 8
  %srto_initial.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 28, i32 1
  %33 = ptrtoint ptr %srto_initial.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %srto_initial.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %34) #9
  %rto_initial.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %rto_initial.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call2.i.i, ptr %rto_initial.i, align 8
  %srto_max.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 28, i32 2
  %36 = ptrtoint ptr %srto_max.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %srto_max.i, align 4
  %call2.i6.i = tail call i32 @__msecs_to_jiffies(i32 noundef %37) #9
  %rto_max.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 10
  %38 = ptrtoint ptr %rto_max.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call2.i6.i, ptr %rto_max.i, align 4
  %srto_min.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 28, i32 3
  %39 = ptrtoint ptr %srto_min.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %srto_min.i, align 4
  %call2.i15.i = tail call i32 @__msecs_to_jiffies(i32 noundef %40) #9
  %rto_min.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 11
  %41 = ptrtoint ptr %rto_min.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call2.i15.i, ptr %rto_min.i, align 8
  %hbinterval.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 14
  %42 = ptrtoint ptr %hbinterval.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hbinterval.i, align 4
  %call2.i24.i = tail call i32 @__msecs_to_jiffies(i32 noundef %43) #9
  %hbinterval30.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 19
  %44 = ptrtoint ptr %hbinterval30.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call2.i24.i, ptr %hbinterval30.i, align 8
  %probe_interval.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 15
  %45 = ptrtoint ptr %probe_interval.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %probe_interval.i, align 8
  %call2.i33.i = tail call i32 @__msecs_to_jiffies(i32 noundef %46) #9
  %probe_interval32.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 20
  %47 = ptrtoint ptr %probe_interval32.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call2.i33.i, ptr %probe_interval32.i, align 4
  %encap_port.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 17
  %48 = ptrtoint ptr %encap_port.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %encap_port.i, align 2
  %encap_port33.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 21
  %50 = ptrtoint ptr %encap_port33.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %encap_port33.i, align 8
  %pathmaxrxt.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 18
  %51 = ptrtoint ptr %pathmaxrxt.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pathmaxrxt.i, align 8
  %pathmaxrxt34.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 22
  %53 = ptrtoint ptr %pathmaxrxt34.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %pathmaxrxt34.i, align 2
  %flowlabel.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 19
  %54 = ptrtoint ptr %flowlabel.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flowlabel.i, align 4
  %flowlabel35.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 23
  %56 = ptrtoint ptr %flowlabel35.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %flowlabel35.i, align 4
  %dscp.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 20
  %57 = ptrtoint ptr %dscp.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dscp.i, align 8
  %dscp36.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 24
  %59 = ptrtoint ptr %dscp36.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %dscp36.i, align 8
  %sackdelay.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 24
  %60 = ptrtoint ptr %sackdelay.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sackdelay.i, align 4
  %call2.i42.i = tail call i32 @__msecs_to_jiffies(i32 noundef %61) #9
  %sackdelay38.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 29
  %62 = ptrtoint ptr %sackdelay38.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call2.i42.i, ptr %sackdelay38.i, align 8
  %sackfreq.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 25
  %63 = ptrtoint ptr %sackfreq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sackfreq.i, align 8
  %sackfreq39.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 28
  %65 = ptrtoint ptr %sackfreq39.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %sackfreq39.i, align 4
  %param_flags.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 26
  %66 = ptrtoint ptr %param_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %param_flags.i, align 4
  %param_flags40.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 27
  %68 = ptrtoint ptr %param_flags40.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %param_flags40.i, align 8
  %max_burst.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 13
  %69 = ptrtoint ptr %max_burst.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_burst.i, align 8
  %max_burst41.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 12
  %71 = ptrtoint ptr %max_burst41.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %max_burst41.i, align 4
  %subscribe.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 31
  %72 = ptrtoint ptr %subscribe.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %subscribe.i, align 4
  %subscribe42.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 87
  %74 = ptrtoint ptr %subscribe42.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %subscribe42.i, align 4
  %75 = ptrtoint ptr %rto_initial.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rto_initial.i, align 8
  %arrayidx.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 30, i32 1
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx.i, align 8
  %arrayidx46.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 30, i32 2
  %78 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %76, ptr %arrayidx46.i, align 4
  %arrayidx49.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 30, i32 3
  %79 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %76, ptr %arrayidx49.i, align 8
  %80 = ptrtoint ptr %rto_max.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rto_max.i, align 4
  %mul.i = mul i32 %81, 5
  %arrayidx52.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 30, i32 6
  %82 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul.i, ptr %arrayidx52.i, align 4
  %arrayidx55.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 30, i32 10
  %83 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call2.i42.i, ptr %arrayidx55.i, align 4
  %autoclose.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 34
  %84 = ptrtoint ptr %autoclose.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %autoclose.i, align 4
  %mul56.i = mul i32 %85, 100
  %arrayidx58.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 30, i32 11
  %86 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul56.i, ptr %arrayidx58.i, align 8
  %arrayidx60.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sctp_timer_events to i32))
  %87 = load ptr, ptr @sctp_timer_events, align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.i, ptr noundef %87, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.1.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 1), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.1.i, ptr noundef %88, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.2.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.2.i, ptr noundef %89, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.3.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 3) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 3), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.3.i, ptr noundef %90, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.4.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 4) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 4), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.4.i, ptr noundef %91, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.5.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 5) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 5), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.5.i, ptr noundef %92, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.6.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 6) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 6), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.6.i, ptr noundef %93, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.7.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 7) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 7), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.7.i, ptr noundef %94, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.8.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 8) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 8), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.8.i, ptr noundef %95, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.9.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 9) to i32))
  %96 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 9), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.9.i, ptr noundef %96, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.10.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 10) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 10), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.10.i, ptr noundef %97, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %arrayidx60.11.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 31, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 11) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @sctp_timer_events, i32 0, i32 11), align 4
  tail call void @init_timer_key(ptr noundef %arrayidx60.11.i, ptr noundef %98, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_association_init.__key) #9
  %initmsg.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 32
  %sinit_max_instreams.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 32, i32 1
  %99 = ptrtoint ptr %sinit_max_instreams.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %sinit_max_instreams.i, align 2
  %c.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4
  %sinit_max_instreams62.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 6
  %101 = ptrtoint ptr %sinit_max_instreams62.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %sinit_max_instreams62.i, align 2
  %102 = ptrtoint ptr %initmsg.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %initmsg.i, align 2
  %sinit_num_ostreams65.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 5
  %104 = ptrtoint ptr %sinit_num_ostreams65.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %sinit_num_ostreams65.i, align 8
  %sinit_max_attempts.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 32, i32 2
  %105 = ptrtoint ptr %sinit_max_attempts.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sinit_max_attempts.i, align 2
  %max_init_attempts.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 16
  %107 = ptrtoint ptr %max_init_attempts.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %max_init_attempts.i, align 8
  %sinit_max_init_timeo.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 32, i32 3
  %108 = ptrtoint ptr %sinit_max_init_timeo.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %sinit_max_init_timeo.i, align 2
  %conv68.i = zext i16 %109 to i32
  %call2.i50.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv68.i) #9
  %max_init_timeo.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 18
  %110 = ptrtoint ptr %max_init_timeo.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call2.i50.i, ptr %max_init_timeo.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %111 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %112)
  %cmp70.i = icmp slt i32 %112, 3000
  %div6364.i = lshr i32 %112, 1
  %spec.select.i = select i1 %cmp70.i, i32 1500, i32 %div6364.i
  %113 = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 43
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %spec.select.i, ptr %113, align 4
  %a_rwnd.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 44
  %115 = ptrtoint ptr %a_rwnd.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %spec.select.i, ptr %a_rwnd.i, align 8
  %peer.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 5
  %rwnd76.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 5, i32 1
  %116 = ptrtoint ptr %rwnd76.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 65535, ptr %rwnd76.i, align 8
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #9
  %117 = ptrtoint ptr %rmem_alloc.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 0, ptr %rmem_alloc.i, align 8
  %wait.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 49
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @sctp_association_init.__key.28) #9
  %call80.i = tail call i32 @sctp_generate_tag(ptr noundef %ep) #9
  %118 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call80.i, ptr %c.i, align 8
  %119 = ptrtoint ptr %bind_addr13.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %bind_addr13.i, align 4
  %my_port.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 9
  %121 = ptrtoint ptr %my_port.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %my_port.i, align 4
  %call86.i = tail call i32 @sctp_generate_tsn(ptr noundef %ep) #9
  %initial_tsn.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 7
  %122 = ptrtoint ptr %initial_tsn.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call86.i, ptr %initial_tsn.i, align 4
  %next_tsn.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 35
  %123 = ptrtoint ptr %next_tsn.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call86.i, ptr %next_tsn.i, align 8
  %sub.i = add i32 %call86.i, -1
  %ctsn_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 36
  %124 = ptrtoint ptr %ctsn_ack_point.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %sub.i, ptr %ctsn_ack_point.i, align 4
  %adv_peer_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 37
  %125 = ptrtoint ptr %adv_peer_ack_point.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %sub.i, ptr %adv_peer_ack_point.i, align 8
  %highest_sacked.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 38
  %126 = ptrtoint ptr %highest_sacked.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub.i, ptr %highest_sacked.i, align 4
  %last_cwr_tsn.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 64
  %127 = ptrtoint ptr %last_cwr_tsn.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %sub.i, ptr %last_cwr_tsn.i, align 8
  %addip_serial.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 69
  %128 = ptrtoint ptr %addip_serial.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call86.i, ptr %addip_serial.i, align 4
  %strreset_outseq.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 81
  %129 = ptrtoint ptr %strreset_outseq.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %call86.i, ptr %strreset_outseq.i, align 4
  %addip_chunk_list.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 68
  %130 = ptrtoint ptr %addip_chunk_list.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %addip_chunk_list.i, ptr %addip_chunk_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 68, i32 1
  %131 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %addip_chunk_list.i, ptr %prev.i.i, align 8
  %asconf_ack_list.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 67
  %132 = ptrtoint ptr %asconf_ack_list.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %asconf_ack_list.i, ptr %asconf_ack_list.i, align 4
  %prev.i54.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 67, i32 1
  %133 = ptrtoint ptr %prev.i54.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %asconf_ack_list.i, ptr %prev.i54.i, align 8
  %134 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %peer.i, ptr %peer.i, align 8
  %prev.i55.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i55.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %peer.i, ptr %prev.i55.i, align 4
  %sack_needed.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 5, i32 12
  %136 = ptrtoint ptr %sack_needed.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load100.i = load i16, ptr %sack_needed.i, align 2
  %bf.set106.i = or i16 %bf.load100.i, 96
  store i16 %bf.set106.i, ptr %sack_needed.i, align 2
  %inqueue.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 5
  tail call void @sctp_inq_init(ptr noundef %inqueue.i) #9
  tail call void @sctp_inq_set_th_handler(ptr noundef %inqueue.i, ptr noundef nonnull @sctp_assoc_bh_rcv) #9
  %outqueue.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 61
  tail call void @sctp_outq_init(ptr noundef nonnull %call7.i.i, ptr noundef %outqueue.i) #9
  %ulpq.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 62
  %call110.i = tail call ptr @sctp_ulpq_init(ptr noundef %ulpq.i, ptr noundef nonnull %call7.i.i) #9
  %tobool.not.i = icmp eq ptr %call110.i, null
  br i1 %tobool.not.i, label %sock_hold.exit.i.fail_init.i_crit_edge, label %if.end112.i

sock_hold.exit.i.fail_init.i_crit_edge:           ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_init.i

if.end112.i:                                      ; preds = %sock_hold.exit.i
  %stream.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 60
  %137 = ptrtoint ptr %sinit_num_ostreams65.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %sinit_num_ostreams65.i, align 8
  %call115.i = tail call i32 @sctp_stream_init(ptr noundef %stream.i, i16 noundef zeroext %138, i16 noundef zeroext 0, i32 noundef %gfp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.end118.i, label %if.end112.i.fail_init.i_crit_edge

if.end112.i.fail_init.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_init.i

if.end118.i:                                      ; preds = %if.end112.i
  %pathmtu.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 23
  %139 = ptrtoint ptr %pathmtu.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pathmtu.i, align 8
  %pathmtu119.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 26
  %141 = ptrtoint ptr %pathmtu119.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %pathmtu119.i, align 4
  %142 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sk2.i, align 4
  %si.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 60, i32 6
  %144 = ptrtoint ptr %si.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %si.i.i.i, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %145, align 4
  %conv.i.i = zext i16 %147 to i32
  %tobool.not.i.i.i.i = icmp eq ptr %143, null
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i, 12
  %pf.i.i.i.i = getelementptr inbounds %struct.sctp_sock, ptr %143, i32 0, i32 2
  %148 = ptrtoint ptr %pf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pf.i.i.i.i, align 4
  %af.i.i.i.i = getelementptr inbounds %struct.sctp_pf, ptr %149, i32 0, i32 12
  %150 = ptrtoint ptr %af.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %af.i.i.i.i, align 4
  %net_header_len.i.i.i.i = getelementptr inbounds %struct.sctp_af, ptr %151, i32 0, i32 21
  %152 = ptrtoint ptr %net_header_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %net_header_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %153 to i32
  %add1.i.i.i.i = add nuw nsw i32 %add.i.i.i.i, %conv.i.i.i.i
  %udp_port.i.i.i.i = getelementptr inbounds %struct.sctp_sock, ptr %143, i32 0, i32 16
  %154 = ptrtoint ptr %udp_port.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %udp_port.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool3.not.i.i.i.i = icmp eq i16 %155, 0
  %add8.i.i.i.i = add nuw nsw i32 %add1.i.i.i.i, 8
  %spec.select3.i.i.i.i = select i1 %tobool3.not.i.i.i.i, i32 %add1.i.i.i.i, i32 %add8.i.i.i.i
  br label %if.end10.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #11
  %add9.i.i.i.i = add nuw nsw i32 %conv.i.i, 52
  br label %if.end10.i.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %overhead.0.i.i.i.i = phi i32 [ %add9.i.i.i.i, %if.else.i.i.i.i ], [ %spec.select3.i.i.i.i, %if.then.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool11.not.i.i.i.i = icmp ne i32 %140, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %overhead.0.i.i.i.i, i32 %140)
  %cmp.i.i.i.i = icmp uge i32 %overhead.0.i.i.i.i, %140
  %spec.select.i.i.i.i = select i1 %tobool11.not.i.i.i.i, i1 %cmp.i.i.i.i, i1 false
  br i1 %spec.select.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.end10.i.i.i.i.sctp_assoc_update_frag_point.exit.i_crit_edge

if.end10.i.i.i.i.sctp_assoc_update_frag_point.exit.i_crit_edge: ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_update_frag_point.exit.i

land.rhs16.i.i.i.i:                               ; preds = %if.end10.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__sctp_mtu_payload.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.sctp_assoc_update_frag_point.exit.i_crit_edge, label %if.then23.i.i.i.i, !prof !70

land.rhs16.i.i.i.i.sctp_assoc_update_frag_point.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_update_frag_point.exit.i

if.then23.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__sctp_mtu_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 591, i32 noundef 9, ptr noundef null) #9
  br label %sctp_assoc_update_frag_point.exit.i

sctp_assoc_update_frag_point.exit.i:              ; preds = %if.then23.i.i.i.i, %land.rhs16.i.i.i.i.sctp_assoc_update_frag_point.exit.i_crit_edge, %if.end10.i.i.i.i.sctp_assoc_update_frag_point.exit.i_crit_edge
  %spec.select2.i.i.i.i = phi i32 [ %140, %if.end10.i.i.i.i.sctp_assoc_update_frag_point.exit.i_crit_edge ], [ %overhead.0.i.i.i.i, %if.then23.i.i.i.i ], [ %overhead.0.i.i.i.i, %land.rhs16.i.i.i.i.sctp_assoc_update_frag_point.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select2.i.i.i.i)
  %tobool56.not.i.i.i.i = icmp eq i32 %spec.select2.i.i.i.i, 0
  %sub.i.i.i.i = sub i32 %spec.select2.i.i.i.i, %overhead.0.i.i.i.i
  %cond.i.i.i.i = select i1 %tobool56.not.i.i.i.i, i32 %overhead.0.i.i.i.i, i32 %sub.i.i.i.i
  %156 = ptrtoint ptr %user_frag15.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %user_frag15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i.i = icmp eq i32 %157, 0
  %158 = tail call i32 @llvm.smin.i32(i32 %cond.i.i.i.i, i32 %157) #9
  %frag.0.i.i = select i1 %tobool.not.i.i, i32 %cond.i.i.i.i, i32 %158
  %159 = ptrtoint ptr %si.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %si.i.i.i, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %160, align 4
  %conv7.i.i = zext i16 %162 to i32
  %sub.i.i = sub nsw i32 65532, %conv7.i.i
  %163 = tail call i32 @llvm.smin.i32(i32 %frag.0.i.i, i32 %sub.i.i) #9
  %and.i.i = and i32 %163, -4
  %frag_point.i.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 50
  %164 = ptrtoint ptr %frag_point.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %and.i.i, ptr %frag_point.i.i, align 8
  %165 = ptrtoint ptr %sack_needed.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %bf.load121.i = load i16, ptr %sack_needed.i, align 2
  %bf.set123.i = or i16 %bf.load121.i, 16384
  store i16 %bf.set123.i, ptr %sack_needed.i, align 2
  %166 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sk2.i, align 4
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %169)
  %cmp127.i = icmp eq i16 %169, 10
  br i1 %cmp127.i, label %if.then129.i, label %sctp_assoc_update_frag_point.exit.i.if.end134.i_crit_edge

sctp_assoc_update_frag_point.exit.i.if.end134.i_crit_edge: ; preds = %sctp_assoc_update_frag_point.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134.i

if.then129.i:                                     ; preds = %sctp_assoc_update_frag_point.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set133.i = or i16 %bf.load121.i, 24576
  %170 = ptrtoint ptr %sack_needed.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %bf.set133.i, ptr %sack_needed.i, align 2
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then129.i, %sctp_assoc_update_frag_point.exit.i.if.end134.i_crit_edge
  %asocs.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 1
  %171 = ptrtoint ptr %asocs.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %asocs.i, ptr %asocs.i, align 8
  %prev.i56.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 1, i32 1
  %172 = ptrtoint ptr %prev.i56.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %asocs.i, ptr %prev.i56.i, align 4
  %default_stream.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 7
  %173 = ptrtoint ptr %default_stream.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %default_stream.i, align 8
  %default_stream135.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 54
  %175 = ptrtoint ptr %default_stream135.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %default_stream135.i, align 8
  %default_ppid.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 8
  %176 = ptrtoint ptr %default_ppid.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %default_ppid.i, align 4
  %default_ppid136.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 56
  %178 = ptrtoint ptr %default_ppid136.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %default_ppid136.i, align 4
  %default_flags.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 9
  %179 = ptrtoint ptr %default_flags.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %default_flags.i, align 8
  %default_flags137.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 55
  %181 = ptrtoint ptr %default_flags137.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %default_flags137.i, align 2
  %default_context.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 10
  %182 = ptrtoint ptr %default_context.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %default_context.i, align 4
  %default_context138.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 57
  %184 = ptrtoint ptr %default_context138.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %default_context138.i, align 8
  %default_timetolive.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 11
  %185 = ptrtoint ptr %default_timetolive.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %default_timetolive.i, align 8
  %default_timetolive139.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 58
  %187 = ptrtoint ptr %default_timetolive139.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %default_timetolive139.i, align 4
  %default_rcv_context.i = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 12
  %188 = ptrtoint ptr %default_rcv_context.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %default_rcv_context.i, align 4
  %default_rcv_context140.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 59
  %190 = ptrtoint ptr %default_rcv_context140.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %default_rcv_context140.i, align 8
  %endpoint_shared_keys.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 73
  %191 = ptrtoint ptr %endpoint_shared_keys.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %endpoint_shared_keys.i, ptr %endpoint_shared_keys.i, align 4
  %prev.i57.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 73, i32 1
  %192 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %endpoint_shared_keys.i, ptr %prev.i57.i, align 8
  %call141.i = tail call i32 @sctp_auth_asoc_copy_shkeys(ptr noundef %ep, ptr noundef nonnull %call7.i.i, i32 noundef %gfp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %tobool142.not.i = icmp eq i32 %call141.i, 0
  br i1 %tobool142.not.i, label %if.end144.i, label %stream_free.i

if.end144.i:                                      ; preds = %if.end134.i
  %active_key_id.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 12
  %193 = ptrtoint ptr %active_key_id.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %active_key_id.i, align 4
  %active_key_id145.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 77
  %195 = ptrtoint ptr %active_key_id145.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %194, ptr %active_key_id145.i, align 2
  %strreset_enable.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 14
  %196 = ptrtoint ptr %strreset_enable.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %strreset_enable.i, align 1
  %strreset_enable146.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 79
  %198 = ptrtoint ptr %strreset_enable146.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %strreset_enable146.i, align 1
  %auth_hmacs_list.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 9
  %199 = ptrtoint ptr %auth_hmacs_list.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %auth_hmacs_list.i, align 4
  %tobool147.not.i = icmp eq ptr %200, null
  br i1 %tobool147.not.i, label %if.end144.i.if.end153.i_crit_edge, label %if.then148.i

if.end144.i.if.end153.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.i

if.then148.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #11
  %auth_hmacs.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 14
  %length.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %length.i, align 2
  %conv152.i = zext i16 %202 to i32
  %203 = call ptr @memcpy(ptr %auth_hmacs.i, ptr %200, i32 %conv152.i)
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then148.i, %if.end144.i.if.end153.i_crit_edge
  %auth_chunk_list.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 10
  %204 = ptrtoint ptr %auth_chunk_list.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %auth_chunk_list.i, align 4
  %tobool154.not.i = icmp eq ptr %205, null
  br i1 %tobool154.not.i, label %if.end153.i.if.end4_crit_edge, label %if.then155.i

if.end153.i.if.end4_crit_edge:                    ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then155.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #11
  %auth_chunks.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 15
  %length161.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %length161.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %length161.i, align 2
  %conv162.i = zext i16 %207 to i32
  %208 = call ptr @memcpy(ptr %auth_chunks.i, ptr %205, i32 %conv162.i)
  br label %if.end4

stream_free.i:                                    ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_stream_free(ptr noundef %stream.i) #9
  br label %fail_init.i

fail_init.i:                                      ; preds = %stream_free.i, %if.end112.i.fail_init.i_crit_edge, %sock_hold.exit.i.fail_init.i_crit_edge
  %209 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %sk2.i, align 4
  %skc_refcnt.i58.i = getelementptr inbounds %struct.sock_common, ptr %210, i32 0, i32 19
  %call.i.i.i.i.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i58.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i58.i, i32 1, i32 3, i32 1) #9
  %211 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i58.i, ptr %skc_refcnt.i58.i, i32 1, ptr elementtype(i32) %skc_refcnt.i58.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %211, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i61.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %fail_init.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i60.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i60.i, label %if.end5.i.i.i.i.i.fail_init_crit_edge, label %if.then10.i.i.i.i.i, !prof !70

if.end5.i.i.i.i.i.fail_init_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_init

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i58.i, i32 noundef 3) #9
  br label %fail_init

if.then.i61.i:                                    ; preds = %fail_init.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @sk_free(ptr noundef %210) #9
  br label %fail_init

if.end4:                                          ; preds = %if.then155.i, %if.end153.i.if.end4_crit_edge
  %auth_random.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 13
  %212 = ptrtoint ptr %auth_random.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 -32766, ptr %auth_random.i, align 4
  %length167.i = getelementptr inbounds %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 13, i32 2
  %213 = ptrtoint ptr %length167.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 36, ptr %length167.i, align 2
  %add.ptr.i = getelementptr %struct.sctp_association, ptr %call7.i.i, i32 0, i32 4, i32 13, i32 4
  tail call void @get_random_bytes(ptr noundef %add.ptr.i, i32 noundef 32) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_assoc, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_assoc, i32 1, i32 3, i32 1) #9
  %214 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_assoc, ptr nonnull @sctp_dbg_objcnt_assoc, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_assoc) #9, !srcloc !76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_association_new.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_association_new, %if.then9)) #9
          to label %cleanup [label %if.then9], !srcloc !77

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_association_new.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.4, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

fail_init:                                        ; preds = %if.then.i61.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fail_init_crit_edge
  %215 = ptrtoint ptr %ep1.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ep1.i, align 4
  tail call void @sctp_endpoint_put(ptr noundef %216) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_init, %if.then9, %if.end4, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.then9 ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ null, %fail_init ], [ %call7.i.i, %if.end4 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_association_free(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %asocs = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 1
  %2 = ptrtoint ptr %asocs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %asocs, align 4
  %cmp.i.not = icmp eq ptr %3, %asocs
  br i1 %cmp.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asocs) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %asocs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asocs, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %asocs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %asocs, align 4
  %prev.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %type.i = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i70.not = icmp eq i32 %13, 2
  br i1 %cmp.i70.not, label %land.lhs.true, label %list_del.exit.if.end8_crit_edge

list_del.exit.if.end8_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %list_del.exit
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %cmp.i72.not = icmp eq i8 %15, 10
  br i1 %cmp.i72.not, label %if.then7, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %16 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true.if.end8_crit_edge, %list_del.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %dead = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 2
  %18 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %dead, align 8
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  tail call void @sctp_outq_free(ptr noundef %outqueue) #9
  %ulpq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 62
  tail call void @sctp_ulpq_free(ptr noundef %ulpq) #9
  %inqueue = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 5
  tail call void @sctp_inq_free(ptr noundef %inqueue) #9
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10
  tail call void @sctp_tsnmap_free(ptr noundef %tsn_map) #9
  %stream = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  tail call void @sctp_stream_free(ptr noundef %stream) #9
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %19 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %strreset_chunk, align 4
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.end8.if.end14_crit_edge, label %if.then12

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_chunk_free(ptr noundef nonnull %20) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6
  tail call void @sctp_bind_addr_free(ptr noundef %bind_addr) #9
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 0
  %call16 = tail call i32 @del_timer(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.for.inc_crit_edge, label %if.then18

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.end14.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 1
  %call16.1 = tail call i32 @del_timer(ptr noundef %arrayidx.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1)
  %tobool17.not.1 = icmp eq i32 %call16.1, 0
  br i1 %tobool17.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then18.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then18.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then18.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 2
  %call16.2 = tail call i32 @del_timer(ptr noundef %arrayidx.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.2)
  %tobool17.not.2 = icmp eq i32 %call16.2, 0
  br i1 %tobool17.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then18.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then18.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then18.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 3
  %call16.3 = tail call i32 @del_timer(ptr noundef %arrayidx.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.3)
  %tobool17.not.3 = icmp eq i32 %call16.3, 0
  br i1 %tobool17.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then18.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then18.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then18.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 4
  %call16.4 = tail call i32 @del_timer(ptr noundef %arrayidx.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.4)
  %tobool17.not.4 = icmp eq i32 %call16.4, 0
  br i1 %tobool17.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then18.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then18.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then18.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 5
  %call16.5 = tail call i32 @del_timer(ptr noundef %arrayidx.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.5)
  %tobool17.not.5 = icmp eq i32 %call16.5, 0
  br i1 %tobool17.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then18.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then18.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then18.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 6
  %call16.6 = tail call i32 @del_timer(ptr noundef %arrayidx.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.6)
  %tobool17.not.6 = icmp eq i32 %call16.6, 0
  br i1 %tobool17.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then18.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then18.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then18.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 7
  %call16.7 = tail call i32 @del_timer(ptr noundef %arrayidx.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.7)
  %tobool17.not.7 = icmp eq i32 %call16.7, 0
  br i1 %tobool17.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then18.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then18.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then18.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 8
  %call16.8 = tail call i32 @del_timer(ptr noundef %arrayidx.8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.8)
  %tobool17.not.8 = icmp eq i32 %call16.8, 0
  br i1 %tobool17.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then18.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

if.then18.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then18.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 9
  %call16.9 = tail call i32 @del_timer(ptr noundef %arrayidx.9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.9)
  %tobool17.not.9 = icmp eq i32 %call16.9, 0
  br i1 %tobool17.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then18.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

if.then18.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then18.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 10
  %call16.10 = tail call i32 @del_timer(ptr noundef %arrayidx.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.10)
  %tobool17.not.10 = icmp eq i32 %call16.10, 0
  br i1 %tobool17.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then18.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

if.then18.10:                                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then18.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 11
  %call16.11 = tail call i32 @del_timer(ptr noundef %arrayidx.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.11)
  %tobool17.not.11 = icmp eq i32 %call16.11, 0
  br i1 %tobool17.not.11, label %for.inc.10.for.inc.11_crit_edge, label %if.then18.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.11

if.then18.11:                                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then18.11, %for.inc.10.for.inc.11_crit_edge
  %cookie = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 16
  %21 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cookie, align 4
  tail call void @kfree(ptr noundef %22) #9
  %peer_random = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 19
  %23 = ptrtoint ptr %peer_random to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %peer_random, align 8
  tail call void @kfree(ptr noundef %24) #9
  %peer_chunks = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 20
  %25 = ptrtoint ptr %peer_chunks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %peer_chunks, align 4
  tail call void @kfree(ptr noundef %26) #9
  %peer_hmacs = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 21
  %27 = ptrtoint ptr %peer_hmacs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %peer_hmacs, align 8
  tail call void @kfree(ptr noundef %28) #9
  %29 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer, align 8
  %cmp.i73.not82 = icmp eq ptr %30, %peer
  br i1 %cmp.i73.not82, label %for.inc.11.for.end34_crit_edge, label %for.inc.11.for.body31_crit_edge

for.inc.11.for.body31_crit_edge:                  ; preds = %for.inc.11
  br label %for.body31

for.inc.11.for.end34_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end34

for.body31:                                       ; preds = %list_del_rcu.exit.for.body31_crit_edge, %for.inc.11.for.body31_crit_edge
  %pos.083 = phi ptr [ %temp.085, %list_del_rcu.exit.for.body31_crit_edge ], [ %30, %for.inc.11.for.body31_crit_edge ]
  %31 = ptrtoint ptr %pos.083 to i32
  call void @__asan_load4_noabort(i32 %31)
  %temp.085 = load ptr, ptr %pos.083, align 4
  %call.i.i75 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.083) #9
  br i1 %call.i.i75, label %if.end.i.i78, label %for.body31.list_del_rcu.exit_crit_edge

for.body31.list_del_rcu.exit_crit_edge:           ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i78:                                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i76 = getelementptr inbounds %struct.list_head, ptr %pos.083, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i76 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i76, align 4
  %34 = ptrtoint ptr %pos.083 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pos.083, align 4
  %prev1.i.i.i77 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i77, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i78, %for.body31.list_del_rcu.exit_crit_edge
  %prev.i79 = getelementptr inbounds %struct.list_head, ptr %pos.083, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i79, align 4
  tail call void @sctp_unhash_transport(ptr noundef %pos.083) #9
  tail call void @sctp_transport_free(ptr noundef %pos.083) #9
  %cmp.i73.not = icmp eq ptr %temp.085, %peer
  br i1 %cmp.i73.not, label %list_del_rcu.exit.for.end34_crit_edge, label %list_del_rcu.exit.for.body31_crit_edge

list_del_rcu.exit.for.body31_crit_edge:           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31

list_del_rcu.exit.for.end34_crit_edge:            ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end34

for.end34:                                        ; preds = %list_del_rcu.exit.for.end34_crit_edge, %for.inc.11.for.end34_crit_edge
  %transport_count = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %transport_count to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %transport_count, align 4
  tail call void @sctp_asconf_queue_teardown(ptr noundef %asoc)
  %asconf_addr_del_pending = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 71
  %40 = ptrtoint ptr %asconf_addr_del_pending to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asconf_addr_del_pending, align 4
  tail call void @kfree(ptr noundef %41) #9
  %endpoint_shared_keys = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 73
  tail call void @sctp_auth_destroy_keys(ptr noundef %endpoint_shared_keys) #9
  %asoc_shared_key = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 74
  %42 = ptrtoint ptr %asoc_shared_key to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %asoc_shared_key, align 4
  tail call void @sctp_auth_key_put(ptr noundef %43) #9
  tail call void @sctp_association_put(ptr noundef %asoc)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_outq_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpq_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_inq_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_tsnmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_stream_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_bind_addr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_association_put(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !70

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  %dead.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 2
  %1 = ptrtoint ptr %dead.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dead.i, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end24.i, !prof !72

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 405, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %asoc) #9
  br label %if.end

if.end24.i:                                       ; preds = %if.then
  %ep.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %3 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ep.i, align 4
  tail call void @sctp_endpoint_put(ptr noundef %4) #9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %5 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !70

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #9
  br label %sock_put.exit.i

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @sk_free(ptr noundef %6) #9
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %8 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assoc_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %sock_put.exit.i.if.end28.i_crit_edge, label %if.then26.i

sock_put.exit.i.if.end28.i_crit_edge:             ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then26.i:                                      ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @sctp_assocs_id_lock) #9
  %10 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoc_id.i, align 8
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @sctp_assocs_id, i32 noundef %11) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sctp_assocs_id_lock) #9
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %sock_put.exit.i.if.end28.i_crit_edge
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rmem_alloc.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %rmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %rmem_alloc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not.i = icmp eq i32 %13, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end53.i_crit_edge, label %do.end47.i, !prof !70

if.end28.i.if.end53.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

do.end47.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 418, i32 noundef 9, ptr noundef null) #9
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.end47.i, %if.end28.i.if.end53.i_crit_edge
  %tobool62.not.i = icmp eq ptr %asoc, null
  br i1 %tobool62.not.i, label %if.end53.i.if.end67.i_crit_edge, label %do.end66.i

if.end53.i.if.end67.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

do.end66.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %rcu.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 92
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 1992 to ptr)) #9
  br label %if.end67.i

if.end67.i:                                       ; preds = %do.end66.i, %if.end53.i.if.end67.i_crit_edge
  %call.i.i80.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_assoc, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_assoc, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_assoc, ptr nonnull @sctp_dbg_objcnt_assoc, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_assoc) #9, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.end67.i, %do.end.i, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_unhash_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_asconf_queue_teardown(ptr noundef readonly %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %asconf_ack_list.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 67
  %0 = ptrtoint ptr %asconf_ack_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asconf_ack_list.i, align 4
  %cmp.not17.i = icmp eq ptr %1, %asconf_ack_list.i
  br i1 %cmp.not17.i, label %entry.sctp_assoc_free_asconf_acks.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sctp_assoc_free_asconf_acks.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_free_asconf_acks.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in18.i = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %ack.0.i = getelementptr i8, ptr %.pn.in18.i, i32 -16
  %2 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in18.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in18.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in18.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in18.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in18.i, ptr %.pn.in18.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in18.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in18.i, ptr %prev.i3.i.i, align 4
  tail call void @sctp_chunk_free(ptr noundef %ack.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %asconf_ack_list.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.sctp_assoc_free_asconf_acks.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del_init.exit.i.sctp_assoc_free_asconf_acks.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_free_asconf_acks.exit

sctp_assoc_free_asconf_acks.exit:                 ; preds = %list_del_init.exit.i.sctp_assoc_free_asconf_acks.exit_crit_edge, %entry.sctp_assoc_free_asconf_acks.exit_crit_edge
  %addip_chunk_list.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 68
  %11 = ptrtoint ptr %addip_chunk_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addip_chunk_list.i, align 4
  %cmp.not19.i = icmp eq ptr %12, %addip_chunk_list.i
  br i1 %cmp.not19.i, label %sctp_assoc_free_asconf_acks.exit.sctp_assoc_free_asconf_queue.exit_crit_edge, label %sctp_assoc_free_asconf_acks.exit.for.body.i6_crit_edge

sctp_assoc_free_asconf_acks.exit.for.body.i6_crit_edge: ; preds = %sctp_assoc_free_asconf_acks.exit
  br label %for.body.i6

sctp_assoc_free_asconf_acks.exit.sctp_assoc_free_asconf_queue.exit_crit_edge: ; preds = %sctp_assoc_free_asconf_acks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_free_asconf_queue.exit

for.body.i6:                                      ; preds = %list_del_init.exit.i12.for.body.i6_crit_edge, %sctp_assoc_free_asconf_acks.exit.for.body.i6_crit_edge
  %asconf.020.i = phi ptr [ %tmp.0.i, %list_del_init.exit.i12.for.body.i6_crit_edge ], [ %12, %sctp_assoc_free_asconf_acks.exit.for.body.i6_crit_edge ]
  %13 = ptrtoint ptr %asconf.020.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0.i = load ptr, ptr %asconf.020.i, align 4
  %call.i.i.i5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asconf.020.i) #9
  br i1 %call.i.i.i5, label %if.end.i.i.i9, label %for.body.i6.list_del_init.exit.i12_crit_edge

for.body.i6.list_del_init.exit.i12_crit_edge:     ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i12

if.end.i.i.i9:                                    ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i7 = getelementptr inbounds %struct.list_head, ptr %asconf.020.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i7, align 4
  %16 = ptrtoint ptr %asconf.020.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asconf.020.i, align 4
  %prev1.i.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i8, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i12

list_del_init.exit.i12:                           ; preds = %if.end.i.i.i9, %for.body.i6.list_del_init.exit.i12_crit_edge
  %20 = ptrtoint ptr %asconf.020.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %asconf.020.i, ptr %asconf.020.i, align 4
  %prev.i3.i.i10 = getelementptr inbounds %struct.list_head, ptr %asconf.020.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %asconf.020.i, ptr %prev.i3.i.i10, align 4
  tail call void @sctp_chunk_free(ptr noundef %asconf.020.i) #9
  %cmp.not.i11 = icmp eq ptr %tmp.0.i, %addip_chunk_list.i
  br i1 %cmp.not.i11, label %list_del_init.exit.i12.sctp_assoc_free_asconf_queue.exit_crit_edge, label %list_del_init.exit.i12.for.body.i6_crit_edge

list_del_init.exit.i12.for.body.i6_crit_edge:     ; preds = %list_del_init.exit.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i6

list_del_init.exit.i12.sctp_assoc_free_asconf_queue.exit_crit_edge: ; preds = %list_del_init.exit.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_free_asconf_queue.exit

sctp_assoc_free_asconf_queue.exit:                ; preds = %list_del_init.exit.i12.sctp_assoc_free_asconf_queue.exit_crit_edge, %sctp_assoc_free_asconf_acks.exit.sctp_assoc_free_asconf_queue.exit_crit_edge
  %addip_last_asconf = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 66
  %22 = ptrtoint ptr %addip_last_asconf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addip_last_asconf, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %sctp_assoc_free_asconf_queue.exit.if.end_crit_edge, label %if.then

sctp_assoc_free_asconf_queue.exit.if.end_crit_edge: ; preds = %sctp_assoc_free_asconf_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sctp_assoc_free_asconf_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_chunk_free(ptr noundef nonnull %23) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sctp_assoc_free_asconf_queue.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_destroy_keys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_set_primary(ptr nocapture noundef %asoc, ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_path, align 8
  %cmp.not = icmp ne ptr %1, null
  %cmp3.not = icmp ne ptr %1, %transport
  %not.or.cond = and i1 %cmp.not, %cmp3.not
  %changeover.0 = zext i1 %not.or.cond to i8
  store ptr %transport, ptr %primary_path, align 8
  tail call void @sctp_ulpevent_notify_peer_addr_change(ptr noundef %transport, i32 noundef 4, i32 noundef 0) #9
  %primary_addr = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 5
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %primary_addr, ptr %ipaddr, i32 28)
  %state = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.if.end12_crit_edge [
    i32 2, label %entry.if.then10_crit_edge
    i32 65535, label %entry.if.then10_crit_edge45
  ]

entry.if.then10_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge45
  %active_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %active_path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %transport, ptr %active_path, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %entry.if.end12_crit_edge
  %outstanding_bytes = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 9
  %7 = ptrtoint ptr %outstanding_bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outstanding_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true13, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end12
  %out_qlen = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 3
  %9 = ptrtoint ptr %out_qlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end17_crit_edge

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %cacc = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 47
  %changeover_active = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 47, i32 1
  %11 = ptrtoint ptr %changeover_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %changeover_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %cycling_changeover = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 47, i32 2
  %13 = ptrtoint ptr %cycling_changeover to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %changeover.0, ptr %cycling_changeover, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %14 = ptrtoint ptr %changeover_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %changeover.0, ptr %changeover_active, align 4
  %next_tsn = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %15 = ptrtoint ptr %next_tsn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %next_tsn, align 8
  %17 = ptrtoint ptr %cacc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cacc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %land.lhs.true13.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpevent_notify_peer_addr_change(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_rm_peer(ptr noundef %asoc, ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_assoc_rm_peer.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_assoc_rm_peer, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %peer, i32 0, i32 6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_assoc_rm_peer.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %asoc, ptr noundef %ipaddr) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %peer3 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %retran_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %retran_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retran_path, align 4
  %cmp = icmp eq ptr %1, %peer
  br i1 %cmp, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_assoc_update_retran_path(ptr noundef %asoc)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peer) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del_rcu.exit_crit_edge

if.end5.list_del_rcu.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end5.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %peer, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @sctp_unhash_transport(ptr noundef %peer) #9
  %9 = ptrtoint ptr %peer3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer3, align 8
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %primary_path, align 8
  %cmp9 = icmp eq ptr %12, %peer
  br i1 %cmp9, label %if.then10, label %list_del_rcu.exit.if.end11_crit_edge

list_del_rcu.exit.if.end11_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %list_del_rcu.exit
  %cmp.not.i = icmp ne ptr %peer, null
  %cmp3.not.i = icmp ne ptr %10, %peer
  %not.or.cond.i = and i1 %cmp.not.i, %cmp3.not.i
  %changeover.0.i = zext i1 %not.or.cond.i to i8
  %13 = ptrtoint ptr %primary_path to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %primary_path, align 8
  tail call void @sctp_ulpevent_notify_peer_addr_change(ptr noundef %10, i32 noundef 4, i32 noundef 0) #9
  %primary_addr.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 5
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %10, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %primary_addr.i, ptr %ipaddr.i, i32 28)
  %state.i = getelementptr inbounds %struct.sctp_transport, ptr %10, i32 0, i32 37
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %16, label %if.then10.if.end12.i_crit_edge [
    i32 2, label %if.then10.if.then10.i_crit_edge
    i32 65535, label %if.then10.if.then10.i_crit_edge180
  ]

if.then10.if.then10.i_crit_edge180:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then10.if.then10.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then10.if.end12.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then10.if.then10.i_crit_edge, %if.then10.if.then10.i_crit_edge180
  %active_path.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %18 = ptrtoint ptr %active_path.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %active_path.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then10.if.end12.i_crit_edge
  %outstanding_bytes.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 9
  %19 = ptrtoint ptr %outstanding_bytes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outstanding_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %land.lhs.true13.i, label %if.end12.i.if.end17.i_crit_edge

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

land.lhs.true13.i:                                ; preds = %if.end12.i
  %out_qlen.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 3
  %21 = ptrtoint ptr %out_qlen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not.i = icmp eq i32 %22, 0
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.end11_crit_edge, label %land.lhs.true13.i.if.end17.i_crit_edge

land.lhs.true13.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

land.lhs.true13.i.if.end11_crit_edge:             ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end17.i:                                       ; preds = %land.lhs.true13.i.if.end17.i_crit_edge, %if.end12.i.if.end17.i_crit_edge
  %cacc.i = getelementptr inbounds %struct.sctp_transport, ptr %10, i32 0, i32 47
  %changeover_active.i = getelementptr inbounds %struct.sctp_transport, ptr %10, i32 0, i32 47, i32 1
  %23 = ptrtoint ptr %changeover_active.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %changeover_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.not.i = icmp eq i8 %24, 0
  br i1 %tobool18.not.i, label %if.end17.i.if.end21.i_crit_edge, label %if.then19.i

if.end17.i.if.end21.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %cycling_changeover.i = getelementptr inbounds %struct.sctp_transport, ptr %10, i32 0, i32 47, i32 2
  %25 = ptrtoint ptr %cycling_changeover.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %changeover.0.i, ptr %cycling_changeover.i, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end17.i.if.end21.i_crit_edge
  %26 = ptrtoint ptr %changeover_active.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %changeover.0.i, ptr %changeover_active.i, align 4
  %next_tsn.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %27 = ptrtoint ptr %next_tsn.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_tsn.i, align 8
  %29 = ptrtoint ptr %cacc.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cacc.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end21.i, %land.lhs.true13.i.if.end11_crit_edge, %list_del_rcu.exit.if.end11_crit_edge
  %active_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %30 = ptrtoint ptr %active_path to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %active_path, align 8
  %cmp13 = icmp eq ptr %31, %peer
  br i1 %cmp13, label %if.then14, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %active_path to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %10, ptr %active_path, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %33 = ptrtoint ptr %retran_path to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %retran_path, align 4
  %cmp20 = icmp eq ptr %34, %peer
  br i1 %cmp20, label %if.then21, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %retran_path to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %10, ptr %retran_path, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end17.if.end24_crit_edge
  %last_data_from = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 9
  %36 = ptrtoint ptr %last_data_from to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %last_data_from, align 4
  %cmp26 = icmp eq ptr %37, %peer
  br i1 %cmp26, label %if.then27, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %last_data_from to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %10, ptr %last_data_from, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %39 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %strreset_chunk, align 4
  %tobool31.not = icmp eq ptr %40, null
  br i1 %tobool31.not, label %if.end30.if.end38_crit_edge, label %land.lhs.true

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end30
  %transport33 = getelementptr inbounds %struct.sctp_chunk, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %transport33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %transport33, align 4
  %cmp34 = icmp eq ptr %42, %peer
  br i1 %cmp34, label %if.then35, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %transport33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %10, ptr %transport33, align 4
  tail call void @sctp_transport_reset_reconf_timer(ptr noundef %10) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %init_last_sent_to = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 33
  %44 = ptrtoint ptr %init_last_sent_to to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_last_sent_to, align 8
  %cmp39 = icmp eq ptr %45, %peer
  br i1 %cmp39, label %if.then40, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %init_last_sent_to to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %init_last_sent_to, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38.if.end42_crit_edge
  %shutdown_last_sent_to = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 32
  %47 = ptrtoint ptr %shutdown_last_sent_to to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %shutdown_last_sent_to, align 4
  %cmp43 = icmp eq ptr %48, %peer
  br i1 %cmp43, label %if.then44, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %shutdown_last_sent_to to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %shutdown_last_sent_to, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end42.if.end46_crit_edge
  %addip_last_asconf = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 66
  %50 = ptrtoint ptr %addip_last_asconf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addip_last_asconf, align 8
  %tobool47.not = icmp eq ptr %51, null
  br i1 %tobool47.not, label %if.end46.if.end55_crit_edge, label %land.lhs.true48

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true48:                                  ; preds = %if.end46
  %transport50 = getelementptr inbounds %struct.sctp_chunk, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %transport50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %transport50, align 4
  %cmp51 = icmp eq ptr %53, %peer
  br i1 %cmp51, label %if.then52, label %land.lhs.true48.if.end55_crit_edge

land.lhs.true48.if.end55_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then52:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %transport50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %transport50, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %land.lhs.true48.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %transmitted = getelementptr inbounds %struct.sctp_transport, ptr %peer, i32 0, i32 44
  %55 = ptrtoint ptr %transmitted to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %transmitted, align 4
  %cmp.i.not = icmp eq ptr %56, %transmitted
  br i1 %cmp.i.not, label %if.end55.if.end87_crit_edge, label %if.then58

if.end55.if.end87_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then58:                                        ; preds = %if.end55
  %57 = ptrtoint ptr %active_path to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %active_path, align 8
  %59 = ptrtoint ptr %transmitted to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn174 = load ptr, ptr %transmitted, align 4
  %cmp67.not175 = icmp eq ptr %.pn174, %transmitted
  br i1 %cmp67.not175, label %if.then58.for.end_crit_edge, label %if.then58.for.body_crit_edge

if.then58.for.body_crit_edge:                     ; preds = %if.then58
  br label %for.body

if.then58.for.end_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then58.for.body_crit_edge
  %.pn176 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn174, %if.then58.for.body_crit_edge ]
  %transport70 = getelementptr i8, ptr %.pn176, i32 148
  %60 = ptrtoint ptr %transport70 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %transport70, align 4
  %rtt_in_progress = getelementptr i8, ptr %.pn176, i32 156
  %61 = ptrtoint ptr %rtt_in_progress to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load = load i16, ptr %rtt_in_progress, align 4
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %rtt_in_progress, align 4
  %62 = ptrtoint ptr %.pn176 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn = load ptr, ptr %.pn176, align 4
  %cmp67.not = icmp eq ptr %.pn, %transmitted
  br i1 %cmp67.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then58.for.end_crit_edge
  %63 = ptrtoint ptr %transmitted to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %transmitted, align 4
  %cmp.i.not.i = icmp eq ptr %64, %transmitted
  br i1 %cmp.i.not.i, label %for.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end.list_splice_tail_init.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %transmitted76 = getelementptr inbounds %struct.sctp_transport, ptr %58, i32 0, i32 44
  %prev.i172 = getelementptr inbounds %struct.sctp_transport, ptr %58, i32 0, i32 44, i32 1
  %65 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i172, align 4
  %prev2.i.i = getelementptr inbounds %struct.sctp_transport, ptr %peer, i32 0, i32 44, i32 1
  %67 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %64, ptr %66, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %transmitted76, ptr %68, align 4
  store ptr %68, ptr %prev.i172, align 4
  %72 = ptrtoint ptr %transmitted to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %transmitted, ptr %transmitted, align 4
  store ptr %transmitted, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end.list_splice_tail_init.exit_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.sctp_transport, ptr %58, i32 0, i32 39, i32 0, i32 1
  %73 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.not, label %if.then79, label %list_splice_tail_init.exit.if.end87_crit_edge

list_splice_tail_init.exit.if.end87_crit_edge:    ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then79:                                        ; preds = %list_splice_tail_init.exit
  %T3_rtx_timer = getelementptr inbounds %struct.sctp_transport, ptr %58, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %58, i32 0, i32 9
  %76 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rto, align 4
  %add = add i32 %77, %75
  %call81 = tail call i32 @mod_timer(ptr noundef %T3_rtx_timer, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then83, label %if.then79.if.end87_crit_edge

if.then79.if.end87_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = tail call i32 @sctp_transport_hold(ptr noundef %58) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.then79.if.end87_crit_edge, %list_splice_tail_init.exit.if.end87_crit_edge, %if.end55.if.end87_crit_edge
  %out_chunk_list = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 1
  %78 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %ch.1177 = load ptr, ptr %out_chunk_list, align 4
  %cmp95.not178 = icmp eq ptr %ch.1177, %out_chunk_list
  br i1 %cmp95.not178, label %if.end87.for.end110_crit_edge, label %if.end87.for.body98_crit_edge

if.end87.for.body98_crit_edge:                    ; preds = %if.end87
  br label %for.body98

if.end87.for.end110_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body98:                                       ; preds = %for.inc104.for.body98_crit_edge, %if.end87.for.body98_crit_edge
  %ch.1179 = phi ptr [ %ch.1, %for.inc104.for.body98_crit_edge ], [ %ch.1177, %if.end87.for.body98_crit_edge ]
  %transport99 = getelementptr inbounds %struct.sctp_chunk, ptr %ch.1179, i32 0, i32 19
  %79 = ptrtoint ptr %transport99 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %transport99, align 4
  %cmp100 = icmp eq ptr %80, %peer
  br i1 %cmp100, label %if.then101, label %for.body98.for.inc104_crit_edge

for.body98.for.inc104_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

if.then101:                                       ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %transport99 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %transport99, align 4
  br label %for.inc104

for.inc104:                                       ; preds = %if.then101, %for.body98.for.inc104_crit_edge
  %82 = ptrtoint ptr %ch.1179 to i32
  call void @__asan_load4_noabort(i32 %82)
  %ch.1 = load ptr, ptr %ch.1179, align 4
  %cmp95.not = icmp eq ptr %ch.1, %out_chunk_list
  br i1 %cmp95.not, label %for.inc104.for.end110_crit_edge, label %for.inc104.for.body98_crit_edge

for.inc104.for.body98_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body98

for.inc104.for.end110_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.end110:                                       ; preds = %for.inc104.for.end110_crit_edge, %if.end87.for.end110_crit_edge
  %transport_count = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 2
  %83 = ptrtoint ptr %transport_count to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %transport_count, align 4
  %dec = add i16 %84, -1
  store i16 %dec, ptr %transport_count, align 4
  tail call void @sctp_ulpevent_notify_peer_addr_change(ptr noundef %peer, i32 noundef 2, i32 noundef 0) #9
  tail call void @sctp_transport_free(ptr noundef %peer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_update_retran_path(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %retran_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %retran_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retran_path, align 4
  %transport_count = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %transport_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %active_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_path, align 8
  %cmp6 = icmp eq ptr %5, %1
  br i1 %cmp6, label %land.lhs.true, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 37
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp10 = icmp eq i32 %7, 2
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.cond.preheader_crit_edge

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %land.lhs.true.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %sctp_trans_elect_best.exit.for.cond.outer_crit_edge, %for.cond.preheader
  %trans_next.0.ph = phi ptr [ null, %for.cond.preheader ], [ %retval.0.i68, %sctp_trans_elect_best.exit.for.cond.outer_crit_edge ]
  %trans.0.in.ph = phi ptr [ %1, %for.cond.preheader ], [ %trans.0, %sctp_trans_elect_best.exit.for.cond.outer_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %trans.0.in = phi ptr [ %trans.0.in.ph, %for.cond.outer ], [ %trans.0, %for.cond.backedge ]
  %8 = ptrtoint ptr %trans.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %trans.0 = load ptr, ptr %trans.0.in, align 8
  %cmp16 = icmp eq ptr %trans.0, %peer
  br i1 %cmp16, label %for.cond.for.cond.backedge_crit_edge, label %if.end19

for.cond.for.cond.backedge_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end19:                                         ; preds = %for.cond
  %state20 = getelementptr inbounds %struct.sctp_transport, ptr %trans.0, i32 0, i32 37
  %9 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp21 = icmp eq i32 %10, 3
  br i1 %cmp21, label %if.end19.for.cond.backedge_crit_edge, label %if.end24

if.end19.for.cond.backedge_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end19.for.cond.backedge_crit_edge, %for.cond.for.cond.backedge_crit_edge
  br label %for.cond

if.end24:                                         ; preds = %if.end19
  %cmp.i = icmp eq ptr %trans_next.0.ph, null
  %cmp1.i = icmp eq ptr %trans.0, %trans_next.0.ph
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.end24.sctp_trans_elect_best.exit_crit_edge, label %if.end.i

if.end24.sctp_trans_elect_best.exit_crit_edge:    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_elect_best.exit

if.end.i:                                         ; preds = %if.end24
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %10, label %sw.default.i.i [
    i32 2, label %if.end.i.sctp_trans_score.exit.i_crit_edge
    i32 65535, label %sw.bb1.i.i
    i32 1, label %sw.bb2.i.i
  ]

if.end.i.sctp_trans_score.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit.i

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit.i

sctp_trans_score.exit.i:                          ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i.sctp_trans_score.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %sw.default.i.i ], [ 1, %sw.bb2.i.i ], [ 2, %sw.bb1.i.i ], [ 3, %if.end.i.sctp_trans_score.exit.i_crit_edge ]
  %state.i25.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_next.0.ph, i32 0, i32 37
  %12 = ptrtoint ptr %state.i25.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i25.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %13, label %sw.default.i28.i [
    i32 2, label %sctp_trans_score.exit.i.sctp_trans_score.exit30.i_crit_edge
    i32 65535, label %sw.bb1.i26.i
    i32 1, label %sw.bb2.i27.i
  ]

sctp_trans_score.exit.i.sctp_trans_score.exit30.i_crit_edge: ; preds = %sctp_trans_score.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit30.i

sw.bb1.i26.i:                                     ; preds = %sctp_trans_score.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit30.i

sw.bb2.i27.i:                                     ; preds = %sctp_trans_score.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit30.i

sw.default.i28.i:                                 ; preds = %sctp_trans_score.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit30.i

sctp_trans_score.exit30.i:                        ; preds = %sw.default.i28.i, %sw.bb2.i27.i, %sw.bb1.i26.i, %sctp_trans_score.exit.i.sctp_trans_score.exit30.i_crit_edge
  %retval.0.i29.i = phi i8 [ 0, %sw.default.i28.i ], [ 1, %sw.bb2.i27.i ], [ 2, %sw.bb1.i26.i ], [ 3, %sctp_trans_score.exit.i.sctp_trans_score.exit30.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i, i8 %retval.0.i29.i)
  %cmp4.i = icmp ugt i8 %retval.0.i.i, %retval.0.i29.i
  br i1 %cmp4.i, label %sctp_trans_score.exit30.i.sctp_trans_elect_best.exit_crit_edge, label %if.else.i

sctp_trans_score.exit30.i.sctp_trans_elect_best.exit_crit_edge: ; preds = %sctp_trans_score.exit30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_elect_best.exit

if.else.i:                                        ; preds = %sctp_trans_score.exit30.i
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i, i8 %retval.0.i29.i)
  %cmp9.i = icmp eq i8 %retval.0.i.i, %retval.0.i29.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i.sctp_trans_elect_best.exit_crit_edge

if.else.i.sctp_trans_elect_best.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_elect_best.exit

if.then11.i:                                      ; preds = %if.else.i
  %error_count.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_next.0.ph, i32 0, i32 38
  %15 = ptrtoint ptr %error_count.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %error_count.i.i, align 8
  %error_count1.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans.0, i32 0, i32 38
  %17 = ptrtoint ptr %error_count1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %error_count1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp.i.i = icmp ugt i16 %16, %18
  br i1 %cmp.i.i, label %if.then11.i.sctp_trans_elect_best.exit_crit_edge, label %if.else.i.i

if.then11.i.sctp_trans_elect_best.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_elect_best.exit

if.else.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp8.i.i = icmp eq i16 %16, %18
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %if.else.i.i.if.else13.i.i_crit_edge

if.else.i.i.if.else13.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %last_time_heard.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans.0, i32 0, i32 25
  %19 = ptrtoint ptr %last_time_heard.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %last_time_heard.i.i, align 8
  %last_time_heard10.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_next.0.ph, i32 0, i32 25
  %21 = ptrtoint ptr %last_time_heard10.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %last_time_heard10.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp3.i.i.i.i = icmp sgt i64 %20, %22
  br i1 %cmp3.i.i.i.i, label %land.lhs.true.i.i.sctp_trans_elect_best.exit_crit_edge, label %land.lhs.true.i.i.if.else13.i.i_crit_edge

land.lhs.true.i.i.if.else13.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

land.lhs.true.i.i.sctp_trans_elect_best.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_elect_best.exit

if.else13.i.i:                                    ; preds = %land.lhs.true.i.i.if.else13.i.i_crit_edge, %if.else.i.i.if.else13.i.i_crit_edge
  br label %sctp_trans_elect_best.exit

sctp_trans_elect_best.exit:                       ; preds = %if.else13.i.i, %land.lhs.true.i.i.sctp_trans_elect_best.exit_crit_edge, %if.then11.i.sctp_trans_elect_best.exit_crit_edge, %if.else.i.sctp_trans_elect_best.exit_crit_edge, %sctp_trans_score.exit30.i.sctp_trans_elect_best.exit_crit_edge, %if.end24.sctp_trans_elect_best.exit_crit_edge
  %retval.0.i68 = phi ptr [ %trans.0, %if.end24.sctp_trans_elect_best.exit_crit_edge ], [ %trans.0, %sctp_trans_score.exit30.i.sctp_trans_elect_best.exit_crit_edge ], [ %trans_next.0.ph, %if.else.i.sctp_trans_elect_best.exit_crit_edge ], [ %trans_next.0.ph, %if.else13.i.i ], [ %trans.0, %if.then11.i.sctp_trans_elect_best.exit_crit_edge ], [ %trans.0, %land.lhs.true.i.i.sctp_trans_elect_best.exit_crit_edge ]
  %state25 = getelementptr inbounds %struct.sctp_transport, ptr %retval.0.i68, i32 0, i32 37
  %23 = ptrtoint ptr %state25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp26 = icmp eq i32 %24, 2
  %cmp32 = icmp eq ptr %trans.0, %1
  %or.cond = select i1 %cmp26, i1 true, i1 %cmp32
  br i1 %or.cond, label %for.end, label %sctp_trans_elect_best.exit.for.cond.outer_crit_edge

sctp_trans_elect_best.exit.for.cond.outer_crit_edge: ; preds = %sctp_trans_elect_best.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.outer

for.end:                                          ; preds = %sctp_trans_elect_best.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %retran_path to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i68, ptr %retran_path, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_assoc_update_retran_path.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_assoc_update_retran_path, %if.then47)) #9
          to label %cleanup [label %if.then47], !srcloc !77

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %retran_path to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %retran_path, align 4
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %27, i32 0, i32 6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_assoc_update_retran_path.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %asoc, ptr noundef %ipaddr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %for.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset_reconf_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_transport_hold(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_assoc_add_peer(ptr noundef %asoc, ptr noundef %addr, i32 noundef %gfp, i32 noundef %peer_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sin_port, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_assoc_add_peer.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_assoc_add_peer, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_assoc_add_peer.__UNIQUE_ID_ddebug565, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %asoc, ptr noundef %addr, i32 noundef %peer_state) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %peer4 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %port5 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %port5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.then7, label %do.end.for.cond.i.preheader_crit_edge

do.end.for.cond.i.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %port5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %3, ptr %port5, align 2
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then7, %do.end.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %sctp_cmp_addr_exact.exit.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %t.0.in.i = phi ptr [ %t.0.i, %sctp_cmp_addr_exact.exit.i.for.cond.i_crit_edge ], [ %peer4, %for.cond.i.preheader ]
  %7 = ptrtoint ptr %t.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %t.0.i = load ptr, ptr %t.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %t.0.i, %peer4
  br i1 %cmp.not.i, label %for.cond.i.if.end19_crit_edge, label %for.body.i

for.cond.i.if.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.body.i:                                       ; preds = %for.cond.i
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 4
  %call.i.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %9) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.sctp_cmp_addr_exact.exit.i_crit_edge, label %if.end.i.i, !prof !72

for.body.i.sctp_cmp_addr_exact.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_cmp_addr_exact.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %t.0.i, i32 0, i32 6
  %cmp_addr.i.i = getelementptr inbounds %struct.sctp_af, ptr %call.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %cmp_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmp_addr.i.i, align 4
  %call4.i.i = tail call i32 %11(ptr noundef %addr, ptr noundef %ipaddr.i) #9
  br label %sctp_cmp_addr_exact.exit.i

sctp_cmp_addr_exact.exit.i:                       ; preds = %if.end.i.i, %for.body.i.sctp_cmp_addr_exact.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call4.i.i, %if.end.i.i ], [ 0, %for.body.i.sctp_cmp_addr_exact.exit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %sctp_cmp_addr_exact.exit.i.for.cond.i_crit_edge, label %sctp_assoc_lookup_paddr.exit

sctp_cmp_addr_exact.exit.i.for.cond.i_crit_edge:  ; preds = %sctp_cmp_addr_exact.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

sctp_assoc_lookup_paddr.exit:                     ; preds = %sctp_cmp_addr_exact.exit.i
  %tobool12.not = icmp eq ptr %t.0.i, null
  br i1 %tobool12.not, label %sctp_assoc_lookup_paddr.exit.if.end19_crit_edge, label %if.then13

sctp_assoc_lookup_paddr.exit.if.end19_crit_edge:  ; preds = %sctp_assoc_lookup_paddr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then13:                                        ; preds = %sctp_assoc_lookup_paddr.exit
  %state = getelementptr inbounds %struct.sctp_transport, ptr %t.0.i, i32 0, i32 37
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %13)
  %cmp14 = icmp eq i32 %13, 65535
  br i1 %cmp14, label %if.then16, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %state, align 4
  br label %cleanup

if.end19:                                         ; preds = %sctp_assoc_lookup_paddr.exit.if.end19_crit_edge, %for.cond.i.if.end19_crit_edge
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 8
  %call21 = tail call ptr @sctp_transport_new(ptr noundef %16, ptr noundef %addr, i32 noundef %gfp) #9
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  tail call void @sctp_transport_set_owner(ptr noundef nonnull %call21, ptr noundef %asoc) #9
  %hbinterval = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 19
  %17 = ptrtoint ptr %hbinterval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hbinterval, align 8
  %hbinterval25 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 20
  %19 = ptrtoint ptr %hbinterval25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %hbinterval25, align 8
  %probe_interval = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 20
  %20 = ptrtoint ptr %probe_interval to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %probe_interval, align 4
  %probe_interval26 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 21
  %22 = ptrtoint ptr %probe_interval26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %probe_interval26, align 4
  %encap_port = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 21
  %23 = ptrtoint ptr %encap_port to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %encap_port, align 8
  %encap_port27 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 28
  %25 = ptrtoint ptr %encap_port27 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %encap_port27, align 8
  %pathmaxrxt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 22
  %26 = ptrtoint ptr %pathmaxrxt to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pathmaxrxt, align 2
  %pathmaxrxt28 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 29
  %28 = ptrtoint ptr %pathmaxrxt28 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %pathmaxrxt28, align 2
  %pf_retrans = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 14
  %29 = ptrtoint ptr %pf_retrans to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pf_retrans, align 4
  %pf_retrans29 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 32
  %31 = ptrtoint ptr %pf_retrans29 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %pf_retrans29, align 2
  %ps_retrans = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 15
  %32 = ptrtoint ptr %ps_retrans to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ps_retrans, align 2
  %ps_retrans30 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 33
  %34 = ptrtoint ptr %ps_retrans30 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %ps_retrans30, align 4
  %sackdelay = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 29
  %35 = ptrtoint ptr %sackdelay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sackdelay, align 8
  %sackdelay31 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 22
  %37 = ptrtoint ptr %sackdelay31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sackdelay31, align 8
  %sackfreq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 28
  %38 = ptrtoint ptr %sackfreq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sackfreq, align 4
  %sackfreq32 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 23
  %40 = ptrtoint ptr %sackfreq32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %sackfreq32, align 4
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %42)
  %cmp34 = icmp eq i16 %42, 10
  br i1 %cmp34, label %if.then36, label %if.end24.if.end43_crit_edge

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then36:                                        ; preds = %if.end24
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 2
  %43 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sin6_flowinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool37.not = icmp eq i32 %44, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %44, 1048575
  %flowlabel = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 30
  %or = or i32 %and, 1048576
  %45 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or, ptr %flowlabel, align 4
  br label %if.end43

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %flowlabel40 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 23
  %46 = ptrtoint ptr %flowlabel40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flowlabel40, align 4
  %flowlabel41 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 30
  %48 = ptrtoint ptr %flowlabel41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %flowlabel41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38, %if.end24.if.end43_crit_edge
  %dscp = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 24
  %49 = ptrtoint ptr %dscp to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dscp, align 8
  %dscp44 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 31
  %51 = ptrtoint ptr %dscp44 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %dscp44, align 8
  %param_flags = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 27
  %52 = ptrtoint ptr %param_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %param_flags, align 8
  %param_flags45 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 35
  %54 = ptrtoint ptr %param_flags45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %param_flags45, align 4
  tail call void @sctp_transport_route(ptr noundef nonnull %call21, ptr noundef null, ptr noundef %1) #9
  %pathmtu = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 26
  %55 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pathmtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool46.not = icmp eq i32 %56, 0
  %pathmtu54 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 34
  %57 = ptrtoint ptr %pathmtu54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pathmtu54, align 8
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 %56)
  %cond56 = select i1 %tobool46.not, i32 %58, i32 %59
  tail call void @sctp_assoc_set_pmtu(ptr noundef %asoc, i32 noundef %cond56)
  %pmtu_pending = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 3
  %60 = ptrtoint ptr %pmtu_pending to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load = load i8, ptr %pmtu_pending, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %pmtu_pending, align 4
  %packet = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 45
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6
  %61 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %bind_addr, align 4
  %63 = ptrtoint ptr %port5 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %port5, align 2
  tail call void @sctp_packet_init(ptr noundef %packet, ptr noundef nonnull %call21, i16 noundef zeroext %62, i16 noundef zeroext %64) #9
  %65 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pathmtu, align 4
  %mul = shl i32 %66, 2
  %mul63 = shl i32 %66, 1
  %67 = tail call i32 @llvm.umax.i32(i32 %mul63, i32 4380)
  %68 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %67)
  %cwnd = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 13
  %69 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %cwnd, align 4
  %ssthresh = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 14
  %70 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 65535, ptr %ssthresh, align 8
  %partial_bytes_acked = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 15
  %71 = ptrtoint ptr %partial_bytes_acked to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %partial_bytes_acked, align 4
  %flight_size = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 16
  %72 = ptrtoint ptr %flight_size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %flight_size, align 8
  %burst_limited = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 17
  %73 = ptrtoint ptr %burst_limited to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %burst_limited, align 4
  %rto_initial = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 9
  %74 = ptrtoint ptr %rto_initial to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rto_initial, align 8
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 9
  %76 = ptrtoint ptr %rto to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rto, align 4
  %max_obs_rto.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 85, i32 1
  %77 = ptrtoint ptr %max_obs_rto.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %max_obs_rto.i, align 8
  %conv.i = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %conv.i)
  %cmp.i = icmp ult i64 %78, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end43.sctp_max_rto.exit_crit_edge

if.end43.sctp_max_rto.exit_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_max_rto.exit

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %stats.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 85
  %79 = ptrtoint ptr %max_obs_rto.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv.i, ptr %max_obs_rto.i, align 8
  %80 = call ptr @memset(ptr %stats.i, i32 0, i32 128)
  %ipaddr.i196 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 6
  %af_specific.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 7
  %81 = ptrtoint ptr %af_specific.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %af_specific.i, align 4
  %sockaddr_len.i = getelementptr inbounds %struct.sctp_af, ptr %82, i32 0, i32 22
  %83 = ptrtoint ptr %sockaddr_len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sockaddr_len.i, align 4
  %85 = call ptr @memcpy(ptr %stats.i, ptr %ipaddr.i196, i32 %84)
  br label %sctp_max_rto.exit

sctp_max_rto.exit:                                ; preds = %if.then.i, %if.end43.sctp_max_rto.exit_crit_edge
  %state78 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 37
  %86 = ptrtoint ptr %state78 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %peer_state, ptr %state78, align 4
  %call79 = tail call i32 @sctp_hash_transport(ptr noundef nonnull %call21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %sctp_max_rto.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_transport_free(ptr noundef nonnull %call21) #9
  br label %cleanup

if.end82:                                         ; preds = %sctp_max_rto.exit
  %87 = ptrtoint ptr %probe_interval26 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %probe_interval26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i197 = icmp eq i32 %88, 0
  br i1 %tobool.not.i197, label %if.end82.if.else.i_crit_edge, label %land.lhs.true.i

if.end82.if.else.i_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end82
  %89 = ptrtoint ptr %param_flags45 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %param_flags45, align 4
  %and.i = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %91 = ptrtoint ptr %state78 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %state78, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %92, label %land.lhs.true2.i.if.else.i_crit_edge [
    i32 2, label %land.lhs.true2.i.if.then.i198_crit_edge
    i32 65535, label %land.lhs.true2.i.if.then.i198_crit_edge215
  ]

land.lhs.true2.i.if.then.i198_crit_edge215:       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i198

land.lhs.true2.i.if.then.i198_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i198

land.lhs.true2.i.if.else.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i198:                                     ; preds = %land.lhs.true2.i.if.then.i198_crit_edge, %land.lhs.true2.i.if.then.i198_crit_edge215
  %state5.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 48, i32 4
  %94 = ptrtoint ptr %state5.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %state5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp6.i = icmp eq i8 %95, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.then.i198.sctp_transport_pl_reset.exit_crit_edge

if.then.i198.sctp_transport_pl_reset.exit_crit_edge: ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_transport_pl_reset.exit

if.then8.i:                                       ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #11
  %pl.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 48
  %96 = ptrtoint ptr %state5.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %state5.i, align 1
  %97 = ptrtoint ptr %pl.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 1200, ptr %pl.i, align 4
  %probe_size.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 48, i32 1
  %98 = ptrtoint ptr %probe_size.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1200, ptr %probe_size.i, align 2
  tail call void @sctp_transport_reset_probe_timer(ptr noundef nonnull %call21) #9
  br label %sctp_transport_pl_reset.exit

if.else.i:                                        ; preds = %land.lhs.true2.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end82.if.else.i_crit_edge
  %state14.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 48, i32 4
  %99 = ptrtoint ptr %state14.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %state14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp16.not.i = icmp eq i8 %100, 0
  br i1 %cmp16.not.i, label %if.else.i.sctp_transport_pl_reset.exit_crit_edge, label %if.then18.i

if.else.i.sctp_transport_pl_reset.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_transport_pl_reset.exit

if.then18.i:                                      ; preds = %if.else.i
  %probe_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 43
  %call.i = tail call i32 @del_timer(ptr noundef %probe_timer.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.then18.i.if.end21.i_crit_edge, label %if.then20.i

if.then18.i.if.end21.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_transport_put(ptr noundef nonnull %call21) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.then18.i.if.end21.i_crit_edge
  %101 = ptrtoint ptr %state14.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %state14.i, align 1
  br label %sctp_transport_pl_reset.exit

sctp_transport_pl_reset.exit:                     ; preds = %if.end21.i, %if.else.i.sctp_transport_pl_reset.exit_crit_edge, %if.then8.i, %if.then.i198.sctp_transport_pl_reset.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i, align 4
  %call.i.i199 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call21, ptr noundef %103, ptr noundef %peer4) #9
  br i1 %call.i.i199, label %if.end.i.i200, label %sctp_transport_pl_reset.exit.list_add_tail_rcu.exit_crit_edge

sctp_transport_pl_reset.exit.list_add_tail_rcu.exit_crit_edge: ; preds = %sctp_transport_pl_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail_rcu.exit

if.end.i.i200:                                    ; preds = %sctp_transport_pl_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %call21 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %peer4, ptr %call21, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call21, i32 0, i32 1
  %105 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %103, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %call21, ptr %103, align 4
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call21, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i200, %sctp_transport_pl_reset.exit.list_add_tail_rcu.exit_crit_edge
  %transport_count = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 2
  %108 = ptrtoint ptr %transport_count to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %transport_count, align 4
  %inc = add i16 %109, 1
  store i16 %inc, ptr %transport_count, align 4
  tail call void @sctp_ulpevent_notify_peer_addr_change(ptr noundef nonnull %call21, i32 noundef 3, i32 noundef 0) #9
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 4
  %110 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %primary_path, align 8
  %tobool86.not = icmp eq ptr %111, null
  br i1 %tobool86.not, label %if.then87, label %list_add_tail_rcu.exit.if.end89_crit_edge

list_add_tail_rcu.exit.if.end89_crit_edge:        ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then87:                                        ; preds = %list_add_tail_rcu.exit
  %112 = ptrtoint ptr %primary_path to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call21, ptr %primary_path, align 8
  tail call void @sctp_ulpevent_notify_peer_addr_change(ptr noundef nonnull %call21, i32 noundef 4, i32 noundef 0) #9
  %primary_addr.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 5
  %ipaddr.i202 = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 6
  %113 = call ptr @memcpy(ptr %primary_addr.i, ptr %ipaddr.i202, i32 28)
  %114 = ptrtoint ptr %state78 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %state78, align 4
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %115, label %if.then87.if.end12.i_crit_edge [
    i32 2, label %if.then87.if.then10.i_crit_edge
    i32 65535, label %if.then87.if.then10.i_crit_edge216
  ]

if.then87.if.then10.i_crit_edge216:               ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then87.if.then10.i_crit_edge:                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then87.if.end12.i_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then87.if.then10.i_crit_edge, %if.then87.if.then10.i_crit_edge216
  %active_path.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %117 = ptrtoint ptr %active_path.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call21, ptr %active_path.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then87.if.end12.i_crit_edge
  %outstanding_bytes.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 9
  %118 = ptrtoint ptr %outstanding_bytes.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %outstanding_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i204 = icmp eq i32 %119, 0
  br i1 %tobool.not.i204, label %land.lhs.true13.i, label %if.end12.i.if.end17.i_crit_edge

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

land.lhs.true13.i:                                ; preds = %if.end12.i
  %out_qlen.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 3
  %120 = ptrtoint ptr %out_qlen.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %out_qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool15.not.i = icmp eq i32 %121, 0
  br i1 %tobool15.not.i, label %land.lhs.true13.i.sctp_assoc_set_primary.exit_crit_edge, label %land.lhs.true13.i.if.end17.i_crit_edge

land.lhs.true13.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

land.lhs.true13.i.sctp_assoc_set_primary.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_set_primary.exit

if.end17.i:                                       ; preds = %land.lhs.true13.i.if.end17.i_crit_edge, %if.end12.i.if.end17.i_crit_edge
  %cacc.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 47
  %changeover_active.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 47, i32 1
  %122 = ptrtoint ptr %changeover_active.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %changeover_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool18.not.i = icmp eq i8 %123, 0
  br i1 %tobool18.not.i, label %if.end17.i.if.end21.i205_crit_edge, label %if.then19.i

if.end17.i.if.end21.i205_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i205

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %cycling_changeover.i = getelementptr inbounds %struct.sctp_transport, ptr %call21, i32 0, i32 47, i32 2
  %124 = ptrtoint ptr %cycling_changeover.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %cycling_changeover.i, align 1
  br label %if.end21.i205

if.end21.i205:                                    ; preds = %if.then19.i, %if.end17.i.if.end21.i205_crit_edge
  %125 = ptrtoint ptr %changeover_active.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %changeover_active.i, align 4
  %next_tsn.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %126 = ptrtoint ptr %next_tsn.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %next_tsn.i, align 8
  %128 = ptrtoint ptr %cacc.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %cacc.i, align 4
  br label %sctp_assoc_set_primary.exit

sctp_assoc_set_primary.exit:                      ; preds = %if.end21.i205, %land.lhs.true13.i.sctp_assoc_set_primary.exit_crit_edge
  %retran_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 7
  %129 = ptrtoint ptr %retran_path to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call21, ptr %retran_path, align 4
  br label %if.end89

if.end89:                                         ; preds = %sctp_assoc_set_primary.exit, %list_add_tail_rcu.exit.if.end89_crit_edge
  %active_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %130 = ptrtoint ptr %active_path to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %active_path, align 8
  %retran_path92 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 7
  %132 = ptrtoint ptr %retran_path92 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %retran_path92, align 4
  %cmp93 = icmp eq ptr %131, %133
  br i1 %cmp93, label %land.lhs.true, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end89
  %134 = ptrtoint ptr %state78 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %state78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %135)
  %cmp96.not = icmp eq i32 %135, 3
  br i1 %cmp96.not, label %land.lhs.true.cleanup_crit_edge, label %if.then98

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then98:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %retran_path92 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call21, ptr %retran_path92, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %land.lhs.true.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.then81, %if.end19.cleanup_crit_edge, %if.then16, %if.then13.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then81 ], [ %t.0.i, %if.then16 ], [ %t.0.i, %if.then13.cleanup_crit_edge ], [ null, %if.end19.cleanup_crit_edge ], [ %call21, %if.then98 ], [ %call21, %land.lhs.true.cleanup_crit_edge ], [ %call21, %if.end89.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_assoc_lookup_paddr(ptr noundef readonly %asoc, ptr noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %sctp_cmp_addr_exact.exit.for.cond_crit_edge, %entry
  %t.0.in = phi ptr [ %peer, %entry ], [ %t.0, %sctp_cmp_addr_exact.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %t.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %t.0 = load ptr, ptr %t.0.in, align 8
  %cmp.not = icmp eq ptr %t.0, %peer
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %address, align 4
  %call.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %2) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.sctp_cmp_addr_exact.exit_crit_edge, label %if.end.i, !prof !72

for.body.sctp_cmp_addr_exact.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_cmp_addr_exact.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %t.0, i32 0, i32 6
  %cmp_addr.i = getelementptr inbounds %struct.sctp_af, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %cmp_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmp_addr.i, align 4
  %call4.i = tail call i32 %4(ptr noundef %address, ptr noundef %ipaddr) #9
  br label %sctp_cmp_addr_exact.exit

sctp_cmp_addr_exact.exit:                         ; preds = %if.end.i, %for.body.sctp_cmp_addr_exact.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ 0, %for.body.sctp_cmp_addr_exact.exit_crit_edge ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %sctp_cmp_addr_exact.exit.for.cond_crit_edge, label %sctp_cmp_addr_exact.exit.cleanup_crit_edge

sctp_cmp_addr_exact.exit.cleanup_crit_edge:       ; preds = %sctp_cmp_addr_exact.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sctp_cmp_addr_exact.exit.for.cond_crit_edge:      ; preds = %sctp_cmp_addr_exact.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup:                                          ; preds = %sctp_cmp_addr_exact.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %t.0, %sctp_cmp_addr_exact.exit.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_transport_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_set_owner(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_route(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_set_pmtu(ptr noundef %asoc, i32 noundef %pmtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pathmtu = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 26
  %0 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pathmtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pmtu)
  %cmp.not = icmp eq i32 %1, %pmtu
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pathmtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pmtu, ptr %pathmtu, align 4
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %3 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk.i, align 4
  %si.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  %5 = ptrtoint ptr %si.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %si.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 4
  %conv.i = zext i16 %8 to i32
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i = add nuw nsw i32 %conv.i, 12
  %pf.i.i.i = getelementptr inbounds %struct.sctp_sock, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %pf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pf.i.i.i, align 4
  %af.i.i.i = getelementptr inbounds %struct.sctp_pf, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %af.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %af.i.i.i, align 4
  %net_header_len.i.i.i = getelementptr inbounds %struct.sctp_af, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %net_header_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %net_header_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %14 to i32
  %add1.i.i.i = add nuw nsw i32 %add.i.i.i, %conv.i.i.i
  %udp_port.i.i.i = getelementptr inbounds %struct.sctp_sock, ptr %4, i32 0, i32 16
  %15 = ptrtoint ptr %udp_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %udp_port.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool3.not.i.i.i = icmp eq i16 %16, 0
  %add8.i.i.i = add nuw nsw i32 %add1.i.i.i, 8
  %spec.select3.i.i.i = select i1 %tobool3.not.i.i.i, i32 %add1.i.i.i, i32 %add8.i.i.i
  br label %if.end10.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add9.i.i.i = add nuw nsw i32 %conv.i, 52
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then.i.i.i
  %overhead.0.i.i.i = phi i32 [ %add9.i.i.i, %if.else.i.i.i ], [ %spec.select3.i.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pmtu)
  %tobool11.not.i.i.i = icmp ne i32 %pmtu, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %overhead.0.i.i.i, i32 %pmtu)
  %cmp.i.i.i = icmp uge i32 %overhead.0.i.i.i, %pmtu
  %spec.select.i.i.i = select i1 %tobool11.not.i.i.i, i1 %cmp.i.i.i, i1 false
  br i1 %spec.select.i.i.i, label %land.rhs16.i.i.i, label %if.end10.i.i.i.sctp_assoc_update_frag_point.exit_crit_edge

if.end10.i.i.i.sctp_assoc_update_frag_point.exit_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_update_frag_point.exit

land.rhs16.i.i.i:                                 ; preds = %if.end10.i.i.i
  %.b1.i.i.i = load i1, ptr @__sctp_mtu_payload.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.sctp_assoc_update_frag_point.exit_crit_edge, label %if.then23.i.i.i, !prof !70

land.rhs16.i.i.i.sctp_assoc_update_frag_point.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_assoc_update_frag_point.exit

if.then23.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__sctp_mtu_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 591, i32 noundef 9, ptr noundef null) #9
  br label %sctp_assoc_update_frag_point.exit

sctp_assoc_update_frag_point.exit:                ; preds = %if.then23.i.i.i, %land.rhs16.i.i.i.sctp_assoc_update_frag_point.exit_crit_edge, %if.end10.i.i.i.sctp_assoc_update_frag_point.exit_crit_edge
  %spec.select2.i.i.i = phi i32 [ %pmtu, %if.end10.i.i.i.sctp_assoc_update_frag_point.exit_crit_edge ], [ %overhead.0.i.i.i, %if.then23.i.i.i ], [ %overhead.0.i.i.i, %land.rhs16.i.i.i.sctp_assoc_update_frag_point.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select2.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %spec.select2.i.i.i, 0
  %sub.i.i.i = sub i32 %spec.select2.i.i.i, %overhead.0.i.i.i
  %cond.i.i.i = select i1 %tobool56.not.i.i.i, i32 %overhead.0.i.i.i, i32 %sub.i.i.i
  %user_frag.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 51
  %17 = ptrtoint ptr %user_frag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %user_frag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %19 = tail call i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %18) #9
  %frag.0.i = select i1 %tobool.not.i, i32 %cond.i.i.i, i32 %19
  %20 = ptrtoint ptr %si.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %si.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 4
  %conv7.i = zext i16 %23 to i32
  %sub.i = sub nsw i32 65532, %conv7.i
  %24 = tail call i32 @llvm.smin.i32(i32 %frag.0.i, i32 %sub.i) #9
  %and.i = and i32 %24, -4
  %frag_point.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 50
  %25 = ptrtoint ptr %frag_point.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %frag_point.i, align 8
  br label %do.body

do.body:                                          ; preds = %sctp_assoc_update_frag_point.exit, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_assoc_set_pmtu.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_assoc_set_pmtu, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !77

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pathmtu, align 4
  %frag_point = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 50
  %28 = ptrtoint ptr %frag_point to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frag_point, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_assoc_set_pmtu.__UNIQUE_ID_ddebug577, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef %asoc, i32 noundef %27, i32 noundef %29) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_packet_init(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_hash_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_del_peer(ptr noundef %asoc, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 8
  br label %for.cond

for.cond:                                         ; preds = %sctp_cmp_addr_exact.exit.for.cond_crit_edge, %entry
  %pos.0 = phi ptr [ %1, %entry ], [ %temp.0, %sctp_cmp_addr_exact.exit.for.cond_crit_edge ]
  %2 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.0 = load ptr, ptr %pos.0, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %peer
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 4
  %call.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %4) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.sctp_cmp_addr_exact.exit_crit_edge, label %if.end.i, !prof !72

for.body.sctp_cmp_addr_exact.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_cmp_addr_exact.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %pos.0, i32 0, i32 6
  %cmp_addr.i = getelementptr inbounds %struct.sctp_af, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %cmp_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmp_addr.i, align 4
  %call4.i = tail call i32 %6(ptr noundef %addr, ptr noundef %ipaddr) #9
  br label %sctp_cmp_addr_exact.exit

sctp_cmp_addr_exact.exit:                         ; preds = %if.end.i, %for.body.sctp_cmp_addr_exact.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ 0, %for.body.sctp_cmp_addr_exact.exit_crit_edge ]
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %sctp_cmp_addr_exact.exit.for.cond_crit_edge, label %if.then

sctp_cmp_addr_exact.exit.for.cond_crit_edge:      ; preds = %sctp_cmp_addr_exact.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then:                                          ; preds = %sctp_cmp_addr_exact.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_assoc_rm_peer(ptr noundef %asoc, ptr noundef %pos.0)
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_cmp_addr_exact(ptr noundef %ss1, ptr noundef %ss2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ss1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ss1, align 4
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !72

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cmp_addr = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %cmp_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmp_addr, align 4
  %call4 = tail call i32 %3(ptr noundef %ss1, ptr noundef %ss2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_del_nonprimary_peers(ptr noundef %asoc, ptr noundef readnone %primary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 8
  %cmp.not21 = icmp eq ptr %1, %peer
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %t.022 = phi ptr [ %temp.023, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %t.022 to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.023 = load ptr, ptr %t.022, align 8
  %cmp8.not = icmp eq ptr %t.022, %primary
  br i1 %cmp8.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_assoc_rm_peer(ptr noundef %asoc, ptr noundef %t.022)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %temp.023, %peer
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_control_transport(ptr noundef %asoc, ptr noundef %transport, i32 noundef %command, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %command, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb20
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %pf_expose = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 78
  %3 = ptrtoint ptr %pf_expose to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %pf_expose, align 8
  %4 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %4)
  %cmp1.not = icmp eq i8 %4, 32
  br i1 %cmp1.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp4 = icmp eq i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %error)
  %cmp7 = icmp eq i32 %error, 2
  %or.cond = and i1 %cmp7, %cmp4
  %spec.select = select i1 %or.cond, i32 5, i32 0
  br label %if.end10

if.end10:                                         ; preds = %if.else, %land.lhs.true.if.end10_crit_edge
  %spc_state.0 = phi i32 [ 0, %land.lhs.true.if.end10_crit_edge ], [ %spec.select, %if.else ]
  %ulp_notify.0 = phi i1 [ false, %land.lhs.true.if.end10_crit_edge ], [ true, %if.else ]
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %state, align 4
  %probe_interval.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 21
  %6 = ptrtoint ptr %probe_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %probe_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end10.if.else.i_crit_edge, label %land.lhs.true.i

if.end10.if.else.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end10
  %param_flags.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 35
  %8 = ptrtoint ptr %param_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param_flags.i, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %state5.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48, i32 4
  %10 = ptrtoint ptr %state5.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp6.i = icmp eq i8 %11, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.then.i.sw.epilog_crit_edge

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then8.i:                                       ; preds = %if.then.i
  %pl.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48
  %12 = ptrtoint ptr %state5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %state5.i, align 1
  %13 = ptrtoint ptr %pl.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1200, ptr %pl.i, align 4
  %probe_size.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48, i32 1
  %14 = ptrtoint ptr %probe_size.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1200, ptr %probe_size.i, align 2
  tail call void @sctp_transport_reset_probe_timer(ptr noundef %transport) #9
  br i1 %ulp_notify.0, label %if.then8.i.if.then32_crit_edge, label %if.then8.i.if.end33_crit_edge

if.then8.i.if.end33_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then8.i.if.then32_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end10.if.else.i_crit_edge
  %state14.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48, i32 4
  %15 = ptrtoint ptr %state14.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp16.not.i = icmp eq i8 %16, 0
  br i1 %cmp16.not.i, label %if.else.i.sw.epilog_crit_edge, label %if.then18.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then18.i:                                      ; preds = %if.else.i
  %probe_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 43
  %call.i = tail call i32 @del_timer(ptr noundef %probe_timer.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.then18.i.if.end21.i_crit_edge, label %if.then20.i

if.then18.i.if.end21.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_transport_put(ptr noundef %transport) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.then18.i.if.end21.i_crit_edge
  %17 = ptrtoint ptr %state14.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %state14.i, align 1
  br i1 %ulp_notify.0, label %if.end21.i.if.then32_crit_edge, label %if.end21.i.if.end33_crit_edge

if.end21.i.if.end33_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end21.i.if.then32_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

sw.bb12:                                          ; preds = %entry
  %state13 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %18 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp14.not = icmp eq i32 %19, 3
  br i1 %cmp14.not, label %sw.epilog.thread80, label %if.then16

if.then16:                                        ; preds = %sw.bb12
  %20 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state13, align 4
  %state14.i62 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48, i32 4
  %21 = ptrtoint ptr %state14.i62 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %state14.i62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp16.not.i63 = icmp eq i8 %22, 0
  br i1 %cmp16.not.i63, label %if.then16.if.then32_crit_edge, label %if.then18.i68

if.then16.if.then32_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then18.i68:                                    ; preds = %if.then16
  %probe_timer.i65 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 43
  %call.i66 = tail call i32 @del_timer(ptr noundef %probe_timer.i65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool19.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool19.not.i67, label %if.then18.i68.if.end21.i70_crit_edge, label %if.then20.i69

if.then18.i68.if.end21.i70_crit_edge:             ; preds = %if.then18.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i70

if.then20.i69:                                    ; preds = %if.then18.i68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_transport_put(ptr noundef %transport) #9
  br label %if.end21.i70

if.end21.i70:                                     ; preds = %if.then20.i69, %if.then18.i68.if.end21.i70_crit_edge
  %23 = ptrtoint ptr %state14.i62 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %state14.i62, align 1
  br label %if.then32

sw.epilog.thread80:                               ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_transport_dst_release(ptr noundef %transport) #9
  br label %if.end33

sw.bb20:                                          ; preds = %entry
  %state21 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %24 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state21, align 4
  %pf_expose22 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 78
  %25 = ptrtoint ptr %pf_expose22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load23 = load i8, ptr %pf_expose22, align 8
  %26 = and i8 %bf.load23, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %26)
  %cmp27.not = icmp eq i8 %26, 32
  br i1 %cmp27.not, label %sw.bb20.if.then32_crit_edge, label %sw.bb20.if.end33_crit_edge

sw.bb20.if.end33_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.bb20.if.then32_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

sw.epilog:                                        ; preds = %if.else.i.sw.epilog_crit_edge, %if.then.i.sw.epilog_crit_edge
  br i1 %ulp_notify.0, label %sw.epilog.if.then32_crit_edge, label %sw.epilog.if.end33_crit_edge

sw.epilog.if.end33_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

sw.epilog.if.then32_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %sw.epilog.if.then32_crit_edge, %sw.bb20.if.then32_crit_edge, %if.end21.i70, %if.then16.if.then32_crit_edge, %if.end21.i.if.then32_crit_edge, %if.then8.i.if.then32_crit_edge
  %spc_state.179 = phi i32 [ %spc_state.0, %sw.epilog.if.then32_crit_edge ], [ 6, %sw.bb20.if.then32_crit_edge ], [ %spc_state.0, %if.then8.i.if.then32_crit_edge ], [ %spc_state.0, %if.end21.i.if.then32_crit_edge ], [ 1, %if.then16.if.then32_crit_edge ], [ 1, %if.end21.i70 ]
  tail call void @sctp_ulpevent_notify_peer_addr_change(ptr noundef %transport, i32 noundef %spc_state.179, i32 noundef %error) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %sw.epilog.if.end33_crit_edge, %sw.bb20.if.end33_crit_edge, %sw.epilog.thread80, %if.end21.i.if.end33_crit_edge, %if.then8.i.if.end33_crit_edge
  %peer.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %27 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %trans.0125.i = load ptr, ptr %peer.i, align 8
  %cmp.not126.i = icmp eq ptr %trans.0125.i, %peer.i
  br i1 %cmp.not126.i, label %if.end33.for.end.i_crit_edge, label %if.end33.for.body.i_crit_edge

if.end33.for.body.i_crit_edge:                    ; preds = %if.end33
  br label %for.body.i

if.end33.for.end.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end33.for.body.i_crit_edge
  %trans.0134.i = phi ptr [ %trans.0.i, %for.inc.i.for.body.i_crit_edge ], [ %trans.0125.i, %if.end33.for.body.i_crit_edge ]
  %trans_pri.0131.i = phi ptr [ %trans_pri.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end33.for.body.i_crit_edge ]
  %trans_sec.0129.i = phi ptr [ %trans_sec.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end33.for.body.i_crit_edge ]
  %trans_pf.0127.i = phi ptr [ %trans_pf.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end33.for.body.i_crit_edge ]
  %state.i72 = getelementptr inbounds %struct.sctp_transport, ptr %trans.0134.i, i32 0, i32 37
  %28 = ptrtoint ptr %state.i72 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state.i72, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %29, label %if.end9.i [
    i32 0, label %for.body.i.for.inc.i_crit_edge
    i32 3, label %for.body.i.for.inc.i_crit_edge83
    i32 1, label %if.then8.i73
  ]

for.body.i.for.inc.i_crit_edge83:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then8.i73:                                     ; preds = %for.body.i
  %cmp.i.i = icmp eq ptr %trans_pf.0127.i, null
  %cmp1.i.i = icmp eq ptr %trans.0134.i, %trans_pf.0127.i
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.then8.i73.for.inc.i_crit_edge, label %sctp_trans_score.exit.i.i

if.then8.i73.for.inc.i_crit_edge:                 ; preds = %if.then8.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sctp_trans_score.exit.i.i:                        ; preds = %if.then8.i73
  %state.i25.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_pf.0127.i, i32 0, i32 37
  %31 = ptrtoint ptr %state.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i25.i.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %32, label %sctp_trans_score.exit.i.i.for.inc.i_crit_edge [
    i32 2, label %sctp_trans_score.exit.i.i.if.else.i.thread.i_crit_edge
    i32 65535, label %sctp_trans_score.exit.i.i.if.else.i.thread.i_crit_edge84
    i32 1, label %if.then11.i.i
  ]

sctp_trans_score.exit.i.i.if.else.i.thread.i_crit_edge84: ; preds = %sctp_trans_score.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.thread.i

sctp_trans_score.exit.i.i.if.else.i.thread.i_crit_edge: ; preds = %sctp_trans_score.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.thread.i

sctp_trans_score.exit.i.i.for.inc.i_crit_edge:    ; preds = %sctp_trans_score.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i.thread.i:                               ; preds = %sctp_trans_score.exit.i.i.if.else.i.thread.i_crit_edge, %sctp_trans_score.exit.i.i.if.else.i.thread.i_crit_edge84
  br label %for.inc.i

if.then11.i.i:                                    ; preds = %sctp_trans_score.exit.i.i
  %error_count.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_pf.0127.i, i32 0, i32 38
  %34 = ptrtoint ptr %error_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %error_count.i.i.i, align 8
  %error_count1.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans.0134.i, i32 0, i32 38
  %36 = ptrtoint ptr %error_count1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %error_count1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp.i.i.i = icmp ugt i16 %35, %37
  br i1 %cmp.i.i.i, label %if.then11.i.i.for.inc.i_crit_edge, label %if.else.i.i.i

if.then11.i.i.for.inc.i_crit_edge:                ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp8.i.i.i = icmp eq i16 %35, %37
  br i1 %cmp8.i.i.i, label %land.lhs.true.i.i.i, label %if.else.i.i.i.if.else13.i.i.i_crit_edge

if.else.i.i.i.if.else13.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i.i.i
  %last_time_heard.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans.0134.i, i32 0, i32 25
  %38 = ptrtoint ptr %last_time_heard.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %last_time_heard.i.i.i, align 8
  %last_time_heard10.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_pf.0127.i, i32 0, i32 25
  %40 = ptrtoint ptr %last_time_heard10.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %last_time_heard10.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp3.i.i.i.i.i = icmp sgt i64 %39, %41
  br i1 %cmp3.i.i.i.i.i, label %land.lhs.true.i.i.i.for.inc.i_crit_edge, label %land.lhs.true.i.i.i.if.else13.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else13.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i.i

land.lhs.true.i.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else13.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.else13.i.i.i_crit_edge, %if.else.i.i.i.if.else13.i.i.i_crit_edge
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %cmp10.i = icmp eq ptr %trans_pri.0131.i, null
  br i1 %cmp10.i, label %if.end9.i.for.inc.i_crit_edge, label %lor.lhs.false11.i

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false11.i:                                ; preds = %if.end9.i
  %last_time_heard.i = getelementptr inbounds %struct.sctp_transport, ptr %trans.0134.i, i32 0, i32 25
  %42 = ptrtoint ptr %last_time_heard.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %last_time_heard.i, align 8
  %last_time_heard12.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_pri.0131.i, i32 0, i32 25
  %44 = ptrtoint ptr %last_time_heard12.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %last_time_heard12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %45)
  %cmp3.i.i.i = icmp sgt i64 %43, %45
  br i1 %cmp3.i.i.i, label %lor.lhs.false11.i.for.inc.i_crit_edge, label %if.else.i74

lor.lhs.false11.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i74:                                      ; preds = %lor.lhs.false11.i
  %cmp15.i = icmp eq ptr %trans_sec.0129.i, null
  br i1 %cmp15.i, label %if.else.i74.if.then20.i75_crit_edge, label %lor.lhs.false16.i

if.else.i74.if.then20.i75_crit_edge:              ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i75

lor.lhs.false16.i:                                ; preds = %if.else.i74
  %last_time_heard18.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_sec.0129.i, i32 0, i32 25
  %46 = ptrtoint ptr %last_time_heard18.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %last_time_heard18.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %47)
  %cmp3.i.i87.i = icmp sgt i64 %43, %47
  br i1 %cmp3.i.i87.i, label %lor.lhs.false16.i.if.then20.i75_crit_edge, label %lor.lhs.false16.i.for.inc.i_crit_edge

lor.lhs.false16.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false16.i.if.then20.i75_crit_edge:        ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i75

if.then20.i75:                                    ; preds = %lor.lhs.false16.i.if.then20.i75_crit_edge, %if.else.i74.if.then20.i75_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then20.i75, %lor.lhs.false16.i.for.inc.i_crit_edge, %lor.lhs.false11.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge, %if.else13.i.i.i, %land.lhs.true.i.i.i.for.inc.i_crit_edge, %if.then11.i.i.for.inc.i_crit_edge, %if.else.i.thread.i, %sctp_trans_score.exit.i.i.for.inc.i_crit_edge, %if.then8.i73.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge83
  %trans_pf.1.i = phi ptr [ %trans_pf.0127.i, %for.body.i.for.inc.i_crit_edge ], [ %trans_pf.0127.i, %if.then20.i75 ], [ %trans_pf.0127.i, %lor.lhs.false16.i.for.inc.i_crit_edge ], [ %trans_pf.0127.i, %for.body.i.for.inc.i_crit_edge83 ], [ %trans_pf.0127.i, %lor.lhs.false11.i.for.inc.i_crit_edge ], [ %trans_pf.0127.i, %if.end9.i.for.inc.i_crit_edge ], [ %trans.0134.i, %if.then8.i73.for.inc.i_crit_edge ], [ %trans_pf.0127.i, %if.else13.i.i.i ], [ %trans.0134.i, %if.then11.i.i.for.inc.i_crit_edge ], [ %trans.0134.i, %land.lhs.true.i.i.i.for.inc.i_crit_edge ], [ %trans.0134.i, %sctp_trans_score.exit.i.i.for.inc.i_crit_edge ], [ %trans_pf.0127.i, %if.else.i.thread.i ]
  %trans_sec.1.i = phi ptr [ %trans_sec.0129.i, %for.body.i.for.inc.i_crit_edge ], [ %trans.0134.i, %if.then20.i75 ], [ %trans_sec.0129.i, %lor.lhs.false16.i.for.inc.i_crit_edge ], [ %trans_sec.0129.i, %for.body.i.for.inc.i_crit_edge83 ], [ %trans_pri.0131.i, %lor.lhs.false11.i.for.inc.i_crit_edge ], [ null, %if.end9.i.for.inc.i_crit_edge ], [ %trans_sec.0129.i, %if.then8.i73.for.inc.i_crit_edge ], [ %trans_sec.0129.i, %if.else13.i.i.i ], [ %trans_sec.0129.i, %if.then11.i.i.for.inc.i_crit_edge ], [ %trans_sec.0129.i, %land.lhs.true.i.i.i.for.inc.i_crit_edge ], [ %trans_sec.0129.i, %sctp_trans_score.exit.i.i.for.inc.i_crit_edge ], [ %trans_sec.0129.i, %if.else.i.thread.i ]
  %trans_pri.1.i = phi ptr [ %trans_pri.0131.i, %for.body.i.for.inc.i_crit_edge ], [ %trans_pri.0131.i, %if.then20.i75 ], [ %trans_pri.0131.i, %lor.lhs.false16.i.for.inc.i_crit_edge ], [ %trans_pri.0131.i, %for.body.i.for.inc.i_crit_edge83 ], [ %trans.0134.i, %lor.lhs.false11.i.for.inc.i_crit_edge ], [ %trans.0134.i, %if.end9.i.for.inc.i_crit_edge ], [ %trans_pri.0131.i, %if.then8.i73.for.inc.i_crit_edge ], [ %trans_pri.0131.i, %if.else13.i.i.i ], [ %trans_pri.0131.i, %if.then11.i.i.for.inc.i_crit_edge ], [ %trans_pri.0131.i, %land.lhs.true.i.i.i.for.inc.i_crit_edge ], [ %trans_pri.0131.i, %sctp_trans_score.exit.i.i.for.inc.i_crit_edge ], [ %trans_pri.0131.i, %if.else.i.thread.i ]
  %48 = ptrtoint ptr %trans.0134.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %trans.0.i = load ptr, ptr %trans.0134.i, align 8
  %cmp.not.i = icmp eq ptr %trans.0.i, %peer.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end33.for.end.i_crit_edge
  %trans_pf.0.lcssa.i = phi ptr [ null, %if.end33.for.end.i_crit_edge ], [ %trans_pf.1.i, %for.inc.i.for.end.i_crit_edge ]
  %trans_sec.0.lcssa.i = phi ptr [ null, %if.end33.for.end.i_crit_edge ], [ %trans_sec.1.i, %for.inc.i.for.end.i_crit_edge ]
  %trans_pri.0.lcssa.i = phi ptr [ null, %if.end33.for.end.i_crit_edge ], [ %trans_pri.1.i, %for.inc.i.for.end.i_crit_edge ]
  %primary_path.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 4
  %49 = ptrtoint ptr %primary_path.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %primary_path.i, align 8
  %state29.i = getelementptr inbounds %struct.sctp_transport, ptr %50, i32 0, i32 37
  %51 = ptrtoint ptr %state29.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state29.i, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %52, label %for.end.i.if.end42.i_crit_edge [
    i32 2, label %for.end.i.land.lhs.true.i76_crit_edge
    i32 65535, label %for.end.i.land.lhs.true.i76_crit_edge85
  ]

for.end.i.land.lhs.true.i76_crit_edge85:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i76

for.end.i.land.lhs.true.i76_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i76

for.end.i.if.end42.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.lhs.true.i76:                                ; preds = %for.end.i.land.lhs.true.i76_crit_edge, %for.end.i.land.lhs.true.i76_crit_edge85
  %cmp38.not.i = icmp eq ptr %50, %trans_pri.0.lcssa.i
  %spec.select.i = select i1 %cmp38.not.i, ptr %trans_sec.0.lcssa.i, ptr %trans_pri.0.lcssa.i
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true.i76, %for.end.i.if.end42.i_crit_edge
  %trans_sec.2.i = phi ptr [ %trans_sec.0.lcssa.i, %for.end.i.if.end42.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i76 ]
  %trans_pri.2.i = phi ptr [ %trans_pri.0.lcssa.i, %for.end.i.if.end42.i_crit_edge ], [ %50, %land.lhs.true.i76 ]
  %cmp43.i = icmp eq ptr %trans_sec.2.i, null
  %spec.select86.i = select i1 %cmp43.i, ptr %trans_pri.2.i, ptr %trans_sec.2.i
  %cmp46.i = icmp eq ptr %trans_pri.2.i, null
  br i1 %cmp46.i, label %if.then47.i, label %if.end42.i.sctp_select_active_and_retran_path.exit_crit_edge

if.end42.i.sctp_select_active_and_retran_path.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_select_active_and_retran_path.exit

if.then47.i:                                      ; preds = %if.end42.i
  %active_path.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %54 = ptrtoint ptr %active_path.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %active_path.i, align 8
  %cmp.i88.i = icmp eq ptr %trans_pf.0.lcssa.i, null
  %cmp1.i89.i = icmp eq ptr %55, %trans_pf.0.lcssa.i
  %or.cond.i90.i = or i1 %cmp.i88.i, %cmp1.i89.i
  br i1 %or.cond.i90.i, label %if.then47.i.sctp_select_active_and_retran_path.exit_crit_edge, label %if.end.i92.i

if.then47.i.sctp_select_active_and_retran_path.exit_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_select_active_and_retran_path.exit

if.end.i92.i:                                     ; preds = %if.then47.i
  %state.i.i91.i = getelementptr inbounds %struct.sctp_transport, ptr %55, i32 0, i32 37
  %56 = ptrtoint ptr %state.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state.i.i91.i, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %57, label %sw.default.i.i95.i [
    i32 2, label %if.end.i92.i.sctp_trans_score.exit.i98.i_crit_edge
    i32 65535, label %sw.bb1.i.i93.i
    i32 1, label %sw.bb2.i.i94.i
  ]

if.end.i92.i.sctp_trans_score.exit.i98.i_crit_edge: ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit.i98.i

sw.bb1.i.i93.i:                                   ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit.i98.i

sw.bb2.i.i94.i:                                   ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit.i98.i

sw.default.i.i95.i:                               ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit.i98.i

sctp_trans_score.exit.i98.i:                      ; preds = %sw.default.i.i95.i, %sw.bb2.i.i94.i, %sw.bb1.i.i93.i, %if.end.i92.i.sctp_trans_score.exit.i98.i_crit_edge
  %retval.0.i.i96.i = phi i8 [ 0, %sw.default.i.i95.i ], [ 1, %sw.bb2.i.i94.i ], [ 2, %sw.bb1.i.i93.i ], [ 3, %if.end.i92.i.sctp_trans_score.exit.i98.i_crit_edge ]
  %state.i25.i97.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_pf.0.lcssa.i, i32 0, i32 37
  %59 = ptrtoint ptr %state.i25.i97.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state.i25.i97.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %60, label %sw.default.i28.i101.i [
    i32 2, label %sctp_trans_score.exit.i98.i.sctp_trans_score.exit30.i104.i_crit_edge
    i32 65535, label %sw.bb1.i26.i99.i
    i32 1, label %sw.bb2.i27.i100.i
  ]

sctp_trans_score.exit.i98.i.sctp_trans_score.exit30.i104.i_crit_edge: ; preds = %sctp_trans_score.exit.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit30.i104.i

sw.bb1.i26.i99.i:                                 ; preds = %sctp_trans_score.exit.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit30.i104.i

sw.bb2.i27.i100.i:                                ; preds = %sctp_trans_score.exit.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit30.i104.i

sw.default.i28.i101.i:                            ; preds = %sctp_trans_score.exit.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_trans_score.exit30.i104.i

sctp_trans_score.exit30.i104.i:                   ; preds = %sw.default.i28.i101.i, %sw.bb2.i27.i100.i, %sw.bb1.i26.i99.i, %sctp_trans_score.exit.i98.i.sctp_trans_score.exit30.i104.i_crit_edge
  %retval.0.i29.i102.i = phi i8 [ 0, %sw.default.i28.i101.i ], [ 1, %sw.bb2.i27.i100.i ], [ 2, %sw.bb1.i26.i99.i ], [ 3, %sctp_trans_score.exit.i98.i.sctp_trans_score.exit30.i104.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i96.i, i8 %retval.0.i29.i102.i)
  %cmp4.i103.i = icmp ugt i8 %retval.0.i.i96.i, %retval.0.i29.i102.i
  br i1 %cmp4.i103.i, label %sctp_trans_score.exit30.i104.i.sctp_select_active_and_retran_path.exit_crit_edge, label %if.else.i106.i

sctp_trans_score.exit30.i104.i.sctp_select_active_and_retran_path.exit_crit_edge: ; preds = %sctp_trans_score.exit30.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_select_active_and_retran_path.exit

if.else.i106.i:                                   ; preds = %sctp_trans_score.exit30.i104.i
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i96.i, i8 %retval.0.i29.i102.i)
  %cmp9.i105.i = icmp eq i8 %retval.0.i.i96.i, %retval.0.i29.i102.i
  br i1 %cmp9.i105.i, label %if.then11.i110.i, label %if.else.i106.i.sctp_select_active_and_retran_path.exit_crit_edge

if.else.i106.i.sctp_select_active_and_retran_path.exit_crit_edge: ; preds = %if.else.i106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_select_active_and_retran_path.exit

if.then11.i110.i:                                 ; preds = %if.else.i106.i
  %error_count.i.i107.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_pf.0.lcssa.i, i32 0, i32 38
  %62 = ptrtoint ptr %error_count.i.i107.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %error_count.i.i107.i, align 8
  %error_count1.i.i108.i = getelementptr inbounds %struct.sctp_transport, ptr %55, i32 0, i32 38
  %64 = ptrtoint ptr %error_count1.i.i108.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %error_count1.i.i108.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp.i.i109.i = icmp ugt i16 %63, %65
  br i1 %cmp.i.i109.i, label %if.then11.i110.i.sctp_select_active_and_retran_path.exit_crit_edge, label %if.else.i.i112.i

if.then11.i110.i.sctp_select_active_and_retran_path.exit_crit_edge: ; preds = %if.then11.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_select_active_and_retran_path.exit

if.else.i.i112.i:                                 ; preds = %if.then11.i110.i
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp8.i.i111.i = icmp eq i16 %63, %65
  br i1 %cmp8.i.i111.i, label %land.lhs.true.i.i116.i, label %if.else.i.i112.i.if.else13.i.i117.i_crit_edge

if.else.i.i112.i.if.else13.i.i117.i_crit_edge:    ; preds = %if.else.i.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i117.i

land.lhs.true.i.i116.i:                           ; preds = %if.else.i.i112.i
  %last_time_heard.i.i113.i = getelementptr inbounds %struct.sctp_transport, ptr %55, i32 0, i32 25
  %66 = ptrtoint ptr %last_time_heard.i.i113.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %last_time_heard.i.i113.i, align 8
  %last_time_heard10.i.i114.i = getelementptr inbounds %struct.sctp_transport, ptr %trans_pf.0.lcssa.i, i32 0, i32 25
  %68 = ptrtoint ptr %last_time_heard10.i.i114.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %last_time_heard10.i.i114.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %69)
  %cmp3.i.i.i.i115.i = icmp sgt i64 %67, %69
  br i1 %cmp3.i.i.i.i115.i, label %land.lhs.true.i.i116.i.sctp_select_active_and_retran_path.exit_crit_edge, label %land.lhs.true.i.i116.i.if.else13.i.i117.i_crit_edge

land.lhs.true.i.i116.i.if.else13.i.i117.i_crit_edge: ; preds = %land.lhs.true.i.i116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i117.i

land.lhs.true.i.i116.i.sctp_select_active_and_retran_path.exit_crit_edge: ; preds = %land.lhs.true.i.i116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_select_active_and_retran_path.exit

if.else13.i.i117.i:                               ; preds = %land.lhs.true.i.i116.i.if.else13.i.i117.i_crit_edge, %if.else.i.i112.i.if.else13.i.i117.i_crit_edge
  br label %sctp_select_active_and_retran_path.exit

sctp_select_active_and_retran_path.exit:          ; preds = %if.else13.i.i117.i, %land.lhs.true.i.i116.i.sctp_select_active_and_retran_path.exit_crit_edge, %if.then11.i110.i.sctp_select_active_and_retran_path.exit_crit_edge, %if.else.i106.i.sctp_select_active_and_retran_path.exit_crit_edge, %sctp_trans_score.exit30.i104.i.sctp_select_active_and_retran_path.exit_crit_edge, %if.then47.i.sctp_select_active_and_retran_path.exit_crit_edge, %if.end42.i.sctp_select_active_and_retran_path.exit_crit_edge
  %trans_sec.4.i = phi ptr [ %spec.select86.i, %if.end42.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %55, %if.then47.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %55, %sctp_trans_score.exit30.i104.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %trans_pf.0.lcssa.i, %if.else.i106.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %trans_pf.0.lcssa.i, %if.else13.i.i117.i ], [ %55, %if.then11.i110.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %55, %land.lhs.true.i.i116.i.sctp_select_active_and_retran_path.exit_crit_edge ]
  %trans_pri.3.i = phi ptr [ %trans_pri.2.i, %if.end42.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %55, %if.then47.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %55, %sctp_trans_score.exit30.i104.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %trans_pf.0.lcssa.i, %if.else.i106.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %trans_pf.0.lcssa.i, %if.else13.i.i117.i ], [ %55, %if.then11.i110.i.sctp_select_active_and_retran_path.exit_crit_edge ], [ %55, %land.lhs.true.i.i116.i.sctp_select_active_and_retran_path.exit_crit_edge ]
  %active_path52.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %70 = ptrtoint ptr %active_path52.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %trans_pri.3.i, ptr %active_path52.i, align 8
  %retran_path.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 7
  %71 = ptrtoint ptr %retran_path.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %trans_sec.4.i, ptr %retran_path.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_select_active_and_retran_path.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_association_hold(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !71
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !72

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !70

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sctp_association_get_next_tsn(ptr nocapture noundef %asoc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next_tsn = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %0 = ptrtoint ptr %next_tsn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_tsn, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %next_tsn, align 8
  %unack_data = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 41
  %2 = ptrtoint ptr %unack_data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %unack_data, align 2
  %inc3 = add i16 %3, 1
  store i16 %inc3, ptr %unack_data, align 2
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_af_specific(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_get_ecne_prepend(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %need_ecne = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 78
  %0 = ptrtoint ptr %need_ecne to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %need_ecne, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %last_ecne_tsn = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 63
  %1 = ptrtoint ptr %last_ecne_tsn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_ecne_tsn, align 4
  %call = tail call ptr @sctp_make_ecne(ptr noundef %asoc, i32 noundef %2) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_ecne(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_assoc_lookup_tsn(ptr noundef readonly %asoc, i32 noundef %tsn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %active_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %active_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_path, align 8
  %transmitted = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 44
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %transmitted, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %transmitted
  br i1 %cmp.not, label %for.cond13.preheader, label %for.body

for.cond13.preheader:                             ; preds = %for.cond
  %3 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %3)
  %transport.070 = load ptr, ptr %peer, align 8
  %cmp16.not71 = icmp eq ptr %transport.070, %peer
  br i1 %cmp16.not71, label %for.cond13.preheader.out_crit_edge, label %for.cond13.preheader.for.body18_crit_edge

for.cond13.preheader.for.body18_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body18

for.cond13.preheader.out_crit_edge:               ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.cond
  %subh = getelementptr i8, ptr %.pn, i32 28
  %4 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subh, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %cmp3 = icmp eq i32 %7, %tsn
  br i1 %cmp3, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body18:                                       ; preds = %for.inc43.for.body18_crit_edge, %for.cond13.preheader.for.body18_crit_edge
  %transport.072 = phi ptr [ %transport.0, %for.inc43.for.body18_crit_edge ], [ %transport.070, %for.cond13.preheader.for.body18_crit_edge ]
  %cmp19 = icmp eq ptr %transport.072, %1
  br i1 %cmp19, label %for.body18.for.inc43_crit_edge, label %if.end21

for.body18.for.inc43_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc43

if.end21:                                         ; preds = %for.body18
  %transmitted23 = getelementptr inbounds %struct.sctp_transport, ptr %transport.072, i32 0, i32 44
  br label %for.cond27

for.cond27:                                       ; preds = %for.body31.for.cond27_crit_edge, %if.end21
  %.pn66.in = phi ptr [ %transmitted23, %if.end21 ], [ %.pn66, %for.body31.for.cond27_crit_edge ]
  %8 = ptrtoint ptr %.pn66.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn66 = load ptr, ptr %.pn66.in, align 4
  %cmp29.not = icmp eq ptr %.pn66, %transmitted23
  br i1 %cmp29.not, label %for.cond27.for.inc43_crit_edge, label %for.body31

for.cond27.for.inc43_crit_edge:                   ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc43

for.body31:                                       ; preds = %for.cond27
  %subh32 = getelementptr i8, ptr %.pn66, i32 28
  %9 = ptrtoint ptr %subh32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subh32, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %cmp34 = icmp eq i32 %12, %tsn
  br i1 %cmp34, label %for.body31.out_crit_edge, label %for.body31.for.cond27_crit_edge

for.body31.for.cond27_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond27

for.body31.out_crit_edge:                         ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc43:                                        ; preds = %for.cond27.for.inc43_crit_edge, %for.body18.for.inc43_crit_edge
  %13 = ptrtoint ptr %transport.072 to i32
  call void @__asan_load4_noabort(i32 %13)
  %transport.0 = load ptr, ptr %transport.072, align 8
  %cmp16.not = icmp eq ptr %transport.0, %peer
  br i1 %cmp16.not, label %for.inc43.out_crit_edge, label %for.inc43.for.body18_crit_edge

for.inc43.for.body18_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.inc43.out_crit_edge:                          ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc43.out_crit_edge, %for.body31.out_crit_edge, %for.body.out_crit_edge, %for.cond13.preheader.out_crit_edge
  %match.0 = phi ptr [ null, %for.cond13.preheader.out_crit_edge ], [ %transport.072, %for.body31.out_crit_edge ], [ null, %for.inc43.out_crit_edge ], [ %1, %for.body.out_crit_edge ]
  ret ptr %match.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_migrate(ptr noundef %assoc, ptr noundef %newsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %assoc, i32 0, i32 3
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %asocs = getelementptr inbounds %struct.sctp_association, ptr %assoc, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asocs) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.sctp_association, ptr %assoc, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %asocs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asocs, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %asocs to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %asocs, ptr %asocs, align 4
  %prev.i3.i = getelementptr inbounds %struct.sctp_association, ptr %assoc, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %asocs, ptr %prev.i3.i, align 4
  %type.i = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 2
  br i1 %cmp.i.not, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %12 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %13, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %ep = getelementptr inbounds %struct.sctp_association, ptr %assoc, i32 0, i32 3
  %14 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep, align 4
  tail call void @sctp_endpoint_put(ptr noundef %15) #9
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 4
  %skc_refcnt.i24 = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 19
  %call.i.i.i.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i24, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i24, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i24, ptr %skc_refcnt.i24, i32 1, ptr elementtype(i32) %skc_refcnt.i24) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i26 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i26, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !70

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i24, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @sk_free(ptr noundef %17) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %ep4 = getelementptr inbounds %struct.sctp_sock, ptr %newsk, i32 0, i32 5
  %19 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep4, align 8
  %21 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ep, align 4
  %call7 = tail call i32 @sctp_endpoint_hold(ptr noundef %20) #9
  %22 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %newsk, ptr %sk, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %newsk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %sock_put.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

sock_put.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sock_put.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !70

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %sock_put.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %sock_put.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %25 = ptrtoint ptr %ep4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep4, align 8
  tail call void @sctp_endpoint_add_asoc(ptr noundef %26, ptr noundef %assoc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_endpoint_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_endpoint_hold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_endpoint_add_asoc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_assoc_update(ptr noundef %asoc, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4
  %c1 = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %c, ptr %c1, i32 144)
  %peer = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 5
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rwnd, align 8
  %peer2 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %rwnd3 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %rwnd3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rwnd3, align 8
  %sack_needed = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 5, i32 12
  %4 = ptrtoint ptr %sack_needed to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %sack_needed, align 2
  %bf.clear = and i16 %bf.load, 64
  %sack_needed6 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %5 = ptrtoint ptr %sack_needed6 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load7 = load i16, ptr %sack_needed6, align 2
  %bf.clear8 = and i16 %bf.load7, -65
  %bf.set = or i16 %bf.clear8, %bf.clear
  store i16 %bf.set, ptr %sack_needed6, align 2
  %bf.load10 = load i16, ptr %sack_needed, align 2
  %bf.clear12 = and i16 %bf.load10, 128
  %bf.clear18 = and i16 %bf.set, -129
  %bf.set19 = or i16 %bf.clear18, %bf.clear12
  store i16 %bf.set19, ptr %sack_needed6, align 2
  %i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 15
  %i22 = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 5, i32 15
  %6 = call ptr @memcpy(ptr %i, ptr %i22, i32 16)
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10
  %initial_tsn = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 15, i32 4
  %7 = ptrtoint ptr %initial_tsn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %initial_tsn, align 4
  %call = tail call ptr @sctp_tsnmap_init(ptr noundef %tsn_map, i16 noundef zeroext 32, i32 noundef %8, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %peer2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer2, align 8
  %cmp.i.not203 = icmp eq ptr %10, %peer2
  br i1 %cmp.i.not203, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %state = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0204 = phi ptr [ %10, %for.body.lr.ph ], [ %temp.0206, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %pos.0204 to i32
  call void @__asan_load4_noabort(i32 %11)
  %temp.0206 = load ptr, ptr %pos.0204, align 4
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %pos.0204, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %sctp_cmp_addr_exact.exit.i.for.cond.i_crit_edge, %for.body
  %t.0.in.i = phi ptr [ %peer, %for.body ], [ %t.0.i, %sctp_cmp_addr_exact.exit.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %t.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %t.0.i = load ptr, ptr %t.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %t.0.i, %peer
  br i1 %cmp.not.i, label %for.cond.i.if.then34_crit_edge, label %for.body.i

for.cond.i.if.then34_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

for.body.i:                                       ; preds = %for.cond.i
  %13 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ipaddr, align 4
  %call.i.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %14) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.sctp_cmp_addr_exact.exit.i_crit_edge, label %if.end.i.i, !prof !72

for.body.i.sctp_cmp_addr_exact.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_cmp_addr_exact.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %t.0.i, i32 0, i32 6
  %cmp_addr.i.i = getelementptr inbounds %struct.sctp_af, ptr %call.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %cmp_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmp_addr.i.i, align 4
  %call4.i.i = tail call i32 %16(ptr noundef %ipaddr, ptr noundef %ipaddr.i) #9
  br label %sctp_cmp_addr_exact.exit.i

sctp_cmp_addr_exact.exit.i:                       ; preds = %if.end.i.i, %for.body.i.sctp_cmp_addr_exact.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call4.i.i, %if.end.i.i ], [ 0, %for.body.i.sctp_cmp_addr_exact.exit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %sctp_cmp_addr_exact.exit.i.for.cond.i_crit_edge, label %sctp_assoc_lookup_paddr.exit

sctp_cmp_addr_exact.exit.i.for.cond.i_crit_edge:  ; preds = %sctp_cmp_addr_exact.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

sctp_assoc_lookup_paddr.exit:                     ; preds = %sctp_cmp_addr_exact.exit.i
  %tobool33.not = icmp eq ptr %t.0.i, null
  br i1 %tobool33.not, label %sctp_assoc_lookup_paddr.exit.if.then34_crit_edge, label %if.end35

sctp_assoc_lookup_paddr.exit.if.then34_crit_edge: ; preds = %sctp_assoc_lookup_paddr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %sctp_assoc_lookup_paddr.exit.if.then34_crit_edge, %for.cond.i.if.then34_crit_edge
  tail call void @sctp_assoc_rm_peer(ptr noundef %asoc, ptr noundef %pos.0204)
  br label %for.inc

if.end35:                                         ; preds = %sctp_assoc_lookup_paddr.exit
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp ugt i32 %18, 2
  br i1 %cmp, label %if.then36, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then36:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_transport_reset(ptr noundef %pos.0204) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.end35.for.inc_crit_edge, %if.then34
  %cmp.i.not = icmp eq ptr %temp.0206, %peer2
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %state39 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %19 = ptrtoint ptr %state39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp40 = icmp ugt i32 %20, 2
  br i1 %cmp40, label %if.then41, label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %for.end
  %21 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %21)
  %trans.0207 = load ptr, ptr %peer, align 8
  %cmp54.not208 = icmp eq ptr %trans.0207, %peer
  br i1 %cmp54.not208, label %for.cond51.preheader.for.end72_crit_edge, label %for.cond51.preheader.for.body56_crit_edge

for.cond51.preheader.for.body56_crit_edge:        ; preds = %for.cond51.preheader
  br label %for.body56

for.cond51.preheader.for.end72_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

if.then41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %next_tsn = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 35
  %22 = ptrtoint ptr %next_tsn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next_tsn, align 8
  %next_tsn42 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %24 = ptrtoint ptr %next_tsn42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %next_tsn42, align 8
  %ctsn_ack_point = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 36
  %25 = ptrtoint ptr %ctsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctsn_ack_point, align 4
  %ctsn_ack_point43 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 36
  %27 = ptrtoint ptr %ctsn_ack_point43 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ctsn_ack_point43, align 4
  %adv_peer_ack_point = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 37
  %28 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adv_peer_ack_point, align 8
  %adv_peer_ack_point44 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 37
  %30 = ptrtoint ptr %adv_peer_ack_point44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %adv_peer_ack_point44, align 8
  %stream = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  tail call void @sctp_stream_clear(ptr noundef %stream) #9
  %ulpq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 62
  tail call void @sctp_ulpq_flush(ptr noundef %ulpq) #9
  %overall_error_count = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 7
  %31 = ptrtoint ptr %overall_error_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %overall_error_count, align 8
  br label %if.end87

for.body56:                                       ; preds = %for.inc66.for.body56_crit_edge, %for.cond51.preheader.for.body56_crit_edge
  %trans.0209 = phi ptr [ %trans.0, %for.inc66.for.body56_crit_edge ], [ %trans.0207, %for.cond51.preheader.for.body56_crit_edge ]
  %ipaddr57 = getelementptr inbounds %struct.sctp_transport, ptr %trans.0209, i32 0, i32 6
  br label %for.cond.i176

for.cond.i176:                                    ; preds = %sctp_cmp_addr_exact.exit.i186.for.cond.i176_crit_edge, %for.body56
  %t.0.in.i173 = phi ptr [ %peer2, %for.body56 ], [ %t.0.i174, %sctp_cmp_addr_exact.exit.i186.for.cond.i176_crit_edge ]
  %32 = ptrtoint ptr %t.0.in.i173 to i32
  call void @__asan_load4_noabort(i32 %32)
  %t.0.i174 = load ptr, ptr %t.0.in.i173, align 8
  %cmp.not.i175 = icmp eq ptr %t.0.i174, %peer2
  br i1 %cmp.not.i175, label %for.cond.i176.land.lhs.true_crit_edge, label %for.body.i179

for.cond.i176.land.lhs.true_crit_edge:            ; preds = %for.cond.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.body.i179:                                    ; preds = %for.cond.i176
  %33 = ptrtoint ptr %ipaddr57 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ipaddr57, align 4
  %call.i.i177 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %34) #9
  %tobool.not.i.i178 = icmp eq ptr %call.i.i177, null
  br i1 %tobool.not.i.i178, label %for.body.i179.sctp_cmp_addr_exact.exit.i186_crit_edge, label %if.end.i.i183, !prof !72

for.body.i179.sctp_cmp_addr_exact.exit.i186_crit_edge: ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_cmp_addr_exact.exit.i186

if.end.i.i183:                                    ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #11
  %ipaddr.i180 = getelementptr inbounds %struct.sctp_transport, ptr %t.0.i174, i32 0, i32 6
  %cmp_addr.i.i181 = getelementptr inbounds %struct.sctp_af, ptr %call.i.i177, i32 0, i32 6
  %35 = ptrtoint ptr %cmp_addr.i.i181 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmp_addr.i.i181, align 4
  %call4.i.i182 = tail call i32 %36(ptr noundef %ipaddr57, ptr noundef %ipaddr.i180) #9
  br label %sctp_cmp_addr_exact.exit.i186

sctp_cmp_addr_exact.exit.i186:                    ; preds = %if.end.i.i183, %for.body.i179.sctp_cmp_addr_exact.exit.i186_crit_edge
  %retval.0.i.i184 = phi i32 [ %call4.i.i182, %if.end.i.i183 ], [ 0, %for.body.i179.sctp_cmp_addr_exact.exit.i186_crit_edge ]
  %tobool.not.i185 = icmp eq i32 %retval.0.i.i184, 0
  br i1 %tobool.not.i185, label %sctp_cmp_addr_exact.exit.i186.for.cond.i176_crit_edge, label %sctp_assoc_lookup_paddr.exit188

sctp_cmp_addr_exact.exit.i186.for.cond.i176_crit_edge: ; preds = %sctp_cmp_addr_exact.exit.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i176

sctp_assoc_lookup_paddr.exit188:                  ; preds = %sctp_cmp_addr_exact.exit.i186
  %tobool59.not = icmp eq ptr %t.0.i174, null
  br i1 %tobool59.not, label %sctp_assoc_lookup_paddr.exit188.land.lhs.true_crit_edge, label %sctp_assoc_lookup_paddr.exit188.for.inc66_crit_edge

sctp_assoc_lookup_paddr.exit188.for.inc66_crit_edge: ; preds = %sctp_assoc_lookup_paddr.exit188
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc66

sctp_assoc_lookup_paddr.exit188.land.lhs.true_crit_edge: ; preds = %sctp_assoc_lookup_paddr.exit188
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sctp_assoc_lookup_paddr.exit188.land.lhs.true_crit_edge, %for.cond.i176.land.lhs.true_crit_edge
  %state61 = getelementptr inbounds %struct.sctp_transport, ptr %trans.0209, i32 0, i32 37
  %37 = ptrtoint ptr %state61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state61, align 4
  %call62 = tail call ptr @sctp_assoc_add_peer(ptr noundef %asoc, ptr noundef %ipaddr57, i32 noundef 2592, i32 noundef %38)
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc66_crit_edge

land.lhs.true.for.inc66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc66

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc66:                                        ; preds = %land.lhs.true.for.inc66_crit_edge, %sctp_assoc_lookup_paddr.exit188.for.inc66_crit_edge
  %39 = ptrtoint ptr %trans.0209 to i32
  call void @__asan_load4_noabort(i32 %39)
  %trans.0 = load ptr, ptr %trans.0209, align 8
  %cmp54.not = icmp eq ptr %trans.0, %peer
  br i1 %cmp54.not, label %for.inc66.for.end72_crit_edge, label %for.inc66.for.body56_crit_edge

for.inc66.for.body56_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body56

for.inc66.for.end72_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

for.end72:                                        ; preds = %for.inc66.for.end72_crit_edge, %for.cond51.preheader.for.end72_crit_edge
  %next_tsn73 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %40 = ptrtoint ptr %next_tsn73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %next_tsn73, align 8
  %sub = add i32 %41, -1
  %ctsn_ack_point74 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 36
  %42 = ptrtoint ptr %ctsn_ack_point74 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %ctsn_ack_point74, align 4
  %adv_peer_ack_point76 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 37
  %43 = ptrtoint ptr %adv_peer_ack_point76 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub, ptr %adv_peer_ack_point76, align 8
  %44 = ptrtoint ptr %state39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i189.not = icmp eq i32 %45, 1
  br i1 %cmp.i189.not, label %if.then79, label %for.end72.if.end82_crit_edge

for.end72.if.end82_crit_edge:                     ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then79:                                        ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #11
  %stream80 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %stream81 = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 60
  tail call void @sctp_stream_update(ptr noundef %stream80, ptr noundef %stream81) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %for.end72.if.end82_crit_edge
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %46 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoc_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i191 = icmp eq i32 %47, 0
  br i1 %tobool.not.i191, label %if.end.i, label %if.end82.if.end87_crit_edge

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.end.i:                                         ; preds = %if.end82
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @sctp_assocs_id_lock) #9
  %call4.i = tail call i32 @idr_alloc_cyclic(ptr noundef nonnull @sctp_assocs_id, ptr noundef %asoc, i32 noundef 3, i32 noundef 0, i32 noundef 2048) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sctp_assocs_id_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i192 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i192, label %if.end.i.cleanup_crit_edge, label %if.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call4.i, ptr %assoc_id.i, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.end9.i, %if.end82.if.end87_crit_edge, %if.then41
  %peer_random = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 19
  %49 = ptrtoint ptr %peer_random to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %peer_random, align 8
  tail call void @kfree(ptr noundef %50) #9
  %peer_random90 = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 5, i32 19
  %51 = ptrtoint ptr %peer_random90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %peer_random90, align 8
  %53 = ptrtoint ptr %peer_random to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %peer_random, align 8
  store ptr null, ptr %peer_random90, align 8
  %peer_chunks = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 20
  %54 = ptrtoint ptr %peer_chunks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %peer_chunks, align 4
  tail call void @kfree(ptr noundef %55) #9
  %peer_chunks97 = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 5, i32 20
  %56 = ptrtoint ptr %peer_chunks97 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %peer_chunks97, align 4
  %58 = ptrtoint ptr %peer_chunks to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %peer_chunks, align 4
  store ptr null, ptr %peer_chunks97, align 4
  %peer_hmacs = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 21
  %59 = ptrtoint ptr %peer_hmacs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %peer_hmacs, align 8
  tail call void @kfree(ptr noundef %60) #9
  %peer_hmacs104 = getelementptr inbounds %struct.sctp_association, ptr %new, i32 0, i32 5, i32 21
  %61 = ptrtoint ptr %peer_hmacs104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %peer_hmacs104, align 8
  %63 = ptrtoint ptr %peer_hmacs to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %peer_hmacs, align 8
  store ptr null, ptr %peer_hmacs104, align 8
  %call109 = tail call i32 @sctp_auth_asoc_init_active_key(ptr noundef %asoc, i32 noundef 2592) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call109, %if.end87 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_tsnmap_init(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_stream_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_ulpq_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_stream_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_assoc_set_id(ptr noundef %asoc, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %gfp, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %assoc_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %0 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.i.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @idr_preload(i32 noundef %gfp) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @sctp_assocs_id_lock) #9
  %call4 = tail call i32 @idr_alloc_cyclic(ptr noundef nonnull @sctp_assocs_id, ptr noundef %asoc, i32 noundef 3, i32 noundef 0, i32 noundef 2048) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sctp_assocs_id_lock) #9
  br i1 %tobool.i.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr @radix_tree_preloads to i32)
  %8 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %8) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %assoc_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call4, ptr %assoc_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_asoc_init_active_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_assoc_choose_alter_transport(ptr noundef %asoc, ptr noundef readnone %last_sent_to) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %last_sent_to, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %active_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 6
  br label %return

if.else:                                          ; preds = %entry
  %retran_path = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %retran_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retran_path, align 4
  %cmp2 = icmp eq ptr %1, %last_sent_to
  br i1 %cmp2, label %if.then3, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_assoc_update_retran_path(ptr noundef %asoc)
  br label %return

return:                                           ; preds = %if.then3, %if.else.return_crit_edge, %if.then
  %retval.0.in = phi ptr [ %active_path, %if.then ], [ %retran_path, %if.then3 ], [ %retran_path, %if.else.return_crit_edge ]
  %2 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0 = load ptr, ptr %retval.0.in, align 4
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_update_frag_point(ptr nocapture noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %pathmtu = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 26
  %2 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pathmtu, align 4
  %si.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  %4 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %conv = zext i16 %7 to i32
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add nuw nsw i32 %conv, 12
  %pf.i.i = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf.i.i, align 4
  %af.i.i = getelementptr inbounds %struct.sctp_pf, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %af.i.i, align 4
  %net_header_len.i.i = getelementptr inbounds %struct.sctp_af, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %net_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %net_header_len.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add1.i.i = add nuw nsw i32 %add.i.i, %conv.i.i
  %udp_port.i.i = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool3.not.i.i = icmp eq i16 %15, 0
  %add8.i.i = add nuw nsw i32 %add1.i.i, 8
  %spec.select3.i.i = select i1 %tobool3.not.i.i, i32 %add1.i.i, i32 %add8.i.i
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add9.i.i = add nuw nsw i32 %conv, 52
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %overhead.0.i.i = phi i32 [ %add9.i.i, %if.else.i.i ], [ %spec.select3.i.i, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not.i.i = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %overhead.0.i.i, i32 %3)
  %cmp.i.i = icmp uge i32 %overhead.0.i.i, %3
  %spec.select.i.i = select i1 %tobool11.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %spec.select.i.i, label %land.rhs16.i.i, label %if.end10.i.i.sctp_mtu_payload.exit_crit_edge

if.end10.i.i.sctp_mtu_payload.exit_crit_edge:     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_mtu_payload.exit

land.rhs16.i.i:                                   ; preds = %if.end10.i.i
  %.b1.i.i = load i1, ptr @__sctp_mtu_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.sctp_mtu_payload.exit_crit_edge, label %if.then23.i.i, !prof !70

land.rhs16.i.i.sctp_mtu_payload.exit_crit_edge:   ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_mtu_payload.exit

if.then23.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__sctp_mtu_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 591, i32 noundef 9, ptr noundef null) #9
  br label %sctp_mtu_payload.exit

sctp_mtu_payload.exit:                            ; preds = %if.then23.i.i, %land.rhs16.i.i.sctp_mtu_payload.exit_crit_edge, %if.end10.i.i.sctp_mtu_payload.exit_crit_edge
  %spec.select2.i.i = phi i32 [ %3, %if.end10.i.i.sctp_mtu_payload.exit_crit_edge ], [ %overhead.0.i.i, %if.then23.i.i ], [ %overhead.0.i.i, %land.rhs16.i.i.sctp_mtu_payload.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select2.i.i)
  %tobool56.not.i.i = icmp eq i32 %spec.select2.i.i, 0
  %sub.i.i = sub i32 %spec.select2.i.i, %overhead.0.i.i
  %cond.i.i = select i1 %tobool56.not.i.i, i32 %overhead.0.i.i, i32 %sub.i.i
  %user_frag = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 51
  %16 = ptrtoint ptr %user_frag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %user_frag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %18 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 %17)
  %frag.0 = select i1 %tobool.not, i32 %cond.i.i, i32 %18
  %19 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %si.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %conv7 = zext i16 %22 to i32
  %sub = sub nsw i32 65532, %conv7
  %23 = tail call i32 @llvm.smin.i32(i32 %frag.0, i32 %sub)
  %and = and i32 %23, -4
  %frag_point = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 50
  %24 = ptrtoint ptr %frag_point to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %frag_point, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_sync_pmtu(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %peer = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %t.035 = load ptr, ptr %peer, align 8
  %cmp.not36 = icmp eq ptr %t.035, %peer
  br i1 %cmp.not36, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %t.038 = phi ptr [ %t.0, %for.inc.for.body_crit_edge ], [ %t.035, %if.end.for.body_crit_edge ]
  %pmtu.037 = phi i32 [ %pmtu.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %pmtu_pending = getelementptr inbounds %struct.sctp_transport, ptr %t.038, i32 0, i32 3
  %1 = ptrtoint ptr %pmtu_pending to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %pmtu_pending, align 4
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %for.body.if.end10_crit_edge, label %land.lhs.true

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %dst = getelementptr inbounds %struct.sctp_transport, ptr %t.038, i32 0, i32 18
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst, align 8
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %land.lhs.true.if.end10_crit_edge, label %if.then5

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %mtu_info = getelementptr inbounds %struct.sctp_transport, ptr %t.038, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mtu_info, i32 noundef 4) #9
  %5 = ptrtoint ptr %mtu_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mtu_info, align 4
  %call6 = tail call zeroext i1 @sctp_transport_update_pmtu(ptr noundef %t.038, i32 noundef %6) #9
  %7 = ptrtoint ptr %pmtu_pending to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load8 = load i8, ptr %pmtu_pending, align 4
  %bf.clear9 = and i8 %bf.load8, -33
  store i8 %bf.clear9, ptr %pmtu_pending, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pmtu.037)
  %tobool11.not = icmp eq i32 %pmtu.037, 0
  br i1 %tobool11.not, label %if.end10.if.then13_crit_edge, label %lor.lhs.false

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end10
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %t.038, i32 0, i32 34
  %8 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pathmtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pmtu.037)
  %cmp12 = icmp ult i32 %9, %pmtu.037
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %pathmtu14 = getelementptr inbounds %struct.sctp_transport, ptr %t.038, i32 0, i32 34
  %10 = ptrtoint ptr %pathmtu14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pathmtu14, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %lor.lhs.false.for.inc_crit_edge
  %pmtu.1 = phi i32 [ %11, %if.then13 ], [ %pmtu.037, %lor.lhs.false.for.inc_crit_edge ]
  %12 = ptrtoint ptr %t.038 to i32
  call void @__asan_load4_noabort(i32 %12)
  %t.0 = load ptr, ptr %t.038, align 8
  %cmp.not = icmp eq ptr %t.0, %peer
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %pmtu.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %pmtu.1, %for.inc.for.end_crit_edge ]
  tail call void @sctp_assoc_set_pmtu(ptr noundef nonnull %asoc, i32 noundef %pmtu.0.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sctp_transport_update_pmtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_rwnd_increase(ptr noundef %asoc, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rwnd_over = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 45
  %0 = ptrtoint ptr %rwnd_over to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rwnd_over, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp.not = icmp ult i32 %1, %len
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %1, %len
  %2 = ptrtoint ptr %rwnd_over to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %rwnd_over, align 4
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub5 = sub i32 %len, %1
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 43
  %3 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rwnd, align 4
  %add = add i32 %sub5, %4
  store i32 %add, ptr %rwnd, align 4
  %5 = ptrtoint ptr %rwnd_over to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rwnd_over, align 4
  br label %if.end10

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rwnd8 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 43
  %6 = ptrtoint ptr %rwnd8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rwnd8, align 4
  %add9 = add i32 %7, %len
  store i32 %add9, ptr %rwnd8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.else, %if.then2
  %rwnd_press = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 46
  %8 = ptrtoint ptr %rwnd_press to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rwnd_press, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.end10.do.body_crit_edge, label %if.then12

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %pathmtu = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 26
  %10 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pathmtu, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %9)
  %rwnd15 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 43
  %13 = ptrtoint ptr %rwnd15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rwnd15, align 4
  %add16 = add i32 %14, %12
  store i32 %add16, ptr %rwnd15, align 4
  %sub18 = sub i32 %9, %12
  %15 = ptrtoint ptr %rwnd_press to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub18, ptr %rwnd_press, align 8
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end10.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_assoc_rwnd_increase.__UNIQUE_ID_ddebug582, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_assoc_rwnd_increase, %if.then24)) #9
          to label %do.end [label %if.then24], !srcloc !77

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %rwnd25 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 43
  %16 = ptrtoint ptr %rwnd25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rwnd25, align 4
  %18 = ptrtoint ptr %rwnd_over to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rwnd_over, align 4
  %a_rwnd = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 44
  %20 = ptrtoint ptr %a_rwnd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %a_rwnd, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_assoc_rwnd_increase.__UNIQUE_ID_ddebug582, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %asoc, i32 noundef %len, i32 noundef %17, i32 noundef %19, i32 noundef %21) #9
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %net1.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %22 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net1.i, align 8
  %state.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %25, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %sw.bb.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end
  %rwnd.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 43
  %26 = ptrtoint ptr %rwnd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rwnd.i, align 4
  %a_rwnd.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 44
  %28 = ptrtoint ptr %a_rwnd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %a_rwnd.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i = icmp ugt i32 %27, %29
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %sub.i = sub i32 %27, %29
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %30 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_rcvbuf.i, align 8
  %rwnd_upd_shift.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 38, i32 44
  %34 = ptrtoint ptr %rwnd_upd_shift.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rwnd_upd_shift.i, align 8
  %shr.i = ashr i32 %33, %35
  %pathmtu.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 26
  %36 = ptrtoint ptr %pathmtu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pathmtu.i, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 %37) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %38)
  %cmp6.not.i = icmp ult i32 %sub.i, %38
  br i1 %cmp6.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then29

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true.i
  %39 = ptrtoint ptr %rwnd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rwnd.i, align 4
  %41 = ptrtoint ptr %a_rwnd.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %a_rwnd.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_assoc_rwnd_increase.__UNIQUE_ID_ddebug583, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_assoc_rwnd_increase, %if.then44)) #9
          to label %do.end49 [label %if.then44], !srcloc !77

if.then44:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %rwnd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rwnd.i, align 4
  %44 = ptrtoint ptr %a_rwnd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %a_rwnd.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_assoc_rwnd_increase.__UNIQUE_ID_ddebug583, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17, ptr noundef %asoc, i32 noundef %43, i32 noundef %45) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %if.then29
  %call50 = tail call ptr @sctp_make_sack(ptr noundef %asoc) #9
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %do.end49.cleanup_crit_edge, label %if.end53

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %do.end49
  %sack_needed = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %46 = ptrtoint ptr %sack_needed to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load = load i16, ptr %sack_needed, align 2
  %bf.clear = and i16 %bf.load, -65
  store i16 %bf.clear, ptr %sack_needed, align 2
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  tail call void @sctp_outq_tail(ptr noundef %outqueue, ptr noundef nonnull %call50, i32 noundef 2592) #9
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 31, i32 10
  %call54 = tail call i32 @del_timer(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.then56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_association_put(ptr noundef %asoc)
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end53.cleanup_crit_edge, %do.end49.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_sack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_outq_tail(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_rwnd_decrease(ptr noundef %asoc, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rwnd = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 43
  %0 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rwnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.rhs, !prof !72

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.rhs:                                          ; preds = %entry
  %rwnd_over = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 45
  %2 = ptrtoint ptr %rwnd_over to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rwnd_over, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.rhs.if.end14_crit_edge, label %lor.rhs.do.body_crit_edge, !prof !70

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.rhs.if.end14_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.body:                                          ; preds = %lor.rhs.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_assoc_rwnd_decrease.__UNIQUE_ID_ddebug584, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_assoc_rwnd_decrease, %if.then11)) #9
          to label %if.end14 [label %if.then11], !srcloc !77

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rwnd, align 4
  %rwnd_over13 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 45
  %6 = ptrtoint ptr %rwnd_over13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rwnd_over13, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_assoc_rwnd_decrease.__UNIQUE_ID_ddebug584, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, ptr noundef %asoc, i32 noundef %5, i32 noundef %7) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.body, %lor.rhs.if.end14_crit_edge
  %ep = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep, align 4
  %rcvbuf_policy = getelementptr inbounds %struct.sctp_endpoint, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %rcvbuf_policy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rcvbuf_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %rmem_alloc = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  br label %if.end20

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 4
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 9
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  %sk_backlog.sink = phi ptr [ %sk_backlog, %if.else ], [ %rmem_alloc, %if.then16 ]
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.sink, i32 noundef 4) #9
  %14 = ptrtoint ptr %sk_backlog.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %rx_count.0 = load volatile i32, ptr %sk_backlog.sink, align 4
  %15 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %len)
  %cmp26.not = icmp ult i32 %16, %len
  br i1 %cmp26.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end20
  %sk22 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %17 = ptrtoint ptr %sk22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk22, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_count.0, i32 %20)
  %cmp.not = icmp slt i32 %rx_count.0, %20
  %sub = sub i32 %16, %len
  %21 = ptrtoint ptr %rwnd to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %rwnd, align 4
  br i1 %cmp.not, label %if.then27.do.body41_crit_edge, label %if.then30

if.then27.do.body41_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %rwnd_press = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 46
  %22 = ptrtoint ptr %rwnd_press to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rwnd_press, align 8
  %add = add i32 %23, %sub
  store i32 %add, ptr %rwnd_press, align 8
  br label %do.body41.sink.split

if.else34:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %sub36 = sub i32 %len, %16
  %rwnd_over37 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 45
  %24 = ptrtoint ptr %rwnd_over37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rwnd_over37, align 4
  %add38 = add i32 %sub36, %25
  store i32 %add38, ptr %rwnd_over37, align 4
  br label %do.body41.sink.split

do.body41.sink.split:                             ; preds = %if.else34, %if.then30
  %26 = ptrtoint ptr %rwnd to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rwnd, align 4
  br label %do.body41

do.body41:                                        ; preds = %do.body41.sink.split, %if.then27.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_assoc_rwnd_decrease.__UNIQUE_ID_ddebug585, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_assoc_rwnd_decrease, %if.then53)) #9
          to label %do.end59 [label %if.then53], !srcloc !77

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %rwnd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rwnd, align 4
  %rwnd_over55 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 45
  %29 = ptrtoint ptr %rwnd_over55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rwnd_over55, align 4
  %rwnd_press56 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 46
  %31 = ptrtoint ptr %rwnd_press56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rwnd_press56, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_assoc_rwnd_decrease.__UNIQUE_ID_ddebug585, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22, ptr noundef %asoc, i32 noundef %len, i32 noundef %28, i32 noundef %30, i32 noundef %32) #9
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.body41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_assoc_set_bind_addr_from_ep(ptr noundef %asoc, i32 noundef %scope, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp = icmp eq i16 %3, 10
  %cond = select i1 %cmp, i32 2, i32 0
  %skc_ipv6only.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %skc_ipv6only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %skc_ipv6only.i, align 1
  %5 = lshr i8 %bf.load.i, 2
  %.lobit = and i8 %5, 1
  %6 = xor i8 %.lobit, 1
  %7 = zext i8 %6 to i32
  %spec.select = or i32 %cond, %7
  %ipv4_address = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %8 = ptrtoint ptr %ipv4_address to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %ipv4_address, align 2
  %9 = lshr i16 %bf.load, 12
  %10 = and i16 %9, 4
  %11 = zext i16 %10 to i32
  %12 = or i32 %spec.select, %11
  %13 = lshr i16 %bf.load, 10
  %14 = and i16 %13, 8
  %15 = zext i16 %14 to i32
  %16 = or i32 %12, %15
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 8
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6
  %ep = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %19 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep, align 4
  %bind_addr18 = getelementptr inbounds %struct.sctp_ep_common, ptr %20, i32 0, i32 6
  %call19 = tail call i32 @sctp_bind_addr_copy(ptr noundef %18, ptr noundef %bind_addr, ptr noundef %bind_addr18, i32 noundef %scope, i32 noundef %gfp, i32 noundef %16) #9
  ret i32 %call19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_bind_addr_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_assoc_set_bind_addr_from_cookie(ptr noundef %asoc, ptr noundef %cookie, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_init = getelementptr inbounds %struct.sctp_cookie, ptr %cookie, i32 0, i32 17
  %length = getelementptr inbounds %struct.sctp_cookie, ptr %cookie, i32 0, i32 17, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  %conv = zext i16 %1 to i32
  %raw_addr_list_len = getelementptr inbounds %struct.sctp_cookie, ptr %cookie, i32 0, i32 16
  %2 = ptrtoint ptr %raw_addr_list_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raw_addr_list_len, align 8
  %add.ptr = getelementptr i8, ptr %peer_init, i32 %conv
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6
  %ep = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %bind_addr4 = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %bind_addr4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bind_addr4, align 4
  %call = tail call i32 @sctp_raw_to_bind_addrs(ptr noundef %bind_addr, ptr noundef %add.ptr, i32 noundef %3, i16 noundef zeroext %7, i32 noundef %gfp) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_raw_to_bind_addrs(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_assoc_lookup_laddr(ptr noundef %asoc, ptr noundef %laddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 6
  %0 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bind_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %laddr, i32 0, i32 1
  %2 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sin_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp eq i16 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 4
  %call6 = tail call i32 @sctp_bind_addr_match(ptr noundef %bind_addr, ptr noundef %laddr, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp ne i32 %call6, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %found.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i32 %found.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_bind_addr_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_assoc_clean_asconf_ack_cache(ptr noundef readonly %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %asconf_ack_list = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 67
  %0 = ptrtoint ptr %asconf_ack_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asconf_ack_list, align 4
  %cmp.not22 = icmp eq ptr %1, %asconf_ack_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %addip_serial = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 18
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in23 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn26, %list_del_init.exit.for.body_crit_edge ]
  %ack.025 = getelementptr i8, ptr %.pn.in23, i32 -16
  %2 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn26 = load ptr, ptr %.pn.in23, align 4
  %subh = getelementptr i8, ptr %.pn.in23, i32 28
  %3 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subh, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %addip_serial to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addip_serial, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp7 = icmp eq i32 %6, %8
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %.pn.in23, ptr %.pn.in23, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.pn.in23, ptr %prev.i3.i, align 4
  tail call void @sctp_chunk_free(ptr noundef %ack.025) #9
  %cmp.not = icmp eq ptr %.pn26, %asconf_ack_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_assoc_lookup_asconf_ack(ptr noundef readonly %asoc, i32 noundef %serial) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %asconf_ack_list = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 67
  %0 = ptrtoint ptr %asconf_ack_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn17 = load ptr, ptr %asconf_ack_list, align 4
  %cmp.not19 = icmp eq ptr %.pn17, %asconf_ack_list
  br i1 %cmp.not19, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn20 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn17, %entry.for.body_crit_edge ]
  %ack.021 = getelementptr i8, ptr %.pn20, i32 -16
  %1 = ptrtoint ptr %ack.021 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %ack.021, align 4
  %cmp.i.i.not = icmp eq ptr %2, %ack.021
  br i1 %cmp.i.i.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %subh = getelementptr i8, ptr %.pn20, i32 28
  %3 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subh, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %serial)
  %cmp3 = icmp eq i32 %6, %serial
  br i1 %cmp3, label %if.then4, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sctp_chunk_hold(ptr noundef %ack.021) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp.not = icmp eq ptr %.pn, %asconf_ack_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ack.021, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_hold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_bind_addr_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_generate_tag(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_generate_tsn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_inq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_inq_set_th_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_assoc_bh_rcv(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -32
  %net1 = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 8
  %ep2 = getelementptr i8, ptr %work, i32 68
  %2 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep2, align 4
  %inqueue4 = getelementptr i8, ptr %work, i32 -12
  %refcnt.i = getelementptr i8, ptr %work, i32 -28
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sctp_association_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !70

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sctp_association_hold.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sctp_association_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sctp_association_hold.exit

sctp_association_hold.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sctp_association_hold.exit_crit_edge
  %state5 = getelementptr i8, ptr %work, i32 420
  %last_data_from = getelementptr i8, ptr %work, i32 276
  %sctp = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 38
  %ictrlchunks = getelementptr i8, ptr %work, i32 1888
  %isacks = getelementptr i8, ptr %work, i32 1784
  %dead = getelementptr i8, ptr %work, i32 -24
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %sctp_association_hold.exit
  %first_time.0.ph = phi i32 [ 1, %sctp_association_hold.exit ], [ %first_time.0.ph.be, %while.cond.outer.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_time.0.ph)
  %tobool.not = icmp ne i32 %first_time.0.ph, 0
  br label %while.cond

while.cond:                                       ; preds = %land.lhs.true23.while.cond_crit_edge, %while.cond.outer
  %call = tail call ptr @sctp_inq_pop(ptr noundef %inqueue4) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond
  %6 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state5, align 4
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chunk_hdr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 2
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %11)
  %cmp8 = icmp eq i8 %11, 15
  %or.cond = select i1 %tobool.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then, label %while.body.normal_crit_edge

while.body.normal_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %normal

if.then:                                          ; preds = %while.body
  %call10 = tail call ptr @sctp_inq_peek(ptr noundef %inqueue4) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then.normal_crit_edge, label %if.end

if.then.normal_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %normal

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %call10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp15 = icmp eq i8 %13, 10
  br i1 %cmp15, label %cleanup, label %if.end.normal_crit_edge

if.end.normal_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %normal

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %call18 = tail call ptr @skb_clone(ptr noundef %15, i32 noundef 2592) #9
  %auth_chunk = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 20
  %16 = ptrtoint ptr %auth_chunk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call18, ptr %auth_chunk, align 4
  br label %while.cond.outer.backedge.sink.split

while.cond.outer.backedge.sink.split:             ; preds = %if.end105.while.cond.outer.backedge.sink.split_crit_edge, %cleanup
  %.sink = phi i16 [ 64, %cleanup ], [ 512, %if.end105.while.cond.outer.backedge.sink.split_crit_edge ]
  %first_time.0.ph.be.ph = phi i32 [ 1, %cleanup ], [ 0, %if.end105.while.cond.outer.backedge.sink.split_crit_edge ]
  %auth = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 21
  %17 = ptrtoint ptr %auth to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load110 = load i16, ptr %auth, align 4
  %bf.set112 = or i16 %bf.load110, %.sink
  store i16 %bf.set112, ptr %auth, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end105.while.cond.outer.backedge_crit_edge, %while.cond.outer.backedge.sink.split
  %first_time.0.ph.be = phi i32 [ 0, %if.end105.while.cond.outer.backedge_crit_edge ], [ %first_time.0.ph.be.ph, %while.cond.outer.backedge.sink.split ]
  br label %while.cond.outer

normal:                                           ; preds = %if.end.normal_crit_edge, %if.then.normal_crit_edge, %while.body.normal_crit_edge
  %call21 = tail call i32 @sctp_auth_recv_cid(i32 noundef %conv, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %normal.if.end29_crit_edge, label %land.lhs.true23

normal.if.end29_crit_edge:                        ; preds = %normal
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true23:                                  ; preds = %normal
  %auth24 = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 21
  %18 = ptrtoint ptr %auth24 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load25 = load i16, ptr %auth24, align 4
  %19 = and i16 %bf.load25, 64
  %tobool27.not = icmp eq i16 %19, 0
  br i1 %tobool27.not, label %land.lhs.true23.while.cond_crit_edge, label %land.lhs.true23.if.end29_crit_edge

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true23.while.cond_crit_edge:             ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end29:                                         ; preds = %land.lhs.true23.if.end29_crit_edge, %normal.if.end29_crit_edge
  %chunk_hdr.le = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 10
  %conv.le = zext i8 %11 to i32
  %20 = ptrtoint ptr %chunk_hdr.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chunk_hdr.le, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 2
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %23, label %do.body41 [
    i8 0, label %if.end29.if.then40_crit_edge
    i8 64, label %if.end29.if.then40_crit_edge190
  ]

if.end29.if.then40_crit_edge190:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.end29.if.then40_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then40:                                        ; preds = %if.end29.if.then40_crit_edge, %if.end29.if.then40_crit_edge190
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 19
  %25 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transport, align 4
  %27 = ptrtoint ptr %last_data_from to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %last_data_from, align 4
  br label %if.end93

do.body41:                                        ; preds = %if.end29
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !82
  %29 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu, align 4
  %arrayidx58 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx58, align 4
  %add = add i32 %37, %31
  %38 = inttoptr i32 %add to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add59 = add i32 %40, 1
  store i32 %add59, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %and.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool70.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool70.not, label %if.then74, label %do.body41.do.end77_crit_edge, !prof !72

do.body41.do.end77_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

if.then74:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body41.do.end77_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #9, !srcloc !84
  %42 = ptrtoint ptr %ictrlchunks to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ictrlchunks, align 8
  %inc = add i64 %43, 1
  store i64 %inc, ptr %ictrlchunks, align 8
  %44 = ptrtoint ptr %chunk_hdr.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chunk_hdr.le, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp87 = icmp eq i8 %47, 3
  br i1 %cmp87, label %if.then89, label %do.end77.if.end93_crit_edge

do.end77.if.end93_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then89:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %isacks to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %isacks, align 8
  %inc91 = add i64 %49, 1
  store i64 %inc91, ptr %isacks, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %do.end77.if.end93_crit_edge, %if.then40
  %transport94 = getelementptr inbounds %struct.sctp_chunk, ptr %call, i32 0, i32 19
  %50 = ptrtoint ptr %transport94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %transport94, align 4
  %tobool95.not = icmp eq ptr %51, null
  br i1 %tobool95.not, label %if.end93.if.end99_crit_edge, label %if.then96

if.end93.if.end99_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = tail call i64 @ktime_get() #9
  %52 = ptrtoint ptr %transport94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %transport94, align 4
  %last_time_heard = getelementptr inbounds %struct.sctp_transport, ptr %53, i32 0, i32 25
  %54 = ptrtoint ptr %last_time_heard to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %call97, ptr %last_time_heard, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end93.if.end99_crit_edge
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %conv.le, 0
  %call101 = tail call i32 @sctp_do_sm(ptr noundef %1, i32 noundef 1, [1 x i32] %.fca.0.insert, i32 noundef %7, ptr noundef %3, ptr noundef %add.ptr, ptr noundef nonnull %call, i32 noundef 2592) #9
  %55 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dead, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool103.not = icmp eq i8 %56, 0
  br i1 %tobool103.not, label %if.end105, label %if.end99.while.end_crit_edge

if.end99.while.end_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end105:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool106.not = icmp eq i32 %call101, 0
  br i1 %tobool106.not, label %if.end105.while.cond.outer.backedge_crit_edge, label %if.end105.while.cond.outer.backedge.sink.split_crit_edge

if.end105.while.cond.outer.backedge.sink.split_crit_edge: ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.backedge.sink.split

if.end105.while.cond.outer.backedge_crit_edge:    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.backedge

while.end:                                        ; preds = %if.end99.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @sctp_association_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_outq_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpq_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_stream_init(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_asoc_copy_shkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_inq_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_inq_peek(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_recv_cid(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_do_sm(ptr noundef, i32 noundef, [1 x i32], i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_reset_probe_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !70

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !55, !56, !58, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/associola.c", i32 303, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sctp_association_new.__UNIQUE_ID_ddebug562, !1, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/sctp/associola.c", i32 491, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sctp_assoc_rm_peer.__UNIQUE_ID_ddebug564, !8, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sctp/associola.c", i32 599, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sctp_assoc_add_peer.__UNIQUE_ID_ddebug565, !13, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sctp/associola.c", i32 1312, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sctp_assoc_update_retran_path.__UNIQUE_ID_ddebug572, !18, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!21 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sctp/associola.c", i32 1422, i32 2}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sctp_assoc_set_pmtu.__UNIQUE_ID_ddebug577, !23, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!26 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sctp/associola.c", i32 1501, i32 2}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sctp_assoc_rwnd_increase.__UNIQUE_ID_ddebug582, !28, !"__UNIQUE_ID_ddebug582", i1 false, i1 false}
!31 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sctp/associola.c", i32 1513, i32 3}
!34 = !{ptr @sctp_assoc_rwnd_increase.__UNIQUE_ID_ddebug583, !33, !"__UNIQUE_ID_ddebug583", i1 false, i1 false}
!35 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/sctp/associola.c", i32 1539, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sctp_assoc_rwnd_decrease.__UNIQUE_ID_ddebug584, !37, !"__UNIQUE_ID_ddebug584", i1 false, i1 false}
!40 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sctp/associola.c", i32 1567, i32 2}
!43 = !{ptr @sctp_assoc_rwnd_decrease.__UNIQUE_ID_ddebug585, !42, !"__UNIQUE_ID_ddebug585", i1 false, i1 false}
!44 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sctp_association_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../net/sctp/associola.c", i32 144, i32 3}
!47 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sctp_association_init.__key.28, !49, !"__key", i1 false, i1 false}
!49 = !{!"../net/sctp/associola.c", i32 175, i32 2}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/sctp/associola.c", i32 405, i32 3}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/net/sctp/sctp.h", i32 591, i32 6}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!58 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
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
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2148261544, i64 2148261576, i64 2148261605, i64 2148261639, i64 2148261670, i64 2148261693}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2148349545}
!74 = !{i64 2148264009, i64 2148264041, i64 2148264070, i64 2148264104, i64 2148264135, i64 2148264158}
!75 = !{i64 2150478400}
!76 = !{i64 2148260014, i64 2148260040, i64 2148260069, i64 2148260103, i64 2148260134, i64 2148260157}
!77 = !{i64 2148848566, i64 2148848571, i64 2148848584, i64 2148848628, i64 2148848662, i64 2148848683}
!78 = !{i8 0, i8 2}
!79 = !{i64 2148262479, i64 2148262505, i64 2148262534, i64 2148262568, i64 2148262599, i64 2148262622}
!80 = !{i64 2149649401}
!81 = !{i64 2153937107}
!82 = !{i64 653292, i64 653353}
!83 = !{i64 656024}
!84 = !{i64 656309}
