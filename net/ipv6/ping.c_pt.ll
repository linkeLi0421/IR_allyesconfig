; ModuleID = '/llk/IR_all_yes/net/ipv6/ping.c_pt.bc'
source_filename = "../net/ipv6/ping.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pingv6_prot\22, \22a\22\09"
module asm "\09.weak\09__crc_pingv6_prot\09\09\09\09"
module asm "\09.long\09__crc_pingv6_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pingv6_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22pingv6_prot\22\09\09\09\09\09"
module asm "__kstrtabns_pingv6_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.123, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.123 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pingv6_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.158 }
%union.anon.158 = type { [1 x i32] }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.pingfakehdr = type { %struct.icmphdr, ptr, i16, i32 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.159 }
%union.anon.159 = type { i32 }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.124, [0 x i32], %union.anon.125, i16, i16, %union.anon.126, %struct.refcount_struct, [0 x i32], %union.anon.127 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { %struct.hlist_node }
%union.anon.126 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.127 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.128, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.129, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.130, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.128 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.129 = type { ptr }
%union.anon.130 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.anon.2 = type { i16, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.122, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.120 }
%union.anon.4 = type { ptr }
%union.anon.120 = type { i64 }
%union.anon.122 = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.155, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.40 = type { i8, i8 }
%struct.icmpv6_echo = type { i16, i16 }
%struct.anon.160 = type { i16, i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ping_iter_state = type { %struct.seq_net_private, i32, i16 }
%struct.seq_net_private = type { ptr, ptr }

@pingv6_prot = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr @ping_close, ptr null, ptr @ip6_datagram_connect_v6_only, ptr @__udp_disconnect, ptr null, ptr null, ptr @ping_init_sock, ptr null, ptr null, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr null, ptr @ping_v6_sendmsg, ptr @ping_recvmsg, ptr null, ptr @ping_bind, ptr null, ptr @ping_queue_rcv_skb, ptr null, ptr null, ptr @ping_hash, ptr @ping_unhash, ptr null, ptr @ping_get_port, ptr @ping_unhash, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1304, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.123 zeroinitializer, ptr null, [32 x i8] c"PINGv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pingv6_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pingv6_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_pingv6_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pingv6_prot to i32), ptr @__kstrtab_pingv6_prot, ptr @__kstrtabns_pingv6_prot }, section "___ksymtab_gpl+pingv6_prot", align 4
@ping_v6_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ping_v6_proc_init_net, ptr null, ptr @ping_v6_proc_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@pingv6_ops = external dso_local local_unnamed_addr global %struct.pingv6_ops, align 4
@pingv6_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 58, ptr @pingv6_prot, ptr @inet6_sockraw_ops, i8 1 }, [40 x i8] zeroinitializer }, align 32
@ping_v6_sendmsg.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ping_v6_sendmsg\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv6/ping.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ping_v6_sendmsg(sk=%p,sk->num=%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"icmp6\00", [26 x i8] zeroinitializer }, align 32
@ping_v6_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ping_v6_seq_start, ptr @ping_seq_stop, ptr @ping_seq_next, ptr @ping_v6_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [164 x i8], [60 x i8] } { [164 x i8] c"  sl  local_address                         remote_address                        st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\0A\00", [60 x i8] zeroinitializer }, align 32
@inet6_sockraw_ops = external dso_local constant %struct.proto_ops, align 4
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"pingv6_prot\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 164, i32 14 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"ping_v6_net_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 233, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"pingv6_protosw\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 185, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 62, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 222, i32 7 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"ping_v6_seq_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 213, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [19 x i8] c"../net/ipv6/ping.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 202, i32 17 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_pingv6_prot, ptr @pingv6_prot, ptr @ping_v6_net_ops, ptr @pingv6_protosw, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ping_v6_seq_ops, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pingv6_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_v6_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pingv6_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_v6_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_close(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_connect_v6_only(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_init_sock(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_v6_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #1 align 64 {
entry:
  %user_icmph = alloca %struct.icmp6hdr, align 8
  %fl6 = alloca %struct.flowi6, align 8
  %pfh = alloca %struct.pingfakehdr, align 4
  %ipc6 = alloca %struct.ipcm6_cookie, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %user_icmph) #7
  %4 = getelementptr inbounds %struct.icmp6hdr, ptr %user_icmph, i32 0, i32 1
  %5 = getelementptr inbounds %struct.icmp6hdr, ptr %user_icmph, i32 0, i32 3
  %6 = ptrtoint ptr %user_icmph to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %user_icmph, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pfh) #7
  %7 = call ptr @memset(ptr %pfh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ipc6) #7
  %8 = call ptr @memset(ptr %ipc6, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_v6_sendmsg.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_v6_sendmsg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !30

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %skc_num, align 2
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_v6_sendmsg.__UNIQUE_ID_ddebug560, ptr noundef nonnull @.str.3, ptr noundef %sk, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %inet6_sk.exit
  %call6 = call i32 @ping_common_sendmsg(i32 noundef 10, ptr noundef %msg, i32 noundef %len, ptr noundef nonnull %user_icmph, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup195_crit_edge

do.end.cleanup195_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end9:                                          ; preds = %do.end
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %15)
  %cmp = icmp ult i32 %15, 28
  br i1 %cmp, label %if.then11.cleanup195_crit_edge, label %if.end19

if.then11.cleanup195_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end19:                                         ; preds = %if.then11
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp21.not = icmp eq i16 %17, 10
  br i1 %cmp21.not, label %if.end24, label %if.end19.cleanup195_crit_edge

if.end19.cleanup195_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end24:                                         ; preds = %if.end19
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %13, i32 0, i32 3
  %call.i = call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #7
  %and.i268 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end24.if.end36_crit_edge

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

lor.rhs.i:                                        ; preds = %if.end24
  %and1.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %and3.i = and i32 %call.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %or.cond308 = and i1 %tobool2.not.i, %tobool4.i
  br i1 %or.cond308, label %lor.rhs.i.if.end36_crit_edge, label %lor.rhs.i.if.end40_crit_edge

lor.rhs.i.if.end40_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

lor.rhs.i.if.end36_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else:                                          ; preds = %if.end9
  %18 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp31.not = icmp eq i8 %19, 1
  br i1 %cmp31.not, label %if.end36.thread, label %if.else.cleanup195_crit_edge

if.else.cleanup195_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end36.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  br label %if.end40

if.end36:                                         ; preds = %lor.rhs.i.if.end36_crit_edge, %if.end24.if.end36_crit_edge
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %13, i32 0, i32 4
  %20 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool37.not = icmp eq i32 %21, 0
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %if.end36.if.end52_crit_edge

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40:                                         ; preds = %if.end36.if.end40_crit_edge, %if.end36.thread, %lor.rhs.i.if.end40_crit_edge
  %daddr.1296 = phi ptr [ %skc_v6_daddr, %if.end36.thread ], [ %sin6_addr, %if.end36.if.end40_crit_edge ], [ %sin6_addr, %lor.rhs.i.if.end40_crit_edge ]
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %22 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool41.not = icmp eq i32 %23, 0
  br i1 %tobool41.not, label %if.end43, label %if.end40.if.end52_crit_edge

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.end43:                                         ; preds = %if.end40
  %ipi6_ifindex = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %ipi6_ifindex to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ipi6_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool44.not = icmp eq i32 %25, 0
  br i1 %tobool44.not, label %land.lhs.true, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %daddr.1296 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %daddr.1296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %27)
  %cmp.i = icmp ugt i32 %27, -16777217
  %ucast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 7
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 8
  %ucast_oif.sink = select i1 %cmp.i, ptr %mcast_oif, ptr %ucast_oif
  %28 = ptrtoint ptr %ucast_oif.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ucast_oif.sink, align 4
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true, %if.end43.if.end52_crit_edge, %if.end40.if.end52_crit_edge, %if.end36.if.end52_crit_edge
  %daddr.1295303307 = phi ptr [ %daddr.1296, %if.end43.if.end52_crit_edge ], [ %daddr.1296, %if.end40.if.end52_crit_edge ], [ %sin6_addr, %if.end36.if.end52_crit_edge ], [ %daddr.1296, %land.lhs.true ]
  %oif.5 = phi i32 [ %25, %if.end43.if.end52_crit_edge ], [ %23, %if.end40.if.end52_crit_edge ], [ %21, %if.end36.if.end52_crit_edge ], [ %29, %land.lhs.true ]
  %call.i269 = call i32 @__ipv6_addr_type(ptr noundef %daddr.1295303307) #7
  %and.i271 = and i32 %call.i269, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i271)
  %tobool.not.i272 = icmp eq i32 %and.i271, 0
  br i1 %tobool.not.i272, label %lor.rhs.i275, label %if.end52.__ipv6_addr_needs_scope_id.exit279_crit_edge

if.end52.__ipv6_addr_needs_scope_id.exit279_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipv6_addr_needs_scope_id.exit279

lor.rhs.i275:                                     ; preds = %if.end52
  %and1.i273 = and i32 %call.i269, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i273)
  %tobool2.not.i274 = icmp eq i32 %and1.i273, 0
  br i1 %tobool2.not.i274, label %lor.rhs.i275.__ipv6_addr_needs_scope_id.exit279_crit_edge, label %land.rhs.i278

lor.rhs.i275.__ipv6_addr_needs_scope_id.exit279_crit_edge: ; preds = %lor.rhs.i275
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipv6_addr_needs_scope_id.exit279

land.rhs.i278:                                    ; preds = %lor.rhs.i275
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i276 = and i32 %call.i269, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i276)
  %tobool4.i277 = icmp ne i32 %and3.i276, 0
  br label %__ipv6_addr_needs_scope_id.exit279

__ipv6_addr_needs_scope_id.exit279:               ; preds = %land.rhs.i278, %lor.rhs.i275.__ipv6_addr_needs_scope_id.exit279_crit_edge, %if.end52.__ipv6_addr_needs_scope_id.exit279_crit_edge
  %30 = phi i1 [ true, %if.end52.__ipv6_addr_needs_scope_id.exit279_crit_edge ], [ false, %lor.rhs.i275.__ipv6_addr_needs_scope_id.exit279_crit_edge ], [ %tobool4.i277, %land.rhs.i278 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oif.5)
  %tobool57.not = icmp eq i32 %oif.5, 0
  %or.cond = select i1 %30, i1 %tobool57.not, i1 false
  %and = and i32 %call.i269, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp ne i32 %and, 0
  %31 = or i1 %tobool58.not, %or.cond
  br i1 %31, label %__ipv6_addr_needs_scope_id.exit279.cleanup195_crit_edge, label %lor.lhs.false59

__ipv6_addr_needs_scope_id.exit279.cleanup195_crit_edge: ; preds = %__ipv6_addr_needs_scope_id.exit279
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

lor.lhs.false59:                                  ; preds = %__ipv6_addr_needs_scope_id.exit279
  br i1 %tobool57.not, label %lor.lhs.false59.if.end71_crit_edge, label %land.lhs.true61

lor.lhs.false59.if.end71_crit_edge:               ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true61:                                  ; preds = %lor.lhs.false59
  %skc_bound_dev_if63 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %32 = ptrtoint ptr %skc_bound_dev_if63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skc_bound_dev_if63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool64.not = icmp eq i32 %33, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %oif.5, i32 %33)
  %cmp68.not = icmp eq i32 %oif.5, %33
  %or.cond267 = select i1 %tobool64.not, i1 true, i1 %cmp68.not
  br i1 %or.cond267, label %land.lhs.true61.if.end71_crit_edge, label %land.lhs.true61.cleanup195_crit_edge

land.lhs.true61.cleanup195_crit_edge:             ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

land.lhs.true61.if.end71_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end71:                                         ; preds = %land.lhs.true61.if.end71_crit_edge, %lor.lhs.false59.if.end71_crit_edge
  %34 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %35 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 58, ptr %flowic_proto, align 2
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %36 = call ptr @memcpy(ptr %saddr, ptr %cond.i, i32 16)
  %daddr73 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %37 = call ptr @memcpy(ptr %daddr73, ptr %daddr.1295303307, i32 16)
  %38 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %oif.5, ptr %fl6, align 8
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %39 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sk_mark, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %41 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %flowic_mark, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %42 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sk_uid, align 4
  %44 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %flowic_uid, align 4
  %45 = ptrtoint ptr %user_icmph to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %user_icmph, align 8
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %47 = ptrtoint ptr %uli to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %uli, align 4
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %4, align 1
  %code = getelementptr inbounds %struct.anon.40, ptr %uli, i32 0, i32 1
  %50 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %code, align 1
  call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef nonnull %fl6) #7
  %tclass1.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 12
  %51 = ptrtoint ptr %tclass1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tclass1.i, align 1
  %conv.i = zext i8 %52 to i16
  %dontfrag2.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %53 = ptrtoint ptr %dontfrag2.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i = load i16, ptr %dontfrag2.i, align 2
  %54 = trunc i16 %bf.load.i to i8
  %55 = lshr i8 %54, 5
  %conv3.i = and i8 %55, 1
  %56 = call ptr @memset(ptr %ipc6, i32 0, i32 16)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 16
  %57 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 18
  %58 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 20
  %59 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.44.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 22
  %60 = ptrtoint ptr %.compoundliteral.sroa.44.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv3.i, ptr %.compoundliteral.sroa.44.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 23
  %61 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 9)
  %62 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sk_mark, align 8
  %mark = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 1
  %64 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %mark, align 8
  %conv80309 = zext i8 %52 to i32
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %65 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flowlabel, align 8
  %shl.i = shl nuw nsw i32 %conv80309, 20
  %or.i = or i32 %shl.i, %66
  store i32 %or.i, ptr %flowlabel, align 8
  %call83 = call ptr @ip6_sk_dst_lookup_flow(ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %daddr.1295303307, i1 noundef zeroext false) #7
  %cmp.i280 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %call83 to i32
  br label %cleanup195

if.end87:                                         ; preds = %if.end71
  %68 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fl6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool90.not = icmp eq i32 %69, 0
  br i1 %tobool90.not, label %land.lhs.true91, label %if.end87.if.end108_crit_edge

if.end87.if.end108_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

land.lhs.true91:                                  ; preds = %if.end87
  %70 = ptrtoint ptr %daddr73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %daddr73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %71)
  %cmp.i281 = icmp ugt i32 %71, -16777217
  br i1 %cmp.i281, label %if.then95, label %if.then103

if.then95:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  %mcast_oif96 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 8
  %72 = ptrtoint ptr %mcast_oif96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mcast_oif96, align 4
  %74 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %fl6, align 8
  br label %if.end108

if.then103:                                       ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  %ucast_oif104 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 7
  %75 = ptrtoint ptr %ucast_oif104 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ucast_oif104, align 4
  %77 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %fl6, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %if.then95, %if.end87.if.end108_crit_edge
  %78 = ptrtoint ptr %user_icmph to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %user_icmph, align 8
  %80 = ptrtoint ptr %pfh to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %pfh, align 4
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %4, align 1
  %code113 = getelementptr inbounds %struct.icmphdr, ptr %pfh, i32 0, i32 1
  %83 = ptrtoint ptr %code113 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %code113, align 1
  %checksum = getelementptr inbounds %struct.icmphdr, ptr %pfh, i32 0, i32 2
  %84 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %checksum, align 2
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %85 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %inet_sport, align 8
  %un = getelementptr inbounds %struct.icmphdr, ptr %pfh, i32 0, i32 3
  %87 = ptrtoint ptr %un to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %un, align 4
  %sequence = getelementptr inbounds %struct.icmpv6_echo, ptr %5, i32 0, i32 1
  %88 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sequence, align 2
  %sequence118 = getelementptr inbounds %struct.anon.160, ptr %un, i32 0, i32 1
  %90 = ptrtoint ptr %sequence118 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %sequence118, align 2
  %msg119 = getelementptr inbounds %struct.pingfakehdr, ptr %pfh, i32 0, i32 1
  %91 = ptrtoint ptr %msg119 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %msg, ptr %msg119, align 4
  %wcheck = getelementptr inbounds %struct.pingfakehdr, ptr %pfh, i32 0, i32 3
  %92 = ptrtoint ptr %wcheck to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %wcheck, align 4
  %family = getelementptr inbounds %struct.pingfakehdr, ptr %pfh, i32 0, i32 2
  %93 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 10, ptr %family, align 4
  %94 = ptrtoint ptr %daddr73 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %daddr73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %95)
  %cmp.i.i = icmp ugt i32 %95, -16777217
  %mcast_hops.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %96 = ptrtoint ptr %mcast_hops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load.i282 = load i32, ptr %mcast_hops.i, align 4
  %bf.shl.i = shl i32 %bf.load.i282, 16
  %hlimit.0.in.i = select i1 %cmp.i.i, i32 %bf.shl.i, i32 %bf.load.i282
  %hlimit.0.i = ashr i32 %hlimit.0.in.i, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hlimit.0.in.i)
  %cmp.i283 = icmp slt i32 %hlimit.0.in.i, 0
  br i1 %cmp.i283, label %if.then6.i, label %if.end108.ip6_sk_dst_hoplimit.exit_crit_edge

if.end108.ip6_sk_dst_hoplimit.exit_crit_edge:     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip6_sk_dst_hoplimit.exit

if.then6.i:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 @ip6_dst_hoplimit(ptr noundef %call83) #7
  br label %ip6_sk_dst_hoplimit.exit

ip6_sk_dst_hoplimit.exit:                         ; preds = %if.then6.i, %if.end108.ip6_sk_dst_hoplimit.exit_crit_edge
  %hlimit.1.i = phi i32 [ %call7.i, %if.then6.i ], [ %hlimit.0.i, %if.end108.ip6_sk_dst_hoplimit.exit_crit_edge ]
  %conv121 = trunc i32 %hlimit.1.i to i16
  %97 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv121, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #7
  %call122 = call i32 @ip6_append_data(ptr noundef %sk, ptr noundef nonnull @ping_getfrag, ptr noundef nonnull %pfh, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %ipc6, ptr noundef nonnull %fl6, ptr noundef %call83, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.else189, label %if.then124

if.then124:                                       ; preds = %ip6_sk_dst_hoplimit.exit
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %call83, i32 0, i32 6
  %98 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rt6i_idev, align 4
  %cmp125.not = icmp eq ptr %99, null
  br i1 %cmp125.not, label %if.then124.do.body136_crit_edge, label %if.then133, !prof !31

if.then124.do.body136_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body136

if.then133:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %99, i32 0, i32 33, i32 2
  %100 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx = getelementptr [6 x %struct.atomic_t], ptr %101, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #7
  %102 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #7, !srcloc !32
  br label %do.body136

do.body136:                                       ; preds = %if.then133, %if.then124.do.body136_crit_edge
  %103 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !33
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %104 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %skc_net.i, align 4
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %105, i32 0, i32 30, i32 13
  %106 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx155 = getelementptr [6 x i32], ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %arrayidx155 to i32
  %109 = call i32 @llvm.read_register.i32(metadata !20) #7
  %and.i284 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i284 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cpu, align 4
  %arrayidx158 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx158, align 4
  %add = add i32 %114, %108
  %115 = inttoptr i32 %add to ptr
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %add159 = add i32 %117, 1
  store i32 %add159, ptr %115, align 4
  %118 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !34
  %and.i.i285 = and i32 %118, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i285)
  %tobool170.not = icmp eq i32 %and.i.i285, 0
  br i1 %tobool170.not, label %if.then179, label %do.body136.do.end182_crit_edge, !prof !31

do.body136.do.end182_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end182

if.then179:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end182

do.end182:                                        ; preds = %if.then179, %do.body136.do.end182_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %103) #7, !srcloc !35
  call void @ip6_flush_pending_frames(ptr noundef %sk) #7
  br label %if.end191

if.else189:                                       ; preds = %ip6_sk_dst_hoplimit.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @icmpv6_push_pending_frames(ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef nonnull %pfh, i32 noundef %len) #7
  br label %if.end191

if.end191:                                        ; preds = %if.else189, %do.end182
  %len.call122 = phi i32 [ %len, %if.else189 ], [ %call122, %do.end182 ]
  call void @release_sock(ptr noundef %sk) #7
  call void @dst_release(ptr noundef %call83) #7
  br label %cleanup195

cleanup195:                                       ; preds = %if.end191, %if.then85, %land.lhs.true61.cleanup195_crit_edge, %__ipv6_addr_needs_scope_id.exit279.cleanup195_crit_edge, %if.else.cleanup195_crit_edge, %if.end19.cleanup195_crit_edge, %if.then11.cleanup195_crit_edge, %do.end.cleanup195_crit_edge
  %retval.1 = phi i32 [ %67, %if.then85 ], [ %call6, %do.end.cleanup195_crit_edge ], [ -89, %if.else.cleanup195_crit_edge ], [ -22, %land.lhs.true61.cleanup195_crit_edge ], [ -22, %__ipv6_addr_needs_scope_id.exit279.cleanup195_crit_edge ], [ %len.call122, %if.end191 ], [ -22, %if.then11.cleanup195_crit_edge ], [ -97, %if.end19.cleanup195_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pfh) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %user_icmph) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_bind(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_queue_rcv_skb(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_hash(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_unhash(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_get_port(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pingv6_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ping_v6_net_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pingv6_ops to i32))
  store ptr @ipv6_recv_error, ptr @pingv6_ops, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 1) to i32))
  store ptr @ip6_datagram_recv_common_ctl, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 2) to i32))
  store ptr @ip6_datagram_recv_specific_ctl, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 3) to i32))
  store ptr @icmpv6_err_convert, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 4) to i32))
  store ptr @ipv6_icmp_error, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 4), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 5) to i32))
  store ptr @ipv6_chk_addr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 5), align 4
  %call1 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @pingv6_protosw) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_common_ctl(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_specific_ctl(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pingv6_exit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pingv6_ops to i32))
  store ptr @dummy_ipv6_recv_error, ptr @pingv6_ops, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 1) to i32))
  store ptr @dummy_ip6_datagram_recv_ctl, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 2) to i32))
  store ptr @dummy_ip6_datagram_recv_ctl, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 3) to i32))
  store ptr @dummy_icmpv6_err_convert, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 4) to i32))
  store ptr @dummy_ipv6_icmp_error, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 4), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 5) to i32))
  store ptr @dummy_ipv6_chk_addr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 5), align 4
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ping_v6_net_ops) #7
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @pingv6_protosw) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_ipv6_recv_error(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %msg, i32 noundef %len, ptr nocapture noundef readnone %addr_len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummy_ip6_datagram_recv_ctl(ptr nocapture noundef %sk, ptr nocapture noundef %msg, ptr nocapture noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_icmpv6_err_convert(i8 noundef zeroext %type, i8 noundef zeroext %code, ptr nocapture noundef readnone %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummy_ipv6_icmp_error(ptr nocapture noundef %sk, ptr nocapture noundef %skb, i32 noundef %err, i16 noundef zeroext %port, i32 noundef %info, ptr nocapture noundef %payload) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_ipv6_chk_addr(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %addr, ptr nocapture noundef readnone %dev, i32 noundef %strict) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_common_sendmsg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_sk_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_push_pending_frames(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_v6_proc_init_net(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @ping_v6_seq_ops, i32 noundef 16, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ping_v6_proc_exit_net(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ping_v6_seq_start(ptr noundef %seq, ptr noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ping_seq_start(ptr noundef %seq, ptr noundef %pos, i16 noundef zeroext 10) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_seq_stop(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ping_seq_next(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_v6_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.5) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %bucket1 = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bucket1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket1, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %v, i32 0, i32 6
  %4 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inet_sport, align 8
  %6 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 4
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #7
  %9 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_backlog.i.i, align 4
  tail call void @__ip6_dgram_sock_seq_show(ptr noundef %seq, ptr noundef %v, i16 noundef zeroext %5, i16 noundef zeroext %8, i32 noundef %10, i32 noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ping_seq_start(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip6_dgram_sock_seq_show(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @pingv6_prot, !1, !"pingv6_prot", i1 false, i1 false}
!1 = !{!"../net/ipv6/ping.c", i32 164, i32 14}
!2 = !{ptr @__ksymtab_pingv6_prot, !3, !"__ksymtab_pingv6_prot", i1 false, i1 false}
!3 = !{!"../net/ipv6/ping.c", i32 183, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv6/ping.c", i32 62, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ping_v6_sendmsg.__UNIQUE_ID_ddebug560, !5, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!10 = !{ptr @ping_v6_net_ops, !11, !"ping_v6_net_ops", i1 false, i1 false}
!11 = !{!"../net/ipv6/ping.c", i32 233, i32 33}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv6/ping.c", i32 222, i32 7}
!14 = !{ptr @ping_v6_seq_ops, !15, !"ping_v6_seq_ops", i1 false, i1 false}
!15 = !{!"../net/ipv6/ping.c", i32 213, i32 36}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv6/ping.c", i32 202, i32 17}
!18 = !{ptr @pingv6_protosw, !19, !"pingv6_protosw", i1 false, i1 false}
!19 = !{!"../net/ipv6/ping.c", i32 185, i32 28}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148769872, i64 2148769877, i64 2148769890, i64 2148769934, i64 2148769968, i64 2148769989}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2148288057, i64 2148288083, i64 2148288112, i64 2148288146, i64 2148288177, i64 2148288200}
!33 = !{i64 680538, i64 680599}
!34 = !{i64 683270}
!35 = !{i64 683555}
