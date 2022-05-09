; ModuleID = '/llk/IR_all_yes/net/sctp/endpointola.c_pt.bc'
source_filename = "../net/sctp/endpointola.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.130 = type { i32 }
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.77, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
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
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.161 }
%union.anon.161 = type { ptr, [124 x i8] }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
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
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.163, %struct.anon.164, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.163 = type { i32, i8, i8, i8 }
%struct.anon.164 = type { i16, i16, i16, i8, i8 }
%struct.sctp_sockaddr_entry = type { %struct.list_head, %struct.callback_head, %union.sctp_addr, i8, i8 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.152, %struct.list_head, ptr, %union.anon.153, %union.sctp_params, %union.anon.154, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon.152 = type { %struct.list_head }
%union.anon.153 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.154 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }

@sctp_dbg_objcnt_ep = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sctp/endpointola.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attempt to destroy undead endpoint %p!\0A\00", [56 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@___asan_gen_.9 = private constant [26 x i8] c"../net/sctp/endpointola.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 204, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 695, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 723, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_endpoint_new(ptr noundef %sk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !20

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 8
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 184) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i.i, align 4
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !20

if.end.kzalloc.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %if.end.kzalloc.exit.i_crit_edge
  %retval.0.i20.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i.i, i32 7
  %4 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %or.i, i32 noundef 20) #10
  %digest.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %digest.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.fail_init_crit_edge, label %if.end.i

kzalloc.exit.i.fail_init_crit_edge:               ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_init

if.end.i:                                         ; preds = %kzalloc.exit.i
  %addip_enable.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38, i32 36
  %7 = ptrtoint ptr %addip_enable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addip_enable.i, align 8
  %conv.i = trunc i32 %8 to i8
  %asconf_enable.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %asconf_enable.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %asconf_enable.i, align 2
  %bf.value.i = shl i8 %conv.i, 3
  %bf.shl.i = and i8 %bf.value.i, 8
  %bf.clear.i = and i8 %bf.load.i, -9
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %asconf_enable.i, align 2
  %auth_enable.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38, i32 40
  %10 = ptrtoint ptr %auth_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %auth_enable.i, align 8
  %conv4.i = trunc i32 %11 to i8
  %bf.value7.i = shl i8 %conv4.i, 6
  %bf.shl8.i = and i8 %bf.value7.i, 64
  %bf.clear9.i = and i8 %bf.set.i, -65
  %bf.set10.i = or i8 %bf.shl8.i, %bf.clear9.i
  store i8 %bf.set10.i, ptr %asconf_enable.i, align 2
  %bf.clear13.i = and i8 %conv4.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear13.i)
  %tobool14.not.i = icmp eq i8 %bf.clear13.i, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end29.i_crit_edge, label %if.then15.i

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then15.i:                                      ; preds = %if.end.i
  %call16.i = tail call i32 @sctp_auth_init(ptr noundef nonnull %call7.i.i, i32 noundef %gfp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then15.i.nomem.i_crit_edge

if.then15.i.nomem.i_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nomem.i

if.end19.i:                                       ; preds = %if.then15.i
  %12 = ptrtoint ptr %asconf_enable.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load21.i = load i8, ptr %asconf_enable.i, align 2
  %13 = and i8 %bf.load21.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool24.not.i = icmp eq i8 %13, 0
  br i1 %tobool24.not.i, label %if.end19.i.if.end29.i_crit_edge, label %if.then25.i

if.end19.i.if.end29.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i = tail call i32 @sctp_auth_ep_add_chunkid(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -63) #7
  %call27.i = tail call i32 @sctp_auth_ep_add_chunkid(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -128) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end19.i.if.end29.i_crit_edge, %if.end.i.if.end29.i_crit_edge
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %call7.i.i, align 8
  %refcnt.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  %15 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %refcnt.i, align 4
  %dead.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %dead.i, align 8
  %inqueue.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 5
  tail call void @sctp_inq_init(ptr noundef %inqueue.i) #7
  tail call void @sctp_inq_set_th_handler(ptr noundef %inqueue.i, ptr noundef nonnull @sctp_endpoint_bh_rcv) #7
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 6
  tail call void @sctp_bind_addr_init(ptr noundef %bind_addr.i, i16 noundef zeroext 0) #7
  %asocs.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %asocs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %asocs.i, ptr %asocs.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %asocs.i, ptr %prev.i.i, align 8
  %sndbuf_policy.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38, i32 33
  %19 = ptrtoint ptr %sndbuf_policy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sndbuf_policy.i, align 4
  %sndbuf_policy37.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %sndbuf_policy37.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sndbuf_policy37.i, align 8
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %22 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sctp_data_ready, ptr %sk_data_ready.i, align 8
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %23 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sctp_write_space, ptr %sk_write_space.i, align 4
  %24 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %or.i.i.i = or i32 %26, 512
  store i32 %or.i.i.i, ptr %24, align 4
  %rcvbuf_policy.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38, i32 34
  %27 = ptrtoint ptr %rcvbuf_policy.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rcvbuf_policy.i, align 8
  %rcvbuf_policy39.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %rcvbuf_policy39.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rcvbuf_policy39.i, align 4
  %secret_key.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 4
  tail call void @get_random_bytes(ptr noundef %secret_key.i, i32 noundef 32) #7
  %endpoint_shared_keys.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 11
  %30 = ptrtoint ptr %endpoint_shared_keys.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %endpoint_shared_keys.i, ptr %endpoint_shared_keys.i, align 4
  %prev.i121.i = getelementptr inbounds %struct.sctp_endpoint, ptr %call7.i.i, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %prev.i121.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %endpoint_shared_keys.i, ptr %prev.i121.i, align 8
  %call40.i = tail call ptr @sctp_auth_shkey_create(i16 noundef zeroext 0, i32 noundef %gfp) #7
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %nomem_shkey.i, label %if.end43.i

if.end43.i:                                       ; preds = %if.end29.i
  %32 = ptrtoint ptr %endpoint_shared_keys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %endpoint_shared_keys.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call40.i, ptr noundef %endpoint_shared_keys.i, ptr noundef %33) #7
  br i1 %call.i.i.i, label %if.end.i.i.i9, label %if.end43.i.list_add.exit.i_crit_edge

if.end43.i.list_add.exit.i_crit_edge:             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit.i

if.end.i.i.i9:                                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call40.i, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %call40.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %call40.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call40.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %endpoint_shared_keys.i, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %endpoint_shared_keys.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call40.i, ptr %endpoint_shared_keys.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i9, %if.end43.i.list_add.exit.i_crit_edge
  %prsctp_enable.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38, i32 38
  %38 = ptrtoint ptr %prsctp_enable.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prsctp_enable.i, align 8
  %conv46.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %asconf_enable.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load48.i = load i8, ptr %asconf_enable.i, align 2
  %bf.value49.i = shl i8 %conv46.i, 4
  %bf.shl50.i = and i8 %bf.value49.i, 16
  %bf.clear51.i = and i8 %bf.load48.i, -17
  %bf.set52.i = or i8 %bf.shl50.i, %bf.clear51.i
  store i8 %bf.set52.i, ptr %asconf_enable.i, align 2
  %reconf_enable.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38, i32 39
  %41 = ptrtoint ptr %reconf_enable.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reconf_enable.i, align 4
  %conv54.i = trunc i32 %42 to i8
  %bf.value57.i = shl i8 %conv54.i, 2
  %bf.shl58.i = and i8 %bf.value57.i, 4
  %bf.clear59.i = and i8 %bf.set52.i, -5
  %bf.set60.i = or i8 %bf.shl58.i, %bf.clear59.i
  store i8 %bf.set60.i, ptr %asconf_enable.i, align 2
  %ecn_enable.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 38, i32 42
  %43 = ptrtoint ptr %ecn_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ecn_enable.i, align 8
  %conv62.i = trunc i32 %44 to i8
  %bf.shl66.i = shl i8 %conv62.i, 7
  %bf.clear67.i = and i8 %bf.set60.i, 127
  %bf.set68.i = or i8 %bf.clear67.i, %bf.shl66.i
  store i8 %bf.set68.i, ptr %asconf_enable.i, align 2
  %sk70.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %sk70.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %sk, ptr %sk70.i, align 4
  %46 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skc_net.i.i, align 4
  %net73.i = getelementptr inbounds %struct.sctp_ep_common, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %net73.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %net73.i, align 8
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #7, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_add.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !22

list_add.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_add.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %50 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i.i = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end4_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end4_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_add.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_add.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %if.end4

nomem_shkey.i:                                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sctp_auth_free(ptr noundef nonnull %call7.i.i) #7
  br label %nomem.i

nomem.i:                                          ; preds = %nomem_shkey.i, %if.then15.i.nomem.i_crit_edge
  %51 = ptrtoint ptr %digest.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %digest.i, align 4
  tail call void @kfree(ptr noundef %52) #7
  br label %fail_init

if.end4:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end4_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_ep, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_ep, i32 1, i32 3, i32 1) #7
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_ep, ptr nonnull @sctp_dbg_objcnt_ep, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_ep) #7, !srcloc !23
  br label %cleanup

fail_init:                                        ; preds = %nomem.i, %kzalloc.exit.i.fail_init_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_init, %if.end4, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end4 ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ null, %fail_init ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_endpoint_add_asoc(ptr noundef %ep, ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %temp = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 78
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %temp, align 8
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %asocs = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 1
  %asocs2 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %asocs, ptr noundef %5, ptr noundef %asocs2) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %asocs, ptr %prev.i, align 4
  %7 = ptrtoint ptr %asocs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %asocs2, ptr %asocs, align 4
  %prev3.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %asocs, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %type.i = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 2
  br i1 %cmp.i.not, label %land.lhs.true, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp.i12.not = icmp eq i8 %13, 10
  br i1 %cmp.i12.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %14 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_ack_backlog.i, align 4
  %add.i = add i32 %15, 1
  store volatile i32 %add.i, ptr %sk_ack_backlog.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_endpoint_free(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dead = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dead, align 4
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 4
  tail call void @inet_sk_set_state(ptr noundef %2, i32 noundef 7) #7
  tail call void @sctp_unhash_endpoint(ptr noundef %ep) #7
  tail call void @sctp_endpoint_put(ptr noundef %ep)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_unhash_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_endpoint_put(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !20

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #7
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !26
  %dead.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 2
  %1 = ptrtoint ptr %dead.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dead.i, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end24.i, !prof !22

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %ep) #7
  br label %if.end

if.end24.i:                                       ; preds = %if.then
  %digest.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 5
  %3 = ptrtoint ptr %digest.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %digest.i, align 4
  tail call void @kfree(ptr noundef %4) #7
  %endpoint_shared_keys.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 11
  tail call void @sctp_auth_destroy_keys(ptr noundef %endpoint_shared_keys.i) #7
  tail call void @sctp_auth_free(ptr noundef %ep) #7
  %inqueue.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 5
  tail call void @sctp_inq_free(ptr noundef %inqueue.i) #7
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6
  tail call void @sctp_bind_addr_free(ptr noundef %bind_addr.i) #7
  %secret_key.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 4
  %5 = call ptr @memset(ptr %secret_key.i, i32 0, i32 32)
  %sk28.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %6 = ptrtoint ptr %sk28.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk28.i, align 4
  %bind_hash.i = getelementptr inbounds %struct.sctp_sock, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %bind_hash.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bind_hash.i, align 4
  %tobool29.not.i = icmp eq ptr %9, null
  br i1 %tobool29.not.i, label %if.end24.i.if.end31.i_crit_edge, label %if.then30.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sctp_put_port(ptr noundef %7) #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %if.end24.i.if.end31.i_crit_edge
  %rcu.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 15
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @sctp_endpoint_destroy_rcu) #7
  br label %if.end

if.end:                                           ; preds = %if.end31.i, %do.end.i, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_endpoint_hold(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #7
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !20

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !20

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #7
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #7
  %conv = zext i1 %tobool12.i.i.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_endpoint_is_match(ptr noundef %ep, ptr noundef readnone %net, ptr noundef %laddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bind_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %laddr, i32 0, i32 1
  %2 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sin_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp eq i16 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %net5 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 4
  %4 = ptrtoint ptr %net5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net5, align 4
  %cmp.i.not = icmp eq ptr %5, %net
  br i1 %cmp.i.not, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 4
  %call10 = tail call i32 @sctp_bind_addr_match(ptr noundef %bind_addr, ptr noundef %laddr, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %spec.select = select i1 %tobool11.not, ptr null, ptr %ep
  br label %if.end13

if.end13:                                         ; preds = %if.then, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %retval1.0 = phi ptr [ null, %land.lhs.true.if.end13_crit_edge ], [ null, %entry.if.end13_crit_edge ], [ %spec.select, %if.then ]
  ret ptr %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_bind_addr_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_endpoint_lookup_assoc(ptr noundef %ep, ptr noundef %paddr, ptr nocapture noundef writeonly %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %transport, align 4
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6
  %1 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bind_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @sctp_epaddr_lookup_transport(ptr noundef %ep, ptr noundef %paddr) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end3

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %transport, align 4
  %asoc4 = getelementptr inbounds %struct.sctp_transport, ptr %call, i32 0, i32 8
  %8 = ptrtoint ptr %asoc4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asoc4, align 8
  br label %out

out:                                              ; preds = %if.end3, %rcu_read_lock.exit.out_crit_edge
  %asoc.0 = phi ptr [ %9, %if.end3 ], [ null, %rcu_read_lock.exit.out_crit_edge ]
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i10, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %out
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i17 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %asoc.0, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_epaddr_lookup_transport(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sctp_endpoint_is_peeled_off(ptr noundef readonly %ep, ptr noundef %paddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %address_list = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %addr.0.in = phi ptr [ %address_list, %entry ], [ %addr.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %addr.0 = load ptr, ptr %addr.0.in, align 4
  %cmp.not = icmp eq ptr %addr.0, %address_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.0, i32 0, i32 2
  %call = tail call zeroext i1 @sctp_has_association(ptr noundef %1, ptr noundef %a, ptr noundef %paddr) #7
  br i1 %call, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %3 = xor i1 %cmp.not, true
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sctp_has_association(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_ep_add_chunkid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_inq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_inq_set_th_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_endpoint_bh_rcv(ptr noundef %work) #0 align 64 {
entry:
  %transport = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transport) #7
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %transport, align 4, !annotation !31
  %dead = getelementptr i8, ptr %work, i32 -24
  %1 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dead, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup131_crit_edge

entry.cleanup131_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup131

if.end:                                           ; preds = %entry
  %inqueue2 = getelementptr i8, ptr %work, i32 -12
  %sk4 = getelementptr i8, ptr %work, i32 -20
  %3 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %net74 = getelementptr i8, ptr %work, i32 -16
  %ep124 = getelementptr inbounds %struct.sctp_sock, ptr %4, i32 0, i32 5
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.end
  %tobool8.not = phi i1 [ true, %if.end ], [ %tobool8.not.be, %while.cond.outer.backedge ]
  %asoc.0.ph = phi ptr [ null, %if.end ], [ %asoc.0.ph.be, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %land.lhs.true37.while.cond_crit_edge, %while.cond.outer
  %asoc.0 = phi ptr [ %asoc.1, %land.lhs.true37.while.cond_crit_edge ], [ %asoc.0.ph, %while.cond.outer ]
  %call5 = tail call ptr @sctp_inq_pop(ptr noundef %inqueue2) #7
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %while.cond.cleanup131_crit_edge, label %while.body

while.cond.cleanup131_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup131

while.body:                                       ; preds = %while.cond
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 10
  %7 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chunk_hdr, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 2
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %10)
  %cmp9 = icmp eq i8 %10, 15
  %or.cond = select i1 %tobool8.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then11, label %while.body.normal_crit_edge

while.body.normal_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

if.then11:                                        ; preds = %while.body
  %call12 = tail call ptr @sctp_inq_peek(ptr noundef %inqueue2) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then11.normal_crit_edge, label %if.end15

if.then11.normal_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

if.end15:                                         ; preds = %if.then11
  %11 = ptrtoint ptr %call12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp18 = icmp eq i8 %12, 10
  br i1 %cmp18, label %cleanup, label %if.end15.normal_crit_edge

if.end15.normal_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

cleanup:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 5
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  %call21 = tail call ptr @skb_clone(ptr noundef %14, i32 noundef 2592) #7
  %auth_chunk = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 20
  %15 = ptrtoint ptr %auth_chunk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call21, ptr %auth_chunk, align 4
  %auth = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 21
  %16 = ptrtoint ptr %auth to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %auth, align 4
  %bf.set = or i16 %bf.load, 64
  store i16 %bf.set, ptr %auth, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end122.while.cond.outer.backedge_crit_edge, %cleanup
  %tobool8.not.be = phi i1 [ false, %if.end122.while.cond.outer.backedge_crit_edge ], [ true, %cleanup ]
  %asoc.0.ph.be = phi ptr [ %asoc.1, %if.end122.while.cond.outer.backedge_crit_edge ], [ %asoc.0, %cleanup ]
  br label %while.cond.outer

normal:                                           ; preds = %if.end15.normal_crit_edge, %if.then11.normal_crit_edge, %while.body.normal_crit_edge
  %asoc24 = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 13
  %17 = ptrtoint ptr %asoc24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asoc24, align 4
  %cmp25 = icmp eq ptr %18, null
  br i1 %cmp25, label %if.then27, label %normal.if.end32_crit_edge

normal.if.end32_crit_edge:                        ; preds = %normal
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then27:                                        ; preds = %normal
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call ptr @sctp_source(ptr noundef nonnull %call5) #7
  %call29 = call ptr @sctp_endpoint_lookup_assoc(ptr noundef %add.ptr, ptr noundef %call28, ptr noundef nonnull %transport)
  %19 = ptrtoint ptr %asoc24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call29, ptr %asoc24, align 4
  %20 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transport, align 4
  %transport31 = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 19
  %22 = ptrtoint ptr %transport31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %transport31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %normal.if.end32_crit_edge
  %asoc.1 = phi ptr [ %call29, %if.then27 ], [ %asoc.0, %normal.if.end32_crit_edge ]
  %tobool33.not = icmp eq ptr %asoc.1, null
  br i1 %tobool33.not, label %if.end32.cond.end_crit_edge, label %cond.true

if.end32.cond.end_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %state34 = getelementptr inbounds %struct.sctp_association, ptr %asoc.1, i32 0, i32 6
  %23 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state34, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end32.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.true ], [ 0, %if.end32.cond.end_crit_edge ]
  %call35 = tail call i32 @sctp_auth_recv_cid(i32 noundef %conv, ptr noundef %asoc.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cond.end.if.end43_crit_edge, label %land.lhs.true37

cond.end.if.end43_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true37:                                  ; preds = %cond.end
  %auth38 = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 21
  %25 = ptrtoint ptr %auth38 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load39 = load i16, ptr %auth38, align 4
  %26 = and i16 %bf.load39, 64
  %tobool41.not = icmp eq i16 %26, 0
  br i1 %tobool41.not, label %land.lhs.true37.while.cond_crit_edge, label %land.lhs.true37.if.end43_crit_edge

land.lhs.true37.if.end43_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true37.while.cond_crit_edge:             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end43:                                         ; preds = %land.lhs.true37.if.end43_crit_edge, %cond.end.if.end43_crit_edge
  %conv.le = zext i8 %10 to i32
  br i1 %tobool33.not, label %if.end43.do.body58_crit_edge, label %land.lhs.true45

if.end43.do.body58_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

land.lhs.true45:                                  ; preds = %if.end43
  %chunk_hdr.le = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 10
  %27 = ptrtoint ptr %chunk_hdr.le to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chunk_hdr.le, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 2
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %land.lhs.true45.do.body58_crit_edge [
    i8 0, label %land.lhs.true45.if.then56_crit_edge
    i8 64, label %land.lhs.true45.if.then56_crit_edge223
  ]

land.lhs.true45.if.then56_crit_edge223:           ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

land.lhs.true45.if.then56_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

land.lhs.true45.do.body58_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

if.then56:                                        ; preds = %land.lhs.true45.if.then56_crit_edge, %land.lhs.true45.if.then56_crit_edge223
  %transport57 = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 19
  %32 = ptrtoint ptr %transport57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transport57, align 4
  %last_data_from = getelementptr inbounds %struct.sctp_association, ptr %asoc.1, i32 0, i32 5, i32 9
  %34 = ptrtoint ptr %last_data_from to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %last_data_from, align 4
  br label %if.end106

do.body58:                                        ; preds = %land.lhs.true45.do.body58_crit_edge, %if.end43.do.body58_crit_edge
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !32
  %36 = ptrtoint ptr %net74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net74, align 4
  %sctp = getelementptr inbounds %struct.net, ptr %37, i32 0, i32 38
  %38 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %arrayidx to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu, align 4
  %arrayidx77 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx77, align 4
  %add = add i32 %46, %40
  %47 = inttoptr i32 %add to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add78 = add i32 %49, 1
  store i32 %add78, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !33
  %and.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool89.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool89.not, label %if.then93, label %do.body58.do.end96_crit_edge, !prof !22

do.body58.do.end96_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end96

if.then93:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end96

do.end96:                                         ; preds = %if.then93, %do.body58.do.end96_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #7, !srcloc !34
  br i1 %tobool33.not, label %do.end96.if.end106_crit_edge, label %if.then104

do.end96.if.end106_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then104:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  %ictrlchunks = getelementptr inbounds %struct.sctp_association, ptr %asoc.1, i32 0, i32 85, i32 15
  %51 = ptrtoint ptr %ictrlchunks to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ictrlchunks, align 8
  %inc = add i64 %52, 1
  store i64 %inc, ptr %ictrlchunks, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %do.end96.if.end106_crit_edge, %if.then56
  %transport107 = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 19
  %53 = ptrtoint ptr %transport107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %transport107, align 4
  %tobool108.not = icmp eq ptr %54, null
  br i1 %tobool108.not, label %if.end106.if.end112_crit_edge, label %if.then109

if.end106.if.end112_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = tail call i64 @ktime_get() #7
  %55 = ptrtoint ptr %transport107 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %transport107, align 4
  %last_time_heard = getelementptr inbounds %struct.sctp_transport, ptr %56, i32 0, i32 25
  %57 = ptrtoint ptr %last_time_heard to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %call110, ptr %last_time_heard, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end106.if.end112_crit_edge
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %conv.le, 0
  %call114 = tail call i32 @sctp_do_sm(ptr noundef %6, i32 noundef 1, [1 x i32] %.fca.0.insert, i32 noundef %cond, ptr noundef %add.ptr, ptr noundef %asoc.1, ptr noundef nonnull %call5, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end112.if.end122_crit_edge, label %if.then118

if.end112.if.end122_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then118:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %pdiscard = getelementptr inbounds %struct.sctp_chunk, ptr %call5, i32 0, i32 21
  %58 = ptrtoint ptr %pdiscard to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load119 = load i16, ptr %pdiscard, align 4
  %bf.set121 = or i16 %bf.load119, 512
  store i16 %bf.set121, ptr %pdiscard, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.end112.if.end122_crit_edge
  %59 = ptrtoint ptr %ep124 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ep124, align 8
  %tobool125.not = icmp eq ptr %60, null
  br i1 %tobool125.not, label %if.end122.cleanup131_crit_edge, label %if.end122.while.cond.outer.backedge_crit_edge

if.end122.while.cond.outer.backedge_crit_edge:    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.outer.backedge

if.end122.cleanup131_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup131

cleanup131:                                       ; preds = %if.end122.cleanup131_crit_edge, %while.cond.cleanup131_crit_edge, %entry.cleanup131_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transport) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_bind_addr_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_data_ready(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_write_space(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_auth_shkey_create(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_inq_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_inq_peek(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_auth_recv_cid(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_do_sm(ptr noundef, i32 noundef, [1 x i32], i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_destroy_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_inq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_bind_addr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_put_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_endpoint_destroy_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr i8, ptr %head, i32 -164
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %ep2 = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ep2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ep2, align 8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !20

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @sk_free(ptr noundef %1) #7
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -176
  tail call void @kfree(ptr noundef %add.ptr) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_ep, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_ep, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_ep, ptr nonnull @sctp_dbg_objcnt_ep, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_ep) #7, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !4, !6, !7, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{!"sp"}
!1 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!2 = !{!"../net/sctp/endpointola.c", i32 204, i32 3}
!3 = !{ptr @.str.1, !2, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148590597, i64 2148590629, i64 2148590658, i64 2148590692, i64 2148590723, i64 2148590746}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2148589067, i64 2148589093, i64 2148589122, i64 2148589156, i64 2148589187, i64 2148589210}
!24 = !{i64 2148678622}
!25 = !{i64 2148593062, i64 2148593094, i64 2148593123, i64 2148593157, i64 2148593188, i64 2148593211}
!26 = !{i64 2149876395}
!27 = !{i8 0, i8 2}
!28 = !{i64 1074580, i64 1074604, i64 1074625, i64 1074642, i64 1074659}
!29 = !{i64 2149925938}
!30 = !{i64 2149926204}
!31 = !{!"auto-init"}
!32 = !{i64 993747, i64 993808}
!33 = !{i64 996479}
!34 = !{i64 996764}
!35 = !{i64 2148591532, i64 2148591558, i64 2148591587, i64 2148591621, i64 2148591652, i64 2148591675}
