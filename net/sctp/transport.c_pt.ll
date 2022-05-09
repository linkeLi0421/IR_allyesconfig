; ModuleID = '/llk/IR_all_yes/net/sctp/transport.c_pt.bc'
source_filename = "../net/sctp/transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.12 }
%union.anon.12 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.13 }
%union.anon.13 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.175, %struct.anon.176, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.flowi = type { %union.anon }
%union.anon = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.175 = type { i32, i8, i8, i8 }
%struct.anon.176 = type { i16, i16, i16, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.108, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.98, i32, %struct.spinlock }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.160, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.160 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.121, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.122, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.123, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.109, %union.anon.111, %union.anon.112, i16, i8, i8, i32, %union.anon.114, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.117, [0 x i32], %union.anon.118, i16, i16, %union.anon.119, %struct.refcount_struct, [0 x i32], %union.anon.120 }
%union.anon.109 = type { i64 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i32 }
%union.anon.114 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { %struct.hlist_node }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.121 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.122 = type { ptr }
%union.anon.123 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.sctp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sctp_dbg_objcnt_transport = external dso_local global %struct.atomic_t, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sctp_transport_pl_send.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sctp_transport_pl_send\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sctp/transport.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: PLPMTUD: transport: %p, state: %d, pmtu: %d, size: %d, high: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"sctp: %s: PLPMTUD: transport: %p, state: %d, pmtu: %d, size: %d, high: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@sctp_transport_pl_recv.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sctp_transport_pl_recv\00", [41 x i8] zeroinitializer }, align 32
@sctp_transport_update_pmtu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sctp_transport_update_pmtu = private unnamed_addr constant [27 x i8] c"sctp_transport_update_pmtu\00", align 1
@sctp_transport_update_pmtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.sctp_transport_update_pmtu, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014sctp: %s: Reported pmtu %d too low, using default minimum of %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sctp_transport_update_pmtu._entry_ptr = internal global ptr @sctp_transport_update_pmtu._entry, section ".printk_index", align 4
@sctp_transport_update_rto.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp_transport_update_rto\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: rto_pending not set on transport %p!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sctp: %s: rto_pending not set on transport %p!\0A\00", [48 x i8] zeroinitializer }, align 32
@sctp_transport_update_rto.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: transport:%p, rtt:%d, srtt:%d rttvar:%d, rto:%ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"sctp: %s: transport:%p, rtt:%d, srtt:%d rttvar:%d, rto:%ld\0A\00", [36 x i8] zeroinitializer }, align 32
@sctp_transport_raise_cwnd.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp_transport_raise_cwnd\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%s: slow start: transport:%p, bytes_acked:%d, cwnd:%d, ssthresh:%d, flight_size:%d, pba:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"sctp: %s: slow start: transport:%p, bytes_acked:%d, cwnd:%d, ssthresh:%d, flight_size:%d, pba:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@sctp_transport_raise_cwnd.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"%s: congestion avoidance: transport:%p, bytes_acked:%d, cwnd:%d, ssthresh:%d, flight_size:%d, pba:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"sctp: %s: congestion avoidance: transport:%p, bytes_acked:%d, cwnd:%d, ssthresh:%d, flight_size:%d, pba:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sctp_transport_lower_cwnd.__UNIQUE_ID_ddebug579 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp_transport_lower_cwnd\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: transport:%p, reason:%d, cwnd:%d, ssthresh:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sctp: %s: transport:%p, reason:%d, cwnd:%d, ssthresh:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sctp_transport_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&peer->T3_rtx_timer)\00", [42 x i8] zeroinitializer }, align 32
@sctp_transport_init.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&peer->hb_timer)\00", [46 x i8] zeroinitializer }, align 32
@sctp_transport_init.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&peer->reconf_timer)\00", [42 x i8] zeroinitializer }, align 32
@sctp_transport_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&peer->probe_timer)\00", [43 x i8] zeroinitializer }, align 32
@sctp_transport_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&peer->proto_unreach_timer)\00", [35 x i8] zeroinitializer }, align 32
@sctp_transport_pl_toobig.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_transport_pl_toobig\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: PLPMTUD: transport: %p, state: %d, pmtu: %d, size: %d, ptb: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"sctp: %s: PLPMTUD: transport: %p, state: %d, pmtu: %d, size: %d, ptb: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attempt to destroy undead transport %p!\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 305, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 312, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 406, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 491, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 547, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 603, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 638, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 739, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 75, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 76, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 77, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 78, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 79, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 354, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [24 x i8] c"../net/sctp/transport.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 162, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @sctp_transport_update_pmtu._entry, ptr @sctp_transport_update_pmtu._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sctp_transport_update_pmtu._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @sctp_transport_init.__key, ptr @.str.21, ptr @sctp_transport_init.__key.22, ptr @.str.23, ptr @sctp_transport_init.__key.24, ptr @.str.25, ptr @sctp_transport_init.__key.26, ptr @.str.27, ptr @sctp_transport_init.__key.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_transport_update_pmtu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_transport_update_pmtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_transport_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_transport_init.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_transport_init.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_transport_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_transport_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_transport_new(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %addr, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !74

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 10
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 632) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 4
  %call.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %3) #12
  %af_specific.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %af_specific.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %af_specific.i, align 4
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 6
  %sockaddr_len.i = getelementptr inbounds %struct.sctp_af, ptr %call.i, i32 0, i32 22
  %5 = ptrtoint ptr %sockaddr_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sockaddr_len.i, align 4
  %7 = call ptr @memcpy(ptr %ipaddr.i, ptr %addr, i32 %6)
  %saddr.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 19
  %8 = call ptr @memset(ptr %saddr.i, i32 0, i32 28)
  %sack_generation.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %sack_generation.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %sack_generation.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -9
  store i8 %bf.clear.i, ptr %sack_generation.i, align 4
  %rto_initial.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 14
  %10 = ptrtoint ptr %rto_initial.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rto_initial.i, align 8
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #12
  %rto.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %rto.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i.i, ptr %rto.i, align 4
  %last_time_heard.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 25
  %13 = ptrtoint ptr %last_time_heard.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %last_time_heard.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_time_ecne_reduced.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 27
  %15 = ptrtoint ptr %last_time_ecne_reduced.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_time_ecne_reduced.i, align 4
  %param_flags.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 35
  %16 = ptrtoint ptr %param_flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 42, ptr %param_flags.i, align 4
  %max_retrans_path.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 27
  %17 = ptrtoint ptr %max_retrans_path.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_retrans_path.i, align 4
  %conv.i = trunc i32 %18 to i16
  %pathmaxrxt.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 29
  %19 = ptrtoint ptr %pathmaxrxt.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %pathmaxrxt.i, align 2
  %pf_retrans.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 29
  %20 = ptrtoint ptr %pf_retrans.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pf_retrans.i, align 4
  %conv5.i = trunc i32 %21 to i16
  %pf_retrans6.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 32
  %22 = ptrtoint ptr %pf_retrans6.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv5.i, ptr %pf_retrans6.i, align 2
  %transmitted.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 44
  %23 = ptrtoint ptr %transmitted.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transmitted.i, ptr %transmitted.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 44, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transmitted.i, ptr %prev.i.i, align 8
  %send_ready.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 46
  %25 = ptrtoint ptr %send_ready.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %send_ready.i, ptr %send_ready.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 46, i32 1
  %26 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %send_ready.i, ptr %prev.i1.i, align 8
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %prev.i2.i, align 4
  %T3_rtx_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 39
  tail call void @init_timer_key(ptr noundef %T3_rtx_timer.i, ptr noundef nonnull @sctp_generate_t3_rtx_event, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @sctp_transport_init.__key) #12
  %hb_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 40
  tail call void @init_timer_key(ptr noundef %hb_timer.i, ptr noundef nonnull @sctp_generate_heartbeat_event, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @sctp_transport_init.__key.22) #12
  %reconf_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 42
  tail call void @init_timer_key(ptr noundef %reconf_timer.i, ptr noundef nonnull @sctp_generate_reconf_event, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @sctp_transport_init.__key.24) #12
  %probe_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 43
  tail call void @init_timer_key(ptr noundef %probe_timer.i, ptr noundef nonnull @sctp_generate_probe_event, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @sctp_transport_init.__key.26) #12
  %proto_unreach_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 41
  tail call void @init_timer_key(ptr noundef %proto_unreach_timer.i, ptr noundef nonnull @sctp_generate_proto_unreach_event, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @sctp_transport_init.__key.28) #12
  %hb_nonce.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 49
  tail call void @get_random_bytes(ptr noundef %hb_nonce.i, i32 noundef 8) #12
  %refcnt.i = getelementptr inbounds %struct.sctp_transport, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  %29 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %refcnt.i, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_transport, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_transport, i32 1, i32 3, i32 1) #12
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_transport, ptr nonnull @sctp_dbg_objcnt_transport, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_transport) #12, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_free(ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hb_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 40
  %call = tail call i32 @del_timer(ptr noundef %hb_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_put(ptr noundef %transport)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %T3_rtx_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 39
  %call1 = tail call i32 @del_timer(ptr noundef %T3_rtx_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_put(ptr noundef %transport)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %reconf_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 42
  %call5 = tail call i32 @del_timer(ptr noundef %reconf_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_put(ptr noundef %transport)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %probe_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 43
  %call9 = tail call i32 @del_timer(ptr noundef %probe_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_put(ptr noundef %transport)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %proto_unreach_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 41
  %call13 = tail call i32 @del_timer(ptr noundef %proto_unreach_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_put(ptr noundef %transport)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  tail call void @sctp_transport_put(ptr noundef %transport)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_put(ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !74

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !78
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end23.i, label %do.end.i, !prof !74

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef %transport) #12
  br label %if.end

if.end23.i:                                       ; preds = %if.then
  %packet.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 45
  tail call void @sctp_packet_free(ptr noundef %packet.i) #12
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %3 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asoc.i, align 8
  %tobool24.not.i = icmp eq ptr %4, null
  br i1 %tobool24.not.i, label %if.end23.i.if.end27.i_crit_edge, label %if.then25.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_association_put(ptr noundef nonnull %4) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end27.i_crit_edge
  %rcu.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 50
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @sctp_transport_destroy_rcu) #12
  br label %if.end

if.end:                                           ; preds = %if.end27.i, %do.end.i, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_reset_t3_rtx(ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 39, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %T3_rtx_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 9
  %3 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rto, align 4
  %add = add i32 %4, %2
  %call2 = tail call i32 @mod_timer(ptr noundef %T3_rtx_timer, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @sctp_transport_hold(ptr noundef %transport)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_transport_hold(ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #12, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !74

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !74

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #12
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %conv = zext i1 %tobool12.i.i.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_reset_hb_timer(ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %rto.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 9
  %1 = ptrtoint ptr %rto.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rto.i, align 4
  %shr.i = lshr i32 %2, 1
  %state.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 37
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.then.i [
    i32 3, label %entry.sctp_transport_timeout.exit_crit_edge
    i32 1, label %entry.sctp_transport_timeout.exit_crit_edge17
  ]

entry.sctp_transport_timeout.exit_crit_edge17:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_timeout.exit

entry.sctp_transport_timeout.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_timeout.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hbinterval.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 20
  %6 = ptrtoint ptr %hbinterval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hbinterval.i, align 8
  %add.i = add i32 %7, %shr.i
  br label %sctp_transport_timeout.exit

sctp_transport_timeout.exit:                      ; preds = %if.then.i, %entry.sctp_transport_timeout.exit_crit_edge, %entry.sctp_transport_timeout.exit_crit_edge17
  %timeout.0.i = phi i32 [ %add.i, %if.then.i ], [ %shr.i, %entry.sctp_transport_timeout.exit_crit_edge ], [ %shr.i, %entry.sctp_transport_timeout.exit_crit_edge17 ]
  %8 = tail call i32 @llvm.umax.i32(i32 %timeout.0.i, i32 20) #12
  %add = add i32 %8, %0
  %hb_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 40
  %expires1 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 40, i32 1
  %9 = ptrtoint ptr %expires1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expires1, align 4
  %sub = sub i32 %10, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %sctp_transport_timeout.exit.land.lhs.true_crit_edge, label %lor.lhs.false

sctp_transport_timeout.exit.land.lhs.true_crit_edge: ; preds = %sctp_transport_timeout.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %sctp_transport_timeout.exit
  %pprev.i.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 40, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.not, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %sctp_transport_timeout.exit.land.lhs.true_crit_edge
  %call.i = tail call i32 @prandom_u32() #12
  %conv.i = zext i32 %call.i to i64
  %conv1.i = zext i32 %2 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i16 = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i16 to i32
  %add6 = add i32 %add, %conv2.i
  %call7 = tail call i32 @mod_timer(ptr noundef %hb_timer, i32 noundef %add6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @sctp_transport_hold(ptr noundef %transport)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sctp_transport_timeout(ptr nocapture noundef readonly %trans) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %trans, i32 0, i32 9
  %0 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rto, align 4
  %shr = lshr i32 %1, 1
  %state = getelementptr inbounds %struct.sctp_transport, ptr %trans, i32 0, i32 37
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %3, label %if.then [
    i32 3, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge10
  ]

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hbinterval = getelementptr inbounds %struct.sctp_transport, ptr %trans, i32 0, i32 20
  %5 = ptrtoint ptr %hbinterval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hbinterval, align 8
  %add = add i32 %6, %shr
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge10
  %timeout.0 = phi i32 [ %add, %if.then ], [ %shr, %entry.if.end_crit_edge ], [ %shr, %entry.if.end_crit_edge10 ]
  %7 = tail call i32 @llvm.umax.i32(i32 %timeout.0, i32 20)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_reset_reconf_timer(ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 42, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %reconf_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 9
  %3 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rto, align 4
  %add = add i32 %4, %2
  %call2 = tail call i32 @mod_timer(ptr noundef %reconf_timer, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @sctp_transport_hold(ptr noundef %transport)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_reset_probe_timer(ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %probe_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %probe_interval = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 21
  %1 = ptrtoint ptr %probe_interval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %probe_interval, align 4
  %add = add i32 %2, %0
  %call = tail call i32 @mod_timer(ptr noundef %probe_timer, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @sctp_transport_hold(ptr noundef %transport)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_reset_raise_timer(ptr noundef %transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %probe_timer = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %probe_interval = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 21
  %1 = ptrtoint ptr %probe_interval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %probe_interval, align 4
  %mul = mul i32 %2, 30
  %add = add i32 %mul, %0
  %call = tail call i32 @mod_timer(ptr noundef %probe_timer, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @sctp_transport_hold(ptr noundef %transport)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_set_owner(ptr nocapture noundef writeonly %transport, ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %asoc, ptr %asoc1, align 8
  tail call void @sctp_association_hold(ptr noundef %asoc) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_pmtu(ptr noundef %transport, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 18
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %obsolete = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %obsolete to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %obsolete, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @dst_release(ptr noundef %1) #12
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dst, align 8
  %dst_pending_confirm.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 3
  %5 = ptrtoint ptr %dst_pending_confirm.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %dst_pending_confirm.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -17
  store i8 %bf.clear.i, ptr %dst_pending_confirm.i, align 4
  %af_specific = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 7
  %6 = ptrtoint ptr %af_specific to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %af_specific, align 4
  %get_dst = getelementptr inbounds %struct.sctp_af, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %get_dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_dst, align 4
  %saddr = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 19
  %fl = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 5
  tail call void %9(ptr noundef %transport, ptr noundef %saddr, ptr noundef %fl, ptr noundef %sk) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %param_flags = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 35
  %10 = ptrtoint ptr %param_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param_flags, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end19_crit_edge, label %if.then4

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then4:                                         ; preds = %if.end
  %asoc5 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %12 = ptrtoint ptr %asoc5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asoc5, align 8
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 34
  %14 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pathmtu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp ne i32 %15, 0
  %tobool7.not = icmp eq ptr %13, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.then4.if.end14_crit_edge, label %land.lhs.true8

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true8:                                   ; preds = %if.then4
  %pathmtu9 = getelementptr inbounds %struct.sctp_association, ptr %13, i32 0, i32 26
  %16 = ptrtoint ptr %pathmtu9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pathmtu9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end14thread-pre-split, label %if.end14.thread

if.end14.thread:                                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %pathmtu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pathmtu, align 8
  br label %return

if.end14thread-pre-split:                         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %pathmtu, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end14thread-pre-split, %if.then4.if.end14_crit_edge
  %20 = phi i32 [ %.pr, %if.end14thread-pre-split ], [ %15, %if.then4.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.end14.return_crit_edge

if.end14.return_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end19:                                         ; preds = %if.end14.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst, align 8
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %if.end19.if.end26_crit_edge, label %if.then22

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mtu.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef nonnull %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call.i.i)
  %cmp.i = icmp ugt i32 %call.i.i, 512
  %phi.bo.i = and i32 %call.i.i, -4
  %cond.i = select i1 %cmp.i, i32 %phi.bo.i, i32 512
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end19.if.end26_crit_edge
  %cond.i.sink = phi i32 [ %cond.i, %if.then22 ], [ 1500, %if.end19.if.end26_crit_edge ]
  %27 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 34
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i.sink, ptr %27, align 8
  %state.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48, i32 4
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i48 = icmp eq i8 %30, 0
  br i1 %cmp.i48, label %if.end26.return_crit_edge, label %if.end.i

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.end26
  %pl.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %state.i, align 1
  %32 = ptrtoint ptr %pl.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1200, ptr %pl.i, align 4
  %probe_size.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 48, i32 1
  %33 = ptrtoint ptr %probe_size.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1200, ptr %probe_size.i, align 2
  %probe_timer.i.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %probe_interval.i.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 21
  %35 = ptrtoint ptr %probe_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %probe_interval.i.i, align 4
  %add.i.i = add i32 %36, %34
  %call.i.i49 = tail call i32 @mod_timer(ptr noundef %probe_timer.i.i, i32 noundef %add.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool.not.i.i = icmp eq i32 %call.i.i49, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = tail call i32 @sctp_transport_hold(ptr noundef %transport) #12
  br label %return

return:                                           ; preds = %if.then.i.i, %if.end.i.return_crit_edge, %if.end26.return_crit_edge, %if.end14.return_crit_edge, %if.end14.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_dst_release(ptr nocapture noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 8
  tail call void @dst_release(ptr noundef %1) #12
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dst, align 8
  %dst_pending_confirm = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 3
  %3 = ptrtoint ptr %dst_pending_confirm to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %dst_pending_confirm, align 4
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %dst_pending_confirm, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_pl_send(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pl = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48
  %probe_count = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 3
  %0 = ptrtoint ptr %probe_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %probe_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %probe_count to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %probe_count, align 2
  %state = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %4, label %if.end.do.body_crit_edge [
    i8 1, label %if.then8
    i8 2, label %if.then26
    i8 3, label %if.then66
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then8:                                         ; preds = %if.end
  %probe_size = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %6 = ptrtoint ptr %probe_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %probe_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1200, i16 %7)
  %cmp11 = icmp eq i16 %7, 1200
  br i1 %cmp11, label %if.then13, label %if.then8.do.body_crit_edge

if.then8.do.body_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then13:                                        ; preds = %if.then8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %state, align 1
  %9 = ptrtoint ptr %pl to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1200, ptr %pl, align 4
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %10 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asoc.i, align 8
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then13.sctp_transport_pl_hlen.exit_crit_edge, label %if.then.i.i

if.then13.sctp_transport_pl_hlen.exit_crit_edge:  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then.i.i:                                      ; preds = %if.then13
  %pf.i.i = getelementptr inbounds %struct.sctp_sock, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pf.i.i, align 4
  %af.i.i = getelementptr inbounds %struct.sctp_pf, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %af.i.i, align 4
  %net_header_len.i.i = getelementptr inbounds %struct.sctp_af, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %net_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %net_header_len.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 12
  %udp_port.i.i = getelementptr inbounds %struct.sctp_sock, ptr %13, i32 0, i32 16
  %20 = ptrtoint ptr %udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool3.not.i.i = icmp eq i16 %21, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %tobool4.not.i.i = icmp eq ptr %t, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.then7.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then7.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %encap_port.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %22 = ptrtoint ptr %encap_port.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %encap_port.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool6.not.i.i = icmp eq i16 %23, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %lor.lhs.false.i.i.if.then7.i.i_crit_edge

lor.lhs.false.i.i.if.then7.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then7.i.i_crit_edge, %land.lhs.true.i.i.if.then7.i.i_crit_edge
  %add8.i.i = add nuw nsw i32 %conv.i.i, 20
  br label %sctp_transport_pl_hlen.exit

sctp_transport_pl_hlen.exit:                      ; preds = %if.then7.i.i, %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, %if.then13.sctp_transport_pl_hlen.exit_crit_edge
  %overhead.0.i.i = phi i32 [ %add8.i.i, %if.then7.i.i ], [ %add1.i.i, %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ %add1.i.i, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ 52, %if.then13.sctp_transport_pl_hlen.exit_crit_edge ]
  %add = add nuw nsw i32 %overhead.0.i.i, 1188
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %24 = ptrtoint ptr %pathmtu to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %pathmtu, align 8
  tail call void @sctp_assoc_sync_pmtu(ptr noundef %11) #12
  br label %do.body

if.then26:                                        ; preds = %if.end
  %25 = ptrtoint ptr %pl to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pl, align 4
  %probe_size31 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %27 = ptrtoint ptr %probe_size31 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %probe_size31, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp33 = icmp eq i16 %26, %28
  br i1 %cmp33, label %if.then35, label %if.else50

if.then35:                                        ; preds = %if.then26
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %state, align 1
  %30 = ptrtoint ptr %probe_size31 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1200, ptr %probe_size31, align 2
  %probe_high = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 2
  %31 = ptrtoint ptr %probe_high to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %probe_high, align 4
  %32 = ptrtoint ptr %pl to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1200, ptr %pl, align 4
  %asoc.i152 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %33 = ptrtoint ptr %asoc.i152 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %asoc.i152, align 8
  %sk.i153 = getelementptr inbounds %struct.sctp_ep_common, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %sk.i153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk.i153, align 4
  %tobool.not.i.i154 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i154, label %if.then35.sctp_transport_pl_hlen.exit172_crit_edge, label %if.then.i.i162

if.then35.sctp_transport_pl_hlen.exit172_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit172

if.then.i.i162:                                   ; preds = %if.then35
  %pf.i.i155 = getelementptr inbounds %struct.sctp_sock, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %pf.i.i155 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pf.i.i155, align 4
  %af.i.i156 = getelementptr inbounds %struct.sctp_pf, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %af.i.i156 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %af.i.i156, align 4
  %net_header_len.i.i157 = getelementptr inbounds %struct.sctp_af, ptr %40, i32 0, i32 21
  %41 = ptrtoint ptr %net_header_len.i.i157 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %net_header_len.i.i157, align 4
  %conv.i.i158 = zext i16 %42 to i32
  %add1.i.i159 = add nuw nsw i32 %conv.i.i158, 12
  %udp_port.i.i160 = getelementptr inbounds %struct.sctp_sock, ptr %36, i32 0, i32 16
  %43 = ptrtoint ptr %udp_port.i.i160 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %udp_port.i.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool3.not.i.i161 = icmp eq i16 %44, 0
  br i1 %tobool3.not.i.i161, label %if.then.i.i162.sctp_transport_pl_hlen.exit172_crit_edge, label %land.lhs.true.i.i164

if.then.i.i162.sctp_transport_pl_hlen.exit172_crit_edge: ; preds = %if.then.i.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit172

land.lhs.true.i.i164:                             ; preds = %if.then.i.i162
  %tobool4.not.i.i163 = icmp eq ptr %t, null
  br i1 %tobool4.not.i.i163, label %land.lhs.true.i.i164.if.then7.i.i169_crit_edge, label %lor.lhs.false.i.i167

land.lhs.true.i.i164.if.then7.i.i169_crit_edge:   ; preds = %land.lhs.true.i.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i169

lor.lhs.false.i.i167:                             ; preds = %land.lhs.true.i.i164
  %encap_port.i.i165 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %45 = ptrtoint ptr %encap_port.i.i165 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %encap_port.i.i165, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool6.not.i.i166 = icmp eq i16 %46, 0
  br i1 %tobool6.not.i.i166, label %lor.lhs.false.i.i167.sctp_transport_pl_hlen.exit172_crit_edge, label %lor.lhs.false.i.i167.if.then7.i.i169_crit_edge

lor.lhs.false.i.i167.if.then7.i.i169_crit_edge:   ; preds = %lor.lhs.false.i.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i169

lor.lhs.false.i.i167.sctp_transport_pl_hlen.exit172_crit_edge: ; preds = %lor.lhs.false.i.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit172

if.then7.i.i169:                                  ; preds = %lor.lhs.false.i.i167.if.then7.i.i169_crit_edge, %land.lhs.true.i.i164.if.then7.i.i169_crit_edge
  %add8.i.i168 = add nuw nsw i32 %conv.i.i158, 20
  br label %sctp_transport_pl_hlen.exit172

sctp_transport_pl_hlen.exit172:                   ; preds = %if.then7.i.i169, %lor.lhs.false.i.i167.sctp_transport_pl_hlen.exit172_crit_edge, %if.then.i.i162.sctp_transport_pl_hlen.exit172_crit_edge, %if.then35.sctp_transport_pl_hlen.exit172_crit_edge
  %overhead.0.i.i170 = phi i32 [ %add8.i.i168, %if.then7.i.i169 ], [ %add1.i.i159, %lor.lhs.false.i.i167.sctp_transport_pl_hlen.exit172_crit_edge ], [ %add1.i.i159, %if.then.i.i162.sctp_transport_pl_hlen.exit172_crit_edge ], [ 52, %if.then35.sctp_transport_pl_hlen.exit172_crit_edge ]
  %add47 = add nuw nsw i32 %overhead.0.i.i170, 1188
  %pathmtu48 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %47 = ptrtoint ptr %pathmtu48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add47, ptr %pathmtu48, align 8
  tail call void @sctp_assoc_sync_pmtu(ptr noundef %34) #12
  br label %do.body

if.else50:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %probe_high54 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 2
  %48 = ptrtoint ptr %probe_high54 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %28, ptr %probe_high54, align 4
  %49 = ptrtoint ptr %probe_size31 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %26, ptr %probe_size31, align 2
  br label %do.body

if.then66:                                        ; preds = %if.end
  %50 = ptrtoint ptr %pl to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pl, align 4
  %probe_size71 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %52 = ptrtoint ptr %probe_size71 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %probe_size71, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp73 = icmp eq i16 %51, %53
  br i1 %cmp73, label %if.then75, label %if.then66.do.body_crit_edge

if.then66.do.body_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then75:                                        ; preds = %if.then66
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %state, align 1
  %55 = ptrtoint ptr %probe_size71 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1200, ptr %probe_size71, align 2
  %56 = ptrtoint ptr %pl to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1200, ptr %pl, align 4
  %asoc.i173 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %57 = ptrtoint ptr %asoc.i173 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %asoc.i173, align 8
  %sk.i174 = getelementptr inbounds %struct.sctp_ep_common, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %sk.i174 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sk.i174, align 4
  %tobool.not.i.i175 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i175, label %if.then75.sctp_transport_pl_hlen.exit193_crit_edge, label %if.then.i.i183

if.then75.sctp_transport_pl_hlen.exit193_crit_edge: ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit193

if.then.i.i183:                                   ; preds = %if.then75
  %pf.i.i176 = getelementptr inbounds %struct.sctp_sock, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %pf.i.i176 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pf.i.i176, align 4
  %af.i.i177 = getelementptr inbounds %struct.sctp_pf, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %af.i.i177 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %af.i.i177, align 4
  %net_header_len.i.i178 = getelementptr inbounds %struct.sctp_af, ptr %64, i32 0, i32 21
  %65 = ptrtoint ptr %net_header_len.i.i178 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %net_header_len.i.i178, align 4
  %conv.i.i179 = zext i16 %66 to i32
  %add1.i.i180 = add nuw nsw i32 %conv.i.i179, 12
  %udp_port.i.i181 = getelementptr inbounds %struct.sctp_sock, ptr %60, i32 0, i32 16
  %67 = ptrtoint ptr %udp_port.i.i181 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %udp_port.i.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool3.not.i.i182 = icmp eq i16 %68, 0
  br i1 %tobool3.not.i.i182, label %if.then.i.i183.sctp_transport_pl_hlen.exit193_crit_edge, label %land.lhs.true.i.i185

if.then.i.i183.sctp_transport_pl_hlen.exit193_crit_edge: ; preds = %if.then.i.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit193

land.lhs.true.i.i185:                             ; preds = %if.then.i.i183
  %tobool4.not.i.i184 = icmp eq ptr %t, null
  br i1 %tobool4.not.i.i184, label %land.lhs.true.i.i185.if.then7.i.i190_crit_edge, label %lor.lhs.false.i.i188

land.lhs.true.i.i185.if.then7.i.i190_crit_edge:   ; preds = %land.lhs.true.i.i185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i190

lor.lhs.false.i.i188:                             ; preds = %land.lhs.true.i.i185
  %encap_port.i.i186 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %69 = ptrtoint ptr %encap_port.i.i186 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %encap_port.i.i186, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool6.not.i.i187 = icmp eq i16 %70, 0
  br i1 %tobool6.not.i.i187, label %lor.lhs.false.i.i188.sctp_transport_pl_hlen.exit193_crit_edge, label %lor.lhs.false.i.i188.if.then7.i.i190_crit_edge

lor.lhs.false.i.i188.if.then7.i.i190_crit_edge:   ; preds = %lor.lhs.false.i.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i190

lor.lhs.false.i.i188.sctp_transport_pl_hlen.exit193_crit_edge: ; preds = %lor.lhs.false.i.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit193

if.then7.i.i190:                                  ; preds = %lor.lhs.false.i.i188.if.then7.i.i190_crit_edge, %land.lhs.true.i.i185.if.then7.i.i190_crit_edge
  %add8.i.i189 = add nuw nsw i32 %conv.i.i179, 20
  br label %sctp_transport_pl_hlen.exit193

sctp_transport_pl_hlen.exit193:                   ; preds = %if.then7.i.i190, %lor.lhs.false.i.i188.sctp_transport_pl_hlen.exit193_crit_edge, %if.then.i.i183.sctp_transport_pl_hlen.exit193_crit_edge, %if.then75.sctp_transport_pl_hlen.exit193_crit_edge
  %overhead.0.i.i191 = phi i32 [ %add8.i.i189, %if.then7.i.i190 ], [ %add1.i.i180, %lor.lhs.false.i.i188.sctp_transport_pl_hlen.exit193_crit_edge ], [ %add1.i.i180, %if.then.i.i183.sctp_transport_pl_hlen.exit193_crit_edge ], [ 52, %if.then75.sctp_transport_pl_hlen.exit193_crit_edge ]
  %add86 = add nuw nsw i32 %overhead.0.i.i191, 1188
  %pathmtu87 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %71 = ptrtoint ptr %pathmtu87 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add86, ptr %pathmtu87, align 8
  tail call void @sctp_assoc_sync_pmtu(ptr noundef %58) #12
  br label %do.body

do.body:                                          ; preds = %sctp_transport_pl_hlen.exit193, %if.then66.do.body_crit_edge, %if.else50, %sctp_transport_pl_hlen.exit172, %sctp_transport_pl_hlen.exit, %if.then8.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_transport_pl_send.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_transport_pl_send, %if.then96)) #12
          to label %do.end [label %if.then96], !srcloc !80

if.then96:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %state98 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 4
  %72 = ptrtoint ptr %state98 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %state98, align 1
  %conv99 = zext i8 %73 to i32
  %74 = ptrtoint ptr %pl to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pl, align 4
  %conv102 = zext i16 %75 to i32
  %probe_size104 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %76 = ptrtoint ptr %probe_size104 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %probe_size104, align 2
  %conv105 = zext i16 %77 to i32
  %probe_high107 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 2
  %78 = ptrtoint ptr %probe_high107 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %probe_high107, align 4
  %conv108 = zext i16 %79 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_transport_pl_send.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %t, i32 noundef %conv99, i32 noundef %conv102, i32 noundef %conv105, i32 noundef %conv108) #12
  br label %do.end

do.end:                                           ; preds = %if.then96, %do.body
  %80 = ptrtoint ptr %probe_count to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %probe_count, align 2
  %inc = add i8 %81, 1
  store i8 %inc, ptr %probe_count, align 2
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @sctp_transport_pl_hlen(ptr noundef readonly %t) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.__sctp_mtu_payload.exit_crit_edge, label %if.then.i

entry.__sctp_mtu_payload.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_mtu_payload.exit

if.then.i:                                        ; preds = %entry
  %pf.i = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pf.i, align 4
  %af.i = getelementptr inbounds %struct.sctp_pf, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %af.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %af.i, align 4
  %net_header_len.i = getelementptr inbounds %struct.sctp_af, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %net_header_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %net_header_len.i, align 4
  %conv.i = zext i16 %9 to i32
  %add1.i = add nuw nsw i32 %conv.i, 12
  %udp_port.i = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %udp_port.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %udp_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not.i = icmp eq i16 %11, 0
  br i1 %tobool3.not.i, label %if.then.i.__sctp_mtu_payload.exit_crit_edge, label %land.lhs.true.i

if.then.i.__sctp_mtu_payload.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_mtu_payload.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %tobool4.not.i = icmp eq ptr %t, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then7.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then7.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %encap_port.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %12 = ptrtoint ptr %encap_port.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %encap_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool6.not.i = icmp eq i16 %13, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.__sctp_mtu_payload.exit_crit_edge, label %lor.lhs.false.i.if.then7.i_crit_edge

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

lor.lhs.false.i.__sctp_mtu_payload.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_mtu_payload.exit

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %land.lhs.true.i.if.then7.i_crit_edge
  %add8.i = add nuw nsw i32 %conv.i, 20
  br label %__sctp_mtu_payload.exit

__sctp_mtu_payload.exit:                          ; preds = %if.then7.i, %lor.lhs.false.i.__sctp_mtu_payload.exit_crit_edge, %if.then.i.__sctp_mtu_payload.exit_crit_edge, %entry.__sctp_mtu_payload.exit_crit_edge
  %overhead.0.i = phi i32 [ %add8.i, %if.then7.i ], [ %add1.i, %lor.lhs.false.i.__sctp_mtu_payload.exit_crit_edge ], [ %add1.i, %if.then.i.__sctp_mtu_payload.exit_crit_edge ], [ 52, %entry.__sctp_mtu_payload.exit_crit_edge ]
  %sub = add nsw i32 %overhead.0.i, -12
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_sync_pmtu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sctp_transport_pl_recv(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_transport_pl_recv.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_transport_pl_recv, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pl = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48
  %state = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pl, align 4
  %conv4 = zext i16 %3 to i32
  %probe_size = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %4 = ptrtoint ptr %probe_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %probe_size, align 2
  %conv6 = zext i16 %5 to i32
  %probe_high = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 2
  %6 = ptrtoint ptr %probe_high to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %probe_high, align 4
  %conv8 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_transport_pl_recv.__UNIQUE_ID_ddebug563, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %t, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pl9 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48
  %probe_size10 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %8 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %probe_size10, align 2
  %10 = ptrtoint ptr %pl9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %pl9, align 4
  %probe_count = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 3
  %11 = ptrtoint ptr %probe_count to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %probe_count, align 2
  %state15 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 4
  %12 = ptrtoint ptr %state15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state15, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %13, label %do.end.if.end116_crit_edge [
    i8 1, label %if.then18
    i8 4, label %if.then30
    i8 2, label %if.then53
    i8 3, label %if.then105
  ]

do.end.if.end116_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %state15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %state15, align 1
  %add = add i16 %9, 32
  %16 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %add, ptr %probe_size10, align 2
  br label %if.end116

if.then30:                                        ; preds = %do.end
  %17 = ptrtoint ptr %state15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %state15, align 1
  %conv39 = zext i16 %9 to i32
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %18 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asoc.i, align 8
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then30.sctp_transport_pl_hlen.exit_crit_edge, label %if.then.i.i

if.then30.sctp_transport_pl_hlen.exit_crit_edge:  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then.i.i:                                      ; preds = %if.then30
  %pf.i.i = getelementptr inbounds %struct.sctp_sock, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf.i.i, align 4
  %af.i.i = getelementptr inbounds %struct.sctp_pf, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %af.i.i, align 4
  %net_header_len.i.i = getelementptr inbounds %struct.sctp_af, ptr %25, i32 0, i32 21
  %26 = ptrtoint ptr %net_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %net_header_len.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 12
  %udp_port.i.i = getelementptr inbounds %struct.sctp_sock, ptr %21, i32 0, i32 16
  %28 = ptrtoint ptr %udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool3.not.i.i = icmp eq i16 %29, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %tobool4.not.i.i = icmp eq ptr %t, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.then7.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then7.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %encap_port.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %30 = ptrtoint ptr %encap_port.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %encap_port.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool6.not.i.i = icmp eq i16 %31, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %lor.lhs.false.i.i.if.then7.i.i_crit_edge

lor.lhs.false.i.i.if.then7.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then7.i.i_crit_edge, %land.lhs.true.i.i.if.then7.i.i_crit_edge
  %add8.i.i = add nuw nsw i32 %conv.i.i, 20
  br label %sctp_transport_pl_hlen.exit

sctp_transport_pl_hlen.exit:                      ; preds = %if.then7.i.i, %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, %if.then30.sctp_transport_pl_hlen.exit_crit_edge
  %overhead.0.i.i = phi i32 [ %add8.i.i, %if.then7.i.i ], [ %add1.i.i, %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ %add1.i.i, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ 52, %if.then30.sctp_transport_pl_hlen.exit_crit_edge ]
  %sub.i = add nsw i32 %conv39, -12
  %add41 = add nsw i32 %sub.i, %overhead.0.i.i
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %32 = ptrtoint ptr %pathmtu to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add41, ptr %pathmtu, align 8
  tail call void @sctp_assoc_sync_pmtu(ptr noundef %19) #12
  %33 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %probe_size10, align 2
  %add45 = add i16 %34, 32
  store i16 %add45, ptr %probe_size10, align 2
  br label %if.end116

if.then53:                                        ; preds = %do.end
  %probe_high55 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 2
  %35 = ptrtoint ptr %probe_high55 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %probe_high55, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool56.not = icmp eq i16 %36, 0
  br i1 %tobool56.not, label %if.then57, label %if.end68

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 8968, i16 %9)
  %cmp63 = icmp ult i16 %9, 8968
  %add61 = add i16 %9, 32
  %cond = select i1 %cmp63, i16 %add61, i16 9000
  %37 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %cond, ptr %probe_size10, align 2
  br label %return

if.end68:                                         ; preds = %if.then53
  %add72 = add i16 %9, 4
  %38 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %add72, ptr %probe_size10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add72, i16 %36)
  %cmp80.not = icmp ult i16 %add72, %36
  br i1 %cmp80.not, label %if.end68.if.end116_crit_edge, label %if.then82

if.end68.if.end116_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then82:                                        ; preds = %if.end68
  %39 = ptrtoint ptr %probe_high55 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %probe_high55, align 4
  %40 = ptrtoint ptr %state15 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %state15, align 1
  %41 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %9, ptr %probe_size10, align 2
  %conv93 = zext i16 %9 to i32
  %asoc.i163 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %42 = ptrtoint ptr %asoc.i163 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %asoc.i163, align 8
  %sk.i164 = getelementptr inbounds %struct.sctp_ep_common, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %sk.i164 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk.i164, align 4
  %tobool.not.i.i165 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i165, label %if.then82.sctp_transport_pl_hlen.exit183_crit_edge, label %if.then.i.i173

if.then82.sctp_transport_pl_hlen.exit183_crit_edge: ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit183

if.then.i.i173:                                   ; preds = %if.then82
  %pf.i.i166 = getelementptr inbounds %struct.sctp_sock, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %pf.i.i166 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pf.i.i166, align 4
  %af.i.i167 = getelementptr inbounds %struct.sctp_pf, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %af.i.i167 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %af.i.i167, align 4
  %net_header_len.i.i168 = getelementptr inbounds %struct.sctp_af, ptr %49, i32 0, i32 21
  %50 = ptrtoint ptr %net_header_len.i.i168 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %net_header_len.i.i168, align 4
  %conv.i.i169 = zext i16 %51 to i32
  %add1.i.i170 = add nuw nsw i32 %conv.i.i169, 12
  %udp_port.i.i171 = getelementptr inbounds %struct.sctp_sock, ptr %45, i32 0, i32 16
  %52 = ptrtoint ptr %udp_port.i.i171 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %udp_port.i.i171, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool3.not.i.i172 = icmp eq i16 %53, 0
  br i1 %tobool3.not.i.i172, label %if.then.i.i173.sctp_transport_pl_hlen.exit183_crit_edge, label %land.lhs.true.i.i175

if.then.i.i173.sctp_transport_pl_hlen.exit183_crit_edge: ; preds = %if.then.i.i173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit183

land.lhs.true.i.i175:                             ; preds = %if.then.i.i173
  %tobool4.not.i.i174 = icmp eq ptr %t, null
  br i1 %tobool4.not.i.i174, label %land.lhs.true.i.i175.if.then7.i.i180_crit_edge, label %lor.lhs.false.i.i178

land.lhs.true.i.i175.if.then7.i.i180_crit_edge:   ; preds = %land.lhs.true.i.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i180

lor.lhs.false.i.i178:                             ; preds = %land.lhs.true.i.i175
  %encap_port.i.i176 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %54 = ptrtoint ptr %encap_port.i.i176 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %encap_port.i.i176, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool6.not.i.i177 = icmp eq i16 %55, 0
  br i1 %tobool6.not.i.i177, label %lor.lhs.false.i.i178.sctp_transport_pl_hlen.exit183_crit_edge, label %lor.lhs.false.i.i178.if.then7.i.i180_crit_edge

lor.lhs.false.i.i178.if.then7.i.i180_crit_edge:   ; preds = %lor.lhs.false.i.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i180

lor.lhs.false.i.i178.sctp_transport_pl_hlen.exit183_crit_edge: ; preds = %lor.lhs.false.i.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit183

if.then7.i.i180:                                  ; preds = %lor.lhs.false.i.i178.if.then7.i.i180_crit_edge, %land.lhs.true.i.i175.if.then7.i.i180_crit_edge
  %add8.i.i179 = add nuw nsw i32 %conv.i.i169, 20
  br label %sctp_transport_pl_hlen.exit183

sctp_transport_pl_hlen.exit183:                   ; preds = %if.then7.i.i180, %lor.lhs.false.i.i178.sctp_transport_pl_hlen.exit183_crit_edge, %if.then.i.i173.sctp_transport_pl_hlen.exit183_crit_edge, %if.then82.sctp_transport_pl_hlen.exit183_crit_edge
  %overhead.0.i.i181 = phi i32 [ %add8.i.i179, %if.then7.i.i180 ], [ %add1.i.i170, %lor.lhs.false.i.i178.sctp_transport_pl_hlen.exit183_crit_edge ], [ %add1.i.i170, %if.then.i.i173.sctp_transport_pl_hlen.exit183_crit_edge ], [ 52, %if.then82.sctp_transport_pl_hlen.exit183_crit_edge ]
  %sub.i182 = add nsw i32 %conv93, -12
  %add95 = add nsw i32 %sub.i182, %overhead.0.i.i181
  %pathmtu96 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %56 = ptrtoint ptr %pathmtu96 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add95, ptr %pathmtu96, align 8
  tail call void @sctp_assoc_sync_pmtu(ptr noundef %43) #12
  %probe_timer.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %probe_interval.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 21
  %58 = ptrtoint ptr %probe_interval.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %probe_interval.i, align 4
  %mul.i = mul i32 %59, 30
  %add.i = add i32 %mul.i, %57
  %call.i = tail call i32 @mod_timer(ptr noundef %probe_timer.i, i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sctp_transport_pl_hlen.exit183.if.end116_crit_edge

sctp_transport_pl_hlen.exit183.if.end116_crit_edge: ; preds = %sctp_transport_pl_hlen.exit183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then.i:                                        ; preds = %sctp_transport_pl_hlen.exit183
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @sctp_transport_hold(ptr noundef %t) #12
  br label %if.end116

if.then105:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %state15 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %state15, align 1
  %add111 = add i16 %9, 4
  %61 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %add111, ptr %probe_size10, align 2
  br label %if.end116

if.end116:                                        ; preds = %if.then105, %if.then.i, %sctp_transport_pl_hlen.exit183.if.end116_crit_edge, %if.end68.if.end116_crit_edge, %sctp_transport_pl_hlen.exit, %if.then18, %do.end.if.end116_crit_edge
  %62 = ptrtoint ptr %state15 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %state15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp120 = icmp eq i8 %63, 3
  br label %return

return:                                           ; preds = %if.end116, %if.then57
  %retval.0 = phi i1 [ %cmp120, %if.end116 ], [ false, %if.then57 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sctp_transport_update_pmtu(ptr noundef %t, i32 noundef %pmtu) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %pmtu)
  %cmp = icmp ult i32 %pmtu, 512
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge, !prof !81

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @sctp_transport_update_pmtu._rs, ptr noundef nonnull @__func__.sctp_transport_update_pmtu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.sctp_transport_update_pmtu, i32 noundef %pmtu, i32 noundef 512) #16
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pmtu.addr.0 = phi i32 [ %pmtu, %entry.if.end6_crit_edge ], [ 512, %do.end ], [ 512, %if.then.if.end6_crit_edge ]
  %and = and i32 %pmtu.addr.0, -4
  %state.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 4
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.not = icmp eq i8 %5, 0
  br i1 %cmp.i.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asoc, align 8
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then8.sctp_transport_pl_hlen.exit_crit_edge, label %if.then.i.i

if.then8.sctp_transport_pl_hlen.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then.i.i:                                      ; preds = %if.then8
  %pf.i.i = getelementptr inbounds %struct.sctp_sock, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf.i.i, align 4
  %af.i.i = getelementptr inbounds %struct.sctp_pf, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %af.i.i, align 4
  %net_header_len.i.i = getelementptr inbounds %struct.sctp_af, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %net_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %net_header_len.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 12
  %udp_port.i.i = getelementptr inbounds %struct.sctp_sock, ptr %9, i32 0, i32 16
  %16 = ptrtoint ptr %udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool3.not.i.i = icmp eq i16 %17, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %tobool4.not.i.i = icmp eq ptr %t, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.then7.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then7.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %encap_port.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %18 = ptrtoint ptr %encap_port.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %encap_port.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool6.not.i.i = icmp eq i16 %19, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %lor.lhs.false.i.i.if.then7.i.i_crit_edge

lor.lhs.false.i.i.if.then7.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then7.i.i_crit_edge, %land.lhs.true.i.i.if.then7.i.i_crit_edge
  %add8.i.i = add nuw nsw i32 %conv.i.i, 20
  br label %sctp_transport_pl_hlen.exit

sctp_transport_pl_hlen.exit:                      ; preds = %if.then7.i.i, %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, %if.then8.sctp_transport_pl_hlen.exit_crit_edge
  %overhead.0.i.i = phi i32 [ %add8.i.i, %if.then7.i.i ], [ %add1.i.i, %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ %add1.i.i, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ 52, %if.then8.sctp_transport_pl_hlen.exit_crit_edge ]
  %sub.i.neg = add i32 %and, 12
  %sub = sub i32 %sub.i.neg, %overhead.0.i.i
  %call10 = tail call fastcc zeroext i1 @sctp_transport_pl_toobig(ptr noundef %t, i32 noundef %sub)
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %dst.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %20 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end11.if.end23_crit_edge, label %land.lhs.true.i

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true.i:                                  ; preds = %if.end11
  %obsolete.i.i = getelementptr inbounds %struct.dst_entry, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %obsolete.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %obsolete.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i.i64 = icmp eq i16 %23, 0
  br i1 %tobool.not.i.i64, label %land.lhs.true.i.sctp_transport_dst_check.exit_crit_edge, label %dst_check.exit.i

land.lhs.true.i.sctp_transport_dst_check.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_dst_check.exit

dst_check.exit.i:                                 ; preds = %land.lhs.true.i
  %dst_cookie.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 4
  %24 = ptrtoint ptr %dst_cookie.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_cookie.i, align 8
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i, align 4
  %check.i.i = getelementptr inbounds %struct.dst_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %check.i.i, align 4
  %call.i.i = tail call ptr %29(ptr noundef nonnull %21, i32 noundef %25) #12
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.then.i, label %dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge

dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge: ; preds = %dst_check.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_dst_check.exit

if.then.i:                                        ; preds = %dst_check.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst.i, align 8
  tail call void @dst_release(ptr noundef %31) #12
  %32 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dst.i, align 8
  %dst_pending_confirm.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 3
  %33 = ptrtoint ptr %dst_pending_confirm.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i = load i8, ptr %dst_pending_confirm.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -17
  store i8 %bf.clear.i.i, ptr %dst_pending_confirm.i.i, align 4
  br label %if.end23

sctp_transport_dst_check.exit:                    ; preds = %dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge, %land.lhs.true.i.sctp_transport_dst_check.exit_crit_edge
  %34 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load ptr, ptr %dst.i, align 8
  %tobool13.not = icmp eq ptr %.pr, null
  br i1 %tobool13.not, label %sctp_transport_dst_check.exit.if.end23_crit_edge, label %if.then14

sctp_transport_dst_check.exit.if.end23_crit_edge: ; preds = %sctp_transport_dst_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then14:                                        ; preds = %sctp_transport_dst_check.exit
  %ops = getelementptr inbounds %struct.dst_entry, ptr %.pr, i32 0, i32 1
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 128
  %call15 = tail call ptr @sctp_get_pf_specific(i16 noundef zeroext %38) #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr) #12
  %af = getelementptr inbounds %struct.sctp_pf, ptr %call15, i32 0, i32 12
  %39 = call ptr @memset(ptr %addr, i32 255, i32 28)
  %40 = ptrtoint ptr %af to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %af, align 4
  %from_sk = getelementptr inbounds %struct.sctp_af, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %from_sk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %from_sk, align 4
  call void %43(ptr noundef nonnull %addr, ptr noundef %3) #12
  %to_sk_daddr = getelementptr inbounds %struct.sctp_pf, ptr %call15, i32 0, i32 10
  %44 = ptrtoint ptr %to_sk_daddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %to_sk_daddr, align 4
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6
  call void %45(ptr noundef %ipaddr, ptr noundef %3) #12
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %update_pmtu = getelementptr inbounds %struct.dst_ops, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %update_pmtu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %update_pmtu, align 4
  call void %49(ptr noundef nonnull %.pr, ptr noundef %3, ptr noundef null, i32 noundef %and, i1 noundef zeroext true) #12
  %50 = ptrtoint ptr %to_sk_daddr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %to_sk_daddr, align 4
  call void %51(ptr noundef nonnull %addr, ptr noundef %3) #12
  %52 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dst.i, align 8
  %tobool.not.i66 = icmp eq ptr %53, null
  br i1 %tobool.not.i66, label %if.then14.if.end19.thread89_crit_edge, label %land.lhs.true.i69

if.then14.if.end19.thread89_crit_edge:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.thread89

land.lhs.true.i69:                                ; preds = %if.then14
  %obsolete.i.i67 = getelementptr inbounds %struct.dst_entry, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %obsolete.i.i67 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %obsolete.i.i67, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i.i68 = icmp eq i16 %55, 0
  br i1 %tobool.not.i.i68, label %land.lhs.true.i69.if.end19_crit_edge, label %dst_check.exit.i75

land.lhs.true.i69.if.end19_crit_edge:             ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

dst_check.exit.i75:                               ; preds = %land.lhs.true.i69
  %dst_cookie.i70 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 4
  %56 = ptrtoint ptr %dst_cookie.i70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dst_cookie.i70, align 8
  %ops.i.i71 = getelementptr inbounds %struct.dst_entry, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %ops.i.i71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i.i71, align 4
  %check.i.i72 = getelementptr inbounds %struct.dst_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %check.i.i72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %check.i.i72, align 4
  %call.i.i73 = call ptr %61(ptr noundef nonnull %53, i32 noundef %57) #12
  %tobool2.not.i74 = icmp eq ptr %call.i.i73, null
  br i1 %tobool2.not.i74, label %if.then.i79, label %dst_check.exit.i75.if.end19_crit_edge

dst_check.exit.i75.if.end19_crit_edge:            ; preds = %dst_check.exit.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then.i79:                                      ; preds = %dst_check.exit.i75
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dst.i, align 8
  call void @dst_release(ptr noundef %63) #12
  %64 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %dst.i, align 8
  %dst_pending_confirm.i.i76 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 3
  %65 = ptrtoint ptr %dst_pending_confirm.i.i76 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i.i77 = load i8, ptr %dst_pending_confirm.i.i76, align 4
  %bf.clear.i.i78 = and i8 %bf.load.i.i77, -17
  store i8 %bf.clear.i.i78, ptr %dst_pending_confirm.i.i76, align 4
  br label %if.end19.thread89

if.end19.thread89:                                ; preds = %if.then.i79, %if.then14.if.end19.thread89_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr) #12
  br label %if.end23

if.end19:                                         ; preds = %dst_check.exit.i75.if.end19_crit_edge, %land.lhs.true.i69.if.end19_crit_edge
  %66 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr87 = load ptr, ptr %dst.i, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr) #12
  %tobool20.not = icmp eq ptr %.pr87, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.end19.if.then25_crit_edge

if.end19.if.then25_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %if.end19.if.end23_crit_edge, %if.end19.thread89, %sctp_transport_dst_check.exit.if.end23_crit_edge, %if.then.i, %if.end11.if.end23_crit_edge
  %af_specific = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 7
  %67 = ptrtoint ptr %af_specific to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %af_specific, align 4
  %get_dst = getelementptr inbounds %struct.sctp_af, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %get_dst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_dst, align 4
  %saddr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 19
  %fl = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5
  call void %70(ptr noundef %t, ptr noundef %saddr, ptr noundef %fl, ptr noundef %3) #12
  %71 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dst.i, align 8
  %tobool24.not = icmp eq ptr %72, null
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.end23.if.then25_crit_edge

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.end19.if.then25_crit_edge
  %dst.193 = phi ptr [ %72, %if.end23.if.then25_crit_edge ], [ %.pr87, %if.end19.if.then25_crit_edge ]
  %ops.i.i81 = getelementptr inbounds %struct.dst_entry, ptr %dst.193, i32 0, i32 1
  %73 = ptrtoint ptr %ops.i.i81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i.i81, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mtu.i.i, align 4
  %call.i.i82 = call i32 %76(ptr noundef nonnull %dst.193) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call.i.i82)
  %cmp.i83 = icmp ugt i32 %call.i.i82, 512
  %phi.bo.i = and i32 %call.i.i82, -4
  %cond.i = select i1 %cmp.i83, i32 %phi.bo.i, i32 512
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %77 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pathmtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %cond.i)
  %cmp27 = icmp ne i32 %78, %cond.i
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %change.0.off0 = phi i1 [ %cmp27, %if.then25 ], [ true, %if.end23.if.end28_crit_edge ]
  %pmtu.addr.1 = phi i32 [ %cond.i, %if.then25 ], [ %and, %if.end23.if.end28_crit_edge ]
  %pathmtu29 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %79 = ptrtoint ptr %pathmtu29 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %pmtu.addr.1, ptr %pathmtu29, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %sctp_transport_pl_hlen.exit
  %retval.0 = phi i1 [ %call10, %sctp_transport_pl_hlen.exit ], [ %change.0.off0, %if.end28 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sctp_transport_pl_toobig(ptr noundef %t, i32 noundef %pmtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_transport_pl_toobig.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_transport_pl_toobig, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pl = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48
  %state = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pl, align 4
  %conv5 = zext i16 %3 to i32
  %probe_size = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %4 = ptrtoint ptr %probe_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %probe_size, align 2
  %conv7 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_transport_pl_toobig.__UNIQUE_ID_ddebug566, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, ptr noundef %t, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %pmtu) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %pmtu)
  %cmp = icmp ult i32 %pmtu, 512
  br i1 %cmp, label %do.end.return_crit_edge, label %lor.lhs.false

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %do.end
  %pl9 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48
  %probe_size10 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %6 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %probe_size10, align 2
  %conv11 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %pmtu)
  %cmp12.not = icmp ugt i32 %conv11, %pmtu
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end15:                                         ; preds = %lor.lhs.false
  %state17 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 4
  %8 = ptrtoint ptr %state17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state17, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %9, label %if.end15.return_crit_edge [
    i8 1, label %land.lhs.true
    i8 2, label %if.then41
    i8 3, label %if.then91
  ]

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %pmtu)
  %cmp24 = icmp ult i32 %pmtu, 1200
  br i1 %cmp24, label %if.then26, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then26:                                        ; preds = %land.lhs.true
  %11 = ptrtoint ptr %state17 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %state17, align 1
  %12 = ptrtoint ptr %pl9 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1200, ptr %pl9, align 4
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %13 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asoc.i, align 8
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then26.sctp_transport_pl_hlen.exit_crit_edge, label %if.then.i.i

if.then26.sctp_transport_pl_hlen.exit_crit_edge:  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then.i.i:                                      ; preds = %if.then26
  %pf.i.i = getelementptr inbounds %struct.sctp_sock, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pf.i.i, align 4
  %af.i.i = getelementptr inbounds %struct.sctp_pf, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %af.i.i, align 4
  %net_header_len.i.i = getelementptr inbounds %struct.sctp_af, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %net_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %net_header_len.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 12
  %udp_port.i.i = getelementptr inbounds %struct.sctp_sock, ptr %16, i32 0, i32 16
  %23 = ptrtoint ptr %udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool3.not.i.i = icmp eq i16 %24, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %tobool4.not.i.i = icmp eq ptr %t, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.then7.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then7.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %encap_port.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %25 = ptrtoint ptr %encap_port.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %encap_port.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool6.not.i.i = icmp eq i16 %26, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %lor.lhs.false.i.i.if.then7.i.i_crit_edge

lor.lhs.false.i.i.if.then7.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then7.i.i_crit_edge, %land.lhs.true.i.i.if.then7.i.i_crit_edge
  %add8.i.i = add nuw nsw i32 %conv.i.i, 20
  br label %sctp_transport_pl_hlen.exit

sctp_transport_pl_hlen.exit:                      ; preds = %if.then7.i.i, %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, %if.then26.sctp_transport_pl_hlen.exit_crit_edge
  %overhead.0.i.i = phi i32 [ %add8.i.i, %if.then7.i.i ], [ %add1.i.i, %lor.lhs.false.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ %add1.i.i, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ 52, %if.then26.sctp_transport_pl_hlen.exit_crit_edge ]
  %add = add nuw nsw i32 %overhead.0.i.i, 1188
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %27 = ptrtoint ptr %pathmtu to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %pathmtu, align 8
  br label %return

if.then41:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %pmtu)
  %cmp42 = icmp ugt i32 %pmtu, 1199
  br i1 %cmp42, label %land.lhs.true44, label %if.then41.if.else65_crit_edge

if.then41.if.else65_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

land.lhs.true44:                                  ; preds = %if.then41
  %28 = ptrtoint ptr %pl9 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pl9, align 4
  %conv47 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv47, i32 %pmtu)
  %cmp48 = icmp ugt i32 %conv47, %pmtu
  br i1 %cmp48, label %if.then50, label %land.lhs.true44.if.else65_crit_edge

land.lhs.true44.if.else65_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

if.then50:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %state17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %state17, align 1
  %31 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1200, ptr %probe_size10, align 2
  %probe_count = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 3
  %32 = ptrtoint ptr %probe_count to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %probe_count, align 2
  %probe_high = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 2
  %33 = ptrtoint ptr %probe_high to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %probe_high, align 4
  %34 = ptrtoint ptr %pl9 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1200, ptr %pl9, align 4
  %call62 = tail call fastcc i32 @sctp_transport_pl_hlen(ptr noundef %t)
  %add63 = add i32 %call62, 1200
  %pathmtu64 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %35 = ptrtoint ptr %pathmtu64 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add63, ptr %pathmtu64, align 8
  br label %return

if.else65:                                        ; preds = %land.lhs.true44.if.else65_crit_edge, %if.then41.if.else65_crit_edge
  %36 = ptrtoint ptr %pl9 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pl9, align 4
  %conv68 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv68, i32 %pmtu)
  %cmp69 = icmp ult i32 %conv68, %pmtu
  br i1 %cmp69, label %if.then77, label %if.else65.return_crit_edge

if.else65.return_crit_edge:                       ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then77:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #14
  %conv78 = trunc i32 %pmtu to i16
  %38 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv78, ptr %probe_size10, align 2
  %probe_count82 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 3
  %39 = ptrtoint ptr %probe_count82 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %probe_count82, align 2
  br label %return

if.then91:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %pmtu)
  %cmp92 = icmp ugt i32 %pmtu, 1199
  br i1 %cmp92, label %land.lhs.true94, label %if.then91.return_crit_edge

if.then91.return_crit_edge:                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true94:                                  ; preds = %if.then91
  %40 = ptrtoint ptr %pl9 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pl9, align 4
  %conv97 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv97, i32 %pmtu)
  %cmp98 = icmp ugt i32 %conv97, %pmtu
  br i1 %cmp98, label %if.then100, label %land.lhs.true94.return_crit_edge

land.lhs.true94.return_crit_edge:                 ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then100:                                       ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %state17 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %state17, align 1
  %43 = ptrtoint ptr %probe_size10 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1200, ptr %probe_size10, align 2
  %probe_count106 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 3
  %44 = ptrtoint ptr %probe_count106 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %probe_count106, align 2
  %probe_high108 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 2
  %45 = ptrtoint ptr %probe_high108 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %probe_high108, align 4
  %46 = ptrtoint ptr %pl9 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1200, ptr %pl9, align 4
  %call114 = tail call fastcc i32 @sctp_transport_pl_hlen(ptr noundef %t)
  %add115 = add i32 %call114, 1200
  %pathmtu116 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %47 = ptrtoint ptr %pathmtu116 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add115, ptr %pathmtu116, align 8
  tail call void @sctp_transport_reset_probe_timer(ptr noundef %t)
  br label %return

return:                                           ; preds = %if.then100, %land.lhs.true94.return_crit_edge, %if.then91.return_crit_edge, %if.then77, %if.else65.return_crit_edge, %if.then50, %sctp_transport_pl_hlen.exit, %land.lhs.true.return_crit_edge, %if.end15.return_crit_edge, %lor.lhs.false.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i1 [ true, %sctp_transport_pl_hlen.exit ], [ true, %if.then50 ], [ true, %if.then100 ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %do.end.return_crit_edge ], [ false, %if.end15.return_crit_edge ], [ false, %if.else65.return_crit_edge ], [ false, %if.then77 ], [ false, %if.then91.return_crit_edge ], [ false, %land.lhs.true94.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_pf_specific(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_route(ptr noundef %transport, ptr noundef %saddr, ptr noundef %opt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %af_specific = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 7
  %2 = ptrtoint ptr %af_specific to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %af_specific, align 4
  %dst.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 18
  %4 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst.i, align 8
  tail call void @dst_release(ptr noundef %5) #12
  %6 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dst.i, align 8
  %dst_pending_confirm.i = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 3
  %7 = ptrtoint ptr %dst_pending_confirm.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %dst_pending_confirm.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -17
  store i8 %bf.clear.i, ptr %dst_pending_confirm.i, align 4
  %get_dst = getelementptr inbounds %struct.sctp_af, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %get_dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_dst, align 4
  %fl = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 5
  tail call void %9(ptr noundef %transport, ptr noundef %saddr, ptr noundef %fl, ptr noundef %opt) #12
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %saddr2 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 19
  %10 = call ptr @memcpy(ptr %saddr2, ptr %saddr, i32 28)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %get_saddr = getelementptr inbounds %struct.sctp_af, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %get_saddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_saddr, align 4
  tail call void %12(ptr noundef %opt, ptr noundef %transport, ptr noundef %fl) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @sctp_transport_pmtu(ptr noundef %transport, ptr noundef %opt)
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst.i, align 8
  %tobool5.not = icmp eq ptr %14, null
  %tobool6.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end.if.end12_crit_edge, label %land.lhs.true7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true7:                                   ; preds = %if.end
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %primary_path, align 8
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %land.lhs.true7.if.then10_crit_edge, label %lor.lhs.false

land.lhs.true7.if.then10_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %active_path = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %active_path to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %active_path, align 8
  %cmp = icmp eq ptr %18, %transport
  br i1 %cmp, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %land.lhs.true7.if.then10_crit_edge
  %pf = getelementptr inbounds %struct.sctp_sock, ptr %opt, i32 0, i32 2
  %19 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pf, align 4
  %to_sk_saddr = getelementptr inbounds %struct.sctp_pf, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %to_sk_saddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %to_sk_saddr, align 4
  %saddr11 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 19
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk, align 4
  tail call void %22(ptr noundef %saddr11, ptr noundef %24) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %lor.lhs.false.if.end12_crit_edge, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_update_rto(ptr noundef %tp, i32 noundef %rtt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rto_pending = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 3
  %0 = ptrtoint ptr %rto_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rto_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %entry.if.end12_crit_edge, !prof !81

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_transport_update_rto.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_transport_update_rto, %if.then11)) #12
          to label %if.end12 [label %if.then11], !srcloc !80

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_transport_update_rto.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %tp) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.body, %entry.if.end12_crit_edge
  %rttvar = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 11
  %1 = ptrtoint ptr %rttvar to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rttvar, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool13.not = icmp eq i32 %2, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end12.if.then15_crit_edge

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end12
  %srtt = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 12
  %3 = ptrtoint ptr %srtt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srtt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.else, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end12.if.then15_crit_edge
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 8
  %5 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asoc, align 8
  %net16 = getelementptr inbounds %struct.sctp_ep_common, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net16, align 8
  %rto_beta = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 38, i32 18
  %9 = ptrtoint ptr %rto_beta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rto_beta, align 8
  %shr = lshr i32 %2, %10
  %sub = sub i32 %2, %shr
  %srtt19 = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 12
  %11 = ptrtoint ptr %srtt19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %srtt19, align 8
  %conv = zext i32 %12 to i64
  %conv20 = zext i32 %rtt to i64
  %sub21 = sub nsw i64 %conv, %conv20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub21)
  %cmp = icmp slt i64 %sub21, 0
  %13 = trunc i64 %sub21 to i32
  %extract.t = sub i32 0, %13
  %cond.off0 = select i1 %cmp, i32 %extract.t, i32 %13
  %shr28 = lshr i32 %cond.off0, %10
  %add = add i32 %sub, %shr28
  %14 = ptrtoint ptr %rttvar to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %rttvar, align 4
  %rto_alpha = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 38, i32 17
  %15 = ptrtoint ptr %rto_alpha to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rto_alpha, align 4
  %shr33 = lshr i32 %12, %16
  %sub34 = sub i32 %12, %shr33
  %shr37 = lshr i32 %rtt, %16
  %add38 = add i32 %sub34, %shr37
  %17 = ptrtoint ptr %srtt19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add38, ptr %srtt19, align 8
  br label %if.end43

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %srtt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rtt, ptr %srtt, align 8
  %shr41 = lshr i32 %rtt, 1
  %19 = ptrtoint ptr %rttvar to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr41, ptr %rttvar, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then15
  %20 = phi i32 [ %shr41, %if.else ], [ %add, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp45 = icmp eq i32 %20, 0
  br i1 %cmp45, label %if.then47, label %if.end43.if.end49_crit_edge

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %rttvar to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %rttvar, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end43.if.end49_crit_edge
  %srtt50 = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 12
  %22 = ptrtoint ptr %srtt50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %srtt50, align 8
  %24 = ptrtoint ptr %rttvar to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rttvar, align 4
  %shl = shl i32 %25, 2
  %add52 = add i32 %shl, %23
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 9
  %26 = ptrtoint ptr %rto to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add52, ptr %rto, align 4
  %asoc54 = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 8
  %27 = ptrtoint ptr %asoc54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asoc54, align 8
  %rto_min = getelementptr inbounds %struct.sctp_association, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %rto_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rto_min, align 8
  %31 = tail call i32 @llvm.umax.i32(i32 %add52, i32 %30)
  %32 = ptrtoint ptr %rto to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rto, align 4
  %rto_max = getelementptr inbounds %struct.sctp_association, ptr %28, i32 0, i32 10
  %33 = ptrtoint ptr %rto_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rto_max, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %31, i32 %34)
  %36 = ptrtoint ptr %rto to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rto, align 4
  %max_obs_rto.i = getelementptr inbounds %struct.sctp_association, ptr %28, i32 0, i32 85, i32 1
  %37 = ptrtoint ptr %max_obs_rto.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %max_obs_rto.i, align 8
  %conv.i = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %conv.i)
  %cmp.i = icmp ult i64 %38, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end49.sctp_max_rto.exit_crit_edge

if.end49.sctp_max_rto.exit_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_max_rto.exit

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %stats.i = getelementptr inbounds %struct.sctp_association, ptr %28, i32 0, i32 85
  %39 = ptrtoint ptr %max_obs_rto.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i, ptr %max_obs_rto.i, align 8
  %40 = call ptr @memset(ptr %stats.i, i32 0, i32 128)
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 6
  %af_specific.i = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 7
  %41 = ptrtoint ptr %af_specific.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %af_specific.i, align 4
  %sockaddr_len.i = getelementptr inbounds %struct.sctp_af, ptr %42, i32 0, i32 22
  %43 = ptrtoint ptr %sockaddr_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sockaddr_len.i, align 4
  %45 = call ptr @memcpy(ptr %stats.i, ptr %ipaddr.i, i32 %44)
  br label %sctp_max_rto.exit

sctp_max_rto.exit:                                ; preds = %if.then.i, %if.end49.sctp_max_rto.exit_crit_edge
  %rtt72 = getelementptr inbounds %struct.sctp_transport, ptr %tp, i32 0, i32 10
  %46 = ptrtoint ptr %rtt72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %rtt, ptr %rtt72, align 8
  %47 = ptrtoint ptr %rto_pending to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load74 = load i8, ptr %rto_pending, align 4
  %bf.clear = and i8 %bf.load74, 127
  store i8 %bf.clear, ptr %rto_pending, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_transport_update_rto.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_transport_update_rto, %if.then87)) #12
          to label %do.end92 [label %if.then87], !srcloc !80

if.then87:                                        ; preds = %sctp_max_rto.exit
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %srtt50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %srtt50, align 8
  %50 = ptrtoint ptr %rttvar to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rttvar, align 4
  %52 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rto, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_transport_update_rto.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, ptr noundef %tp, i32 noundef %rtt, i32 noundef %49, i32 noundef %51, i32 noundef %53) #12
  br label %do.end92

do.end92:                                         ; preds = %if.then87, %sctp_max_rto.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_raise_cwnd(ptr noundef %transport, i32 noundef %sack_ctsn, i32 noundef %bytes_acked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %cwnd2 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 13
  %2 = ptrtoint ptr %cwnd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cwnd2, align 4
  %flight_size3 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 16
  %4 = ptrtoint ptr %flight_size3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flight_size3, align 8
  %fast_recovery = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 40
  %6 = ptrtoint ptr %fast_recovery to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fast_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fast_recovery_exit = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %fast_recovery_exit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fast_recovery_exit, align 8
  %sub = sub i32 %9, %sack_ctsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %fast_recovery to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %fast_recovery, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ssthresh6 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 14
  %11 = ptrtoint ptr %ssthresh6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ssthresh6, align 8
  %partial_bytes_acked = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 15
  %13 = ptrtoint ptr %partial_bytes_acked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %partial_bytes_acked, align 4
  %15 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asoc1, align 8
  %pathmtu = getelementptr inbounds %struct.sctp_association, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pathmtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %12)
  %cmp8.not = icmp ugt i32 %3, %12
  br i1 %cmp8.not, label %if.else29, label %if.then10

if.then10:                                        ; preds = %if.end
  %19 = ptrtoint ptr %fast_recovery to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fast_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not = icmp ne i8 %20, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp15 = icmp ult i32 %5, %3
  %or.cond118 = select i1 %tobool12.not, i1 true, i1 %cmp15
  br i1 %or.cond118, label %if.then10.cleanup_crit_edge, label %if.end18

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %bytes_acked)
  %cwnd.0 = add i32 %21, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_transport_raise_cwnd.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_transport_raise_cwnd, %if.then27)) #12
          to label %if.end63 [label %if.then27], !srcloc !80

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_transport_raise_cwnd.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, ptr noundef %transport, i32 noundef %bytes_acked, i32 noundef %cwnd.0, i32 noundef %12, i32 noundef %5, i32 noundef %14) #12
  br label %if.end63

if.else29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add30 = add i32 %14, %bytes_acked
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %3)
  %cmp31 = icmp ugt i32 %add30, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp34 = icmp ult i32 %5, %3
  %or.cond = select i1 %cmp31, i1 %cmp34, i1 false
  %pba.0 = select i1 %or.cond, i32 %3, i32 %add30
  call void @__sanitizer_cov_trace_cmp4(i32 %pba.0, i32 %3)
  %cmp38.not = icmp ult i32 %pba.0, %3
  %or.cond117 = select i1 %cmp38.not, i1 true, i1 %cmp34
  %sub44 = select i1 %or.cond117, i32 0, i32 %3
  %pba.1 = sub i32 %pba.0, %sub44
  %add45 = select i1 %or.cond117, i32 0, i32 %18
  %cwnd.1 = add i32 %add45, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_transport_raise_cwnd.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_transport_raise_cwnd, %if.then59)) #12
          to label %if.end63 [label %if.then59], !srcloc !80

if.then59:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_transport_raise_cwnd.__UNIQUE_ID_ddebug570, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, ptr noundef %transport, i32 noundef %bytes_acked, i32 noundef %cwnd.1, i32 noundef %12, i32 noundef %5, i32 noundef %pba.1) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.else29, %if.then27, %if.end18
  %pba.2 = phi i32 [ %14, %if.then27 ], [ %pba.1, %if.then59 ], [ %14, %if.end18 ], [ %pba.1, %if.else29 ]
  %cwnd.2 = phi i32 [ %cwnd.0, %if.then27 ], [ %cwnd.1, %if.then59 ], [ %cwnd.0, %if.end18 ], [ %cwnd.1, %if.else29 ]
  %22 = ptrtoint ptr %cwnd2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cwnd.2, ptr %cwnd2, align 4
  %23 = ptrtoint ptr %partial_bytes_acked to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %pba.2, ptr %partial_bytes_acked, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then10.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_lower_cwnd(ptr noundef %transport, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %2 = zext i32 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %reason, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb20
    i32 3, label %sw.bb39
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cwnd = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 13
  %3 = ptrtoint ptr %cwnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cwnd, align 4
  %div104 = lshr i32 %4, 1
  %pathmtu = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pathmtu, align 4
  %mul = shl i32 %6, 2
  %7 = tail call i32 @llvm.umax.i32(i32 %div104, i32 %mul)
  %ssthresh = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 14
  %8 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ssthresh, align 8
  %9 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pathmtu, align 4
  %11 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cwnd, align 4
  %fast_recovery = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 40
  %12 = ptrtoint ptr %fast_recovery to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %fast_recovery, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %fast_recovery5 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 40
  %13 = ptrtoint ptr %fast_recovery5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fast_recovery5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %fast_recovery5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %fast_recovery5, align 4
  %next_tsn = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 35
  %16 = ptrtoint ptr %next_tsn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_tsn, align 8
  %sub = add i32 %17, -1
  %fast_recovery_exit = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 39
  %18 = ptrtoint ptr %fast_recovery_exit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %fast_recovery_exit, align 8
  %cwnd7 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 13
  %19 = ptrtoint ptr %cwnd7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cwnd7, align 4
  %div8103 = lshr i32 %20, 1
  %pathmtu9 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 26
  %21 = ptrtoint ptr %pathmtu9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pathmtu9, align 4
  %mul10 = shl i32 %22, 2
  %23 = tail call i32 @llvm.umax.i32(i32 %div8103, i32 %mul10)
  %ssthresh17 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 14
  %24 = ptrtoint ptr %ssthresh17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ssthresh17, align 8
  %25 = ptrtoint ptr %cwnd7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %cwnd7, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %last_time_ecne_reduced = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 27
  %26 = ptrtoint ptr %last_time_ecne_reduced to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_time_ecne_reduced, align 4
  %rtt = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 10
  %28 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rtt, align 8
  %add = add i32 %29, %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub21 = sub i32 %add, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21)
  %cmp22 = icmp slt i32 %sub21, 0
  br i1 %cmp22, label %if.then23, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  %cwnd24 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 13
  %31 = ptrtoint ptr %cwnd24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cwnd24, align 4
  %div25102 = lshr i32 %32, 1
  %pathmtu26 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 26
  %33 = ptrtoint ptr %pathmtu26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pathmtu26, align 4
  %mul27 = shl i32 %34, 2
  %35 = tail call i32 @llvm.umax.i32(i32 %div25102, i32 %mul27)
  %ssthresh34 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 14
  %36 = ptrtoint ptr %ssthresh34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ssthresh34, align 8
  %37 = ptrtoint ptr %cwnd24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %cwnd24, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %39 = ptrtoint ptr %last_time_ecne_reduced to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_time_ecne_reduced, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cwnd40 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 13
  %40 = ptrtoint ptr %cwnd40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cwnd40, align 4
  %div41101 = lshr i32 %41, 1
  %pathmtu42 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 26
  %42 = ptrtoint ptr %pathmtu42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pathmtu42, align 4
  %mul43 = shl i32 %43, 2
  %44 = tail call i32 @llvm.umax.i32(i32 %div41101, i32 %mul43)
  %45 = ptrtoint ptr %cwnd40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %cwnd40, align 4
  %ssthresh52 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 14
  %46 = ptrtoint ptr %ssthresh52 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %ssthresh52, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %if.then23, %sw.bb20.sw.epilog_crit_edge, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  %partial_bytes_acked = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 15
  %47 = ptrtoint ptr %partial_bytes_acked to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %partial_bytes_acked, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_transport_lower_cwnd.__UNIQUE_ID_ddebug579, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_transport_lower_cwnd, %if.then57)) #12
          to label %cleanup [label %if.then57], !srcloc !80

if.then57:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %cwnd58 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 13
  %48 = ptrtoint ptr %cwnd58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cwnd58, align 4
  %ssthresh59 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 14
  %50 = ptrtoint ptr %ssthresh59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ssthresh59, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_transport_lower_cwnd.__UNIQUE_ID_ddebug579, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef %transport, i32 noundef %reason, i32 noundef %49, i32 noundef %51) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %sw.epilog, %sw.bb4.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sctp_transport_burst_limited(ptr nocapture noundef %t) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %cwnd = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 13
  %2 = ptrtoint ptr %cwnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cwnd, align 4
  %burst_limited = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 17
  %4 = ptrtoint ptr %burst_limited to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %burst_limited, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_burst = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flight_size = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 16
  %8 = ptrtoint ptr %flight_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flight_size, align 8
  %pathmtu = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pathmtu, align 4
  %mul = mul i32 %11, %7
  %add = add i32 %mul, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp3 = icmp ult i32 %add, %3
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %cwnd, align 4
  %13 = ptrtoint ptr %burst_limited to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %burst_limited, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sctp_transport_burst_reset(ptr nocapture noundef %t) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %burst_limited = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 17
  %0 = ptrtoint ptr %burst_limited to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %burst_limited, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cwnd = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 13
  %2 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cwnd, align 4
  %3 = ptrtoint ptr %burst_limited to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %burst_limited, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sctp_transport_reset(ptr nocapture noundef %t) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %pathmtu = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pathmtu, align 4
  %mul = shl i32 %3, 2
  %mul3 = shl i32 %3, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %mul3, i32 4380)
  %5 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %4)
  %cwnd = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 13
  %6 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cwnd, align 4
  %burst_limited = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 17
  %7 = ptrtoint ptr %burst_limited to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %burst_limited, align 4
  %a_rwnd = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 15, i32 1
  %8 = ptrtoint ptr %a_rwnd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %a_rwnd, align 4
  %ssthresh = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 14
  %10 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ssthresh, align 8
  %rto_initial = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %rto_initial to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rto_initial, align 8
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 9
  %13 = ptrtoint ptr %rto to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rto, align 4
  %max_obs_rto.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 85, i32 1
  %14 = ptrtoint ptr %max_obs_rto.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %max_obs_rto.i, align 8
  %conv.i = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv.i)
  %cmp.i = icmp ult i64 %15, %conv.i
  br i1 %cmp.i, label %if.then.i, label %entry.sctp_max_rto.exit_crit_edge

entry.sctp_max_rto.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_max_rto.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stats.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 85
  %16 = ptrtoint ptr %max_obs_rto.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %max_obs_rto.i, align 8
  %17 = call ptr @memset(ptr %stats.i, i32 0, i32 128)
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6
  %af_specific.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 7
  %18 = ptrtoint ptr %af_specific.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %af_specific.i, align 4
  %sockaddr_len.i = getelementptr inbounds %struct.sctp_af, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %sockaddr_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sockaddr_len.i, align 4
  %22 = call ptr @memcpy(ptr %stats.i, ptr %ipaddr.i, i32 %21)
  br label %sctp_max_rto.exit

sctp_max_rto.exit:                                ; preds = %if.then.i, %entry.sctp_max_rto.exit_crit_edge
  %rtt = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 10
  %23 = ptrtoint ptr %rtt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rtt, align 8
  %srtt = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 12
  %24 = ptrtoint ptr %srtt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %srtt, align 8
  %rttvar = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 11
  %25 = ptrtoint ptr %rttvar to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rttvar, align 4
  %partial_bytes_acked = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 15
  %26 = ptrtoint ptr %partial_bytes_acked to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %partial_bytes_acked, align 4
  %flight_size = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 16
  %27 = ptrtoint ptr %flight_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %flight_size, align 8
  %error_count = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 38
  %28 = ptrtoint ptr %error_count to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %error_count, align 8
  %rto_pending = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 3
  %29 = ptrtoint ptr %rto_pending to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %rto_pending, align 4
  %bf.clear11 = and i8 %bf.load, 63
  store i8 %bf.clear11, ptr %rto_pending, align 4
  %cacc = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 47
  %30 = call ptr @memset(ptr %cacc, i32 0, i32 7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_immediate_rtx(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %T3_rtx_timer = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 39
  %call = tail call i32 @del_timer(ptr noundef %T3_rtx_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_put(ptr noundef %t)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 61
  tail call void @sctp_retransmit(ptr noundef %outqueue, ptr noundef %t, i32 noundef 0) #12
  %pprev.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 39, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 9
  %5 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rto, align 4
  %add = add i32 %6, %4
  %call6 = tail call i32 @mod_timer(ptr noundef %T3_rtx_timer, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @sctp_transport_hold(ptr noundef %t)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_retransmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sctp_transport_dst_confirm(ptr nocapture noundef %t) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_pending_confirm = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 3
  %0 = ptrtoint ptr %dst_pending_confirm to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_pending_confirm, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %dst_pending_confirm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_af_specific(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_generate_t3_rtx_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_generate_heartbeat_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_generate_reconf_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_generate_probe_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_generate_proto_unreach_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_packet_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_transport_destroy_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -624
  %dst = getelementptr i8, ptr %head, i32 -432
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 8
  tail call void @dst_release(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_transport, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_transport, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_transport, ptr nonnull @sctp_dbg_objcnt_transport, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_transport) #12, !srcloc !82
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/transport.c", i32 305, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sctp_transport_pl_send.__UNIQUE_ID_ddebug562, !1, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/sctp/transport.c", i32 312, i32 2}
!9 = !{ptr @sctp_transport_pl_recv.__UNIQUE_ID_ddebug563, !8, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sctp/transport.c", i32 406, i32 3}
!12 = !{ptr @sctp_transport_update_pmtu._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.sctp_transport_update_pmtu, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sctp_transport_update_pmtu._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @sctp_transport_update_pmtu._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sctp/transport.c", i32 491, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sctp_transport_update_rto.__UNIQUE_ID_ddebug567, !18, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!21 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sctp/transport.c", i32 547, i32 2}
!24 = !{ptr @sctp_transport_update_rto.__UNIQUE_ID_ddebug568, !23, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sctp/transport.c", i32 603, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sctp_transport_raise_cwnd.__UNIQUE_ID_ddebug569, !27, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!30 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sctp/transport.c", i32 638, i32 3}
!33 = !{ptr @sctp_transport_raise_cwnd.__UNIQUE_ID_ddebug570, !32, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sctp/transport.c", i32 739, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sctp_transport_lower_cwnd.__UNIQUE_ID_ddebug579, !36, !"__UNIQUE_ID_ddebug579", i1 false, i1 false}
!39 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sctp_transport_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../net/sctp/transport.c", i32 75, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sctp_transport_init.__key.22, !44, !"__key", i1 false, i1 false}
!44 = !{!"../net/sctp/transport.c", i32 76, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sctp_transport_init.__key.24, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/sctp/transport.c", i32 77, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sctp_transport_init.__key.26, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/sctp/transport.c", i32 78, i32 2}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sctp_transport_init.__key.28, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/sctp/transport.c", i32 79, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/net/sctp/sctp.h", i32 591, i32 6}
!57 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/sctp/transport.c", i32 354, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sctp_transport_pl_toobig.__UNIQUE_ID_ddebug566, !59, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!62 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/sctp/transport.c", i32 162, i32 3}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2148604878, i64 2148604904, i64 2148604933, i64 2148604967, i64 2148604998, i64 2148605021}
!76 = !{i64 2148694433}
!77 = !{i64 2148608873, i64 2148608905, i64 2148608934, i64 2148608968, i64 2148608999, i64 2148609022}
!78 = !{i64 2149892206}
!79 = !{i64 1090391, i64 1090415, i64 1090436, i64 1090453, i64 1090470}
!80 = !{i64 2148225604, i64 2148225609, i64 2148225622, i64 2148225666, i64 2148225700, i64 2148225721}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2148607343, i64 2148607369, i64 2148607398, i64 2148607432, i64 2148607463, i64 2148607486}
