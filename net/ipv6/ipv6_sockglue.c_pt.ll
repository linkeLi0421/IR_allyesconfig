; ModuleID = '/llk/IR_all_yes/net/ipv6/ipv6_sockglue.c_pt.bc'
source_filename = "../net/ipv6/ipv6_sockglue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ipv6_setsockopt\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_setsockopt\09\09\09\09"
module asm "\09.long\09__crc_ipv6_setsockopt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_setsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ipv6_getsockopt\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_getsockopt\09\09\09\09"
module asm "\09.long\09__crc_ipv6_getsockopt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_getsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.164, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.164 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.169, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.170, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.171, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.1, %union.anon.2, %union.anon.3, i16, i8, i8, i32, %union.anon.5, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.165, [0 x i32], %union.anon.166, i16, i16, %union.anon.167, %struct.refcount_struct, [0 x i32], %union.anon.168 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.45 }
%union.anon.45 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { %struct.hlist_node }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.169 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.170 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.171 = type { ptr }
%struct.sk_buff_head = type { %union.anon.71, i32, %struct.spinlock }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.anon.4 = type { i16, i16 }
%struct.ip6_ra_chain = type { ptr, ptr, i32, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.40 }
%union.anon.40 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.202, %struct.anon.203, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.202 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.203 = type { i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.199, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.group_source_req = type { i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.205 }
%union.anon.205 = type { ptr, [124 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.163, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.6, %union.anon.161 }
%union.anon.6 = type { ptr }
%union.anon.161 = type { i64 }
%union.anon.163 = type { ptr }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ipv6_mreq = type { %struct.in6_addr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.81, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.81 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.ip6_mtuinfo = type { %struct.sockaddr_in6, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_flowlabel_req = type { %struct.in6_addr, i32, i8, i8, i16, i16, i16, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.175, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.193, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.175 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.193 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.group_req = type { i32, %struct.__kernel_sockaddr_storage }
%struct.anon.212 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [0 x %struct.__kernel_sockaddr_storage] }
%struct.group_filter = type { %union.anon.210 }
%union.anon.210 = type { %struct.anon.211 }
%struct.anon.211 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [1 x %struct.__kernel_sockaddr_storage] }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip6_ra_lock\00", [20 x i8] zeroinitializer }, align 32
@ip6_ra_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@ip6_min_hopcount = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@ip6_ra_chain = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@udp_prot = external dso_local global %struct.proto, align 4
@__kstrtab_ipv6_setsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_setsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_setsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_setsockopt to i32), ptr @__kstrtab_ipv6_setsockopt, ptr @__kstrtabns_ipv6_setsockopt }, section "___ksymtab+ipv6_setsockopt", align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/ipv6/ipv6_sockglue.c\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_ipv6_getsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_getsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_getsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_getsockopt to i32), ptr @__kstrtab_ipv6_getsockopt, ptr @__kstrtabns_ipv6_getsockopt }, section "___ksymtab+ipv6_getsockopt", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tcpv6_prot = external dso_local global %struct.proto, align 4
@tcp_prot = external dso_local global %struct.proto, align 4
@ipv4_specific = external dso_local constant %struct.inet_connection_sock_af_ops, align 4
@inet_stream_ops = external dso_local constant %struct.proto_ops, align 4
@udplite_prot = external dso_local global %struct.proto, align 4
@inet_dgram_ops = external dso_local constant %struct.proto_ops, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ipv6_set_opt_hdr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sysctl_optmem_max = external dso_local local_unnamed_addr global i32, align 4
@sysctl_mld_max_msf = external dso_local local_unnamed_addr global i32, align 4
@do_ipv6_getsockopt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 41]
@__sancov_gen_cov_switch_values.11 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 20, i64 21, i64 27, i64 28, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.12 = internal global [59 x i64] [i64 57, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 11, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 62, i64 66, i64 67, i64 70, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 16, i64 6, i64 17, i64 136]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 43, i64 44, i64 46]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967198]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 41]
@__sancov_gen_cov_switch_values.18 = internal global [46 x i64] [i64 44, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 11, i64 16, i64 17, i64 18, i64 19, i64 23, i64 24, i64 25, i64 26, i64 29, i64 30, i64 31, i64 32, i64 33, i64 48, i64 49, i64 51, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 66, i64 67, i64 70, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 16, i64 6, i64 17, i64 136]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 256]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 1024]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 2048]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 54, i64 55, i64 57, i64 59]
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"ip6_ra_lock\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 56, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"ip6_min_hopcount\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 58, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"ip6_ra_chain\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 55, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1499, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 230, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 214, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 156, i32 2 }
@___asan_gen_.49 = private constant [28 x i8] c"../net/ipv6/ipv6_sockglue.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 353, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 695, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 723, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2067, i32 9 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_ipv6_getsockopt, ptr @__ksymtab_ipv6_setsockopt, ptr @.str, ptr @ip6_ra_lock, ptr @ip6_min_hopcount, ptr @ip6_ra_chain, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_ra_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_min_hopcount to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_ra_chain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_ra_control(ptr noundef %sk, i32 noundef %sel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %0 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not = icmp eq i16 %1, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.4, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %4)
  %cmp4.not = icmp eq i16 %4, 255
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sel)
  %cmp6 = icmp sgt i32 %sel, -1
  br i1 %cmp6, label %cond.end, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

cond.end:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end12_crit_edge

cond.end.if.end12_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %cond.end.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %cond59 = phi ptr [ %call7.i, %cond.end.if.end12_crit_edge ], [ null, %if.end.if.end12_crit_edge ]
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @ip6_ra_lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end12
  %rap.0 = phi ptr [ @ip6_ra_chain, %if.end12 ], [ %7, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %rap.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rap.0, align 4
  %cmp13.not = icmp eq ptr %7, null
  br i1 %cmp13.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %sk15 = getelementptr inbounds %struct.ip6_ra_chain, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk15, align 4
  %cmp16 = icmp eq ptr %9, %sk
  br i1 %cmp16, label %if.then18, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then18:                                        ; preds = %for.body
  br i1 %cmp6, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ip6_ra_lock) #10
  tail call void @kfree(ptr noundef %cond59) #10
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %rap.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %rap.0, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ip6_ra_lock) #10
  %skc_refcnt.i53 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i53, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i53, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i53, ptr %skc_refcnt.i53, i32 1, ptr elementtype(i32) %skc_refcnt.i53) #10, !srcloc !47
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i55, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !48

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i53, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !49
  tail call void @sk_free(ptr noundef %sk) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  br i1 %cmp6, label %if.end27, label %if.then26

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ip6_ra_lock) #10
  br label %cleanup

if.end27:                                         ; preds = %for.end
  %sk28 = getelementptr inbounds %struct.ip6_ra_chain, ptr %cond59, i32 0, i32 1
  %14 = ptrtoint ptr %sk28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sk, ptr %sk28, align 4
  %sel29 = getelementptr inbounds %struct.ip6_ra_chain, ptr %cond59, i32 0, i32 2
  %15 = ptrtoint ptr %sel29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sel, ptr %sel29, align 8
  %16 = ptrtoint ptr %cond59 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cond59, align 8
  %17 = ptrtoint ptr %rap.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond59, ptr %rap.0, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !50
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end27.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !51

if.end27.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end27
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !48

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end27.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end27.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ip6_ra_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sock_hold.exit, %if.then26, %sock_put.exit, %if.then21, %cond.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -98, %if.then21 ], [ 0, %sock_put.exit ], [ 0, %sock_hold.exit ], [ -105, %if.then26 ], [ -92, %lor.lhs.false.cleanup_crit_edge ], [ -92, %entry.cleanup_crit_edge ], [ -12, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipv6_update_options(ptr noundef %sk, ptr noundef %opt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_icsk = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %0 = ptrtoint ptr %is_icsk to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_icsk, align 8
  %1 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %tobool1.not = icmp eq ptr %opt, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706438, i32 %5)
  %cmp.not = icmp eq i32 %5, 2130706438
  br i1 %cmp.not, label %land.lhs.true3.if.end14_crit_edge, label %if.then8

land.lhs.true3.if.end14_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 2
  %6 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opt_flen, align 4
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 3
  %8 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opt_nflen, align 2
  %add = add i16 %9, %7
  %icsk_ext_hdr_len = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %10 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %add, ptr %icsk_ext_hdr_len, align 2
  %icsk_sync_mss = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 16
  %11 = ptrtoint ptr %icsk_sync_mss to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %icsk_sync_mss, align 8
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %13 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %icsk_pmtu_cookie, align 8
  %call13 = tail call i32 %12(ptr noundef %sk, i32 noundef %14) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %land.lhs.true3.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %16 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end14.inet6_sk.exit_crit_edge, label %cond.true.i

if.end14.inet6_sk.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %17 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.end14.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %18, %cond.true.i ], [ null, %if.end14.inet6_sk.exit_crit_edge ]
  %opt16 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opt16, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  %19 = ptrtoint ptr %opt to i32
  tail call void @llvm.prefetch.p0(ptr %opt16, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %19, ptr %opt16) #10, !srcloc !53
  %asmresult.i = extractvalue { i32, i32 } %20, 0
  %21 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  %skc_tx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %22 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %sk_dst_pending_confirm.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %23 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_dst_cache.i.i) #10, !srcloc !53
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  %25 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @dst_release(ptr noundef %25) #10
  ret ptr %21
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_dst_reset(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_tx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %0 = ptrtoint ptr %skc_tx_queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %1 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sk_dst_pending_confirm.i, align 8
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_dst_cache.i) #10, !srcloc !53
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %3 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @dst_release(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %greqs.i.i = alloca %struct.group_source_req, align 4
  %val.i = alloca i32, align 4
  %pkt.i = alloca %struct.in6_pktinfo, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %fl6.i = alloca %struct.flowi6, align 8
  %ipc6.i = alloca %struct.ipcm6_cookie, align 8
  %mreq.i = alloca %struct.ipv6_mreq, align 4
  %mreq615.i = alloca %struct.ipv6_mreq, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %land.lhs.true
    i32 41, label %if.end6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %1 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp1.not = icmp eq i16 %2, 3
  br i1 %cmp1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 9), align 4
  %call = tail call i32 %3(ptr noundef %sk, i32 noundef 0, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %5 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end6.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.end6.inet6_sk.exit.i_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %6 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.end6.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %7, %cond.true.i.i ], [ null, %if.end6.inet6_sk.exit.i_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !57
  %11 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %optname, label %sw.epilog.i.i [
    i32 1, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge
    i32 20, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge50
    i32 21, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge51
    i32 27, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge52
    i32 28, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge53
    i32 42, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge54
    i32 45, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge55
    i32 46, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge56
    i32 47, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge57
    i32 43, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge58
    i32 44, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge59
    i32 48, label %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge60
  ]

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge60: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge59: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge58: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge57: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge56: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge55: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge54: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge53: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge52: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge51: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge50: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge: ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

sw.epilog.i.i:                                    ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setsockopt_needs_rtnl.exit.i

setsockopt_needs_rtnl.exit.i:                     ; preds = %sw.epilog.i.i, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge50, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge51, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge52, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge53, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge54, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge55, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge56, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge57, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge58, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge59, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge60
  %retval.0.i.i = phi i1 [ false, %sw.epilog.i.i ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge50 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge51 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge52 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge53 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge54 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge55 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge56 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge57 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge58 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge59 ], [ true, %inet6_sk.exit.i.setsockopt_needs_rtnl.exit.i_crit_edge60 ]
  %sockptr.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.0.extract.i.i)
  %retval.0.i22.i = icmp eq i32 %sockptr.coerce.fca.0.extract.i.i, 0
  br i1 %retval.0.i22.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %setsockopt_needs_rtnl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %setsockopt_needs_rtnl.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %optlen)
  %cmp.i = icmp ugt i32 %optlen, 3
  br i1 %cmp.i, label %if.then4.i, label %if.else7.i

if.then4.i:                                       ; preds = %if.else.i
  %13 = inttoptr i32 %sockptr.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.then4.i
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i.i, label %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:  ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end8.i.i.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %13, i32 4, i32 -1226833920) #14, !srcloc !58
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef 4) #10
  %15 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #7, !srcloc !59
  %and.i.i.i.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i, ptr noundef nonnull %13, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.copy_from_sockptr.exit.thread.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !48

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.copy_from_sockptr.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_sockptr.exit.thread.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i41.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 4, %res.0.i.i.i.i41.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %val.i, i32 %sub.i.i.i.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i41.i)
  br label %do_ipv6_setsockopt.exit.thread

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %13, align 1
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val.i, align 4
  br label %copy_from_sockptr.exit.thread.i

copy_from_sockptr.exit.thread.i:                  ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.copy_from_sockptr.exit.thread.i_crit_edge
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load i32, ptr %val.i, align 4
  br label %if.end9.i

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else7.i, %copy_from_sockptr.exit.thread.i, %if.then.i
  %24 = phi i32 [ %.pr.i, %copy_from_sockptr.exit.thread.i ], [ 0, %if.else7.i ], [ 0, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp10.i = icmp ne i32 %24, 0
  %conv.i = zext i1 %cmp10.i to i32
  %25 = add i32 %optname, -213
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %25)
  %26 = icmp ult i32 %25, -13
  br i1 %26, label %if.end15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = call i32 @ip6_mroute_setsockopt(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  br label %do_ipv6_setsockopt.exit

if.end15.i:                                       ; preds = %if.end9.i
  br i1 %retval.0.i.i, label %if.then17.i, label %if.end15.i.if.end18.i_crit_edge

if.end15.i.if.end18.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtnl_lock() #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end18.i_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %27 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %optname, label %if.end18.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 26, label %sw.bb148.i
    i32 49, label %sw.bb164.i
    i32 2, label %sw.bb175.i
    i32 51, label %sw.bb187.i
    i32 8, label %sw.bb199.i
    i32 56, label %sw.bb211.i
    i32 5, label %sw.bb223.i
    i32 53, label %sw.bb235.i
    i32 3, label %sw.bb247.i
    i32 58, label %sw.bb259.i
    i32 4, label %sw.bb271.i
    i32 67, label %sw.bb283.i
    i32 66, label %sw.bb315.i
    i32 11, label %sw.bb327.i
    i32 60, label %sw.bb339.i
    i32 75, label %sw.bb351.i
    i32 78, label %sw.bb370.i
    i32 74, label %sw.bb383.i
    i32 54, label %if.end18.i.sw.bb395.i_crit_edge
    i32 55, label %if.end18.i.sw.bb395.i_crit_edge61
    i32 57, label %if.end18.i.sw.bb395.i_crit_edge62
    i32 59, label %if.end18.i.sw.bb395.i_crit_edge63
    i32 50, label %sw.bb397.i
    i32 6, label %sw.bb423.i
    i32 16, label %sw.bb461.i
    i32 18, label %sw.bb480.i
    i32 19, label %sw.bb509.i
    i32 76, label %sw.bb524.i
    i32 17, label %sw.bb546.i
    i32 20, label %if.end18.i.sw.bb587.i_crit_edge
    i32 21, label %if.end18.i.sw.bb587.i_crit_edge64
    i32 27, label %if.end18.i.sw.bb614.i_crit_edge
    i32 28, label %if.end18.i.sw.bb614.i_crit_edge65
    i32 29, label %sw.bb637.i
    i32 42, label %if.end18.i.sw.bb648.i_crit_edge
    i32 45, label %if.end18.i.sw.bb648.i_crit_edge66
    i32 46, label %if.end18.i.sw.bb655.i_crit_edge
    i32 47, label %if.end18.i.sw.bb655.i_crit_edge67
    i32 43, label %if.end18.i.sw.bb655.i_crit_edge68
    i32 44, label %if.end18.i.sw.bb655.i_crit_edge69
    i32 48, label %sw.bb657.i
    i32 22, label %sw.bb664.i
    i32 30, label %sw.bb670.i
    i32 23, label %sw.bb680.i
    i32 24, label %sw.bb698.i
    i32 25, label %sw.bb709.i
    i32 33, label %sw.bb723.i
    i32 32, label %sw.bb734.i
    i32 34, label %if.end18.i.sw.bb736.i_crit_edge
    i32 35, label %if.end18.i.sw.bb736.i_crit_edge70
    i32 72, label %sw.bb742.i
    i32 73, label %sw.bb748.i
    i32 62, label %sw.bb773.i
    i32 70, label %sw.bb780.i
    i32 77, label %sw.bb790.i
    i32 31, label %sw.bb798.i
  ]

if.end18.i.sw.bb736.i_crit_edge70:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb736.i

if.end18.i.sw.bb736.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb736.i

if.end18.i.sw.bb655.i_crit_edge69:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb655.i

if.end18.i.sw.bb655.i_crit_edge68:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb655.i

if.end18.i.sw.bb655.i_crit_edge67:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb655.i

if.end18.i.sw.bb655.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb655.i

if.end18.i.sw.bb648.i_crit_edge66:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb648.i

if.end18.i.sw.bb648.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb648.i

if.end18.i.sw.bb614.i_crit_edge65:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb614.i

if.end18.i.sw.bb614.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb614.i

if.end18.i.sw.bb587.i_crit_edge64:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb587.i

if.end18.i.sw.bb587.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb587.i

if.end18.i.sw.bb395.i_crit_edge63:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb395.i

if.end18.i.sw.bb395.i_crit_edge62:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb395.i

if.end18.i.sw.bb395.i_crit_edge61:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb395.i

if.end18.i.sw.bb395.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb395.i

if.end18.i.sw.epilog.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp19.i = icmp ult i32 %optlen, 4
  br i1 %cmp19.i, label %sw.bb.i.e_inval.i_crit_edge, label %if.end22.i

sw.bb.i.e_inval.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end22.i:                                       ; preds = %sw.bb.i
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp23.i = icmp eq i32 %29, 2
  br i1 %cmp23.i, label %if.then25.i, label %if.end22.i.e_inval.i_crit_edge

if.end22.i.e_inval.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.then25.i:                                      ; preds = %if.end22.i
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %30 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp27.i = icmp eq i16 %31, 3
  br i1 %cmp27.i, label %if.then25.i.sw.epilog.i_crit_edge, label %if.end30.i

if.then25.i.sw.epilog.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end30.i:                                       ; preds = %if.then25.i
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %32 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sk_protocol.i, align 4
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %33, label %if.end30.i.sw.epilog.i_crit_edge [
    i16 17, label %if.end30.i.if.then38.i_crit_edge
    i16 136, label %if.end30.i.if.then38.i_crit_edge71
    i16 6, label %if.then49.i
  ]

if.end30.i.if.then38.i_crit_edge71:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.end30.i.if.then38.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.end30.i.sw.epilog.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then38.i:                                      ; preds = %if.end30.i.if.then38.i_crit_edge, %if.end30.i.if.then38.i_crit_edge71
  %pending.i = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 1
  %35 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pending.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %36)
  %cmp40.i = icmp eq i32 %36, 10
  br i1 %cmp40.i, label %if.then38.i.sw.epilog.i_crit_edge, label %if.then38.i.if.end56.i_crit_edge

if.then38.i.if.end56.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.then38.i.sw.epilog.i_crit_edge:                ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then49.i:                                      ; preds = %if.end30.i
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %37 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skc_prot.i, align 8
  %cmp50.not.i = icmp eq ptr %38, @tcpv6_prot
  br i1 %cmp50.not.i, label %if.then49.i.if.end56.i_crit_edge, label %if.then49.i.sw.epilog.i_crit_edge

if.then49.i.sw.epilog.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then49.i.if.end56.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then49.i.if.end56.i_crit_edge, %if.then38.i.if.end56.i_crit_edge
  %39 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp59.not.i = icmp eq i8 %40, 1
  br i1 %cmp59.not.i, label %if.end62.i, label %if.end56.i.sw.epilog.i_crit_edge

if.end56.i.sw.epilog.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end62.i:                                       ; preds = %if.end56.i
  %skc_ipv6only.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %41 = ptrtoint ptr %skc_ipv6only.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %skc_ipv6only.i, align 1
  %42 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool65.not.i = icmp eq i8 %42, 0
  br i1 %tobool65.not.i, label %lor.lhs.false66.i, label %if.end62.i.sw.epilog.i_crit_edge

if.end62.i.sw.epilog.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

lor.lhs.false66.i:                                ; preds = %if.end62.i
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %43 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %skc_v6_daddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %46, %44
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %48, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.end70.i, label %lor.lhs.false66.i.sw.epilog.i_crit_edge

lor.lhs.false66.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end70.i:                                       ; preds = %lor.lhs.false66.i
  call void @fl6_free_socklist(ptr noundef %sk) #10
  call void @__ipv6_sock_mc_close(ptr noundef %sk) #10
  call void @__ipv6_sock_ac_close(ptr noundef %sk) #10
  %49 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sk_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %50)
  %cmp73.i = icmp eq i16 %50, 6
  br i1 %cmp73.i, label %if.then75.i, label %if.else83.i

if.then75.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_prot78.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %51 = ptrtoint ptr %skc_prot78.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skc_prot78.i, align 8
  call fastcc void @sock_prot_inuse_add(ptr noundef %9, ptr noundef %52, i32 noundef -1) #10
  call fastcc void @sock_prot_inuse_add(ptr noundef %9, ptr noundef nonnull @tcp_prot, i32 noundef 1) #10
  %53 = ptrtoint ptr %skc_prot78.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @tcp_prot, ptr %skc_prot78.i, align 8
  %icsk_af_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %54 = ptrtoint ptr %icsk_af_ops.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ipv4_specific, ptr %icsk_af_ops.i, align 8
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %55 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk_socket.i, align 8
  %ops.i = getelementptr inbounds %struct.socket, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @inet_stream_ops, ptr %ops.i, align 4
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %58 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 2, ptr %skc_family.i, align 8
  %icsk_pmtu_cookie.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %59 = ptrtoint ptr %icsk_pmtu_cookie.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %icsk_pmtu_cookie.i, align 8
  %call82.i = call i32 @tcp_sync_mss(ptr noundef %sk, i32 noundef %60) #10
  br label %if.end98.i

if.else83.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %50)
  %cmp86.i = icmp eq i16 %50, 136
  %spec.store.select.i = select i1 %cmp86.i, ptr @udplite_prot, ptr @udp_prot
  %skc_prot91.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %61 = ptrtoint ptr %skc_prot91.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skc_prot91.i, align 8
  call fastcc void @sock_prot_inuse_add(ptr noundef %9, ptr noundef %62, i32 noundef -1) #10
  call fastcc void @sock_prot_inuse_add(ptr noundef %9, ptr noundef nonnull %spec.store.select.i, i32 noundef 1) #10
  %63 = ptrtoint ptr %skc_prot91.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %spec.store.select.i, ptr %skc_prot91.i, align 8
  %sk_socket94.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %64 = ptrtoint ptr %sk_socket94.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sk_socket94.i, align 8
  %ops95.i = getelementptr inbounds %struct.socket, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %ops95.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @inet_dgram_ops, ptr %ops95.i, align 4
  %skc_family97.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %67 = ptrtoint ptr %skc_family97.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 2, ptr %skc_family97.i, align 8
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.else83.i, %if.then75.i
  %opt99.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %opt99.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  call void @llvm.prefetch.p0(ptr %opt99.i, i32 1, i32 3, i32 1) #10
  %68 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %opt99.i) #10, !srcloc !53
  %asmresult.i.i = extractvalue { i32, i32 } %68, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool118.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool118.not.i, label %if.end98.i.if.end120.i_crit_edge, label %if.then119.i

if.end98.i.if.end120.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120.i

if.then119.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = inttoptr i32 %asmresult.i.i to ptr
  %tot_len.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tot_len.i, align 4
  %sk_omem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %sk_omem_alloc.i, i32 1, i32 3, i32 1) #10
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc.i, ptr %sk_omem_alloc.i, i32 %71, ptr elementtype(i32) %sk_omem_alloc.i) #10, !srcloc !64
  call fastcc void @txopt_put(ptr noundef nonnull %69) #10
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then119.i, %if.end98.i.if.end120.i_crit_edge
  %pktoptions.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 19
  %call.i19.i = call zeroext i1 @__kasan_check_write(ptr noundef %pktoptions.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  call void @llvm.prefetch.p0(ptr %pktoptions.i, i32 1, i32 3, i32 1) #10
  %73 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %pktoptions.i) #10, !srcloc !53
  %asmresult.i23.i = extractvalue { i32, i32 } %73, 0
  %74 = inttoptr i32 %asmresult.i23.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  call void @kfree_skb_reason(ptr noundef %74, i32 noundef 0) #10
  call void @module_put(ptr noundef null) #10
  br label %sw.epilog.i

sw.bb148.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp149.i = icmp ult i32 %optlen, 4
  br i1 %cmp149.i, label %sw.bb148.i.e_inval.i_crit_edge, label %lor.lhs.false151.i

sw.bb148.i.e_inval.i_crit_edge:                   ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

lor.lhs.false151.i:                               ; preds = %sw.bb148.i
  %75 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.4, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %skc_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool156.not.i = icmp eq i16 %77, 0
  br i1 %tobool156.not.i, label %if.end158.i, label %lor.lhs.false151.i.e_inval.i_crit_edge

lor.lhs.false151.i.e_inval.i_crit_edge:           ; preds = %lor.lhs.false151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end158.i:                                      ; preds = %lor.lhs.false151.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_ipv6only161.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %78 = ptrtoint ptr %skc_ipv6only161.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load162.i = load i8, ptr %skc_ipv6only161.i, align 1
  %bf.shl.i = select i1 %cmp10.i, i8 4, i8 0
  %bf.clear163.i = and i8 %bf.load162.i, -5
  %bf.set.i = or i8 %bf.clear163.i, %bf.shl.i
  store i8 %bf.set.i, ptr %skc_ipv6only161.i, align 1
  br label %sw.epilog.i

sw.bb164.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp165.i = icmp ult i32 %optlen, 4
  br i1 %cmp165.i, label %sw.bb164.i.e_inval.i_crit_edge, label %if.end168.i

sw.bb164.i.e_inval.i_crit_edge:                   ; preds = %sw.bb164.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end168.i:                                      ; preds = %sw.bb164.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %79 = ptrtoint ptr %rxopt.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load170.i = load i16, ptr %rxopt.i, align 4
  %bf.shl172.i = select i1 %cmp10.i, i16 8192, i16 0
  %bf.clear173.i = and i16 %bf.load170.i, -8193
  %bf.set174.i = or i16 %bf.clear173.i, %bf.shl172.i
  store i16 %bf.set174.i, ptr %rxopt.i, align 4
  br label %sw.epilog.i

sw.bb175.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp176.i = icmp ult i32 %optlen, 4
  br i1 %cmp176.i, label %sw.bb175.i.e_inval.i_crit_edge, label %if.end179.i

sw.bb175.i.e_inval.i_crit_edge:                   ; preds = %sw.bb175.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end179.i:                                      ; preds = %sw.bb175.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt181.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %80 = ptrtoint ptr %rxopt181.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load182.i = load i16, ptr %rxopt181.i, align 4
  %bf.shl184.i = select i1 %cmp10.i, i16 4096, i16 0
  %bf.clear185.i = and i16 %bf.load182.i, -4097
  %bf.set186.i = or i16 %bf.clear185.i, %bf.shl184.i
  store i16 %bf.set186.i, ptr %rxopt181.i, align 4
  br label %sw.epilog.i

sw.bb187.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp188.i = icmp ult i32 %optlen, 4
  br i1 %cmp188.i, label %sw.bb187.i.e_inval.i_crit_edge, label %if.end191.i

sw.bb187.i.e_inval.i_crit_edge:                   ; preds = %sw.bb187.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end191.i:                                      ; preds = %sw.bb187.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt193.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %81 = ptrtoint ptr %rxopt193.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load194.i = load i16, ptr %rxopt193.i, align 4
  %bf.shl196.i = select i1 %cmp10.i, i16 2048, i16 0
  %bf.clear197.i = and i16 %bf.load194.i, -2049
  %bf.set198.i = or i16 %bf.clear197.i, %bf.shl196.i
  store i16 %bf.set198.i, ptr %rxopt193.i, align 4
  br label %sw.epilog.i

sw.bb199.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp200.i = icmp ult i32 %optlen, 4
  br i1 %cmp200.i, label %sw.bb199.i.e_inval.i_crit_edge, label %if.end203.i

sw.bb199.i.e_inval.i_crit_edge:                   ; preds = %sw.bb199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end203.i:                                      ; preds = %sw.bb199.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt205.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %82 = ptrtoint ptr %rxopt205.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load206.i = load i16, ptr %rxopt205.i, align 4
  %bf.shl208.i = select i1 %cmp10.i, i16 1024, i16 0
  %bf.clear209.i = and i16 %bf.load206.i, -1025
  %bf.set210.i = or i16 %bf.clear209.i, %bf.shl208.i
  store i16 %bf.set210.i, ptr %rxopt205.i, align 4
  br label %sw.epilog.i

sw.bb211.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp212.i = icmp ult i32 %optlen, 4
  br i1 %cmp212.i, label %sw.bb211.i.e_inval.i_crit_edge, label %if.end215.i

sw.bb211.i.e_inval.i_crit_edge:                   ; preds = %sw.bb211.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end215.i:                                      ; preds = %sw.bb211.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt217.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %83 = ptrtoint ptr %rxopt217.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load218.i = load i16, ptr %rxopt217.i, align 4
  %bf.shl220.i = select i1 %cmp10.i, i16 -32768, i16 0
  %bf.clear221.i = and i16 %bf.load218.i, 32767
  %bf.set222.i = or i16 %bf.clear221.i, %bf.shl220.i
  store i16 %bf.set222.i, ptr %rxopt217.i, align 4
  br label %sw.epilog.i

sw.bb223.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp224.i = icmp ult i32 %optlen, 4
  br i1 %cmp224.i, label %sw.bb223.i.e_inval.i_crit_edge, label %if.end227.i

sw.bb223.i.e_inval.i_crit_edge:                   ; preds = %sw.bb223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end227.i:                                      ; preds = %sw.bb223.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt229.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %84 = ptrtoint ptr %rxopt229.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load230.i = load i16, ptr %rxopt229.i, align 4
  %bf.shl232.i = select i1 %cmp10.i, i16 16384, i16 0
  %bf.clear233.i = and i16 %bf.load230.i, -16385
  %bf.set234.i = or i16 %bf.clear233.i, %bf.shl232.i
  store i16 %bf.set234.i, ptr %rxopt229.i, align 4
  br label %sw.epilog.i

sw.bb235.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp236.i = icmp ult i32 %optlen, 4
  br i1 %cmp236.i, label %sw.bb235.i.e_inval.i_crit_edge, label %if.end239.i

sw.bb235.i.e_inval.i_crit_edge:                   ; preds = %sw.bb235.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end239.i:                                      ; preds = %sw.bb235.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt241.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %85 = ptrtoint ptr %rxopt241.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load242.i = load i16, ptr %rxopt241.i, align 4
  %bf.shl244.i = select i1 %cmp10.i, i16 512, i16 0
  %bf.clear245.i = and i16 %bf.load242.i, -513
  %bf.set246.i = or i16 %bf.clear245.i, %bf.shl244.i
  store i16 %bf.set246.i, ptr %rxopt241.i, align 4
  br label %sw.epilog.i

sw.bb247.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp248.i = icmp ult i32 %optlen, 4
  br i1 %cmp248.i, label %sw.bb247.i.e_inval.i_crit_edge, label %if.end251.i

sw.bb247.i.e_inval.i_crit_edge:                   ; preds = %sw.bb247.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end251.i:                                      ; preds = %sw.bb247.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt253.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %rxopt253.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load254.i = load i16, ptr %rxopt253.i, align 4
  %bf.shl256.i = select i1 %cmp10.i, i16 256, i16 0
  %bf.clear257.i = and i16 %bf.load254.i, -257
  %bf.set258.i = or i16 %bf.clear257.i, %bf.shl256.i
  store i16 %bf.set258.i, ptr %rxopt253.i, align 4
  br label %sw.epilog.i

sw.bb259.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp260.i = icmp ult i32 %optlen, 4
  br i1 %cmp260.i, label %sw.bb259.i.e_inval.i_crit_edge, label %if.end263.i

sw.bb259.i.e_inval.i_crit_edge:                   ; preds = %sw.bb259.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end263.i:                                      ; preds = %sw.bb259.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt265.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %87 = ptrtoint ptr %rxopt265.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load266.i = load i16, ptr %rxopt265.i, align 4
  %bf.shl268.i = select i1 %cmp10.i, i16 128, i16 0
  %bf.clear269.i = and i16 %bf.load266.i, -129
  %bf.set270.i = or i16 %bf.clear269.i, %bf.shl268.i
  store i16 %bf.set270.i, ptr %rxopt265.i, align 4
  br label %sw.epilog.i

sw.bb271.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp272.i = icmp ult i32 %optlen, 4
  br i1 %cmp272.i, label %sw.bb271.i.e_inval.i_crit_edge, label %if.end275.i

sw.bb271.i.e_inval.i_crit_edge:                   ; preds = %sw.bb271.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end275.i:                                      ; preds = %sw.bb271.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt277.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %88 = ptrtoint ptr %rxopt277.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load278.i = load i16, ptr %rxopt277.i, align 4
  %bf.shl280.i = select i1 %cmp10.i, i16 64, i16 0
  %bf.clear281.i = and i16 %bf.load278.i, -65
  %bf.set282.i = or i16 %bf.clear281.i, %bf.shl280.i
  store i16 %bf.set282.i, ptr %rxopt277.i, align 4
  br label %sw.epilog.i

sw.bb283.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp284.i = icmp ult i32 %optlen, 4
  br i1 %cmp284.i, label %sw.bb283.i.e_inval.i_crit_edge, label %if.end287.i

sw.bb283.i.e_inval.i_crit_edge:                   ; preds = %sw.bb283.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end287.i:                                      ; preds = %sw.bb283.i
  %89 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val.i, align 4
  %91 = add i32 %90, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %91)
  %92 = icmp ult i32 %91, -257
  br i1 %92, label %if.end287.i.e_inval.i_crit_edge, label %if.end294.i

if.end287.i.e_inval.i_crit_edge:                  ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end294.i:                                      ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp295.i = icmp eq i32 %90, -1
  br i1 %cmp295.i, label %if.then297.i, label %if.end294.i.if.end298.i_crit_edge

if.end294.i.if.end298.i_crit_edge:                ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end298.i

if.then297.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %val.i, align 4
  br label %if.end298.i

if.end298.i:                                      ; preds = %if.then297.i, %if.end294.i.if.end298.i_crit_edge
  %sk_type299.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %94 = ptrtoint ptr %sk_type299.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %sk_type299.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %95)
  %cmp301.i = icmp eq i16 %95, 1
  br i1 %cmp301.i, label %if.then303.i, label %if.end298.i.if.end306.i_crit_edge

if.end298.i.if.end306.i_crit_edge:                ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end306.i

if.then303.i:                                     ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val.i, align 4
  %and.i = and i32 %97, -4
  %tclass.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 12
  %98 = ptrtoint ptr %tclass.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tclass.i, align 1
  %100 = and i8 %99, 3
  %and305.i = zext i8 %100 to i32
  %or.i = or i32 %and.i, %and305.i
  store i32 %or.i, ptr %val.i, align 4
  br label %if.end306.i

if.end306.i:                                      ; preds = %if.then303.i, %if.end298.i.if.end306.i_crit_edge
  %tclass307.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 12
  %101 = ptrtoint ptr %tclass307.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %tclass307.i, align 1
  %conv308.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv308.i)
  %cmp309.not.i = icmp eq i32 %104, %conv308.i
  br i1 %cmp309.not.i, label %if.end306.i.sw.epilog.i_crit_edge, label %if.then311.i

if.end306.i.sw.epilog.i_crit_edge:                ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then311.i:                                     ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv312.i = trunc i32 %104 to i8
  %105 = ptrtoint ptr %tclass307.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv312.i, ptr %tclass307.i, align 1
  call fastcc void @sk_dst_reset(ptr noundef %sk) #10
  br label %sw.epilog.i

sw.bb315.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp316.i = icmp ult i32 %optlen, 4
  br i1 %cmp316.i, label %sw.bb315.i.e_inval.i_crit_edge, label %if.end319.i

sw.bb315.i.e_inval.i_crit_edge:                   ; preds = %sw.bb315.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end319.i:                                      ; preds = %sw.bb315.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt321.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %106 = ptrtoint ptr %rxopt321.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load322.i = load i16, ptr %rxopt321.i, align 4
  %bf.shl324.i = select i1 %cmp10.i, i16 16, i16 0
  %bf.clear325.i = and i16 %bf.load322.i, -17
  %bf.set326.i = or i16 %bf.clear325.i, %bf.shl324.i
  store i16 %bf.set326.i, ptr %rxopt321.i, align 4
  br label %sw.epilog.i

sw.bb327.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp328.i = icmp ult i32 %optlen, 4
  br i1 %cmp328.i, label %sw.bb327.i.e_inval.i_crit_edge, label %if.end331.i

sw.bb327.i.e_inval.i_crit_edge:                   ; preds = %sw.bb327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end331.i:                                      ; preds = %sw.bb327.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt333.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %107 = ptrtoint ptr %rxopt333.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load334.i = load i16, ptr %rxopt333.i, align 4
  %bf.shl336.i = select i1 %cmp10.i, i16 32, i16 0
  %bf.clear337.i = and i16 %bf.load334.i, -33
  %bf.set338.i = or i16 %bf.clear337.i, %bf.shl336.i
  store i16 %bf.set338.i, ptr %rxopt333.i, align 4
  br label %sw.epilog.i

sw.bb339.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp340.i = icmp ult i32 %optlen, 4
  br i1 %cmp340.i, label %sw.bb339.i.e_inval.i_crit_edge, label %if.end343.i

sw.bb339.i.e_inval.i_crit_edge:                   ; preds = %sw.bb339.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end343.i:                                      ; preds = %sw.bb339.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt345.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %108 = ptrtoint ptr %rxopt345.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load346.i = load i16, ptr %rxopt345.i, align 4
  %bf.shl348.i = select i1 %cmp10.i, i16 8, i16 0
  %bf.clear349.i = and i16 %bf.load346.i, -9
  %bf.set350.i = or i16 %bf.clear349.i, %bf.shl348.i
  store i16 %bf.set350.i, ptr %rxopt345.i, align 4
  br label %sw.epilog.i

sw.bb351.i:                                       ; preds = %if.end18.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %sw.bb351.i.if.end358.i_crit_edge

sw.bb351.i.if.end358.i_crit_edge:                 ; preds = %sw.bb351.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end358.i

land.lhs.true.i:                                  ; preds = %sw.bb351.i
  %user_ns.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 11
  %109 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %user_ns.i, align 4
  %call353.i = call zeroext i1 @ns_capable(ptr noundef %110, i32 noundef 13) #10
  br i1 %call353.i, label %land.lhs.true.i.if.end358.i_crit_edge, label %land.lhs.true354.i

land.lhs.true.i.if.end358.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end358.i

land.lhs.true354.i:                               ; preds = %land.lhs.true.i
  %111 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %user_ns.i, align 4
  %call356.i = call zeroext i1 @ns_capable(ptr noundef %112, i32 noundef 12) #10
  br i1 %call356.i, label %land.lhs.true354.i.if.end358.i_crit_edge, label %land.lhs.true354.i.sw.epilog.i_crit_edge

land.lhs.true354.i.sw.epilog.i_crit_edge:         ; preds = %land.lhs.true354.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true354.i.if.end358.i_crit_edge:         ; preds = %land.lhs.true354.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end358.i

if.end358.i:                                      ; preds = %land.lhs.true354.i.if.end358.i_crit_edge, %land.lhs.true.i.if.end358.i_crit_edge, %sw.bb351.i.if.end358.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp359.i = icmp ult i32 %optlen, 4
  br i1 %cmp359.i, label %if.end358.i.e_inval.i_crit_edge, label %if.end362.i

if.end358.i.e_inval.i_crit_edge:                  ; preds = %if.end358.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end362.i:                                      ; preds = %if.end358.i
  call void @__sanitizer_cov_trace_pc() #12
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %113 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load365.i = load i16, ptr %transparent.i, align 8
  %bf.shl367.i = select i1 %cmp10.i, i16 1024, i16 0
  %bf.clear368.i = and i16 %bf.load365.i, -1025
  %bf.set369.i = or i16 %bf.clear368.i, %bf.shl367.i
  store i16 %bf.set369.i, ptr %transparent.i, align 8
  br label %sw.epilog.i

sw.bb370.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp371.i = icmp ult i32 %optlen, 4
  br i1 %cmp371.i, label %sw.bb370.i.e_inval.i_crit_edge, label %if.end374.i

sw.bb370.i.e_inval.i_crit_edge:                   ; preds = %sw.bb370.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end374.i:                                      ; preds = %sw.bb370.i
  call void @__sanitizer_cov_trace_pc() #12
  %freebind.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %114 = ptrtoint ptr %freebind.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load377.i = load i16, ptr %freebind.i, align 8
  %bf.shl379.i = select i1 %cmp10.i, i16 8192, i16 0
  %bf.clear380.i = and i16 %bf.load377.i, -8193
  %bf.set381.i = or i16 %bf.clear380.i, %bf.shl379.i
  store i16 %bf.set381.i, ptr %freebind.i, align 8
  br label %sw.epilog.i

sw.bb383.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp384.i = icmp ult i32 %optlen, 4
  br i1 %cmp384.i, label %sw.bb383.i.e_inval.i_crit_edge, label %if.end387.i

sw.bb383.i.e_inval.i_crit_edge:                   ; preds = %sw.bb383.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end387.i:                                      ; preds = %sw.bb383.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt389.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %115 = ptrtoint ptr %rxopt389.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load390.i = load i16, ptr %rxopt389.i, align 4
  %bf.shl392.i = select i1 %cmp10.i, i16 4, i16 0
  %bf.clear393.i = and i16 %bf.load390.i, -5
  %bf.set394.i = or i16 %bf.clear393.i, %bf.shl392.i
  store i16 %bf.set394.i, ptr %rxopt389.i, align 4
  br label %sw.epilog.i

sw.bb395.i:                                       ; preds = %if.end18.i.sw.bb395.i_crit_edge, %if.end18.i.sw.bb395.i_crit_edge61, %if.end18.i.sw.bb395.i_crit_edge62, %if.end18.i.sw.bb395.i_crit_edge63
  %116 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %117 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sw.bb395.i.inet6_sk.exit.i.i_crit_edge, label %cond.true.i.i.i

sw.bb395.i.inet6_sk.exit.i.i_crit_edge:           ; preds = %sw.bb395.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i.i

cond.true.i.i.i:                                  ; preds = %sw.bb395.i
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %118 = ptrtoint ptr %pinet6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pinet6.i.i.i, align 8
  br label %inet6_sk.exit.i.i

inet6_sk.exit.i.i:                                ; preds = %cond.true.i.i.i, %sw.bb395.i.inet6_sk.exit.i.i_crit_edge
  %cond.i.i.i = phi ptr [ %119, %cond.true.i.i.i ], [ null, %sw.bb395.i.inet6_sk.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %optname)
  %cmp.not.i.i = icmp eq i32 %optname, 57
  br i1 %cmp.not.i.i, label %inet6_sk.exit.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i24.i

inet6_sk.exit.i.i.if.end.i.i_crit_edge:           ; preds = %inet6_sk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i24.i:                              ; preds = %inet6_sk.exit.i.i
  %120 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %skc_net.i.i, align 4
  %user_ns.i.i = getelementptr inbounds %struct.net, ptr %121, i32 0, i32 11
  %122 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %user_ns.i.i, align 4
  %call2.i.i = call zeroext i1 @ns_capable(ptr noundef %123, i32 noundef 13) #10
  br i1 %call2.i.i, label %land.lhs.true.i24.i.if.end.i.i_crit_edge, label %land.lhs.true.i24.i.sw.epilog.i_crit_edge

land.lhs.true.i24.i.sw.epilog.i_crit_edge:        ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true.i24.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i24.i.if.end.i.i_crit_edge, %inet6_sk.exit.i.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %cmp3.i.i = icmp sgt i32 %optlen, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  br i1 %retval.0.i22.i, label %if.then4.i.i.sw.epilog.i_crit_edge, label %if.end7.i.i

if.then4.i.i.sw.epilog.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end7.i.i:                                      ; preds = %if.then4.i.i
  %and.i.i = and i32 %optlen, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i26.i = icmp ne i32 %and.i.i, 0
  %124 = add nsw i32 %optlen, -2041
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2039, i32 %124)
  %125 = icmp ult i32 %124, -2039
  %126 = or i1 %125, %tobool.not.i26.i
  br i1 %126, label %if.end7.i.i.sw.epilog.i_crit_edge, label %if.end12.i.i

if.end7.i.i.sw.epilog.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %127 = call ptr @llvm.returnaddress(i32 0) #10
  %128 = ptrtoint ptr %127 to i32
  %call.i.i27.i = call ptr @__kmalloc_track_caller(i32 noundef %optlen, i32 noundef 1060032, i32 noundef %128) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i27.i, null
  br i1 %tobool.not.i.i.i, label %if.end12.i.i.if.then15.i.i_crit_edge, label %if.end.i.i28.i

if.end12.i.i.if.then15.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i.i

if.end.i.i28.i:                                   ; preds = %if.end12.i.i
  %call2.i.i.i = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %call.i.i27.i, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %memdup_sockptr.exit.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call.i.i27.i) #10
  br label %if.then15.i.i

memdup_sockptr.exit.i.i:                          ; preds = %if.end.i.i28.i
  %cmp.i.i.i = icmp ugt ptr %call.i.i27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %memdup_sockptr.exit.i.i.if.then15.i.i_crit_edge, label %if.end17.i.i

memdup_sockptr.exit.i.i.if.then15.i.i_crit_edge:  ; preds = %memdup_sockptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %memdup_sockptr.exit.i.i.if.then15.i.i_crit_edge, %if.then4.i.i.i, %if.end12.i.i.if.then15.i.i_crit_edge
  %retval.0.i117124.i.i = phi ptr [ %call.i.i27.i, %memdup_sockptr.exit.i.i.if.then15.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end12.i.i.if.then15.i.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then4.i.i.i ]
  %129 = ptrtoint ptr %retval.0.i117124.i.i to i32
  br label %sw.epilog.i

if.end17.i.i:                                     ; preds = %memdup_sockptr.exit.i.i
  %hdrlen.i.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %call.i.i27.i, i32 0, i32 1
  %130 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %hdrlen.i.i, align 1
  %conv.i.i = zext i8 %131 to i32
  %add.i.i = shl nuw nsw i32 %conv.i.i, 3
  %shl.i.i = add nuw nsw i32 %add.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %optlen)
  %cmp18.i.i = icmp ugt i32 %shl.i.i, %optlen
  br i1 %cmp18.i.i, label %if.then22.i.i, label %if.end17.i.i.do.body.i.i_crit_edge, !prof !51

if.end17.i.i.do.body.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then22.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call.i.i27.i) #10
  br label %sw.epilog.i

do.body.i.i:                                      ; preds = %if.end17.i.i.do.body.i.i_crit_edge, %if.end.i.i.do.body.i.i_crit_edge
  %new.0.i.i = phi ptr [ %call.i.i27.i, %if.end17.i.i.do.body.i.i_crit_edge ], [ null, %if.end.i.i.do.body.i.i_crit_edge ]
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i118.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118.i.i)
  %tobool.not.i119.i.i = icmp eq i32 %call.i.i118.i.i, 0
  br i1 %tobool.not.i119.i.i, label %lockdep_sock_is_held.exit.i.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %do.body.i.i
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.lhs.true26.i.i, label %lockdep_sock_is_held.exit.i.i.do.end.i.i_crit_edge

lockdep_sock_is_held.exit.i.i.do.end.i.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true26.i.i:                              ; preds = %lockdep_sock_is_held.exit.i.i
  %call27.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %land.lhs.true26.i.i.do.end.i.i_crit_edge, label %land.lhs.true29.i.i

land.lhs.true26.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true29.i.i:                              ; preds = %land.lhs.true26.i.i
  %.b114.i.i = load i1, ptr @ipv6_set_opt_hdr.__warned, align 1
  br i1 %.b114.i.i, label %land.lhs.true29.i.i.do.end.i.i_crit_edge, label %if.then31.i.i

land.lhs.true29.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_set_opt_hdr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef nonnull @.str.5) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then31.i.i, %land.lhs.true29.i.i.do.end.i.i_crit_edge, %land.lhs.true26.i.i.do.end.i.i_crit_edge, %lockdep_sock_is_held.exit.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %opt33.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i.i, i32 0, i32 18
  %132 = ptrtoint ptr %opt33.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %opt33.i.i, align 4
  %call34.i.i = call ptr @ipv6_renew_options(ptr noundef %sk, ptr noundef %133, i32 noundef %optname, ptr noundef %new.0.i.i) #10
  call void @kfree(ptr noundef %new.0.i.i) #10
  %cmp.i120.i.i = icmp ugt ptr %call34.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120.i.i, label %if.then36.i.i, label %if.end38.i.i

if.then36.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %call34.i.i to i32
  br label %sw.epilog.i

if.end38.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %optname)
  %cmp39.i.i = icmp ne i32 %optname, 57
  %tobool42.not.i.i = icmp eq ptr %call34.i.i, null
  %or.cond116.i.i = select i1 %cmp39.i.i, i1 true, i1 %tobool42.not.i.i
  br i1 %or.cond116.i.i, label %if.end38.i.i.sticky_done.i.i_crit_edge, label %land.lhs.true43.i.i

if.end38.i.i.sticky_done.i.i_crit_edge:           ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sticky_done.i.i

land.lhs.true43.i.i:                              ; preds = %if.end38.i.i
  %srcrt.i.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %call34.i.i, i32 0, i32 6
  %135 = ptrtoint ptr %srcrt.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %srcrt.i.i, align 4
  %tobool44.not.i.i = icmp eq ptr %136, null
  br i1 %tobool44.not.i.i, label %land.lhs.true43.i.i.sticky_done.i.i_crit_edge, label %if.then45.i.i

land.lhs.true43.i.i.sticky_done.i.i_crit_edge:    ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sticky_done.i.i

if.then45.i.i:                                    ; preds = %land.lhs.true43.i.i
  %type.i.i = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %type.i.i, align 1
  %139 = zext i8 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %138, label %if.then45.i.i.land.lhs.true.i.i.i_crit_edge [
    i8 2, label %sw.bb.i.i
    i8 4, label %sw.bb58.i.i
  ]

if.then45.i.i.land.lhs.true.i.i.i_crit_edge:      ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

sw.bb.i.i:                                        ; preds = %if.then45.i.i
  %hdrlen48.i.i = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %136, i32 0, i32 1
  %140 = ptrtoint ptr %hdrlen48.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %hdrlen48.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %141)
  %cmp50.not.i.i = icmp eq i8 %141, 2
  br i1 %cmp50.not.i.i, label %lor.lhs.false52.i.i, label %sw.bb.i.i.land.lhs.true.i.i.i_crit_edge

sw.bb.i.i.land.lhs.true.i.i.i_crit_edge:          ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

lor.lhs.false52.i.i:                              ; preds = %sw.bb.i.i
  %segments_left.i.i = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %136, i32 0, i32 3
  %142 = ptrtoint ptr %segments_left.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %segments_left.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %143)
  %cmp54.not.i.i = icmp eq i8 %143, 1
  br i1 %cmp54.not.i.i, label %lor.lhs.false52.i.i.sticky_done.i.i_crit_edge, label %lor.lhs.false52.i.i.land.lhs.true.i.i.i_crit_edge

lor.lhs.false52.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %lor.lhs.false52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

lor.lhs.false52.i.i.sticky_done.i.i_crit_edge:    ; preds = %lor.lhs.false52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sticky_done.i.i

sw.bb58.i.i:                                      ; preds = %if.then45.i.i
  %call60.i.i = call zeroext i1 @seg6_validate_srh(ptr noundef nonnull %136, i32 noundef %optlen, i1 noundef zeroext false) #10
  br i1 %call60.i.i, label %sw.bb58.i.i.sticky_done.i.i_crit_edge, label %sw.bb58.i.i.land.lhs.true.i.i.i_crit_edge

sw.bb58.i.i.land.lhs.true.i.i.i_crit_edge:        ; preds = %sw.bb58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

sw.bb58.i.i.sticky_done.i.i_crit_edge:            ; preds = %sw.bb58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sticky_done.i.i

sticky_done.i.i:                                  ; preds = %sw.bb58.i.i.sticky_done.i.i_crit_edge, %lor.lhs.false52.i.i.sticky_done.i.i_crit_edge, %land.lhs.true43.i.i.sticky_done.i.i_crit_edge, %if.end38.i.i.sticky_done.i.i_crit_edge
  %call66.i.i = call ptr @ipv6_update_options(ptr noundef %sk, ptr noundef %call34.i.i) #10
  %tobool67.not.i.i = icmp eq ptr %call66.i.i, null
  br i1 %tobool67.not.i.i, label %sticky_done.i.i.sw.epilog.i_crit_edge, label %sticky_done.i.i.land.lhs.true.i.i.i_crit_edge

sticky_done.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %sticky_done.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

sticky_done.i.i.sw.epilog.i_crit_edge:            ; preds = %sticky_done.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true.i.i.i:                              ; preds = %sticky_done.i.i.land.lhs.true.i.i.i_crit_edge, %sw.bb58.i.i.land.lhs.true.i.i.i_crit_edge, %lor.lhs.false52.i.i.land.lhs.true.i.i.i_crit_edge, %sw.bb.i.i.land.lhs.true.i.i.i_crit_edge, %if.then45.i.i.land.lhs.true.i.i.i_crit_edge
  %err.0130.i.i = phi i32 [ 0, %sticky_done.i.i.land.lhs.true.i.i.i_crit_edge ], [ -22, %if.then45.i.i.land.lhs.true.i.i.i_crit_edge ], [ -22, %sw.bb.i.i.land.lhs.true.i.i.i_crit_edge ], [ -22, %lor.lhs.false52.i.i.land.lhs.true.i.i.i_crit_edge ], [ -22, %sw.bb58.i.i.land.lhs.true.i.i.i_crit_edge ]
  %opt.0129.i.i = phi ptr [ %call66.i.i, %sticky_done.i.i.land.lhs.true.i.i.i_crit_edge ], [ %call34.i.i, %if.then45.i.i.land.lhs.true.i.i.i_crit_edge ], [ %call34.i.i, %sw.bb.i.i.land.lhs.true.i.i.i_crit_edge ], [ %call34.i.i, %lor.lhs.false52.i.i.land.lhs.true.i.i.i_crit_edge ], [ %call34.i.i, %sw.bb58.i.i.land.lhs.true.i.i.i_crit_edge ]
  %tot_len.i.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt.0129.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tot_len.i.i, align 4
  %sk_omem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %sk_omem_alloc.i.i, i32 1, i32 3, i32 1) #10
  %146 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc.i.i, ptr %sk_omem_alloc.i.i, i32 %145, ptr elementtype(i32) %sk_omem_alloc.i.i) #10, !srcloc !64
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt.0129.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @llvm.prefetch.p0(ptr nonnull %opt.0129.i.i, i32 1, i32 3, i32 1) #10
  %147 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %opt.0129.i.i, ptr nonnull %opt.0129.i.i, i32 1, ptr nonnull elementtype(i32) %opt.0129.i.i) #10, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.sw.epilog.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !48

if.end5.i.i.i.i.i.i.sw.epilog.i_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %opt.0129.i.i, i32 noundef 3) #10
  br label %sw.epilog.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !49
  %rcu.i.i.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt.0129.i.i, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #10
  br label %sw.epilog.i

sw.bb397.i:                                       ; preds = %if.end18.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i) #10
  %148 = getelementptr inbounds %struct.in6_pktinfo, ptr %pkt.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %optlen)
  %cmp402.i = icmp ult i32 %optlen, 20
  %brmerge.i = select i1 %cmp402.i, i1 true, i1 %retval.0.i22.i
  %149 = call ptr @memset(ptr %pkt.i, i32 255, i32 20)
  br i1 %brmerge.i, label %sw.bb397.i.cleanup421.thread.i_crit_edge, label %if.end409.i

sw.bb397.i.cleanup421.thread.i_crit_edge:         ; preds = %sw.bb397.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup421.thread.i

if.end409.i:                                      ; preds = %sw.bb397.i
  %call410.i = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %pkt.i, [2 x i32] %optval.coerce, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410.i)
  %tobool411.not.i = icmp eq i32 %call410.i, 0
  br i1 %tobool411.not.i, label %if.end413.i, label %if.end409.i.cleanup421.i_crit_edge

if.end409.i.cleanup421.i_crit_edge:               ; preds = %if.end409.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup421.i

if.end413.i:                                      ; preds = %if.end409.i
  %150 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %148, align 4
  %call414.i = call fastcc zeroext i1 @sk_dev_equal_l3scope(ptr noundef %sk, i32 noundef %151) #10
  br i1 %call414.i, label %if.end416.i, label %if.end413.i.cleanup421.thread.i_crit_edge

if.end413.i.cleanup421.thread.i_crit_edge:        ; preds = %if.end413.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup421.thread.i

if.end416.i:                                      ; preds = %if.end413.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %148, align 4
  %sticky_pktinfo.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 1
  %ipi6_ifindex418.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 1, i32 1
  %154 = ptrtoint ptr %ipi6_ifindex418.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %ipi6_ifindex418.i, align 4
  %155 = call ptr @memcpy(ptr %sticky_pktinfo.i, ptr %pkt.i, i32 16)
  br label %cleanup421.i

cleanup421.thread.i:                              ; preds = %if.end413.i.cleanup421.thread.i_crit_edge, %sw.bb397.i.cleanup421.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #10
  br label %e_inval.i

cleanup421.i:                                     ; preds = %if.end416.i, %if.end409.i.cleanup421.i_crit_edge
  %retv.2.i = phi i32 [ 0, %if.end416.i ], [ -14, %if.end409.i.cleanup421.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #10
  br label %sw.epilog.i

sw.bb423.i:                                       ; preds = %if.end18.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %156 = call ptr @memset(ptr %msg.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ipc6.i) #10
  %157 = call ptr @memset(ptr %ipc6.i, i32 255, i32 32)
  %158 = call ptr @memset(ptr %fl6.i, i32 0, i32 88)
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %159 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %skc_bound_dev_if.i, align 4
  %161 = ptrtoint ptr %fl6.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %fl6.i, align 8
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %162 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %sk_mark.i, align 8
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 2
  %164 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %flowic_mark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %cmp427.i = icmp eq i32 %optlen, 0
  br i1 %cmp427.i, label %sw.bb423.i.done.i_crit_edge, label %if.end430.i

sw.bb423.i.done.i_crit_edge:                      ; preds = %sw.bb423.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

if.end430.i:                                      ; preds = %sw.bb423.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %optlen)
  %cmp431.i = icmp ugt i32 %optlen, 65536
  br i1 %cmp431.i, label %if.end430.i.cleanup457.i_crit_edge, label %if.end434.i

if.end430.i.cleanup457.i_crit_edge:               ; preds = %if.end430.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup457.i

if.end434.i:                                      ; preds = %if.end430.i
  %add.i = add nuw nsw i32 %optlen, 36
  %call435.i = call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %add.i, i32 noundef 3264) #10
  %tobool436.not.i = icmp eq ptr %call435.i, null
  br i1 %tobool436.not.i, label %if.end434.i.cleanup457.i_crit_edge, label %if.end438.i

if.end434.i.cleanup457.i_crit_edge:               ; preds = %if.end434.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup457.i

if.end438.i:                                      ; preds = %if.end434.i
  %165 = call ptr @memset(ptr %call435.i, i32 0, i32 36)
  %call.i.i.i32.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call435.i, i32 noundef 4) #10
  %166 = ptrtoint ptr %call435.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile i32 1, ptr %call435.i, align 4
  %tot_len440.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %call435.i, i32 0, i32 1
  %167 = ptrtoint ptr %tot_len440.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %add.i, ptr %tot_len440.i, align 4
  %add.ptr.i = getelementptr %struct.ipv6_txoptions, ptr %call435.i, i32 1
  %call441.i = call fastcc i32 @copy_from_sockptr(ptr noundef %add.ptr.i, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call441.i)
  %tobool442.not.i = icmp eq i32 %call441.i, 0
  br i1 %tobool442.not.i, label %if.end444.i, label %if.end438.i.if.then453.i_crit_edge

if.end438.i.if.then453.i_crit_edge:               ; preds = %if.end438.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then453.i

if.end444.i:                                      ; preds = %if.end438.i
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 5
  %168 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %optlen, ptr %msg_controllen.i, align 8
  %169 = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 3
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %add.ptr.i, ptr %169, align 8
  %opt446.i = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6.i, i32 0, i32 5
  %171 = ptrtoint ptr %opt446.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call435.i, ptr %opt446.i, align 8
  %call447.i = call i32 @ip6_datagram_send_ctl(ptr noundef %9, ptr noundef %sk, ptr noundef nonnull %msg.i, ptr noundef nonnull %fl6.i, ptr noundef nonnull %ipc6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447.i)
  %tobool448.not.i = icmp eq i32 %call447.i, 0
  br i1 %tobool448.not.i, label %if.end444.i.done.i_crit_edge, label %if.end444.i.if.then453.i_crit_edge

if.end444.i.if.then453.i_crit_edge:               ; preds = %if.end444.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then453.i

if.end444.i.done.i_crit_edge:                     ; preds = %if.end444.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

done.i:                                           ; preds = %if.end444.i.done.i_crit_edge, %sw.bb423.i.done.i_crit_edge
  %opt424.0.i = phi ptr [ null, %sw.bb423.i.done.i_crit_edge ], [ %call435.i, %if.end444.i.done.i_crit_edge ]
  %call451.i = call ptr @ipv6_update_options(ptr noundef %sk, ptr noundef %opt424.0.i) #10
  %tobool452.not.i = icmp eq ptr %call451.i, null
  br i1 %tobool452.not.i, label %done.i.cleanup457.i_crit_edge, label %done.i.if.then453.i_crit_edge

done.i.if.then453.i_crit_edge:                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then453.i

done.i.cleanup457.i_crit_edge:                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup457.i

if.then453.i:                                     ; preds = %done.i.if.then453.i_crit_edge, %if.end444.i.if.then453.i_crit_edge, %if.end438.i.if.then453.i_crit_edge
  %opt424.152.i = phi ptr [ %call451.i, %done.i.if.then453.i_crit_edge ], [ %call435.i, %if.end438.i.if.then453.i_crit_edge ], [ %call435.i, %if.end444.i.if.then453.i_crit_edge ]
  %retv.351.i = phi i32 [ 0, %done.i.if.then453.i_crit_edge ], [ -14, %if.end438.i.if.then453.i_crit_edge ], [ %call447.i, %if.end444.i.if.then453.i_crit_edge ]
  %tot_len454.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt424.152.i, i32 0, i32 1
  %172 = ptrtoint ptr %tot_len454.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tot_len454.i, align 4
  %sk_omem_alloc455.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i20.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc455.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %sk_omem_alloc455.i, i32 1, i32 3, i32 1) #10
  %174 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc455.i, ptr %sk_omem_alloc455.i, i32 %173, ptr elementtype(i32) %sk_omem_alloc455.i) #10, !srcloc !64
  call fastcc void @txopt_put(ptr noundef nonnull %opt424.152.i) #10
  br label %cleanup457.i

cleanup457.i:                                     ; preds = %if.then453.i, %done.i.cleanup457.i_crit_edge, %if.end434.i.cleanup457.i_crit_edge, %if.end430.i.cleanup457.i_crit_edge
  %retv.4.i = phi i32 [ -22, %if.end430.i.cleanup457.i_crit_edge ], [ -105, %if.end434.i.cleanup457.i_crit_edge ], [ %retv.351.i, %if.then453.i ], [ 0, %done.i.cleanup457.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6.i) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  br label %sw.epilog.i

sw.bb461.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp462.i = icmp ult i32 %optlen, 4
  br i1 %cmp462.i, label %sw.bb461.i.e_inval.i_crit_edge, label %if.end465.i

sw.bb461.i.e_inval.i_crit_edge:                   ; preds = %sw.bb461.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end465.i:                                      ; preds = %sw.bb461.i
  %175 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %val.i, align 4
  %177 = add i32 %176, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %177)
  %178 = icmp ult i32 %177, -257
  br i1 %178, label %if.end465.i.e_inval.i_crit_edge, label %if.end472.i

if.end465.i.e_inval.i_crit_edge:                  ; preds = %if.end465.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end472.i:                                      ; preds = %if.end465.i
  call void @__sanitizer_cov_trace_pc() #12
  %hop_limit.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 6
  %179 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %bf.load474.i = load i32, ptr %hop_limit.i, align 4
  %bf.shl476.i = shl nsw i32 %176, 23
  %bf.clear477.i = and i32 %bf.load474.i, 8388607
  %bf.set478.i = or i32 %bf.clear477.i, %bf.shl476.i
  store i32 %bf.set478.i, ptr %hop_limit.i, align 4
  br label %sw.epilog.i

sw.bb480.i:                                       ; preds = %if.end18.i
  %sk_type481.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %180 = ptrtoint ptr %sk_type481.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %sk_type481.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %181)
  %cmp483.i = icmp eq i16 %181, 1
  br i1 %cmp483.i, label %sw.bb480.i.sw.epilog.i_crit_edge, label %if.end486.i

sw.bb480.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb480.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end486.i:                                      ; preds = %sw.bb480.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp487.i = icmp ult i32 %optlen, 4
  br i1 %cmp487.i, label %if.end486.i.e_inval.i_crit_edge, label %if.end490.i

if.end486.i.e_inval.i_crit_edge:                  ; preds = %if.end486.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end490.i:                                      ; preds = %if.end486.i
  %182 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %val.i, align 4
  %184 = add i32 %183, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %184)
  %185 = icmp ult i32 %184, -257
  br i1 %185, label %if.end490.i.e_inval.i_crit_edge, label %if.end497.i

if.end490.i.e_inval.i_crit_edge:                  ; preds = %if.end490.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end497.i:                                      ; preds = %if.end490.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %183)
  %cmp498.i = icmp eq i32 %183, -1
  %phi.bo.i = shl nsw i32 %183, 7
  %phi.bo3.i = and i32 %phi.bo.i, 65408
  %cond.i = select i1 %cmp498.i, i32 128, i32 %phi.bo3.i
  %mcast_hops.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 6
  %186 = ptrtoint ptr %mcast_hops.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %bf.load501.i = load i32, ptr %mcast_hops.i, align 4
  %bf.clear504.i = and i32 %bf.load501.i, -65409
  %bf.set505.i = or i32 %bf.clear504.i, %cond.i
  store i32 %bf.set505.i, ptr %mcast_hops.i, align 4
  br label %sw.epilog.i

sw.bb509.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp510.i = icmp ult i32 %optlen, 4
  br i1 %cmp510.i, label %sw.bb509.i.e_inval.i_crit_edge, label %if.end513.i

sw.bb509.i.e_inval.i_crit_edge:                   ; preds = %sw.bb509.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end513.i:                                      ; preds = %sw.bb509.i
  %187 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %conv.i)
  %cmp514.not.i = icmp eq i32 %188, %conv.i
  br i1 %cmp514.not.i, label %if.end517.i, label %if.end513.i.e_inval.i_crit_edge

if.end513.i.e_inval.i_crit_edge:                  ; preds = %if.end513.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end517.i:                                      ; preds = %if.end513.i
  call void @__sanitizer_cov_trace_pc() #12
  %mc_loop.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 6
  %189 = ptrtoint ptr %mc_loop.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %bf.load519.i = load i32, ptr %mc_loop.i, align 4
  %bf.clear521.i = and i32 %bf.load519.i, -2
  %bf.set522.i = or i32 %bf.clear521.i, %conv.i
  store i32 %bf.set522.i, ptr %mc_loop.i, align 4
  br label %sw.epilog.i

sw.bb524.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp525.not.i = icmp eq i32 %optlen, 4
  br i1 %cmp525.not.i, label %if.end528.i, label %sw.bb524.i.e_inval.i_crit_edge

sw.bb524.i.e_inval.i_crit_edge:                   ; preds = %sw.bb524.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end528.i:                                      ; preds = %sw.bb524.i
  %190 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp529.i = icmp eq i32 %191, 0
  br i1 %cmp529.i, label %if.then531.i, label %if.end532.i

if.then531.i:                                     ; preds = %if.end528.i
  call void @__sanitizer_cov_trace_pc() #12
  %ucast_oif.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 7
  %192 = ptrtoint ptr %ucast_oif.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %ucast_oif.i, align 4
  br label %sw.epilog.i

if.end532.i:                                      ; preds = %if.end528.i
  %call533.i = call ptr @dev_get_by_index(ptr noundef %9, i32 noundef %191) #10
  %tobool534.not.i = icmp eq ptr %call533.i, null
  br i1 %tobool534.not.i, label %if.end532.i.sw.epilog.i_crit_edge, label %if.end536.i

if.end532.i.sw.epilog.i_crit_edge:                ; preds = %if.end532.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end536.i:                                      ; preds = %if.end532.i
  call fastcc void @dev_put(ptr noundef nonnull %call533.i) #10
  %skc_bound_dev_if538.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %193 = ptrtoint ptr %skc_bound_dev_if538.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %skc_bound_dev_if538.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool539.not.i = icmp eq i32 %194, 0
  br i1 %tobool539.not.i, label %if.end541.i, label %if.end536.i.sw.epilog.i_crit_edge

if.end536.i.sw.epilog.i_crit_edge:                ; preds = %if.end536.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end541.i:                                      ; preds = %if.end536.i
  call void @__sanitizer_cov_trace_pc() #12
  %ucast_oif542.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 7
  %195 = ptrtoint ptr %ucast_oif542.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %191, ptr %ucast_oif542.i, align 4
  br label %sw.epilog.i

sw.bb546.i:                                       ; preds = %if.end18.i
  %sk_type547.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %196 = ptrtoint ptr %sk_type547.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %sk_type547.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %197)
  %cmp549.i = icmp eq i16 %197, 1
  br i1 %cmp549.i, label %sw.bb546.i.sw.epilog.i_crit_edge, label %if.end552.i

sw.bb546.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb546.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end552.i:                                      ; preds = %sw.bb546.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp553.i = icmp ult i32 %optlen, 4
  br i1 %cmp553.i, label %if.end552.i.e_inval.i_crit_edge, label %if.end556.i

if.end552.i.e_inval.i_crit_edge:                  ; preds = %if.end552.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end556.i:                                      ; preds = %if.end552.i
  %198 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool557.not.i = icmp eq i32 %199, 0
  br i1 %tobool557.not.i, label %if.end556.i.if.end586.i_crit_edge, label %if.then558.i

if.end556.i.if.end586.i_crit_edge:                ; preds = %if.end556.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end586.i

if.then558.i:                                     ; preds = %if.end556.i
  %200 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %203, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i21.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i21.i, label %if.then558.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then558.i.rcu_read_lock.exit.i_crit_edge:      ; preds = %if.then558.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then558.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then558.i.rcu_read_lock.exit.i_crit_edge
  %204 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %val.i, align 4
  %call560.i = call ptr @dev_get_by_index_rcu(ptr noundef %9, i32 noundef %205) #10
  %tobool561.not.i = icmp eq ptr %call560.i, null
  br i1 %tobool561.not.i, label %cleanup582.thread59.i, label %if.end563.i

cleanup582.thread59.i:                            ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @rcu_read_unlock() #10
  br label %sw.epilog.i

if.end563.i:                                      ; preds = %rcu_read_lock.exit.i
  %call564.i = call i32 @l3mdev_master_ifindex_rcu(ptr noundef nonnull %call560.i) #10
  call fastcc void @rcu_read_unlock() #10
  %skc_bound_dev_if566.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %206 = ptrtoint ptr %skc_bound_dev_if566.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %skc_bound_dev_if566.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool567.not.i = icmp eq i32 %207, 0
  br i1 %tobool567.not.i, label %if.end563.i.if.end586.i_crit_edge, label %land.lhs.true568.i

if.end563.i.if.end586.i_crit_edge:                ; preds = %if.end563.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end586.i

land.lhs.true568.i:                               ; preds = %if.end563.i
  %208 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %209)
  %cmp571.not.i = icmp eq i32 %207, %209
  br i1 %cmp571.not.i, label %land.lhs.true568.i.if.end586.i_crit_edge, label %land.lhs.true573.i

land.lhs.true568.i.if.end586.i_crit_edge:         ; preds = %land.lhs.true568.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end586.i

land.lhs.true573.i:                               ; preds = %land.lhs.true568.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call564.i)
  %tobool574.not.i = icmp ne i32 %call564.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call564.i, i32 %207)
  %cmp578.not.i = icmp eq i32 %call564.i, %207
  %or.cond9.i = select i1 %tobool574.not.i, i1 %cmp578.not.i, i1 false
  br i1 %or.cond9.i, label %land.lhs.true573.i.if.end586.i_crit_edge, label %land.lhs.true573.i.e_inval.i_crit_edge

land.lhs.true573.i.e_inval.i_crit_edge:           ; preds = %land.lhs.true573.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

land.lhs.true573.i.if.end586.i_crit_edge:         ; preds = %land.lhs.true573.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end586.i

if.end586.i:                                      ; preds = %land.lhs.true573.i.if.end586.i_crit_edge, %land.lhs.true568.i.if.end586.i_crit_edge, %if.end563.i.if.end586.i_crit_edge, %if.end556.i.if.end586.i_crit_edge
  %210 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %val.i, align 4
  %mcast_oif.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 8
  %212 = ptrtoint ptr %mcast_oif.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %mcast_oif.i, align 4
  br label %sw.epilog.i

sw.bb587.i:                                       ; preds = %if.end18.i.sw.bb587.i_crit_edge, %if.end18.i.sw.bb587.i_crit_edge64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mreq.i) #10
  %213 = getelementptr inbounds %struct.ipv6_mreq, ptr %mreq.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %optlen)
  %cmp588.i = icmp ult i32 %optlen, 20
  %214 = call ptr @memset(ptr %mreq.i, i32 255, i32 20)
  br i1 %cmp588.i, label %cleanup612.i, label %if.end591.i

if.end591.i:                                      ; preds = %sw.bb587.i
  %is_icsk.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %215 = ptrtoint ptr %is_icsk.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %bf.load593.i = load i16, ptr %is_icsk.i, align 8
  %216 = and i16 %bf.load593.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %tobool596.not.i = icmp eq i16 %216, 0
  br i1 %tobool596.not.i, label %if.end598.i, label %if.end591.i.cleanup612.thread.i_crit_edge

if.end591.i.cleanup612.thread.i_crit_edge:        ; preds = %if.end591.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup612.thread.i

if.end598.i:                                      ; preds = %if.end591.i
  %call599.i = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %mreq.i, [2 x i32] %optval.coerce, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call599.i)
  %tobool600.not.i = icmp eq i32 %call599.i, 0
  br i1 %tobool600.not.i, label %if.end602.i, label %if.end598.i.cleanup612.thread.i_crit_edge

if.end598.i.cleanup612.thread.i_crit_edge:        ; preds = %if.end598.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup612.thread.i

if.end602.i:                                      ; preds = %if.end598.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %optname)
  %cmp603.i = icmp eq i32 %optname, 20
  %217 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %213, align 4
  br i1 %cmp603.i, label %if.then605.i, label %if.else607.i

if.then605.i:                                     ; preds = %if.end602.i
  call void @__sanitizer_cov_trace_pc() #12
  %call606.i = call i32 @ipv6_sock_mc_join(ptr noundef %sk, i32 noundef %218, ptr noundef nonnull %mreq.i) #10
  br label %cleanup612.thread.i

if.else607.i:                                     ; preds = %if.end602.i
  call void @__sanitizer_cov_trace_pc() #12
  %call610.i = call i32 @ipv6_sock_mc_drop(ptr noundef %sk, i32 noundef %218, ptr noundef nonnull %mreq.i) #10
  br label %cleanup612.thread.i

cleanup612.thread.i:                              ; preds = %if.else607.i, %if.then605.i, %if.end598.i.cleanup612.thread.i_crit_edge, %if.end591.i.cleanup612.thread.i_crit_edge
  %retv.8.ph.i = phi i32 [ %call610.i, %if.else607.i ], [ %call606.i, %if.then605.i ], [ -14, %if.end598.i.cleanup612.thread.i_crit_edge ], [ -71, %if.end591.i.cleanup612.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mreq.i) #10
  br label %sw.epilog.i

cleanup612.i:                                     ; preds = %sw.bb587.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mreq.i) #10
  br label %e_inval.i

sw.bb614.i:                                       ; preds = %if.end18.i.sw.bb614.i_crit_edge, %if.end18.i.sw.bb614.i_crit_edge65
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mreq615.i) #10
  %219 = getelementptr inbounds %struct.ipv6_mreq, ptr %mreq615.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %optlen)
  %cmp616.i = icmp ult i32 %optlen, 20
  %220 = call ptr @memset(ptr %mreq615.i, i32 255, i32 20)
  br i1 %cmp616.i, label %cleanup635.i, label %if.end619.i

if.end619.i:                                      ; preds = %sw.bb614.i
  %call620.i = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %mreq615.i, [2 x i32] %optval.coerce, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call620.i)
  %tobool621.not.i = icmp eq i32 %call620.i, 0
  br i1 %tobool621.not.i, label %if.end623.i, label %if.end619.i.cleanup635.thread.i_crit_edge

if.end619.i.cleanup635.thread.i_crit_edge:        ; preds = %if.end619.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup635.thread.i

if.end623.i:                                      ; preds = %if.end619.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %optname)
  %cmp624.i = icmp eq i32 %optname, 27
  %221 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %219, align 4
  br i1 %cmp624.i, label %if.then626.i, label %if.else630.i

if.then626.i:                                     ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #12
  %call629.i = call i32 @ipv6_sock_ac_join(ptr noundef %sk, i32 noundef %222, ptr noundef nonnull %mreq615.i) #10
  br label %cleanup635.thread.i

if.else630.i:                                     ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #12
  %call633.i = call i32 @ipv6_sock_ac_drop(ptr noundef %sk, i32 noundef %222, ptr noundef nonnull %mreq615.i) #10
  br label %cleanup635.thread.i

cleanup635.thread.i:                              ; preds = %if.else630.i, %if.then626.i, %if.end619.i.cleanup635.thread.i_crit_edge
  %retv.10.ph.i = phi i32 [ %call633.i, %if.else630.i ], [ %call629.i, %if.then626.i ], [ -14, %if.end619.i.cleanup635.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mreq615.i) #10
  br label %sw.epilog.i

cleanup635.i:                                     ; preds = %sw.bb614.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mreq615.i) #10
  br label %e_inval.i

sw.bb637.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp638.i = icmp ult i32 %optlen, 4
  br i1 %cmp638.i, label %sw.bb637.i.e_inval.i_crit_edge, label %if.end641.i

sw.bb637.i.e_inval.i_crit_edge:                   ; preds = %sw.bb637.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end641.i:                                      ; preds = %sw.bb637.i
  call void @__sanitizer_cov_trace_pc() #12
  %mc_all.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %223 = ptrtoint ptr %mc_all.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %bf.load643.i = load i16, ptr %mc_all.i, align 2
  %bf.shl645.i = select i1 %cmp10.i, i16 4, i16 0
  %bf.clear646.i = and i16 %bf.load643.i, -5
  %bf.set647.i = or i16 %bf.clear646.i, %bf.shl645.i
  store i16 %bf.set647.i, ptr %mc_all.i, align 2
  br label %sw.epilog.i

sw.bb648.i:                                       ; preds = %if.end18.i.sw.bb648.i_crit_edge, %if.end18.i.sw.bb648.i_crit_edge66
  %call653.i = call fastcc i32 @ipv6_mcast_join_leave(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  br label %sw.epilog.i

sw.bb655.i:                                       ; preds = %if.end18.i.sw.bb655.i_crit_edge, %if.end18.i.sw.bb655.i_crit_edge67, %if.end18.i.sw.bb655.i_crit_edge68, %if.end18.i.sw.bb655.i_crit_edge69
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %greqs.i.i) #10
  %224 = call ptr @memset(ptr %greqs.i.i, i32 255, i32 260)
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %optlen)
  %cmp8.i.i.i = icmp ult i32 %optlen, 260
  br i1 %cmp8.i.i.i, label %sw.bb655.i.do_ipv6_mcast_group_source.exit.i_crit_edge, label %if.end10.i.i.i

sw.bb655.i.do_ipv6_mcast_group_source.exit.i_crit_edge: ; preds = %sw.bb655.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_mcast_group_source.exit.i

if.end10.i.i.i:                                   ; preds = %sw.bb655.i
  %225 = inttoptr i32 %sockptr.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i.i.i)
  %bf.cast.i.i.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i.i.i, label %if.end.i.i.i.i35.i, label %if.end8.i.i.i.i.i.i.i

if.end8.i.i.i.i.i.i.i:                            ; preds = %if.end10.i.i.i
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i.i.i.i, label %if.end8.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i.i

if.end8.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end8.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.i:                      ; preds = %if.end8.i.i.i.i.i.i.i
  %226 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %225, i32 260, i32 -1226833920) #14, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %226, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i6.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %land.lhs.true.i.i.i.i.i.i.i
  %call.i.i.i.i.i.i.i33.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %greqs.i.i, i32 noundef 260) #10
  %227 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i.i.i.i.i.i = and i32 %227, -16384
  %228 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %228, i32 0, i32 4
  %229 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i.i.i) #7, !srcloc !59
  %and.i.i.i.i.i.i.i.i34.i = and i32 %229, -13
  %or.i.i.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i.i34.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i.i.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %call1.i.i.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %greqs.i.i, ptr noundef %225, i32 noundef 260) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %229) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.if.end.i37.i_crit_edge, label %if.end.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge, !prof !48

if.end.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.if.end.i37.i_crit_edge:      ; preds = %if.end.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i37.i

if.then11.i.i.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i30.i.i.i = phi i32 [ %call1.i.i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge ], [ 260, %if.end8.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge ], [ 260, %land.lhs.true.i.i.i.i.i.i.i.if.then11.i.i.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i.i.i = sub i32 260, %res.0.i.i.i.i30.i.i.i
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %greqs.i.i, i32 %sub.i.i.i.i.i.i.i
  %230 = call ptr @memset(ptr %add.ptr.i.i.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i30.i.i.i)
  br label %do_ipv6_mcast_group_source.exit.i

if.end.i.i.i.i35.i:                               ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %231 = call ptr @memcpy(ptr %greqs.i.i, ptr %225, i32 260)
  br label %if.end.i37.i

if.end.i37.i:                                     ; preds = %if.end.i.i.i.i35.i, %if.end.i.i.i.i.i.i.i.if.end.i37.i_crit_edge
  %gsr_group.i.i = getelementptr inbounds %struct.group_source_req, ptr %greqs.i.i, i32 0, i32 1
  %232 = ptrtoint ptr %gsr_group.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %gsr_group.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %233)
  %cmp.not.i36.i = icmp eq i16 %233, 10
  br i1 %cmp.not.i36.i, label %lor.lhs.false.i.i, label %if.end.i37.i.do_ipv6_mcast_group_source.exit.i_crit_edge

if.end.i37.i.do_ipv6_mcast_group_source.exit.i_crit_edge: ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_mcast_group_source.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i37.i
  %gsr_source.i.i = getelementptr inbounds %struct.group_source_req, ptr %greqs.i.i, i32 0, i32 2
  %234 = ptrtoint ptr %gsr_source.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %gsr_source.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %235)
  %cmp4.not.i.i = icmp eq i16 %235, 10
  br i1 %cmp4.not.i.i, label %if.end7.i38.i, label %lor.lhs.false.i.i.do_ipv6_mcast_group_source.exit.i_crit_edge

lor.lhs.false.i.i.do_ipv6_mcast_group_source.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_mcast_group_source.exit.i

if.end7.i38.i:                                    ; preds = %lor.lhs.false.i.i
  %236 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %optname, label %if.else26.i.i [
    i32 43, label %if.end7.i38.i.if.end29.i.i_crit_edge
    i32 44, label %if.then13.i.i
    i32 46, label %if.then17.i.i
  ]

if.end7.i38.i.if.end29.i.i_crit_edge:             ; preds = %if.end7.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.then13.i.i:                                    ; preds = %if.end7.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.then17.i.i:                                    ; preds = %if.end7.i38.i
  %237 = ptrtoint ptr %greqs.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %greqs.i.i, align 4
  %sin6_addr.i.i = getelementptr inbounds %struct.group_source_req, ptr %greqs.i.i, i32 0, i32 1, i32 0, i32 1, i32 4
  %call19.i.i = call i32 @ipv6_sock_mc_join_ssm(ptr noundef %sk, i32 noundef %238, ptr noundef %sin6_addr.i.i, i32 noundef 1) #10
  %239 = zext i32 %call19.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call19.i.i, label %if.then17.i.i.do_ipv6_mcast_group_source.exit.i_crit_edge [
    i32 0, label %if.then17.i.i.if.end29.i.i_crit_edge
    i32 -98, label %if.then17.i.i.if.end29.i.i_crit_edge72
  ]

if.then17.i.i.if.end29.i.i_crit_edge72:           ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.then17.i.i.if.end29.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.then17.i.i.do_ipv6_mcast_group_source.exit.i_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_mcast_group_source.exit.i

if.else26.i.i:                                    ; preds = %if.end7.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.else26.i.i, %if.then17.i.i.if.end29.i.i_crit_edge, %if.then17.i.i.if.end29.i.i_crit_edge72, %if.then13.i.i, %if.end7.i38.i.if.end29.i.i_crit_edge
  %omode.1.i.i = phi i32 [ 0, %if.then13.i.i ], [ 1, %if.else26.i.i ], [ 0, %if.end7.i38.i.if.end29.i.i_crit_edge ], [ 1, %if.then17.i.i.if.end29.i.i_crit_edge ], [ 1, %if.then17.i.i.if.end29.i.i_crit_edge72 ]
  %add.1.i.i = phi i32 [ 0, %if.then13.i.i ], [ 0, %if.else26.i.i ], [ 1, %if.end7.i38.i.if.end29.i.i_crit_edge ], [ 1, %if.then17.i.i.if.end29.i.i_crit_edge ], [ 1, %if.then17.i.i.if.end29.i.i_crit_edge72 ]
  %call30.i.i = call i32 @ip6_mc_source(i32 noundef %add.1.i.i, i32 noundef %omode.1.i.i, ptr noundef %sk, ptr noundef nonnull %greqs.i.i) #10
  br label %do_ipv6_mcast_group_source.exit.i

do_ipv6_mcast_group_source.exit.i:                ; preds = %if.end29.i.i, %if.then17.i.i.do_ipv6_mcast_group_source.exit.i_crit_edge, %lor.lhs.false.i.i.do_ipv6_mcast_group_source.exit.i_crit_edge, %if.end.i37.i.do_ipv6_mcast_group_source.exit.i_crit_edge, %if.then11.i.i.i.i.i.i.i, %sw.bb655.i.do_ipv6_mcast_group_source.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ %call30.i.i, %if.end29.i.i ], [ -99, %lor.lhs.false.i.i.do_ipv6_mcast_group_source.exit.i_crit_edge ], [ -99, %if.end.i37.i.do_ipv6_mcast_group_source.exit.i_crit_edge ], [ %call19.i.i, %if.then17.i.i.do_ipv6_mcast_group_source.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i.i.i.i ], [ -22, %sw.bb655.i.do_ipv6_mcast_group_source.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %greqs.i.i) #10
  br label %sw.epilog.i

sw.bb657.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call662.i = call fastcc i32 @ipv6_set_mcast_msfilter(ptr noundef %sk, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  br label %sw.epilog.i

sw.bb664.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp665.i = icmp ult i32 %optlen, 4
  br i1 %cmp665.i, label %sw.bb664.i.e_inval.i_crit_edge, label %if.end668.i

sw.bb664.i.e_inval.i_crit_edge:                   ; preds = %sw.bb664.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end668.i:                                      ; preds = %sw.bb664.i
  call void @__sanitizer_cov_trace_pc() #12
  %240 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %val.i, align 4
  %call669.i = call i32 @ip6_ra_control(ptr noundef %sk, i32 noundef %241) #10
  br label %sw.epilog.i

sw.bb670.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp671.i = icmp ult i32 %optlen, 4
  br i1 %cmp671.i, label %sw.bb670.i.e_inval.i_crit_edge, label %if.end674.i

sw.bb670.i.e_inval.i_crit_edge:                   ; preds = %sw.bb670.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end674.i:                                      ; preds = %sw.bb670.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv675.i = zext i1 %cmp10.i to i16
  %rtalert_isolate.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %242 = ptrtoint ptr %rtalert_isolate.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %bf.load676.i = load i16, ptr %rtalert_isolate.i, align 2
  %bf.clear678.i = and i16 %bf.load676.i, -2
  %bf.set679.i = or i16 %bf.clear678.i, %conv675.i
  store i16 %bf.set679.i, ptr %rtalert_isolate.i, align 2
  br label %sw.epilog.i

sw.bb680.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp681.i = icmp ult i32 %optlen, 4
  br i1 %cmp681.i, label %sw.bb680.i.e_inval.i_crit_edge, label %if.end684.i

sw.bb680.i.e_inval.i_crit_edge:                   ; preds = %sw.bb680.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end684.i:                                      ; preds = %sw.bb680.i
  %243 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %244)
  %245 = icmp ugt i32 %244, 5
  br i1 %245, label %if.end684.i.e_inval.i_crit_edge, label %if.end691.i

if.end684.i.e_inval.i_crit_edge:                  ; preds = %if.end684.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end691.i:                                      ; preds = %if.end684.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv692.i = trunc i32 %244 to i16
  %pmtudisc.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %246 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %bf.load693.i = load i16, ptr %pmtudisc.i, align 2
  %bf.value694.i = shl nuw nsw i16 %conv692.i, 10
  %bf.shl695.i = and i16 %bf.value694.i, 7168
  %bf.clear696.i = and i16 %bf.load693.i, -7169
  %bf.set697.i = or i16 %bf.clear696.i, %bf.shl695.i
  store i16 %bf.set697.i, ptr %pmtudisc.i, align 2
  br label %sw.epilog.i

sw.bb698.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp699.i = icmp ult i32 %optlen, 4
  br i1 %cmp699.i, label %sw.bb698.i.e_inval.i_crit_edge, label %if.end702.i

sw.bb698.i.e_inval.i_crit_edge:                   ; preds = %sw.bb698.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end702.i:                                      ; preds = %sw.bb698.i
  %247 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool703.not.i = icmp ne i32 %248, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %248)
  %cmp705.i = icmp slt i32 %248, 1280
  %or.cond15.i = and i1 %tobool703.not.i, %cmp705.i
  br i1 %or.cond15.i, label %if.end702.i.e_inval.i_crit_edge, label %if.end708.i

if.end702.i.e_inval.i_crit_edge:                  ; preds = %if.end702.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end708.i:                                      ; preds = %if.end702.i
  call void @__sanitizer_cov_trace_pc() #12
  %frag_size.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 5
  %249 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %frag_size.i, align 4
  br label %sw.epilog.i

sw.bb709.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp710.i = icmp ult i32 %optlen, 4
  br i1 %cmp710.i, label %sw.bb709.i.e_inval.i_crit_edge, label %if.end713.i

sw.bb709.i.e_inval.i_crit_edge:                   ; preds = %sw.bb709.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end713.i:                                      ; preds = %sw.bb709.i
  %recverr.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %250 = ptrtoint ptr %recverr.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %bf.load715.i = load i16, ptr %recverr.i, align 2
  %bf.shl717.i = select i1 %cmp10.i, i16 -32768, i16 0
  %bf.clear718.i = and i16 %bf.load715.i, 32767
  %bf.set719.i = or i16 %bf.clear718.i, %bf.shl717.i
  store i16 %bf.set719.i, ptr %recverr.i, align 2
  %251 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool720.not.i = icmp eq i32 %252, 0
  br i1 %tobool720.not.i, label %if.then721.i, label %if.end713.i.sw.epilog.i_crit_edge

if.end713.i.sw.epilog.i_crit_edge:                ; preds = %if.end713.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then721.i:                                     ; preds = %if.end713.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_error_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 7
  call void @skb_queue_purge(ptr noundef %sk_error_queue.i) #10
  br label %sw.epilog.i

sw.bb723.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp724.i = icmp ult i32 %optlen, 4
  br i1 %cmp724.i, label %sw.bb723.i.e_inval.i_crit_edge, label %if.end727.i

sw.bb723.i.e_inval.i_crit_edge:                   ; preds = %sw.bb723.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end727.i:                                      ; preds = %sw.bb723.i
  call void @__sanitizer_cov_trace_pc() #12
  %sndflow.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %253 = ptrtoint ptr %sndflow.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %bf.load729.i = load i16, ptr %sndflow.i, align 2
  %bf.shl731.i = select i1 %cmp10.i, i16 16384, i16 0
  %bf.clear732.i = and i16 %bf.load729.i, -16385
  %bf.set733.i = or i16 %bf.clear732.i, %bf.shl731.i
  store i16 %bf.set733.i, ptr %sndflow.i, align 2
  br label %sw.epilog.i

sw.bb734.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call735.i = call i32 @ipv6_flowlabel_opt(ptr noundef %sk, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  br label %sw.epilog.i

sw.bb736.i:                                       ; preds = %if.end18.i.sw.bb736.i_crit_edge, %if.end18.i.sw.bb736.i_crit_edge70
  %user_ns737.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 11
  %254 = ptrtoint ptr %user_ns737.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %user_ns737.i, align 4
  %call738.i = call zeroext i1 @ns_capable(ptr noundef %255, i32 noundef 12) #10
  br i1 %call738.i, label %if.end740.i, label %sw.bb736.i.sw.epilog.i_crit_edge

sw.bb736.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb736.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end740.i:                                      ; preds = %sw.bb736.i
  call void @__sanitizer_cov_trace_pc() #12
  %call741.i = call i32 @xfrm_user_policy(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  br label %sw.epilog.i

sw.bb742.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp743.i = icmp ult i32 %optlen, 4
  br i1 %cmp743.i, label %sw.bb742.i.e_inval.i_crit_edge, label %if.end746.i

sw.bb742.i.e_inval.i_crit_edge:                   ; preds = %sw.bb742.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end746.i:                                      ; preds = %sw.bb742.i
  call void @__sanitizer_cov_trace_pc() #12
  %256 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %val.i, align 4
  %call747.i = call fastcc i32 @__ip6_sock_set_addr_preferences(ptr noundef %sk, i32 noundef %257) #10
  br label %sw.epilog.i

sw.bb748.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp749.i = icmp ult i32 %optlen, 4
  br i1 %cmp749.i, label %sw.bb748.i.e_inval.i_crit_edge, label %if.end752.i

sw.bb748.i.e_inval.i_crit_edge:                   ; preds = %sw.bb748.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end752.i:                                      ; preds = %sw.bb748.i
  %258 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %259)
  %260 = icmp ugt i32 %259, 255
  br i1 %260, label %if.end752.i.e_inval.i_crit_edge, label %if.end759.i

if.end752.i.e_inval.i_crit_edge:                  ; preds = %if.end752.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end759.i:                                      ; preds = %if.end752.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool760.not.i = icmp eq i32 %259, 0
  br i1 %tobool760.not.i, label %if.end759.i.do.body767.i_crit_edge, label %if.then761.i

if.end759.i.do.body767.i_crit_edge:               ; preds = %if.end759.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body767.i

if.then761.i:                                     ; preds = %if.end759.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @static_key_enable(ptr noundef nonnull @ip6_min_hopcount) #10
  br label %do.body767.i

do.body767.i:                                     ; preds = %if.then761.i, %if.end759.i.do.body767.i_crit_edge
  %261 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %val.i, align 4
  %conv768.i = trunc i32 %262 to i8
  %min_hopcount.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 11
  %263 = ptrtoint ptr %min_hopcount.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store volatile i8 %conv768.i, ptr %min_hopcount.i, align 4
  br label %sw.epilog.i

sw.bb773.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %dontfrag.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %264 = ptrtoint ptr %dontfrag.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %bf.load775.i = load i16, ptr %dontfrag.i, align 2
  %bf.shl777.i = select i1 %cmp10.i, i16 32, i16 0
  %bf.clear778.i = and i16 %bf.load775.i, -33
  %bf.set779.i = or i16 %bf.clear778.i, %bf.shl777.i
  store i16 %bf.set779.i, ptr %dontfrag.i, align 2
  br label %sw.epilog.i

sw.bb780.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %autoflowlabel.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %265 = ptrtoint ptr %autoflowlabel.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %bf.load782.i = load i16, ptr %autoflowlabel.i, align 2
  %bf.clear785.i = and i16 %bf.load782.i, -25
  %bf.set786.i = select i1 %cmp10.i, i16 24, i16 8
  %bf.set789.i = or i16 %bf.clear785.i, %bf.set786.i
  store i16 %bf.set789.i, ptr %autoflowlabel.i, align 2
  br label %sw.epilog.i

sw.bb790.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt792.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %266 = ptrtoint ptr %rxopt792.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %bf.load793.i = load i16, ptr %rxopt792.i, align 4
  %bf.shl795.i = select i1 %cmp10.i, i16 2, i16 0
  %bf.clear796.i = and i16 %bf.load793.i, -3
  %bf.set797.i = or i16 %bf.clear796.i, %bf.shl795.i
  store i16 %bf.set797.i, ptr %rxopt792.i, align 4
  br label %sw.epilog.i

sw.bb798.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp799.i = icmp ult i32 %optlen, 4
  br i1 %cmp799.i, label %sw.bb798.i.e_inval.i_crit_edge, label %if.end802.i

sw.bb798.i.e_inval.i_crit_edge:                   ; preds = %sw.bb798.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end802.i:                                      ; preds = %sw.bb798.i
  %267 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %268)
  %269 = icmp ugt i32 %268, 1
  br i1 %269, label %if.end802.i.e_inval.i_crit_edge, label %if.end809.i

if.end802.i.e_inval.i_crit_edge:                  ; preds = %if.end802.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %e_inval.i

if.end809.i:                                      ; preds = %if.end802.i
  call void @__sanitizer_cov_trace_pc() #12
  %recverr_rfc4884.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %270 = ptrtoint ptr %recverr_rfc4884.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %bf.load811.i = load i16, ptr %recverr_rfc4884.i, align 2
  %bf.shl813.i = select i1 %cmp10.i, i16 2, i16 0
  %bf.clear814.i = and i16 %bf.load811.i, -3
  %bf.set815.i = or i16 %bf.clear814.i, %bf.shl813.i
  store i16 %bf.set815.i, ptr %recverr_rfc4884.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end809.i, %sw.bb790.i, %sw.bb780.i, %sw.bb773.i, %do.body767.i, %if.end746.i, %if.end740.i, %sw.bb736.i.sw.epilog.i_crit_edge, %sw.bb734.i, %if.end727.i, %if.then721.i, %if.end713.i.sw.epilog.i_crit_edge, %if.end708.i, %if.end691.i, %if.end674.i, %if.end668.i, %sw.bb657.i, %do_ipv6_mcast_group_source.exit.i, %sw.bb648.i, %if.end641.i, %cleanup635.thread.i, %cleanup612.thread.i, %if.end586.i, %cleanup582.thread59.i, %sw.bb546.i.sw.epilog.i_crit_edge, %if.end541.i, %if.end536.i.sw.epilog.i_crit_edge, %if.end532.i.sw.epilog.i_crit_edge, %if.then531.i, %if.end517.i, %if.end497.i, %sw.bb480.i.sw.epilog.i_crit_edge, %if.end472.i, %cleanup457.i, %cleanup421.i, %do.end.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.sw.epilog.i_crit_edge, %sticky_done.i.i.sw.epilog.i_crit_edge, %if.then36.i.i, %if.then22.i.i, %if.then15.i.i, %if.end7.i.i.sw.epilog.i_crit_edge, %if.then4.i.i.sw.epilog.i_crit_edge, %land.lhs.true.i24.i.sw.epilog.i_crit_edge, %if.end387.i, %if.end374.i, %if.end362.i, %land.lhs.true354.i.sw.epilog.i_crit_edge, %if.end343.i, %if.end331.i, %if.end319.i, %if.then311.i, %if.end306.i.sw.epilog.i_crit_edge, %if.end275.i, %if.end263.i, %if.end251.i, %if.end239.i, %if.end227.i, %if.end215.i, %if.end203.i, %if.end191.i, %if.end179.i, %if.end168.i, %if.end158.i, %if.end120.i, %lor.lhs.false66.i.sw.epilog.i_crit_edge, %if.end62.i.sw.epilog.i_crit_edge, %if.end56.i.sw.epilog.i_crit_edge, %if.then49.i.sw.epilog.i_crit_edge, %if.then38.i.sw.epilog.i_crit_edge, %if.end30.i.sw.epilog.i_crit_edge, %if.then25.i.sw.epilog.i_crit_edge, %if.end18.i.sw.epilog.i_crit_edge
  %retv.11.i = phi i32 [ -92, %if.end18.i.sw.epilog.i_crit_edge ], [ 0, %if.end809.i ], [ 0, %sw.bb790.i ], [ 0, %sw.bb780.i ], [ 0, %sw.bb773.i ], [ 0, %do.body767.i ], [ %call747.i, %if.end746.i ], [ %call741.i, %if.end740.i ], [ -1, %sw.bb736.i.sw.epilog.i_crit_edge ], [ %call735.i, %sw.bb734.i ], [ 0, %if.end727.i ], [ 0, %if.end708.i ], [ 0, %if.end691.i ], [ 0, %if.end674.i ], [ %call669.i, %if.end668.i ], [ %call662.i, %sw.bb657.i ], [ %retval.1.i.i, %do_ipv6_mcast_group_source.exit.i ], [ %call653.i, %sw.bb648.i ], [ 0, %if.end641.i ], [ -92, %sw.bb546.i.sw.epilog.i_crit_edge ], [ 0, %if.end586.i ], [ 0, %if.end517.i ], [ -92, %sw.bb480.i.sw.epilog.i_crit_edge ], [ 0, %if.end497.i ], [ 0, %if.end472.i ], [ %retv.4.i, %cleanup457.i ], [ %retv.2.i, %cleanup421.i ], [ 0, %if.end387.i ], [ 0, %if.end374.i ], [ 0, %if.end362.i ], [ 0, %if.end343.i ], [ 0, %if.end331.i ], [ 0, %if.end319.i ], [ 0, %if.end275.i ], [ 0, %if.end263.i ], [ 0, %if.end251.i ], [ 0, %if.end239.i ], [ 0, %if.end227.i ], [ 0, %if.end215.i ], [ 0, %if.end203.i ], [ 0, %if.end191.i ], [ 0, %if.end179.i ], [ 0, %if.end168.i ], [ 0, %if.end158.i ], [ 0, %if.end120.i ], [ -16, %if.then38.i.sw.epilog.i_crit_edge ], [ -92, %if.then25.i.sw.epilog.i_crit_edge ], [ -16, %if.then49.i.sw.epilog.i_crit_edge ], [ -92, %if.end30.i.sw.epilog.i_crit_edge ], [ -107, %if.end56.i.sw.epilog.i_crit_edge ], [ -99, %lor.lhs.false66.i.sw.epilog.i_crit_edge ], [ -99, %if.end62.i.sw.epilog.i_crit_edge ], [ 0, %if.then311.i ], [ 0, %if.end306.i.sw.epilog.i_crit_edge ], [ -1, %land.lhs.true354.i.sw.epilog.i_crit_edge ], [ 0, %if.then721.i ], [ 0, %if.end713.i.sw.epilog.i_crit_edge ], [ %129, %if.then15.i.i ], [ -22, %if.then22.i.i ], [ %134, %if.then36.i.i ], [ -1, %land.lhs.true.i24.i.sw.epilog.i_crit_edge ], [ -22, %if.then4.i.i.sw.epilog.i_crit_edge ], [ -22, %if.end7.i.i.sw.epilog.i_crit_edge ], [ 0, %sticky_done.i.i.sw.epilog.i_crit_edge ], [ %err.0130.i.i, %if.end5.i.i.i.i.i.i.sw.epilog.i_crit_edge ], [ %err.0130.i.i, %if.then10.i.i.i.i.i.i ], [ %err.0130.i.i, %do.end.i.i.i ], [ -19, %cleanup582.thread59.i ], [ %retv.8.ph.i, %cleanup612.thread.i ], [ %retv.10.ph.i, %cleanup635.thread.i ], [ -22, %if.end536.i.sw.epilog.i_crit_edge ], [ -99, %if.end532.i.sw.epilog.i_crit_edge ], [ 0, %if.end541.i ], [ 0, %if.then531.i ]
  call void @release_sock(ptr noundef %sk) #10
  br i1 %retval.0.i.i, label %if.then817.i, label %sw.epilog.i.do_ipv6_setsockopt.exit_crit_edge

sw.epilog.i.do_ipv6_setsockopt.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_setsockopt.exit

if.then817.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtnl_unlock() #10
  br label %do_ipv6_setsockopt.exit

e_inval.i:                                        ; preds = %if.end802.i.e_inval.i_crit_edge, %sw.bb798.i.e_inval.i_crit_edge, %if.end752.i.e_inval.i_crit_edge, %sw.bb748.i.e_inval.i_crit_edge, %sw.bb742.i.e_inval.i_crit_edge, %sw.bb723.i.e_inval.i_crit_edge, %sw.bb709.i.e_inval.i_crit_edge, %if.end702.i.e_inval.i_crit_edge, %sw.bb698.i.e_inval.i_crit_edge, %if.end684.i.e_inval.i_crit_edge, %sw.bb680.i.e_inval.i_crit_edge, %sw.bb670.i.e_inval.i_crit_edge, %sw.bb664.i.e_inval.i_crit_edge, %sw.bb637.i.e_inval.i_crit_edge, %cleanup635.i, %cleanup612.i, %land.lhs.true573.i.e_inval.i_crit_edge, %if.end552.i.e_inval.i_crit_edge, %sw.bb524.i.e_inval.i_crit_edge, %if.end513.i.e_inval.i_crit_edge, %sw.bb509.i.e_inval.i_crit_edge, %if.end490.i.e_inval.i_crit_edge, %if.end486.i.e_inval.i_crit_edge, %if.end465.i.e_inval.i_crit_edge, %sw.bb461.i.e_inval.i_crit_edge, %cleanup421.thread.i, %sw.bb383.i.e_inval.i_crit_edge, %sw.bb370.i.e_inval.i_crit_edge, %if.end358.i.e_inval.i_crit_edge, %sw.bb339.i.e_inval.i_crit_edge, %sw.bb327.i.e_inval.i_crit_edge, %sw.bb315.i.e_inval.i_crit_edge, %if.end287.i.e_inval.i_crit_edge, %sw.bb283.i.e_inval.i_crit_edge, %sw.bb271.i.e_inval.i_crit_edge, %sw.bb259.i.e_inval.i_crit_edge, %sw.bb247.i.e_inval.i_crit_edge, %sw.bb235.i.e_inval.i_crit_edge, %sw.bb223.i.e_inval.i_crit_edge, %sw.bb211.i.e_inval.i_crit_edge, %sw.bb199.i.e_inval.i_crit_edge, %sw.bb187.i.e_inval.i_crit_edge, %sw.bb175.i.e_inval.i_crit_edge, %sw.bb164.i.e_inval.i_crit_edge, %lor.lhs.false151.i.e_inval.i_crit_edge, %sw.bb148.i.e_inval.i_crit_edge, %if.end22.i.e_inval.i_crit_edge, %sw.bb.i.e_inval.i_crit_edge
  call void @release_sock(ptr noundef %sk) #10
  br i1 %retval.0.i.i, label %if.then820.i, label %e_inval.i.do_ipv6_setsockopt.exit.thread_crit_edge

e_inval.i.do_ipv6_setsockopt.exit.thread_crit_edge: ; preds = %e_inval.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_setsockopt.exit.thread

if.then820.i:                                     ; preds = %e_inval.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtnl_unlock() #10
  br label %do_ipv6_setsockopt.exit.thread

do_ipv6_setsockopt.exit.thread:                   ; preds = %if.then820.i, %e_inval.i.do_ipv6_setsockopt.exit.thread_crit_edge, %if.then11.i.i.i.i.i
  %retval.0.i.ph = phi i32 [ -14, %if.then11.i.i.i.i.i ], [ -22, %e_inval.i.do_ipv6_setsockopt.exit.thread_crit_edge ], [ -22, %if.then820.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %cleanup

do_ipv6_setsockopt.exit:                          ; preds = %if.then817.i, %sw.epilog.i.do_ipv6_setsockopt.exit_crit_edge, %if.then13.i
  %retval.0.i = phi i32 [ %call14.i, %if.then13.i ], [ %retv.11.i, %if.then817.i ], [ %retv.11.i, %sw.epilog.i.do_ipv6_setsockopt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -92, i32 %retval.0.i)
  %cmp8 = icmp eq i32 %retval.0.i, -92
  br i1 %cmp8, label %land.lhs.true10, label %do_ipv6_setsockopt.exit.cleanup_crit_edge

do_ipv6_setsockopt.exit.cleanup_crit_edge:        ; preds = %do_ipv6_setsockopt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true10:                                  ; preds = %do_ipv6_setsockopt.exit
  %271 = and i32 %optname, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %271)
  %switch = icmp eq i32 %271, 34
  br i1 %switch, label %land.lhs.true10.cleanup_crit_edge, label %if.then16

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = call i32 @nf_setsockopt(ptr noundef %sk, i8 noundef zeroext 10, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true10.cleanup_crit_edge, %do_ipv6_setsockopt.exit.cleanup_crit_edge, %do_ipv6_setsockopt.exit.thread, %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -92, %entry.cleanup_crit_edge ], [ %call17, %if.then16 ], [ %retval.0.i, %do_ipv6_setsockopt.exit.cleanup_crit_edge ], [ -92, %land.lhs.true10.cleanup_crit_edge ], [ -92, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.i.ph, %do_ipv6_setsockopt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_setsockopt(ptr noundef, i8 noundef zeroext, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %src_info.i = alloca %struct.in6_pktinfo, align 4
  %hlim.i = alloca i32, align 4
  %tclass.i = alloca i32, align 4
  %src_info88.i = alloca %struct.in6_pktinfo, align 4
  %hlim117.i = alloca i32, align 4
  %flowinfo.i = alloca i32, align 4
  %mtuinfo.i = alloca %struct.ip6_mtuinfo, align 4
  %freq.i = alloca %struct.in6_flowlabel_req, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %level, label %entry.cleanup34_crit_edge [
    i32 0, label %land.lhs.true
    i32 41, label %if.end6
  ]

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

land.lhs.true:                                    ; preds = %entry
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %1 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp1.not = icmp eq i16 %2, 3
  br i1 %cmp1.not, label %land.lhs.true.cleanup34_crit_edge, label %if.then

land.lhs.true.cleanup34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 10), align 4
  %call = tail call i32 %3(ptr noundef %sk, i32 noundef 0, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #10
  br label %cleanup34

if.end6:                                          ; preds = %entry
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %5 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i55 = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i55)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i55, 0
  br i1 %tobool.i.not.i.i, label %if.end6.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.end6.inet6_sk.exit.i_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %6 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.end6.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %7, %cond.true.i.i ], [ null, %if.end6.inet6_sk.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !57
  %9 = add i32 %optname, -213
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %9)
  %10 = icmp ult i32 %9, -13
  br i1 %10, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @ip6_mroute_getsockopt(ptr noundef %sk, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #10
  br label %do_ipv6_getsockopt.exit

if.end.i:                                         ; preds = %inet6_sk.exit.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1143) #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !59
  %and.i.i = and i32 %13, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #10, !srcloc !68
  %asmresult.i = extractvalue { i32, i32 } %14, 0
  %asmresult4.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool6.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.do_ipv6_getsockopt.exit.thread_crit_edge

if.end.i.do_ipv6_getsockopt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_getsockopt.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %15 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %optname, label %if.end8.i.do_ipv6_getsockopt.exit.thread60_crit_edge [
    i32 1, label %sw.bb.i
    i32 48, label %sw.bb28.i
    i32 6, label %sw.bb34.i
    i32 24, label %sw.bb147.i
    i32 26, label %sw.bb157.i
    i32 49, label %sw.bb163.i
    i32 2, label %sw.bb169.i
    i32 51, label %sw.bb175.i
    i32 8, label %sw.bb181.i
    i32 56, label %sw.bb187.i
    i32 5, label %sw.bb192.i
    i32 54, label %if.end8.i.sw.bb198.i_crit_edge
    i32 55, label %if.end8.i.sw.bb198.i_crit_edge64
    i32 57, label %if.end8.i.sw.bb198.i_crit_edge65
    i32 59, label %if.end8.i.sw.bb198.i_crit_edge66
    i32 53, label %sw.bb233.i
    i32 3, label %sw.bb239.i
    i32 58, label %sw.bb245.i
    i32 4, label %sw.bb251.i
    i32 67, label %sw.bb257.i
    i32 66, label %sw.bb260.i
    i32 11, label %sw.bb266.i
    i32 60, label %sw.bb272.i
    i32 61, label %sw.bb278.i
    i32 75, label %sw.bb317.i
    i32 78, label %sw.bb324.i
    i32 74, label %sw.bb331.i
    i32 31, label %sw.bb495.i
    i32 30, label %sw.bb491.i
    i32 19, label %sw.bb369.i
    i32 17, label %sw.bb374.i
    i32 29, label %sw.bb376.i
    i32 76, label %sw.bb381.i
    i32 23, label %sw.bb382.i
    i32 25, label %sw.bb387.i
    i32 33, label %sw.bb391.i
    i32 32, label %sw.bb396.i
    i32 72, label %sw.bb441.i
    i32 73, label %sw.bb474.i
    i32 62, label %sw.bb476.i
    i32 70, label %sw.bb481.i
    i32 77, label %sw.bb485.i
    i32 16, label %if.then341.i
    i32 18, label %if.else.i
  ]

if.end8.i.sw.bb198.i_crit_edge66:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb198.i

if.end8.i.sw.bb198.i_crit_edge65:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb198.i

if.end8.i.sw.bb198.i_crit_edge64:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb198.i

if.end8.i.sw.bb198.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb198.i

if.end8.i.do_ipv6_getsockopt.exit.thread60_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_getsockopt.exit.thread60

sw.bb.i:                                          ; preds = %if.end8.i
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %16 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sk_protocol.i, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %17, label %sw.bb.i.do_ipv6_getsockopt.exit.thread60_crit_edge [
    i16 17, label %sw.bb.i.if.end20.i_crit_edge
    i16 136, label %sw.bb.i.if.end20.i_crit_edge67
    i16 6, label %sw.bb.i.if.end20.i_crit_edge68
  ]

sw.bb.i.if.end20.i_crit_edge68:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

sw.bb.i.if.end20.i_crit_edge67:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

sw.bb.i.if.end20.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

sw.bb.i.do_ipv6_getsockopt.exit.thread60_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_getsockopt.exit.thread60

if.end20.i:                                       ; preds = %sw.bb.i.if.end20.i_crit_edge, %sw.bb.i.if.end20.i_crit_edge67, %sw.bb.i.if.end20.i_crit_edge68
  %19 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp22.not.i = icmp eq i8 %20, 1
  br i1 %cmp22.not.i, label %if.end25.i, label %if.end20.i.do_ipv6_getsockopt.exit.thread_crit_edge

if.end20.i.do_ipv6_getsockopt.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_getsockopt.exit.thread

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %21 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %skc_family.i, align 8
  %conv27.i = zext i16 %22 to i32
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv27.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = tail call fastcc i32 @ipv6_get_msfilter(ptr noundef %sk, ptr noundef %optval, ptr noundef %optlen, i32 noundef %asmresult4.i) #10
  br label %do_ipv6_getsockopt.exit

sw.bb34.i:                                        ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %24 = call ptr @memset(ptr %msg.i, i32 255, i32 56)
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %25 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp36.not.i = icmp eq i16 %26, 1
  br i1 %cmp36.not.i, label %if.end39.i, label %sw.bb34.i.cleanup.i_crit_edge

sw.bb34.i.cleanup.i_crit_edge:                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end39.i:                                       ; preds = %sw.bb34.i
  %27 = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %optval, ptr %27, align 8
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 5
  %29 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %asmresult4.i, ptr %msg_controllen.i, align 8
  %msg_flags.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 6
  %30 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %msg_flags.i, align 4
  %msg_control_is_user.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 4
  %31 = ptrtoint ptr %msg_control_is_user.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %msg_control_is_user.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %msg_control_is_user.i, align 4
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %pktoptions.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 19
  %32 = ptrtoint ptr %pktoptions.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pktoptions.i, align 4
  %tobool40.not.i = icmp eq ptr %33, null
  br i1 %tobool40.not.i, label %if.then44.critedge.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip6_datagram_recv_ctl(ptr noundef %sk, ptr noundef nonnull %msg.i, ptr noundef nonnull %33) #10
  call void @release_sock(ptr noundef %sk) #10
  br label %if.end135.i

if.then44.critedge.i:                             ; preds = %if.end39.i
  tail call void @release_sock(ptr noundef %sk) #10
  %rxopt.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %rxopt.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load45.i = load i16, ptr %rxopt.i, align 4
  %35 = and i16 %bf.load45.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool47.not.i = icmp eq i16 %35, 0
  br i1 %tobool47.not.i, label %if.then44.critedge.i.if.end61.i_crit_edge, label %if.then48.i

if.then44.critedge.i.if.end61.i_crit_edge:        ; preds = %if.then44.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.i

if.then48.i:                                      ; preds = %if.then44.critedge.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_info.i) #10
  %36 = getelementptr inbounds %struct.in6_pktinfo, ptr %src_info.i, i32 0, i32 1
  %mcast_oif.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 8
  %37 = call ptr @memset(ptr %src_info.i, i32 255, i32 20)
  %38 = ptrtoint ptr %mcast_oif.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mcast_oif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool49.not.i = icmp eq i32 %39, 0
  br i1 %tobool49.not.i, label %cond.false56.i, label %cond.true54.i

cond.true54.i:                                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %36, align 4
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %41 = call ptr @memcpy(ptr %src_info.i, ptr %skc_v6_daddr.i, i32 16)
  br label %cond.end59.i

cond.false56.i:                                   ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  %ipi6_ifindex.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %ipi6_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ipi6_ifindex.i, align 4
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %36, align 4
  %sticky_pktinfo57.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 1
  %45 = call ptr @memcpy(ptr %src_info.i, ptr %sticky_pktinfo57.i, i32 16)
  br label %cond.end59.i

cond.end59.i:                                     ; preds = %cond.false56.i, %cond.true54.i
  %call60.i = call i32 @put_cmsg(ptr noundef nonnull %msg.i, i32 noundef 41, i32 noundef 50, i32 noundef 20, ptr noundef nonnull %src_info.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_info.i) #10
  br label %if.end61.i

if.end61.i:                                       ; preds = %cond.end59.i, %if.then44.critedge.i.if.end61.i_crit_edge
  %46 = ptrtoint ptr %rxopt.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load63.i = load i16, ptr %rxopt.i, align 4
  %47 = and i16 %bf.load63.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool66.not.i = icmp eq i16 %47, 0
  br i1 %tobool66.not.i, label %if.end61.i.if.end71.i_crit_edge, label %if.then67.i

if.end61.i.if.end71.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i

if.then67.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hlim.i) #10
  %mcast_hops.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %mcast_hops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load68.i = load i32, ptr %mcast_hops.i, align 4
  %bf.shl.i = shl i32 %bf.load68.i, 16
  %bf.ashr.i = ashr i32 %bf.shl.i, 23
  %49 = ptrtoint ptr %hlim.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %bf.ashr.i, ptr %hlim.i, align 4
  %call70.i = call i32 @put_cmsg(ptr noundef nonnull %msg.i, i32 noundef 41, i32 noundef 52, i32 noundef 4, ptr noundef nonnull %hlim.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hlim.i) #10
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then67.i, %if.end61.i.if.end71.i_crit_edge
  %50 = ptrtoint ptr %rxopt.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load73.i = load i16, ptr %rxopt.i, align 4
  %51 = and i16 %bf.load73.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool76.not.i = icmp eq i16 %51, 0
  br i1 %tobool76.not.i, label %if.end71.i.if.end81.i_crit_edge, label %if.then77.i

if.end71.i.if.end81.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.then77.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tclass.i) #10
  %rcv_flowinfo.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %rcv_flowinfo.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rcv_flowinfo.i, align 4
  %and.i86.i = lshr i32 %53, 20
  %conv79.i = and i32 %and.i86.i, 255
  %54 = ptrtoint ptr %tclass.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv79.i, ptr %tclass.i, align 4
  %call80.i = call i32 @put_cmsg(ptr noundef nonnull %msg.i, i32 noundef 41, i32 noundef 67, i32 noundef 4, ptr noundef nonnull %tclass.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tclass.i) #10
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then77.i, %if.end71.i.if.end81.i_crit_edge
  %55 = ptrtoint ptr %rxopt.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load83.i = load i16, ptr %rxopt.i, align 4
  %56 = and i16 %bf.load83.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool86.not.i = icmp eq i16 %56, 0
  br i1 %tobool86.not.i, label %if.end81.i.if.end110.i_crit_edge, label %if.then87.i

if.end81.i.if.end110.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110.i

if.then87.i:                                      ; preds = %if.end81.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_info88.i) #10
  %57 = getelementptr inbounds %struct.in6_pktinfo, ptr %src_info88.i, i32 0, i32 1
  %mcast_oif89.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 8
  %58 = call ptr @memset(ptr %src_info88.i, i32 255, i32 20)
  %59 = ptrtoint ptr %mcast_oif89.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mcast_oif89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool90.not.i = icmp eq i32 %60, 0
  br i1 %tobool90.not.i, label %cond.false105.i, label %cond.true102.i

cond.true102.i:                                   ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %57, align 4
  %skc_v6_daddr104.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %62 = call ptr @memcpy(ptr %src_info88.i, ptr %skc_v6_daddr104.i, i32 16)
  br label %cond.end108.i

cond.false105.i:                                  ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  %ipi6_ifindex95.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %ipi6_ifindex95.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ipi6_ifindex95.i, align 4
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %57, align 4
  %sticky_pktinfo106.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 1
  %66 = call ptr @memcpy(ptr %src_info88.i, ptr %sticky_pktinfo106.i, i32 16)
  br label %cond.end108.i

cond.end108.i:                                    ; preds = %cond.false105.i, %cond.true102.i
  %call109.i = call i32 @put_cmsg(ptr noundef nonnull %msg.i, i32 noundef 41, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %src_info88.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_info88.i) #10
  br label %if.end110.i

if.end110.i:                                      ; preds = %cond.end108.i, %if.end81.i.if.end110.i_crit_edge
  %67 = ptrtoint ptr %rxopt.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load112.i = load i16, ptr %rxopt.i, align 4
  %68 = and i16 %bf.load112.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool115.not.i = icmp eq i16 %68, 0
  br i1 %tobool115.not.i, label %if.end110.i.if.end125.i_crit_edge, label %if.then116.i

if.end110.i.if.end125.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

if.then116.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hlim117.i) #10
  %mcast_hops118.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %mcast_hops118.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load119.i = load i32, ptr %mcast_hops118.i, align 4
  %bf.shl120.i = shl i32 %bf.load119.i, 16
  %bf.ashr121.i = ashr i32 %bf.shl120.i, 23
  %70 = ptrtoint ptr %hlim117.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %bf.ashr121.i, ptr %hlim117.i, align 4
  %call124.i = call i32 @put_cmsg(ptr noundef nonnull %msg.i, i32 noundef 41, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %hlim117.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hlim117.i) #10
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then116.i, %if.end110.i.if.end125.i_crit_edge
  %71 = ptrtoint ptr %rxopt.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load127.i = load i16, ptr %rxopt.i, align 4
  %72 = and i16 %bf.load127.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool130.not.i = icmp eq i16 %72, 0
  br i1 %tobool130.not.i, label %if.end125.i.if.end135.i_crit_edge, label %if.then131.i

if.end125.i.if.end135.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135.i

if.then131.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flowinfo.i) #10
  %rcv_flowinfo132.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 13
  %73 = ptrtoint ptr %rcv_flowinfo132.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rcv_flowinfo132.i, align 4
  %75 = ptrtoint ptr %flowinfo.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %flowinfo.i, align 4
  %call133.i = call i32 @put_cmsg(ptr noundef nonnull %msg.i, i32 noundef 41, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %flowinfo.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flowinfo.i) #10
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then131.i, %if.end125.i.if.end135.i_crit_edge, %if.then41.i
  %76 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_controllen.i, align 8
  %sub.i = sub i32 %asmresult4.i, %77
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1213) #10
  %78 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i4.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i4.i to ptr
  %cpu_domain.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i5.i) #7, !srcloc !59
  %and.i6.i = and i32 %80, -13
  %or.i7.i = or i32 %and.i6.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i7.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %81 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %sub.i, i32 -1226833921) #10, !srcloc !69
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end135.i, %sw.bb34.i.cleanup.i_crit_edge
  %retval.0.i = phi i32 [ %81, %if.end135.i ], [ -92, %sw.bb34.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  br label %do_ipv6_getsockopt.exit

sw.bb147.i:                                       ; preds = %if.end8.i
  %82 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %val.i, align 4
  %83 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %86, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %sw.bb147.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb147.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %sw.bb147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb147.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb147.i.rcu_read_lock.exit.i_crit_edge
  %call148.i = tail call fastcc ptr @__sk_dst_get(ptr noundef %sk) #10
  %tobool149.not.i = icmp eq ptr %call148.i, null
  br i1 %tobool149.not.i, label %rcu_read_lock.exit.i.if.end152.i_crit_edge, label %if.then150.i

rcu_read_lock.exit.i.if.end152.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

if.then150.i:                                     ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %call148.i, i32 0, i32 1
  %87 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mtu.i.i, align 4
  %call.i87.i = tail call i32 %90(ptr noundef nonnull %call148.i) #10
  %91 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.i87.i, ptr %val.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then150.i, %rcu_read_lock.exit.i.if.end152.i_crit_edge
  tail call fastcc void @rcu_read_unlock() #10
  %92 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool153.not.i = icmp eq i32 %93, 0
  br i1 %tobool153.not.i, label %if.end152.i.do_ipv6_getsockopt.exit.thread_crit_edge, label %if.end152.i.sw.epilog.i_crit_edge

if.end152.i.sw.epilog.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end152.i.do_ipv6_getsockopt.exit.thread_crit_edge: ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_getsockopt.exit.thread

sw.bb157.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_ipv6only.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %94 = ptrtoint ptr %skc_ipv6only.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load159.i = load i8, ptr %skc_ipv6only.i, align 1
  %bf.lshr160.i = lshr i8 %bf.load159.i, 2
  %bf.clear161.i = and i8 %bf.lshr160.i, 1
  %conv162.i = zext i8 %bf.clear161.i to i32
  %95 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv162.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb163.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt164.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %96 = ptrtoint ptr %rxopt164.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load165.i = load i16, ptr %rxopt164.i, align 4
  %bf.lshr166.i = lshr i16 %bf.load165.i, 13
  %bf.clear167.i = and i16 %bf.lshr166.i, 1
  %conv168.i = zext i16 %bf.clear167.i to i32
  %97 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv168.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb169.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt170.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %98 = ptrtoint ptr %rxopt170.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load171.i = load i16, ptr %rxopt170.i, align 4
  %bf.lshr172.i = lshr i16 %bf.load171.i, 12
  %bf.clear173.i = and i16 %bf.lshr172.i, 1
  %conv174.i = zext i16 %bf.clear173.i to i32
  %99 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv174.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb175.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt176.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %100 = ptrtoint ptr %rxopt176.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load177.i = load i16, ptr %rxopt176.i, align 4
  %bf.lshr178.i = lshr i16 %bf.load177.i, 11
  %bf.clear179.i = and i16 %bf.lshr178.i, 1
  %conv180.i = zext i16 %bf.clear179.i to i32
  %101 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv180.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb181.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt182.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %102 = ptrtoint ptr %rxopt182.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load183.i = load i16, ptr %rxopt182.i, align 4
  %bf.lshr184.i = lshr i16 %bf.load183.i, 10
  %bf.clear185.i = and i16 %bf.lshr184.i, 1
  %conv186.i = zext i16 %bf.clear185.i to i32
  %103 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv186.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb187.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt188.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %104 = ptrtoint ptr %rxopt188.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load189.i = load i16, ptr %rxopt188.i, align 4
  %bf.lshr190.i = lshr i16 %bf.load189.i, 15
  %conv191.i = zext i16 %bf.lshr190.i to i32
  %105 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv191.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb192.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt193.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %106 = ptrtoint ptr %rxopt193.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load194.i = load i16, ptr %rxopt193.i, align 4
  %bf.lshr195.i = lshr i16 %bf.load194.i, 14
  %bf.clear196.i = and i16 %bf.lshr195.i, 1
  %conv197.i = zext i16 %bf.clear196.i to i32
  %107 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv197.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb198.i:                                       ; preds = %if.end8.i.sw.bb198.i_crit_edge, %if.end8.i.sw.bb198.i_crit_edge64, %if.end8.i.sw.bb198.i_crit_edge65, %if.end8.i.sw.bb198.i_crit_edge66
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %call200.i = tail call fastcc zeroext i1 @lockdep_sock_is_held(ptr noundef %sk) #10
  br i1 %call200.i, label %sw.bb198.i.do.end209.i_crit_edge, label %land.lhs.true201.i

sw.bb198.i.do.end209.i_crit_edge:                 ; preds = %sw.bb198.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end209.i

land.lhs.true201.i:                               ; preds = %sw.bb198.i
  %call202.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202.i)
  %tobool203.not.i = icmp eq i32 %call202.i, 0
  br i1 %tobool203.not.i, label %land.lhs.true201.i.do.end209.i_crit_edge, label %land.lhs.true204.i

land.lhs.true201.i.do.end209.i_crit_edge:         ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end209.i

land.lhs.true204.i:                               ; preds = %land.lhs.true201.i
  %.b1.i = load i1, ptr @do_ipv6_getsockopt.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true204.i.do.end209.i_crit_edge, label %if.then206.i

land.lhs.true204.i.do.end209.i_crit_edge:         ; preds = %land.lhs.true204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end209.i

if.then206.i:                                     ; preds = %land.lhs.true204.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @do_ipv6_getsockopt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1267, ptr noundef nonnull @.str.5) #10
  br label %do.end209.i

do.end209.i:                                      ; preds = %if.then206.i, %land.lhs.true204.i.do.end209.i_crit_edge, %land.lhs.true201.i.do.end209.i_crit_edge, %sw.bb198.i.do.end209.i_crit_edge
  %opt211.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 18
  %108 = ptrtoint ptr %opt211.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %opt211.i, align 4
  %call212.i = tail call fastcc i32 @ipv6_getsockopt_sticky(ptr noundef %109, i32 noundef %optname, ptr noundef %optval, i32 noundef %asmresult4.i) #10
  tail call void @release_sock(ptr noundef %sk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212.i)
  %cmp213.i = icmp slt i32 %call212.i, 0
  br i1 %cmp213.i, label %do.end209.i.do_ipv6_getsockopt.exit_crit_edge, label %if.end216.i

do.end209.i.do_ipv6_getsockopt.exit_crit_edge:    ; preds = %do.end209.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_getsockopt.exit

if.end216.i:                                      ; preds = %do.end209.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1273) #10
  %110 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i8.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i8.i to ptr
  %cpu_domain.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 4
  %112 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i9.i) #7, !srcloc !59
  %and.i10.i = and i32 %112, -13
  %or.i11.i = or i32 %and.i10.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i11.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %113 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %call212.i, i32 -1226833921) #10, !srcloc !70
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %do_ipv6_getsockopt.exit

sw.bb233.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt234.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %114 = ptrtoint ptr %rxopt234.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load235.i = load i16, ptr %rxopt234.i, align 4
  %bf.lshr236.i = lshr i16 %bf.load235.i, 9
  %bf.clear237.i = and i16 %bf.lshr236.i, 1
  %conv238.i = zext i16 %bf.clear237.i to i32
  %115 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv238.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb239.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt240.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %116 = ptrtoint ptr %rxopt240.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load241.i = load i16, ptr %rxopt240.i, align 4
  %bf.lshr242.i = lshr i16 %bf.load241.i, 8
  %bf.clear243.i = and i16 %bf.lshr242.i, 1
  %conv244.i = zext i16 %bf.clear243.i to i32
  %117 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv244.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb245.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt246.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %118 = ptrtoint ptr %rxopt246.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load247.i = load i16, ptr %rxopt246.i, align 4
  %bf.lshr248.i = lshr i16 %bf.load247.i, 7
  %bf.clear249.i = and i16 %bf.lshr248.i, 1
  %conv250.i = zext i16 %bf.clear249.i to i32
  %119 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv250.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb251.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt252.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %120 = ptrtoint ptr %rxopt252.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load253.i = load i16, ptr %rxopt252.i, align 4
  %bf.lshr254.i = lshr i16 %bf.load253.i, 6
  %bf.clear255.i = and i16 %bf.lshr254.i, 1
  %conv256.i = zext i16 %bf.clear255.i to i32
  %121 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv256.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb257.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %tclass258.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 12
  %122 = ptrtoint ptr %tclass258.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %tclass258.i, align 1
  %conv259.i = zext i8 %123 to i32
  %124 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv259.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb260.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt261.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %125 = ptrtoint ptr %rxopt261.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load262.i = load i16, ptr %rxopt261.i, align 4
  %bf.lshr263.i = lshr i16 %bf.load262.i, 4
  %bf.clear264.i = and i16 %bf.lshr263.i, 1
  %conv265.i = zext i16 %bf.clear264.i to i32
  %126 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv265.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb266.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt267.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %127 = ptrtoint ptr %rxopt267.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load268.i = load i16, ptr %rxopt267.i, align 4
  %bf.lshr269.i = lshr i16 %bf.load268.i, 5
  %bf.clear270.i = and i16 %bf.lshr269.i, 1
  %conv271.i = zext i16 %bf.clear270.i to i32
  %128 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv271.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb272.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt273.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %129 = ptrtoint ptr %rxopt273.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %bf.load274.i = load i16, ptr %rxopt273.i, align 4
  %bf.lshr275.i = lshr i16 %bf.load274.i, 3
  %bf.clear276.i = and i16 %bf.lshr275.i, 1
  %conv277.i = zext i16 %bf.clear276.i to i32
  %130 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv277.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb278.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtuinfo.i) #10
  %131 = getelementptr inbounds %struct.ip6_mtuinfo, ptr %mtuinfo.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %asmresult4.i)
  %cmp280.i = icmp ult i32 %asmresult4.i, 32
  br i1 %cmp280.i, label %sw.bb278.i.cleanup315.i_crit_edge, label %if.end283.i

sw.bb278.i.cleanup315.i_crit_edge:                ; preds = %sw.bb278.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup315.i

if.end283.i:                                      ; preds = %sw.bb278.i
  %132 = call ptr @memset(ptr %mtuinfo.i, i32 0, i32 32)
  %133 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i12.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %add.i.i.i14.i = add i32 %136, 1
  store volatile i32 %add.i.i.i14.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i15.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i15.i, label %if.end283.i.rcu_read_lock.exit22.i_crit_edge, label %land.lhs.true.i18.i

if.end283.i.rcu_read_lock.exit22.i_crit_edge:     ; preds = %if.end283.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit22.i

land.lhs.true.i18.i:                              ; preds = %if.end283.i
  %call1.i16.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call1.i16.i, 0
  br i1 %tobool.not.i17.i, label %land.lhs.true.i18.i.rcu_read_lock.exit22.i_crit_edge, label %land.lhs.true2.i20.i

land.lhs.true.i18.i.rcu_read_lock.exit22.i_crit_edge: ; preds = %land.lhs.true.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit22.i

land.lhs.true2.i20.i:                             ; preds = %land.lhs.true.i18.i
  %.b4.i19.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i19.i, label %land.lhs.true2.i20.i.rcu_read_lock.exit22.i_crit_edge, label %if.then.i21.i

land.lhs.true2.i20.i.rcu_read_lock.exit22.i_crit_edge: ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit22.i

if.then.i21.i:                                    ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit22.i

rcu_read_lock.exit22.i:                           ; preds = %if.then.i21.i, %land.lhs.true2.i20.i.rcu_read_lock.exit22.i_crit_edge, %land.lhs.true.i18.i.rcu_read_lock.exit22.i_crit_edge, %if.end283.i.rcu_read_lock.exit22.i_crit_edge
  %call284.i = tail call fastcc ptr @__sk_dst_get(ptr noundef %sk) #10
  %tobool285.not.i = icmp eq ptr %call284.i, null
  br i1 %tobool285.not.i, label %rcu_read_lock.exit22.i.if.end288.i_crit_edge, label %if.then286.i

rcu_read_lock.exit22.i.if.end288.i_crit_edge:     ; preds = %rcu_read_lock.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end288.i

if.then286.i:                                     ; preds = %rcu_read_lock.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i88.i = getelementptr inbounds %struct.dst_entry, ptr %call284.i, i32 0, i32 1
  %137 = ptrtoint ptr %ops.i88.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i88.i, align 4
  %mtu.i89.i = getelementptr inbounds %struct.dst_ops, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %mtu.i89.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mtu.i89.i, align 4
  %call.i90.i = tail call i32 %140(ptr noundef nonnull %call284.i) #10
  %141 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call.i90.i, ptr %131, align 4
  br label %if.end288.i

if.end288.i:                                      ; preds = %if.then286.i, %rcu_read_lock.exit22.i.if.end288.i_crit_edge
  tail call fastcc void @rcu_read_unlock() #10
  %142 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool290.not.i = icmp eq i32 %143, 0
  br i1 %tobool290.not.i, label %if.end288.i.cleanup315.i_crit_edge, label %if.end292.i

if.end288.i.cleanup315.i_crit_edge:               ; preds = %if.end288.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup315.i

if.end292.i:                                      ; preds = %if.end288.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1327) #10
  %144 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i23.i = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i23.i to ptr
  %cpu_domain.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 4
  %146 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i24.i) #7, !srcloc !59
  %and.i25.i = and i32 %146, -13
  %or.i26.i = or i32 %and.i25.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i26.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %147 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 32, i32 -1226833921) #10, !srcloc !71
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool308.not.i = icmp eq i32 %147, 0
  br i1 %tobool308.not.i, label %if.end8.i.i.i, label %if.end292.i.cleanup315.i_crit_edge

if.end292.i.cleanup315.i_crit_edge:               ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup315.i

if.end8.i.i.i:                                    ; preds = %if.end292.i
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.end8.i.i.i.cleanup315.i_crit_edge, label %if.end.i.i.i

if.end8.i.i.i.cleanup315.i_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup315.i

if.end.i.i.i:                                     ; preds = %if.end8.i.i.i
  %148 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 32, i32 -1226833920) #14, !srcloc !72
  %asmresult.i.i.i = extractvalue { i32, i32 } %148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cleanup315.i_crit_edge

if.end.i.i.i.cleanup315.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup315.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mtuinfo.i, i32 noundef 32) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %mtuinfo.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool312.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool312.not.i, i32 0, i32 -14
  br label %cleanup315.i

cleanup315.i:                                     ; preds = %copy_to_user.exit.i, %if.end.i.i.i.cleanup315.i_crit_edge, %if.end8.i.i.i.cleanup315.i_crit_edge, %if.end292.i.cleanup315.i_crit_edge, %if.end288.i.cleanup315.i_crit_edge, %sw.bb278.i.cleanup315.i_crit_edge
  %retval.3.i = phi i32 [ -22, %sw.bb278.i.cleanup315.i_crit_edge ], [ -107, %if.end288.i.cleanup315.i_crit_edge ], [ -14, %if.end292.i.cleanup315.i_crit_edge ], [ -14, %if.end8.i.i.i.cleanup315.i_crit_edge ], [ -14, %if.end.i.i.i.cleanup315.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtuinfo.i) #10
  br label %do_ipv6_getsockopt.exit.thread

sw.bb317.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %149 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load319.i = load i16, ptr %transparent.i, align 8
  %bf.lshr320.i = lshr i16 %bf.load319.i, 10
  %150 = and i16 %bf.lshr320.i, 1
  %bf.cast322.i = zext i16 %150 to i32
  %151 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %bf.cast322.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb324.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %freebind.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %152 = ptrtoint ptr %freebind.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %bf.load326.i = load i16, ptr %freebind.i, align 8
  %bf.lshr327.i = lshr i16 %bf.load326.i, 13
  %153 = and i16 %bf.lshr327.i, 1
  %bf.cast329.i = zext i16 %153 to i32
  %154 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %bf.cast329.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb331.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt332.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %155 = ptrtoint ptr %rxopt332.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %bf.load333.i = load i16, ptr %rxopt332.i, align 4
  %bf.lshr334.i = lshr i16 %bf.load333.i, 2
  %bf.clear335.i = and i16 %bf.lshr334.i, 1
  %conv336.i = zext i16 %bf.clear335.i to i32
  %156 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv336.i, ptr %val.i, align 4
  br label %sw.epilog.i

if.then341.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %hop_limit.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 6
  %157 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %bf.load342.i = load i32, ptr %hop_limit.i, align 4
  br label %if.end352.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %mcast_hops346.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 6
  %158 = ptrtoint ptr %mcast_hops346.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %bf.load347.i = load i32, ptr %mcast_hops346.i, align 4
  %bf.shl348.i = shl i32 %bf.load347.i, 16
  br label %if.end352.i

if.end352.i:                                      ; preds = %if.else.i, %if.then341.i
  %storemerge.in.i = phi i32 [ %bf.shl348.i, %if.else.i ], [ %bf.load342.i, %if.then341.i ]
  %storemerge.i = ashr i32 %storemerge.in.i, 23
  %159 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %storemerge.i, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.in.i)
  %cmp353.i = icmp slt i32 %storemerge.in.i, 0
  br i1 %cmp353.i, label %if.then355.i, label %if.end352.i.if.end361.i_crit_edge

if.end352.i.if.end361.i_crit_edge:                ; preds = %if.end352.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end361.i

if.then355.i:                                     ; preds = %if.end352.i
  %160 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i28.i = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i.i.i.i28.i to ptr
  %preempt_count.i.i.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %preempt_count.i.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %preempt_count.i.i.i.i29.i, align 4
  %add.i.i.i30.i = add i32 %163, 1
  store volatile i32 %add.i.i.i30.i, ptr %preempt_count.i.i.i.i29.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i31.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i31.i, label %if.then355.i.rcu_read_lock.exit38.i_crit_edge, label %land.lhs.true.i34.i

if.then355.i.rcu_read_lock.exit38.i_crit_edge:    ; preds = %if.then355.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit38.i

land.lhs.true.i34.i:                              ; preds = %if.then355.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool.not.i33.i, label %land.lhs.true.i34.i.rcu_read_lock.exit38.i_crit_edge, label %land.lhs.true2.i36.i

land.lhs.true.i34.i.rcu_read_lock.exit38.i_crit_edge: ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit38.i

land.lhs.true2.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b4.i35.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i35.i, label %land.lhs.true2.i36.i.rcu_read_lock.exit38.i_crit_edge, label %if.then.i37.i

land.lhs.true2.i36.i.rcu_read_lock.exit38.i_crit_edge: ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit38.i

if.then.i37.i:                                    ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit38.i

rcu_read_lock.exit38.i:                           ; preds = %if.then.i37.i, %land.lhs.true2.i36.i.rcu_read_lock.exit38.i_crit_edge, %land.lhs.true.i34.i.rcu_read_lock.exit38.i_crit_edge, %if.then355.i.rcu_read_lock.exit38.i_crit_edge
  %call356.i = tail call fastcc ptr @__sk_dst_get(ptr noundef %sk) #10
  %tobool357.not.i = icmp eq ptr %call356.i, null
  br i1 %tobool357.not.i, label %rcu_read_lock.exit38.i.if.end360.i_crit_edge, label %if.then358.i

rcu_read_lock.exit38.i.if.end360.i_crit_edge:     ; preds = %rcu_read_lock.exit38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end360.i

if.then358.i:                                     ; preds = %rcu_read_lock.exit38.i
  call void @__sanitizer_cov_trace_pc() #12
  %call359.i = tail call i32 @ip6_dst_hoplimit(ptr noundef nonnull %call356.i) #10
  %164 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %call359.i, ptr %val.i, align 4
  br label %if.end360.i

if.end360.i:                                      ; preds = %if.then358.i, %rcu_read_lock.exit38.i.if.end360.i_crit_edge
  tail call fastcc void @rcu_read_unlock() #10
  %165 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %.pr.i = load i32, ptr %val.i, align 4
  br label %if.end361.i

if.end361.i:                                      ; preds = %if.end360.i, %if.end352.i.if.end361.i_crit_edge
  %166 = phi i32 [ %.pr.i, %if.end360.i ], [ %storemerge.i, %if.end352.i.if.end361.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp362.i = icmp slt i32 %166, 0
  br i1 %cmp362.i, label %if.then364.i, label %if.end361.i.sw.epilog.i_crit_edge

if.end361.i.sw.epilog.i_crit_edge:                ; preds = %if.end361.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then364.i:                                     ; preds = %if.end361.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %167 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %skc_net.i.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %168, i32 0, i32 36, i32 2
  %169 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %devconf_all.i, align 32
  %hop_limit366.i = getelementptr inbounds %struct.ipv6_devconf, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %hop_limit366.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %hop_limit366.i, align 4
  %173 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb369.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %mc_loop.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 6
  %174 = ptrtoint ptr %mc_loop.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %bf.load370.i = load i32, ptr %mc_loop.i, align 4
  %bf.cast372.i = and i32 %bf.load370.i, 1
  %175 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %bf.cast372.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb374.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %mcast_oif375.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 8
  %176 = ptrtoint ptr %mcast_oif375.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mcast_oif375.i, align 4
  %178 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb376.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %mc_all.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %179 = ptrtoint ptr %mc_all.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %bf.load377.i = load i16, ptr %mc_all.i, align 2
  %bf.lshr378.i = lshr i16 %bf.load377.i, 2
  %bf.clear379.i = and i16 %bf.lshr378.i, 1
  %conv380.i = zext i16 %bf.clear379.i to i32
  %180 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv380.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb381.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %ucast_oif.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 7
  %181 = ptrtoint ptr %ucast_oif.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %ucast_oif.i, align 4
  %183 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb382.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %pmtudisc.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %184 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %bf.load383.i = load i16, ptr %pmtudisc.i, align 2
  %bf.lshr384.i = lshr i16 %bf.load383.i, 10
  %bf.clear385.i = and i16 %bf.lshr384.i, 7
  %conv386.i = zext i16 %bf.clear385.i to i32
  %185 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv386.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb387.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %recverr.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %186 = ptrtoint ptr %recverr.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %bf.load388.i = load i16, ptr %recverr.i, align 2
  %bf.lshr389.i = lshr i16 %bf.load388.i, 15
  %conv390.i = zext i16 %bf.lshr389.i to i32
  %187 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %conv390.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb391.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sndflow.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %188 = ptrtoint ptr %sndflow.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %bf.load392.i = load i16, ptr %sndflow.i, align 2
  %bf.lshr393.i = lshr i16 %bf.load392.i, 14
  %bf.clear394.i = and i16 %bf.lshr393.i, 1
  %conv395.i = zext i16 %bf.clear394.i to i32
  %189 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %conv395.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb396.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freq.i) #10
  %190 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq.i, i32 0, i32 2
  %191 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %asmresult4.i)
  %cmp398.i = icmp ult i32 %asmresult4.i, 32
  %192 = call ptr @memset(ptr %freq.i, i32 255, i32 32)
  br i1 %cmp398.i, label %sw.bb396.i.cleanup439.i_crit_edge, label %if.end8.i.i42.i

sw.bb396.i.cleanup439.i_crit_edge:                ; preds = %sw.bb396.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup439.i

if.end8.i.i42.i:                                  ; preds = %sw.bb396.i
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i43.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i43.i, label %if.end8.i.i42.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i42.i.if.then11.i.i.i_crit_edge:        ; preds = %if.end8.i.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i42.i
  %193 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 32, i32 -1226833920) #14
  %asmresult.i.i45.i = extractvalue { i32, i32 } %193, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i45.i)
  %cmp.i6.i46.i = icmp eq i32 %asmresult.i.i45.i, 0
  br i1 %cmp.i6.i46.i, label %if.end.i.i48.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i48.i:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i47.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %freq.i, i32 noundef 32) #10
  %194 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i.i = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 4
  %196 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !59
  %and.i.i.i.i.i = and i32 %196, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %freq.i, ptr noundef %optval, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %196) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end405.i, label %if.end.i.i48.i.if.then11.i.i.i_crit_edge, !prof !48

if.end.i.i48.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i48.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i42.i.if.then11.i.i.i_crit_edge
  %res.0.i.i98.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i48.i.if.then11.i.i.i_crit_edge ], [ 32, %if.end8.i.i42.i.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i98.i
  %add.ptr.i.i.i = getelementptr i8, ptr %freq.i, i32 %sub.i.i.i
  %197 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i98.i)
  br label %cleanup439.i

if.end405.i:                                      ; preds = %if.end.i.i48.i
  %198 = ptrtoint ptr %190 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %190, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %cmp407.not.i = icmp eq i8 %199, 0
  br i1 %cmp407.not.i, label %if.end410.i, label %if.end405.i.cleanup439.i_crit_edge

if.end405.i.cleanup439.i_crit_edge:               ; preds = %if.end405.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup439.i

if.end410.i:                                      ; preds = %if.end405.i
  %200 = ptrtoint ptr %191 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %191, align 2
  %conv411.i = zext i16 %201 to i32
  %202 = call ptr @memset(ptr %freq.i, i32 0, i32 32)
  %call412.i = call i32 @ipv6_flowlabel_opt_get(ptr noundef %sk, ptr noundef nonnull %freq.i, i32 noundef %conv411.i) #10
  %203 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %call412.i, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412.i)
  %cmp413.i = icmp slt i32 %call412.i, 0
  br i1 %cmp413.i, label %if.end410.i.cleanup439.i_crit_edge, label %if.end416.i

if.end410.i.cleanup439.i_crit_edge:               ; preds = %if.end410.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup439.i

if.end416.i:                                      ; preds = %if.end410.i
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1421) #10
  %204 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i50.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i50.i to ptr
  %cpu_domain.i.i51.i = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 4
  %206 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i51.i) #7, !srcloc !59
  %and.i52.i = and i32 %206, -13
  %or.i53.i = or i32 %and.i52.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i53.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %207 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 32, i32 -1226833921) #10, !srcloc !73
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %206) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool432.not.i = icmp eq i32 %207, 0
  br i1 %tobool432.not.i, label %if.end8.i.i57.i, label %if.end416.i.cleanup439.i_crit_edge

if.end416.i.cleanup439.i_crit_edge:               ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup439.i

if.end8.i.i57.i:                                  ; preds = %if.end416.i
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i58.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i58.i, label %if.end8.i.i57.i.cleanup439.i_crit_edge, label %copy_to_user.exit67.i

if.end8.i.i57.i.cleanup439.i_crit_edge:           ; preds = %if.end8.i.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup439.i

copy_to_user.exit67.i:                            ; preds = %if.end8.i.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i63.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %freq.i, i32 noundef 32) #10
  %call.i12.i.i64.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %freq.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i64.i)
  %tobool436.not.i = icmp eq i32 %call.i12.i.i64.i, 0
  %spec.select103.i = select i1 %tobool436.not.i, i32 0, i32 -14
  br label %cleanup439.i

cleanup439.i:                                     ; preds = %copy_to_user.exit67.i, %if.end8.i.i57.i.cleanup439.i_crit_edge, %if.end416.i.cleanup439.i_crit_edge, %if.end410.i.cleanup439.i_crit_edge, %if.end405.i.cleanup439.i_crit_edge, %if.then11.i.i.i, %sw.bb396.i.cleanup439.i_crit_edge
  %retval.4.i = phi i32 [ -22, %sw.bb396.i.cleanup439.i_crit_edge ], [ -22, %if.end405.i.cleanup439.i_crit_edge ], [ %call412.i, %if.end410.i.cleanup439.i_crit_edge ], [ -14, %if.end416.i.cleanup439.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end8.i.i57.i.cleanup439.i_crit_edge ], [ %spec.select103.i, %copy_to_user.exit67.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freq.i) #10
  br label %do_ipv6_getsockopt.exit

sw.bb441.i:                                       ; preds = %if.end8.i
  %srcprefs.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %208 = ptrtoint ptr %srcprefs.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %bf.load442.i = load i16, ptr %srcprefs.i, align 2
  %bf.lshr443.i = lshr i16 %bf.load442.i, 6
  %bf.clear444.i = and i16 %bf.lshr443.i, 7
  %conv445.i = zext i16 %bf.clear444.i to i32
  %and.i56 = and i32 %conv445.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool446.not.i = icmp eq i32 %and.i56, 0
  br i1 %tobool446.not.i, label %if.else448.i, label %if.then447.i

if.then447.i:                                     ; preds = %sw.bb441.i
  call void @__sanitizer_cov_trace_pc() #12
  %209 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 1, ptr %val.i, align 4
  br label %if.end461.i

if.else448.i:                                     ; preds = %sw.bb441.i
  %and454.i = and i32 %conv445.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454.i)
  %tobool455.not.i = icmp eq i32 %and454.i, 0
  br i1 %tobool455.not.i, label %if.else458.i, label %if.then456.i

if.then456.i:                                     ; preds = %if.else448.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 2, ptr %val.i, align 4
  br label %if.end461.i

if.else458.i:                                     ; preds = %if.else448.i
  call void @__sanitizer_cov_trace_pc() #12
  %211 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 256, ptr %val.i, align 4
  br label %if.end461.i

if.end461.i:                                      ; preds = %if.else458.i, %if.then456.i, %if.then447.i
  %212 = ptrtoint ptr %srcprefs.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %bf.load463.i = load i16, ptr %srcprefs.i, align 2
  %213 = and i16 %bf.load463.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %213)
  %tobool468.not.i = icmp eq i16 %213, 0
  %214 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %val.i, align 4
  br i1 %tobool468.not.i, label %if.else471.i, label %if.then469.i

if.then469.i:                                     ; preds = %if.end461.i
  call void @__sanitizer_cov_trace_pc() #12
  %or470.i = or i32 %215, 4
  %216 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %or470.i, ptr %val.i, align 4
  br label %sw.epilog.i

if.else471.i:                                     ; preds = %if.end461.i
  call void @__sanitizer_cov_trace_pc() #12
  %or472.i = or i32 %215, 1024
  %217 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %or472.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb474.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %min_hopcount.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 11
  %218 = ptrtoint ptr %min_hopcount.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %min_hopcount.i, align 4
  %conv475.i = zext i8 %219 to i32
  %220 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %conv475.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb476.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %dontfrag.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %221 = ptrtoint ptr %dontfrag.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %bf.load477.i = load i16, ptr %dontfrag.i, align 2
  %bf.lshr478.i = lshr i16 %bf.load477.i, 5
  %bf.clear479.i = and i16 %bf.lshr478.i, 1
  %conv480.i = zext i16 %bf.clear479.i to i32
  %222 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv480.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb481.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_net.i91.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %223 = ptrtoint ptr %skc_net.i91.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %skc_net.i91.i, align 4
  %call483.i = tail call zeroext i1 @ip6_autoflowlabel(ptr noundef %224, ptr noundef %cond.i.i) #10
  %conv484.i = zext i1 %call483.i to i32
  %225 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %conv484.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb485.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxopt486.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 9
  %226 = ptrtoint ptr %rxopt486.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %bf.load487.i = load i16, ptr %rxopt486.i, align 4
  %bf.lshr488.i = lshr i16 %bf.load487.i, 1
  %bf.clear489.i = and i16 %bf.lshr488.i, 1
  %conv490.i = zext i16 %bf.clear489.i to i32
  %227 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %conv490.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb491.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %rtalert_isolate.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %228 = ptrtoint ptr %rtalert_isolate.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %bf.load492.i = load i16, ptr %rtalert_isolate.i, align 2
  %bf.clear493.i = and i16 %bf.load492.i, 1
  %conv494.i = zext i16 %bf.clear493.i to i32
  %229 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %conv494.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb495.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %recverr_rfc4884.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %230 = ptrtoint ptr %recverr_rfc4884.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %bf.load496.i = load i16, ptr %recverr_rfc4884.i, align 2
  %bf.lshr497.i = lshr i16 %bf.load496.i, 1
  %bf.clear498.i = and i16 %bf.lshr497.i, 1
  %conv499.i = zext i16 %bf.clear498.i to i32
  %231 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %conv499.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb495.i, %sw.bb491.i, %sw.bb485.i, %sw.bb481.i, %sw.bb476.i, %sw.bb474.i, %if.else471.i, %if.then469.i, %sw.bb391.i, %sw.bb387.i, %sw.bb382.i, %sw.bb381.i, %sw.bb376.i, %sw.bb374.i, %sw.bb369.i, %if.then364.i, %if.end361.i.sw.epilog.i_crit_edge, %sw.bb331.i, %sw.bb324.i, %sw.bb317.i, %sw.bb272.i, %sw.bb266.i, %sw.bb260.i, %sw.bb257.i, %sw.bb251.i, %sw.bb245.i, %sw.bb239.i, %sw.bb233.i, %sw.bb192.i, %sw.bb187.i, %sw.bb181.i, %sw.bb175.i, %sw.bb169.i, %sw.bb163.i, %sw.bb157.i, %if.end152.i.sw.epilog.i_crit_edge, %if.end25.i
  %232 = tail call i32 @llvm.umin.i32(i32 %asmresult4.i, i32 4) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1475) #10
  %233 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i68.i = and i32 %233, -16384
  %234 = inttoptr i32 %and.i.i.i68.i to ptr
  %cpu_domain.i.i69.i = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 4
  %235 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i69.i) #7, !srcloc !59
  %and.i70.i = and i32 %235, -13
  %or.i71.i = or i32 %and.i70.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i71.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %236 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %232, i32 -1226833921) #10, !srcloc !74
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %235) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool522.not.i = icmp eq i32 %236, 0
  br i1 %tobool522.not.i, label %if.then.i.i.i.i, label %sw.epilog.i.do_ipv6_getsockopt.exit.thread_crit_edge

sw.epilog.i.do_ipv6_getsockopt.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_ipv6_getsockopt.exit.thread

if.then.i.i.i.i:                                  ; preds = %sw.epilog.i
  call void @__check_object_size(ptr noundef nonnull %val.i, i32 noundef %232, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i76.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i76.i, label %if.then.i.i.i.i.copy_to_user.exit85.i_crit_edge, label %if.end.i.i80.i

if.then.i.i.i.i.copy_to_user.exit85.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit85.i

if.end.i.i80.i:                                   ; preds = %if.then.i.i.i.i
  %237 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %232, i32 -1226833920) #14, !srcloc !72
  %asmresult.i.i78.i = extractvalue { i32, i32 } %237, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i78.i)
  %cmp.i6.i79.i = icmp eq i32 %asmresult.i.i78.i, 0
  br i1 %cmp.i6.i79.i, label %if.then2.i.i83.i, label %if.end.i.i80.i.copy_to_user.exit85.i_crit_edge

if.end.i.i80.i.copy_to_user.exit85.i_crit_edge:   ; preds = %if.end.i.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit85.i

if.then2.i.i83.i:                                 ; preds = %if.end.i.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i81.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val.i, i32 noundef %232) #10
  %call.i12.i.i82.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val.i, i32 noundef %232) #10
  br label %copy_to_user.exit85.i

copy_to_user.exit85.i:                            ; preds = %if.then2.i.i83.i, %if.end.i.i80.i.copy_to_user.exit85.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit85.i_crit_edge
  %n.addr.0.i84.i = phi i32 [ %232, %if.then.i.i.i.i.copy_to_user.exit85.i_crit_edge ], [ %call.i12.i.i82.i, %if.then2.i.i83.i ], [ %232, %if.end.i.i80.i.copy_to_user.exit85.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i84.i)
  %tobool526.not.i = icmp eq i32 %n.addr.0.i84.i, 0
  %.3.i = select i1 %tobool526.not.i, i32 0, i32 -14
  br label %do_ipv6_getsockopt.exit.thread

do_ipv6_getsockopt.exit.thread:                   ; preds = %copy_to_user.exit85.i, %sw.epilog.i.do_ipv6_getsockopt.exit.thread_crit_edge, %cleanup315.i, %if.end152.i.do_ipv6_getsockopt.exit.thread_crit_edge, %if.end20.i.do_ipv6_getsockopt.exit.thread_crit_edge, %if.end.i.do_ipv6_getsockopt.exit.thread_crit_edge
  %retval.5.i.ph = phi i32 [ %.3.i, %copy_to_user.exit85.i ], [ -14, %sw.epilog.i.do_ipv6_getsockopt.exit.thread_crit_edge ], [ -107, %if.end20.i.do_ipv6_getsockopt.exit.thread_crit_edge ], [ -14, %if.end.i.do_ipv6_getsockopt.exit.thread_crit_edge ], [ -107, %if.end152.i.do_ipv6_getsockopt.exit.thread_crit_edge ], [ %retval.3.i, %cleanup315.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %cleanup34

do_ipv6_getsockopt.exit.thread60:                 ; preds = %sw.bb.i.do_ipv6_getsockopt.exit.thread60_crit_edge, %if.end8.i.do_ipv6_getsockopt.exit.thread60_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %land.lhs.true10

do_ipv6_getsockopt.exit:                          ; preds = %cleanup439.i, %if.end216.i, %do.end209.i.do_ipv6_getsockopt.exit_crit_edge, %cleanup.i, %sw.bb28.i, %if.then.i
  %retval.5.i = phi i32 [ %call2.i, %if.then.i ], [ %retval.4.i, %cleanup439.i ], [ %retval.0.i, %cleanup.i ], [ %call33.i, %sw.bb28.i ], [ %113, %if.end216.i ], [ %call212.i, %do.end209.i.do_ipv6_getsockopt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -92, i32 %retval.5.i)
  %cmp8 = icmp eq i32 %retval.5.i, -92
  br i1 %cmp8, label %do_ipv6_getsockopt.exit.land.lhs.true10_crit_edge, label %do_ipv6_getsockopt.exit.cleanup34_crit_edge

do_ipv6_getsockopt.exit.cleanup34_crit_edge:      ; preds = %do_ipv6_getsockopt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

do_ipv6_getsockopt.exit.land.lhs.true10_crit_edge: ; preds = %do_ipv6_getsockopt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true10

land.lhs.true10:                                  ; preds = %do_ipv6_getsockopt.exit.land.lhs.true10_crit_edge, %do_ipv6_getsockopt.exit.thread60
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %optname)
  %cmp11.not = icmp eq i32 %optname, 6
  br i1 %cmp11.not, label %land.lhs.true10.cleanup34_crit_edge, label %if.then13

land.lhs.true10.cleanup34_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.then13:                                        ; preds = %land.lhs.true10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1499) #10
  %238 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i = and i32 %238, -16384
  %239 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %239, i32 0, i32 4
  %240 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !59
  %and.i = and i32 %240, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %241 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #10, !srcloc !75
  %asmresult = extractvalue { i32, i32 } %241, 0
  %asmresult15 = extractvalue { i32, i32 } %241, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %240) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %242 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %asmresult15, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.then13
  %call19 = call i32 @nf_getsockopt(ptr noundef %sk, i8 noundef zeroext 10, i32 noundef %optname, ptr noundef %optval, ptr noundef nonnull %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp20 = icmp sgt i32 %call19, -1
  br i1 %cmp20, label %if.then22, label %if.end18.cleanup.thread_crit_edge

if.end18.cleanup.thread_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %243 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %len, align 4
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1504) #10
  %245 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i51 = and i32 %245, -16384
  %246 = inttoptr i32 %and.i.i.i51 to ptr
  %cpu_domain.i.i52 = getelementptr inbounds %struct.thread_info, ptr %246, i32 0, i32 4
  %247 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i52) #7, !srcloc !59
  %and.i53 = and i32 %247, -13
  %or.i54 = or i32 %and.i53, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i54) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %248 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %244, i32 -1226833921) #10, !srcloc !76
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %247) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then22, %if.end18.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call19, %if.end18.cleanup.thread_crit_edge ], [ %248, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  br label %cleanup34

cleanup:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup, %cleanup.thread, %land.lhs.true10.cleanup34_crit_edge, %do_ipv6_getsockopt.exit.cleanup34_crit_edge, %do_ipv6_getsockopt.exit.thread, %if.then, %land.lhs.true.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.1 = phi i32 [ %call, %if.then ], [ -14, %cleanup ], [ -92, %entry.cleanup34_crit_edge ], [ -92, %land.lhs.true.cleanup34_crit_edge ], [ -92, %land.lhs.true10.cleanup34_crit_edge ], [ %retval.5.i, %do_ipv6_getsockopt.exit.cleanup34_crit_edge ], [ %retval.5.i.ph, %do_ipv6_getsockopt.exit.thread ], [ %err.1.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_getsockopt(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9.i.i.i = icmp slt i32 %size, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then27.i.i.i, !prof !48

land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_sockptr_offset.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_sockptr_offset.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #14, !srcloc !58
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !59
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !48

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ], [ %size, %if.then27.i.i.i ], [ %size, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mroute_setsockopt(ptr noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fl6_free_socklist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ipv6_sock_mc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ipv6_sock_ac_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_prot_inuse_add(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %prot, i32 noundef %val) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !77
  %prot_inuse = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 29, i32 2
  %1 = ptrtoint ptr %prot_inuse to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prot_inuse, align 8
  %inuse_idx = getelementptr inbounds %struct.proto, ptr %prot, i32 0, i32 26
  %3 = ptrtoint ptr %inuse_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inuse_idx, align 4
  %arrayidx = getelementptr %struct.prot_inuse, ptr %2, i32 0, i32 1, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add15 = add i32 %14, %val
  store i32 %add15, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !78
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end30_crit_edge, !prof !51

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30

do.end30:                                         ; preds = %if.then, %entry.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @txopt_put(ptr noundef %opt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr nonnull %opt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %opt, ptr nonnull %opt, i32 1, ptr nonnull elementtype(i32) %opt) #10, !srcloc !47
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !48

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %opt, i32 noundef 3) #10
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !49
  %rcu = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 28 to ptr)) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sk_dev_equal_l3scope(ptr nocapture noundef readonly %sk, i32 noundef %dif) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dif)
  %cmp = icmp eq i32 %1, %dif
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dif)
  %tobool.not.i = icmp eq i32 %dif, 0
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %if.then.i, !prof !51

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then.i:                                        ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %3, i32 noundef %dif) #10
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %if.then4.i

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then4.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef nonnull %call.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %rc.0.i = phi i32 [ %call5.i, %if.then4.i ], [ 0, %rcu_read_lock.exit.i.if.end.i_crit_edge ]
  %call.i9.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i9.i, label %if.end.i.l3mdev_master_ifindex_by_index.exit_crit_edge, label %land.lhs.true.i12.i

if.end.i.l3mdev_master_ifindex_by_index.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l3mdev_master_ifindex_by_index.exit

land.lhs.true.i12.i:                              ; preds = %if.end.i
  %call1.i10.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i.l3mdev_master_ifindex_by_index.exit_crit_edge, label %land.lhs.true2.i14.i

land.lhs.true.i12.i.l3mdev_master_ifindex_by_index.exit_crit_edge: ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l3mdev_master_ifindex_by_index.exit

land.lhs.true2.i14.i:                             ; preds = %land.lhs.true.i12.i
  %.b4.i13.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i, label %land.lhs.true2.i14.i.l3mdev_master_ifindex_by_index.exit_crit_edge, label %if.then.i15.i

land.lhs.true2.i14.i.l3mdev_master_ifindex_by_index.exit_crit_edge: ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l3mdev_master_ifindex_by_index.exit

if.then.i15.i:                                    ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %l3mdev_master_ifindex_by_index.exit

l3mdev_master_ifindex_by_index.exit:              ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.l3mdev_master_ifindex_by_index.exit_crit_edge, %land.lhs.true.i12.i.l3mdev_master_ifindex_by_index.exit_crit_edge, %if.end.i.l3mdev_master_ifindex_by_index.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %8 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i16.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i16.i to ptr
  %preempt_count.i.i.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i17.i, align 4
  %sub.i.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i17.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool4.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool4.not, label %l3mdev_master_ifindex_by_index.exit.if.end9_crit_edge, label %land.lhs.true

l3mdev_master_ifindex_by_index.exit.if.end9_crit_edge: ; preds = %l3mdev_master_ifindex_by_index.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %l3mdev_master_ifindex_by_index.exit
  %12 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rc.0.i, i32 %13)
  %cmp7 = icmp eq i32 %rc.0.i, %13
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %l3mdev_master_ifindex_by_index.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end9 ], [ true, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !77
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !78
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !51

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !79
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_drop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_ac_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_ac_drop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_mcast_join_leave(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) unnamed_addr #0 align 64 {
entry:
  %greq = alloca %struct.group_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %greq) #10
  %0 = call ptr @memset(ptr %greq, i32 255, i32 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %optlen)
  %cmp = icmp ult i32 %optlen, 132
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %1 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 132, i32 -1226833920) #14, !srcloc !58
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %greq, i32 noundef 132) #10
  %3 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !59
  %and.i.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %greq, ptr noundef %1, i32 noundef 132) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end2_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !48

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end2_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i21 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 132, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 132, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 132, %res.0.i.i.i.i21
  %add.ptr.i.i.i.i = getelementptr i8, ptr %greq, i32 %sub.i.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i21)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call ptr @memcpy(ptr %greq, ptr %1, i32 132)
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end2_crit_edge
  %gr_group = getelementptr inbounds %struct.group_req, ptr %greq, i32 0, i32 1
  %8 = ptrtoint ptr %gr_group to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gr_group, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %cmp3.not = icmp eq i16 %9, 10
  br i1 %cmp3.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %optname)
  %cmp8 = icmp eq i32 %optname, 42
  %10 = ptrtoint ptr %greq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %greq, align 4
  %sin6_addr = getelementptr inbounds %struct.group_req, ptr %greq, i32 0, i32 1, i32 0, i32 1, i32 4
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 @ipv6_sock_mc_join(ptr noundef %sk, i32 noundef %11, ptr noundef %sin6_addr) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = call i32 @ipv6_sock_mc_drop(ptr noundef %sk, i32 noundef %11, ptr noundef %sin6_addr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.end2.cleanup_crit_edge, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then10 ], [ %call15, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %greq) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_set_mcast_msfilter(ptr noundef %sk, [2 x i32] %optval.coerce, i32 noundef %optlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %optlen)
  %cmp = icmp ult i32 %optlen, 140
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_optmem_max to i32))
  %0 = load i32, ptr @sysctl_optmem_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %optlen)
  %cmp1 = icmp slt i32 %0, %optlen
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call ptr @__kmalloc_track_caller(i32 noundef %optlen, i32 noundef 1060032, i32 noundef %2) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3.if.then5_crit_edge, label %if.end.i

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end.i:                                         ; preds = %if.end3
  %call2.i = tail call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %call.i, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %memdup_sockptr.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  br label %if.then5

memdup_sockptr.exit:                              ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %memdup_sockptr.exit.if.then5_crit_edge, label %if.end7

memdup_sockptr.exit.if.then5_crit_edge:           ; preds = %memdup_sockptr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %memdup_sockptr.exit.if.then5_crit_edge, %if.then4.i, %if.end3.if.then5_crit_edge
  %retval.0.i32 = phi ptr [ %call.i, %memdup_sockptr.exit.if.then5_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end3.if.then5_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then4.i ]
  %3 = ptrtoint ptr %retval.0.i32 to i32
  br label %cleanup

if.end7:                                          ; preds = %memdup_sockptr.exit
  %gf_numsrc = getelementptr inbounds %struct.anon.212, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %gf_numsrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gf_numsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554430, i32 %5)
  %cmp8 = icmp ugt i32 %5, 33554430
  br i1 %cmp8, label %if.end7.out_free_gsf_crit_edge, label %lor.lhs.false

if.end7.out_free_gsf_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_gsf

lor.lhs.false:                                    ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_mld_max_msf to i32))
  %6 = load i32, ptr @sysctl_mld_max_msf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp10 = icmp ugt i32 %5, %6
  br i1 %cmp10, label %lor.lhs.false.out_free_gsf_crit_edge, label %if.end12

lor.lhs.false.out_free_gsf_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_gsf

if.end12:                                         ; preds = %lor.lhs.false
  %mul = shl nuw i32 %5, 7
  %add = add nuw i32 %mul, 140
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %optlen)
  %cmp14 = icmp ugt i32 %add, %optlen
  br i1 %cmp14, label %if.end12.out_free_gsf_crit_edge, label %if.end16

if.end12.out_free_gsf_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_gsf

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %gf_slist_flex = getelementptr inbounds %struct.anon.212, ptr %call.i, i32 0, i32 4
  %call17 = tail call i32 @ip6_mc_msfilter(ptr noundef %sk, ptr noundef nonnull %call.i, ptr noundef %gf_slist_flex) #10
  br label %out_free_gsf

out_free_gsf:                                     ; preds = %if.end16, %if.end12.out_free_gsf_crit_edge, %lor.lhs.false.out_free_gsf_crit_edge, %if.end7.out_free_gsf_crit_edge
  %ret.0 = phi i32 [ -105, %if.end7.out_free_gsf_crit_edge ], [ -105, %lor.lhs.false.out_free_gsf_crit_edge ], [ -22, %if.end12.out_free_gsf_crit_edge ], [ %call17, %if.end16 ]
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_gsf, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %ret.0, %out_free_gsf ], [ -22, %entry.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_flowlabel_opt(ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_user_policy(ptr noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__ip6_sock_set_addr_preferences(ptr noundef %sk, i32 noundef %val) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %val, 259
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 256, label %sw.bb5
    i32 0, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %pref.0 = phi i32 [ %and, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb5 ], [ %and, %sw.bb2 ], [ %and, %sw.bb ]
  %prefmask.0 = phi i32 [ -1, %entry.sw.epilog_crit_edge ], [ -4, %sw.bb5 ], [ -4, %sw.bb2 ], [ -4, %sw.bb ]
  %and7 = and i32 %val, 1028
  %1 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and7, label %sw.epilog.cleanup_crit_edge [
    i32 1024, label %sw.bb8
    i32 4, label %sw.bb10
    i32 0, label %sw.epilog.sw.epilog13_crit_edge
  ]

sw.epilog.sw.epilog13_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %and9 = and i32 %prefmask.0, -5
  br label %sw.epilog13

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %or11 = or i32 %pref.0, 4
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %sw.bb10, %sw.bb8, %sw.epilog.sw.epilog13_crit_edge
  %pref.1 = phi i32 [ %pref.0, %sw.epilog.sw.epilog13_crit_edge ], [ %or11, %sw.bb10 ], [ %pref.0, %sw.bb8 ]
  %prefmask.1 = phi i32 [ %prefmask.0, %sw.epilog.sw.epilog13_crit_edge ], [ %prefmask.0, %sw.bb10 ], [ %and9, %sw.bb8 ]
  %and14 = and i32 %val, 2056
  %2 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and14, label %sw.epilog13.cleanup_crit_edge [
    i32 8, label %sw.epilog13.sw.epilog17_crit_edge
    i32 2048, label %sw.epilog13.sw.epilog17_crit_edge45
    i32 0, label %sw.epilog13.sw.epilog17_crit_edge46
  ]

sw.epilog13.sw.epilog17_crit_edge46:              ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17

sw.epilog13.sw.epilog17_crit_edge45:              ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17

sw.epilog13.sw.epilog17_crit_edge:                ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17

sw.epilog13.cleanup_crit_edge:                    ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog17:                                      ; preds = %sw.epilog13.sw.epilog17_crit_edge, %sw.epilog13.sw.epilog17_crit_edge45, %sw.epilog13.sw.epilog17_crit_edge46
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sw.epilog17.inet6_sk.exit_crit_edge, label %cond.true.i

sw.epilog17.inet6_sk.exit_crit_edge:              ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %5 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %sw.epilog17.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ null, %sw.epilog17.inet6_sk.exit_crit_edge ]
  %srcprefs = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %7 = ptrtoint ptr %srcprefs to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %srcprefs, align 2
  %bf.lshr = lshr i16 %bf.load, 6
  %conv = zext i16 %bf.lshr to i32
  %and18 = and i32 %prefmask.1, %conv
  %or19 = or i32 %and18, %pref.1
  %conv20 = trunc i32 %or19 to i16
  %8 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i37 = zext i8 %9 to i32
  %shl.i.i38 = shl nuw i32 1, %conv.i.i37
  %and.i.i39 = and i32 %shl.i.i38, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.i.not.i40 = icmp eq i32 %and.i.i39, 0
  br i1 %tobool.i.not.i40, label %inet6_sk.exit.inet6_sk.exit44_crit_edge, label %cond.true.i42

inet6_sk.exit.inet6_sk.exit44_crit_edge:          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit44

cond.true.i42:                                    ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i41 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %10 = ptrtoint ptr %pinet6.i41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pinet6.i41, align 8
  br label %inet6_sk.exit44

inet6_sk.exit44:                                  ; preds = %cond.true.i42, %inet6_sk.exit.inet6_sk.exit44_crit_edge
  %cond.i43 = phi ptr [ %11, %cond.true.i42 ], [ null, %inet6_sk.exit.inet6_sk.exit44_crit_edge ]
  %srcprefs22 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i43, i32 0, i32 10
  %12 = ptrtoint ptr %srcprefs22 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load23 = load i16, ptr %srcprefs22, align 2
  %bf.value = shl i16 %conv20, 6
  %bf.shl = and i16 %bf.value, 448
  %bf.clear24 = and i16 %bf.load23, -449
  %bf.set = or i16 %bf.clear24, %bf.shl
  store i16 %bf.set, ptr %srcprefs22, align 2
  br label %cleanup

cleanup:                                          ; preds = %inet6_sk.exit44, %sw.epilog13.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %inet6_sk.exit44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lockdep_sock_is_held(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map2 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6 = tail call i32 @lock_is_held_type(ptr noundef %dep_map2, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool4 = icmp ne i32 %call.i6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %0 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool4, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_renew_options(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @seg6_validate_srh(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_join_ssm(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mc_source(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mc_msfilter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mroute_getsockopt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_get_msfilter(ptr noundef %sk, ptr noundef %optval, ptr noundef %optlen, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %gsf = alloca %struct.group_filter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %gsf) #10
  %0 = call ptr @memset(ptr %gsf, i32 255, i32 268)
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %len)
  %cmp = icmp slt i32 %len, 140
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 140, i32 -1226833920) #14
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !48

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gsf, i32 noundef 140) #10
  %2 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !59
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %gsf, ptr noundef %optval, i32 noundef 140) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !48

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i47 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 140, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 140, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 140, %res.0.i.i47
  %add.ptr.i.i = getelementptr i8, ptr %gsf, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i47)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %gf_group = getelementptr inbounds %struct.anon.212, ptr %gsf, i32 0, i32 1
  %6 = ptrtoint ptr %gf_group to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gf_group, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp3.not = icmp eq i16 %7, 10
  br i1 %cmp3.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %gf_numsrc = getelementptr inbounds %struct.anon.212, ptr %gsf, i32 0, i32 3
  %8 = ptrtoint ptr %gf_numsrc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gf_numsrc, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %gf_slist_flex = getelementptr inbounds %struct.anon.212, ptr %optval, i32 0, i32 4
  %call7 = call i32 @ip6_mc_msfget(ptr noundef %sk, ptr noundef nonnull %gsf, ptr noundef %gf_slist_flex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end23_crit_edge

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then9:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %gf_numsrc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gf_numsrc, align 4
  %12 = call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %mul = shl i32 %12, 7
  %add = add i32 %mul, 140
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1085) #10
  %13 = call i32 @llvm.read_register.i32(metadata !36) #10
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !59
  %and.i = and i32 %15, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %16 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %add, i32 -1226833921) #10, !srcloc !81
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %if.end8.i.i38, label %if.then9.if.then21_crit_edge

if.then9.if.then21_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.end8.i.i38:                                    ; preds = %if.then9
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i39 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i39, label %if.end8.i.i38.if.then21_crit_edge, label %copy_to_user.exit

if.end8.i.i38.if.then21_crit_edge:                ; preds = %if.end8.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

copy_to_user.exit:                                ; preds = %if.end8.i.i38
  %call.i.i.i43 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %gsf, i32 noundef 140) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %gsf, i32 noundef 140) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool20.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool20.not, label %copy_to_user.exit.if.end23_crit_edge, label %copy_to_user.exit.if.then21_crit_edge

copy_to_user.exit.if.then21_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

copy_to_user.exit.if.end23_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %copy_to_user.exit.if.then21_crit_edge, %if.end8.i.i38.if.then21_crit_edge, %if.then9.if.then21_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %copy_to_user.exit.if.end23_crit_edge, %if.end6.if.end23_crit_edge
  %err.0 = phi i32 [ %call7, %if.end6.if.end23_crit_edge ], [ -14, %if.then21 ], [ 0, %copy_to_user.exit.if.end23_crit_edge ]
  call void @release_sock(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %gsf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__sk_dst_get(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %sk_dst_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_dst_cache, align 4
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lockdep_sock_is_held.exit, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

lockdep_sock_is_held.exit:                        ; preds = %entry
  %dep_map2.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool4.i.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool4.i.not, label %lor.lhs.false, label %lockdep_sock_is_held.exit.do.end8_crit_edge

lockdep_sock_is_held.exit.do.end8_crit_edge:      ; preds = %lockdep_sock_is_held.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

lor.lhs.false:                                    ; preds = %lockdep_sock_is_held.exit
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end8_crit_edge

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 2068, ptr noundef nonnull @.str.10) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %lor.lhs.false.do.end8_crit_edge, %lockdep_sock_is_held.exit.do.end8_crit_edge, %entry.do.end8_crit_edge
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_getsockopt_sticky(ptr noundef readonly %opt, i32 noundef %optname, ptr noundef %optval, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %optname, label %if.end.cleanup_crit_edge [
    i32 54, label %sw.bb
    i32 55, label %sw.bb1
    i32 57, label %sw.bb2
    i32 59, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dst0opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 5
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dst1opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %hdr.0.in = phi ptr [ %dst1opt, %sw.bb3 ], [ %srcrt, %sw.bb2 ], [ %dst0opt, %sw.bb1 ], [ %hopopt, %sw.bb ]
  %1 = ptrtoint ptr %hdr.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %hdr.0 = load ptr, ptr %hdr.0.in, align 4
  %tobool4.not = icmp eq ptr %hdr.0, null
  br i1 %tobool4.not, label %sw.epilog.cleanup_crit_edge, label %if.end6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %sw.epilog
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %hdr.0, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %3 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %4 = tail call i32 @llvm.umin.i32(i32 %shl, i32 %len)
  tail call void @__check_object_size(ptr noundef nonnull %hdr.0, i32 noundef %4, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end6.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end6.copy_to_user.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end6
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %4, i32 -1226833920) #14, !srcloc !72
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hdr.0, i32 noundef %4) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %hdr.0, i32 noundef %4) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end6.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %4, %if.end6.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %4, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool8.not, i32 %4, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_flowlabel_opt_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip6_autoflowlabel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mc_msfget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !29, !30, !32, !34, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/ipv6_sockglue.c", i32 56, i32 1}
!2 = !{ptr @ip6_ra_lock, !1, !"ip6_ra_lock", i1 false, i1 false}
!3 = !{ptr @ip6_min_hopcount, !4, !"ip6_min_hopcount", i1 false, i1 false}
!4 = !{!"../net/ipv6/ipv6_sockglue.c", i32 58, i32 1}
!5 = !{ptr @__ksymtab_ipv6_setsockopt, !6, !"__ksymtab_ipv6_setsockopt", i1 false, i1 false}
!6 = !{!"../net/ipv6/ipv6_sockglue.c", i32 1028, i32 1}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/ipv6/ipv6_sockglue.c", i32 1499, i32 7}
!9 = !{ptr @__ksymtab_ipv6_getsockopt, !10, !"__ksymtab_ipv6_getsockopt", i1 false, i1 false}
!10 = !{!"../net/ipv6/ipv6_sockglue.c", i32 1509, i32 1}
!11 = !{ptr @ip6_ra_chain, !12, !"ip6_ra_chain", i1 false, i1 false}
!12 = !{!"../net/ipv6/ipv6_sockglue.c", i32 55, i32 22}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/ipv6/ipv6_sockglue.c", i32 353, i32 8}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/ipv6/ipv6_sockglue.c", i32 1266, i32 9}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/net/sock.h", i32 2067, i32 9}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148460641}
!47 = !{i64 2148375081, i64 2148375113, i64 2148375142, i64 2148375176, i64 2148375207, i64 2148375230}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2149336755}
!50 = !{i64 2148372616, i64 2148372648, i64 2148372677, i64 2148372711, i64 2148372742, i64 2148372765}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2159249750}
!53 = !{i64 877854, i64 877871, i64 877895, i64 877921, i64 877939}
!54 = !{i64 2159250095}
!55 = !{i64 2156780841}
!56 = !{i64 2156781186}
!57 = !{!"auto-init"}
!58 = !{i64 2152525397, i64 2152525422}
!59 = !{i64 5020952}
!60 = !{i64 5021149}
!61 = !{i64 2152506382}
!62 = !{i64 2159253734}
!63 = !{i64 2159254087}
!64 = !{i64 2148373551, i64 2148373577, i64 2148373606, i64 2148373640, i64 2148373671, i64 2148373694}
!65 = !{i64 2159254974}
!66 = !{i64 2159255327}
!67 = !{i64 2149387245}
!68 = !{i64 2159318868, i64 2159319148, i64 2159319482, i64 2159319816}
!69 = !{i64 2159328546, i64 2159328826, i64 2159329160, i64 2159329494}
!70 = !{i64 2159338111, i64 2159338391, i64 2159338725, i64 2159339059}
!71 = !{i64 2159346931, i64 2159347211, i64 2159347545, i64 2159347879}
!72 = !{i64 2152526078, i64 2152526103}
!73 = !{i64 2159355919, i64 2159356199, i64 2159356533, i64 2159356867}
!74 = !{i64 2159370734, i64 2159371014, i64 2159371348, i64 2159371682}
!75 = !{i64 2159382238, i64 2159382518, i64 2159382852, i64 2159383186}
!76 = !{i64 2159391724, i64 2159392004, i64 2159392338, i64 2159392672}
!77 = !{i64 774786, i64 774847}
!78 = !{i64 777518}
!79 = !{i64 777803}
!80 = !{i64 2149387511}
!81 = !{i64 2159268456, i64 2159268736, i64 2159269070, i64 2159269404}
