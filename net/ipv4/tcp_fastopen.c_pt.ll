; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_fastopen.c_pt.bc'
source_filename = "../net/ipv4/tcp_fastopen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tcp_fastopen_defer_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_fastopen_defer_connect\09\09\09\09"
module asm "\09.long\09__crc_tcp_fastopen_defer_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_fastopen_defer_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_fastopen_defer_connect\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_fastopen_defer_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.183, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.183 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.tcp_fastopen_context = type { [2 x %struct.siphash_key_t], i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.174, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.175, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.176, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.170, [0 x i32], %union.anon.171, i16, i16, %union.anon.172, %struct.refcount_struct, [0 x i32], %union.anon.173 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { %struct.hlist_node }
%union.anon.172 = type { i32 }
%union.anon.173 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.174 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.175 = type { ptr }
%union.anon.176 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.181 }
%union.anon.181 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.82, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.168, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.168 = type { ptr }
%struct.tcp_fastopen_cookie = type { [2 x i64], i8, i8 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.207 }
%union.anon.207 = type { %struct.anon.208 }
%struct.anon.208 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@tcp_fastopen_init_key_once.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ipv4/tcp_fastopen.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tcp_fastopen_get_cipher.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_fastopen_get_cipher.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_tcp_fastopen_defer_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_fastopen_defer_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_fastopen_defer_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_fastopen_defer_connect to i32), ptr @__kstrtab_tcp_fastopen_defer_connect, ptr @__kstrtabns_tcp_fastopen_defer_connect }, section "___ksymtab+tcp_fastopen_defer_connect", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/request_sock.h\00", [37 x i8] zeroinitializer }, align 32
@tcp_fastopen_get_ctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/tcp.h\00", [46 x i8] zeroinitializer }, align 32
@tcp_fastopen_get_ctx.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__const.tcp_fastopen_cookie_gen_check.search_foc = private unnamed_addr constant { [2 x i64], i8, i8, [6 x i8] } { [2 x i64] zeroinitializer, i8 -1, i8 0, [6 x i8] zeroinitializer }, align 8
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@___asan_gen_.22 = private constant [27 x i8] c"../net/ipv4/tcp_fastopen.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 13, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [30 x i8] c"../include/net/request_sock.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 126, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"../include/net/tcp.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 1754, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 2067, i32 9 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_tcp_fastopen_defer_connect, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.16], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_init_key_once(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #9
  %0 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 8
  %1 = call ptr @memset(ptr %key, i32 255, i32 16)
  %2 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tcp_fastopen_ctx = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 111
  %6 = ptrtoint ptr %tcp_fastopen_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tcp_fastopen_ctx, align 8
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @tcp_fastopen_init_key_once.__warned, align 1
  br i1 %.b16, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_fastopen_init_key_once.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 13, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %7, null
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.end7
  br i1 %call.i26, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.then10
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %8 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  br i1 %call.i26, label %if.end11.rcu_read_unlock.exit36_crit_edge, label %land.lhs.true.i29

if.end11.rcu_read_unlock.exit36_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36

land.lhs.true.i29:                                ; preds = %if.end11
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %rcu_read_unlock.exit36

rcu_read_unlock.exit36:                           ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge, %if.end11.rcu_read_unlock.exit36_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %12 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i33 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i35 = add i32 %15, -1
  store volatile i32 %sub.i.i.i35, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @get_random_bytes(ptr noundef nonnull %key, i32 noundef 16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 48) #12
  %tobool.not.i37 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i37, label %rcu_read_unlock.exit36.cleanup_crit_edge, label %if.end.i

rcu_read_unlock.exit36.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %rcu_read_unlock.exit36
  %17 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %key, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18) #9
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %call7.i.i, align 8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %0, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22) #9
  %arrayidx8.i = getelementptr [2 x i64], ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx8.i, align 8
  %25 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %25, align 8
  %call.i84.i = call zeroext i1 @__kasan_check_write(ptr noundef %tcp_fastopen_ctx, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @llvm.prefetch.p0(ptr %tcp_fastopen_ctx, i32 1, i32 3, i32 1) #9
  %28 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %27, ptr %tcp_fastopen_ctx) #9, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  %octx.0.in.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %octx.0.in.i)
  %tobool66.not.i = icmp eq i32 %octx.0.in.i, 0
  br i1 %tobool66.not.i, label %if.end.i.cleanup_crit_edge, label %if.then67.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then67.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %octx.0.i = inttoptr i32 %octx.0.in.i to ptr
  %rcu.i = getelementptr inbounds %struct.tcp_fastopen_context, ptr %octx.0.i, i32 0, i32 2
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tcp_fastopen_ctx_free) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then67.i, %if.end.i.cleanup_crit_edge, %rcu_read_unlock.exit36.cleanup_crit_edge, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp_fastopen_reset_cipher(ptr noundef %net, ptr noundef %sk, ptr nocapture noundef readonly %primary_key, ptr noundef readonly %backup_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 48) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %primary_key to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %primary_key, align 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %2) #9
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %call7.i, align 8
  %add.ptr = getelementptr i8, ptr %primary_key, i32 8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %add.ptr, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #9
  %arrayidx8 = getelementptr [2 x i64], ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx8, align 8
  %tobool9.not = icmp eq ptr %backup_key, null
  br i1 %tobool9.not, label %if.end.if.end23_crit_edge, label %if.then10

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %backup_key to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %backup_key, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #9
  %arrayidx13 = getelementptr [2 x %struct.siphash_key_t], ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx13, align 8
  %add.ptr16 = getelementptr i8, ptr %backup_key, i32 8
  %13 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %add.ptr16, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #9
  %arrayidx21 = getelementptr [2 x %struct.siphash_key_t], ptr %call7.i, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx21, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then10, %if.end.if.end23_crit_edge
  %.sink = phi i32 [ 2, %if.then10 ], [ 1, %if.end.if.end23_crit_edge ]
  %17 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %17, align 8
  %tobool24.not = icmp eq ptr %sk, null
  br i1 %tobool24.not, label %if.else43, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %ctx27 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7, i32 5
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ctx27, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  %19 = ptrtoint ptr %call7.i to i32
  tail call void @llvm.prefetch.p0(ptr %ctx27, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %19, ptr %ctx27) #9, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  br label %if.end65

if.else43:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %tcp_fastopen_ctx = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 111
  %call.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tcp_fastopen_ctx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %21 = ptrtoint ptr %call7.i to i32
  tail call void @llvm.prefetch.p0(ptr %tcp_fastopen_ctx, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %21, ptr %tcp_fastopen_ctx) #9, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  br label %if.end65

if.end65:                                         ; preds = %if.else43, %if.then25
  %.pn = phi { i32, i32 } [ %20, %if.then25 ], [ %22, %if.else43 ]
  %octx.0.in = extractvalue { i32, i32 } %.pn, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %octx.0.in)
  %tobool66.not = icmp eq i32 %octx.0.in, 0
  br i1 %tobool66.not, label %if.end65.out_crit_edge, label %if.then67

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %octx.0 = inttoptr i32 %octx.0.in to ptr
  %rcu = getelementptr inbounds %struct.tcp_fastopen_context, ptr %octx.0, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @tcp_fastopen_ctx_free) #9
  br label %out

out:                                              ; preds = %if.then67, %if.end65.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %if.then67 ], [ 0, %if.end65.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_destroy_cipher(ptr nocapture noundef readonly %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7, i32 5
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rcu = getelementptr inbounds %struct.tcp_fastopen_context, ptr %1, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @tcp_fastopen_ctx_free) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_fastopen_ctx_free(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -36
  tail call void @kfree_sensitive(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_ctx_destroy(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp_fastopen_ctx = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 111
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tcp_fastopen_ctx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %tcp_fastopen_ctx, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %tcp_fastopen_ctx) #9, !srcloc !59
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = inttoptr i32 %asmresult.i to ptr
  %rcu = getelementptr inbounds %struct.tcp_fastopen_context, ptr %1, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @tcp_fastopen_ctx_free) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp_fastopen_get_cipher(ptr noundef %net, ptr noundef %icsk, ptr nocapture noundef writeonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %icsk, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  %ctx1 = getelementptr inbounds %struct.inet_connection_sock, ptr %icsk, i32 0, i32 1, i32 7, i32 5
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ctx1, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.if.end29_crit_edge

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true6

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b57 = load i1, ptr @tcp_fastopen_get_cipher.__warned, align 1
  br i1 %.b57, label %land.lhs.true6.if.end29_crit_edge, label %land.lhs.true6.if.end29.sink.split_crit_edge

land.lhs.true6.if.end29.sink.split_crit_edge:     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.sink.split

land.lhs.true6.if.end29_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else:                                          ; preds = %rcu_read_lock.exit
  %tcp_fastopen_ctx = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 111
  %6 = ptrtoint ptr %tcp_fastopen_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tcp_fastopen_ctx, align 8
  %call17 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true19:                                  ; preds = %if.else
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.if.end29_crit_edge, label %land.lhs.true22

land.lhs.true19.if.end29_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b5556 = load i1, ptr @tcp_fastopen_get_cipher.__warned.2, align 1
  br i1 %.b5556, label %land.lhs.true22.if.end29_crit_edge, label %land.lhs.true22.if.end29.sink.split_crit_edge

land.lhs.true22.if.end29.sink.split_crit_edge:    ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.sink.split

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end29.sink.split:                              ; preds = %land.lhs.true22.if.end29.sink.split_crit_edge, %land.lhs.true6.if.end29.sink.split_crit_edge
  %tcp_fastopen_get_cipher.__warned.2.sink = phi ptr [ @tcp_fastopen_get_cipher.__warned, %land.lhs.true6.if.end29.sink.split_crit_edge ], [ @tcp_fastopen_get_cipher.__warned.2, %land.lhs.true22.if.end29.sink.split_crit_edge ]
  %.sink = phi i32 [ 102, %land.lhs.true6.if.end29.sink.split_crit_edge ], [ 104, %land.lhs.true22.if.end29.sink.split_crit_edge ]
  %ctx.0.ph = phi ptr [ %5, %land.lhs.true6.if.end29.sink.split_crit_edge ], [ %7, %land.lhs.true22.if.end29.sink.split_crit_edge ]
  %8 = ptrtoint ptr %tcp_fastopen_get_cipher.__warned.2.sink to i32
  call void @__asan_store1_noabort(i32 %8)
  store i1 true, ptr %tcp_fastopen_get_cipher.__warned.2.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @.str.1) #9
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %land.lhs.true22.if.end29_crit_edge, %land.lhs.true19.if.end29_crit_edge, %if.else.if.end29_crit_edge, %land.lhs.true6.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.then.if.end29_crit_edge
  %ctx.0 = phi ptr [ %5, %land.lhs.true6.if.end29_crit_edge ], [ %5, %land.lhs.true.if.end29_crit_edge ], [ %5, %if.then.if.end29_crit_edge ], [ %7, %land.lhs.true22.if.end29_crit_edge ], [ %7, %land.lhs.true19.if.end29_crit_edge ], [ %7, %if.else.if.end29_crit_edge ], [ %ctx.0.ph, %if.end29.sink.split ]
  %tobool30.not = icmp eq ptr %ctx.0, null
  br i1 %tobool30.not, label %if.end29.if.end43_crit_edge, label %if.then31

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then31:                                        ; preds = %if.end29
  %num.i = getelementptr inbounds %struct.tcp_fastopen_context, ptr %ctx.0, i32 0, i32 1
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp67 = icmp sgt i32 %10, 0
  br i1 %cmp67, label %if.then31.for.body_crit_edge, label %if.then31.if.end43_crit_edge

if.then31.if.end43_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then31.for.body_crit_edge:                     ; preds = %if.then31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then31.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then31.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.siphash_key_t], ptr %ctx.0, i32 0, i32 %i.068
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx, align 8
  %mul = shl nuw i32 %i.068, 1
  %add.ptr = getelementptr i64, ptr %key, i32 %mul
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #9
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %add.ptr, align 1
  %arrayidx39 = getelementptr [2 x i64], ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx39, align 8
  %add.ptr42 = getelementptr i64, ptr %add.ptr, i32 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #9
  %18 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %add.ptr42, align 1
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.body.if.end43_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %for.body.if.end43_crit_edge, %if.then31.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  %n_keys.0 = phi i32 [ 0, %if.end29.if.end43_crit_edge ], [ %10, %if.then31.if.end43_crit_edge ], [ %10, %for.body.if.end43_crit_edge ]
  %call.i58 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i58, label %if.end43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i61

if.end43.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i61:                                ; preds = %if.end43
  %call1.i59 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, %if.end43.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %19 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i65 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i66, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %n_keys.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_add_skb(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end_seq, align 4
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %2 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rcv_nxt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end3.skb_dst_drop.exit_crit_edge, label %if.then.i

if.end3.skb_dst_drop.exit_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %if.end3
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i.i = and i32 %6, -2
  %7 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %7) #9
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %4, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end3.skb_dst_drop.exit_crit_edge
  %segs_in = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 5
  %9 = ptrtoint ptr %segs_in to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %segs_in, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gso_segs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i = icmp eq i16 %13, 0
  %narrow.i = select i1 %cmp.i, i16 1, i16 %13
  %cond.i = zext i16 %narrow.i to i32
  %14 = ptrtoint ptr %segs_in to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %cond.i, ptr %segs_in, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 19
  %19 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %20 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 %conv.i.i.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %22 = lshr i16 %bf.load.i.i.i, 10
  %23 = and i16 %22, 60
  %mul.i.i.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul.i.i.i)
  %cmp16.i = icmp ugt i32 %16, %mul.i.i.i
  br i1 %cmp16.i, label %do.body22.i, label %skb_dst_drop.exit.tcp_segs_in.exit_crit_edge

skb_dst_drop.exit.tcp_segs_in.exit_crit_edge:     ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_segs_in.exit

do.body22.i:                                      ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %data_segs_in.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 6
  %24 = ptrtoint ptr %data_segs_in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_segs_in.i, align 4
  %add24.i = add i32 %25, %cond.i
  store volatile i32 %add24.i, ptr %data_segs_in.i, align 4
  br label %tcp_segs_in.exit

tcp_segs_in.exit:                                 ; preds = %do.body22.i, %skb_dst_drop.exit.tcp_segs_in.exit_crit_edge
  %26 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i.i, align 8
  %28 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i = zext i16 %29 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %conv.i.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %31 = lshr i16 %bf.load.i.i, 10
  %32 = and i16 %31, 60
  %mul.i.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %34, %mul.i.i
  store i32 %sub.i, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 7
  %35 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %36)
  %cmp.i47 = icmp ult i32 %sub.i, %36
  br i1 %cmp.i47, label %do.body4.i, label %__skb_pull.exit, !prof !65

do.body4.i:                                       ; preds = %tcp_segs_in.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #9, !srcloc !66
  unreachable

__skb_pull.exit:                                  ; preds = %tcp_segs_in.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %mul.i.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 20
  %39 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %truesize, align 8
  tail call void @sk_forced_mem_schedule(ptr noundef %sk, i32 noundef %40) #9
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 4, i32 0, i32 1
  %41 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i48 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i48, label %do.body.i.i, label %if.then.i.i49

if.then.i.i49:                                    ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %42(ptr noundef nonnull %call1) #9
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %__skb_pull.exit
  %43 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool3.not.i.i = icmp eq ptr %45, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !67

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !68
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i49
  %46 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %sk, ptr %46, align 4
  %48 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @sock_rfree, ptr %destructor.i.i, align 4
  %49 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %50, ptr elementtype(i32) %sk_backlog.i) #9, !srcloc !69
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %52 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %53, i32 0, i32 32
  %54 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %truesize, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %58 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %59, %57
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  %cb6 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3
  %60 = ptrtoint ptr %cb6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cb6, align 8
  %inc = add i32 %61, 1
  store i32 %inc, ptr %cb6, align 8
  %tcp_flags = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 12
  %62 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tcp_flags, align 4
  %64 = and i8 %63, -3
  store i8 %64, ptr %tcp_flags, align 4
  %end_seq13 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 4
  %65 = ptrtoint ptr %end_seq13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %end_seq13, align 4
  %67 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rcv_nxt, align 8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %sk_receive_queue, ptr %call1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call1, i32 0, i32 1
  %71 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %prev10.i.i.i, align 4
  store volatile ptr %call1, ptr %prev.i.i, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %call1, ptr %69, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %syn_data_acked = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %75 = ptrtoint ptr %syn_data_acked to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load = load i8, ptr %syn_data_acked, align 1
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %syn_data_acked, align 1
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i, align 4
  %conv15 = zext i32 %77 to i64
  %bytes_received = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 4
  %78 = ptrtoint ptr %bytes_received to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv15, ptr %bytes_received, align 8
  %79 = load i8, ptr %tcp_flags, align 4
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool21.not = icmp eq i8 %80, 0
  br i1 %tobool21.not, label %skb_set_owner_r.exit.cleanup_crit_edge, label %if.then22

skb_set_owner_r.exit.cleanup_crit_edge:           ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_fin(ptr noundef %sk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %skb_set_owner_r.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_forced_mem_schedule(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tcp_try_fastopen(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr nocapture noundef %foc, ptr noundef readonly %dst) local_unnamed_addr #0 align 64 {
entry:
  %own_req.i = alloca i8, align 1
  %search_foc.i = alloca %struct.tcp_fastopen_cookie, align 8
  %valid_foc = alloca %struct.tcp_fastopen_cookie, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end_seq, align 4
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb, align 8
  %add = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.not = icmp eq i32 %1, %add
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_fastopen = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 109
  %6 = ptrtoint ptr %sysctl_tcp_fastopen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysctl_tcp_fastopen, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %valid_foc) #9
  %8 = call ptr @memcpy(ptr %valid_foc, ptr @__const.tcp_fastopen_cookie_gen_check.search_foc, i32 24)
  %len = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %foc, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp3 = icmp eq i8 %10, 0
  br i1 %cmp3, label %do.body5, label %entry.if.end48_crit_edge

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.body5:                                         ; preds = %entry
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 3
  %14 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_statistics, align 4
  %arrayidx20 = getelementptr [126 x i32], ptr %15, i32 0, i32 89
  %16 = ptrtoint ptr %arrayidx20 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx23 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %22, %16
  %23 = inttoptr i32 %add24 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add25 = add i32 %25, 1
  store i32 %add25, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then39, label %do.body5.do.end41_crit_edge, !prof !65

do.body5.do.end41_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

if.then39:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end41

do.end41:                                         ; preds = %if.then39, %do.body5.do.end41_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #9, !srcloc !72
  br label %if.end48

if.end48:                                         ; preds = %do.end41, %entry.if.end48_crit_edge
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.end48.if.then59_crit_edge, label %land.lhs.true

if.end48.if.then59_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

land.lhs.true:                                    ; preds = %if.end48
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.land.lhs.true56_crit_edge

land.lhs.true.land.lhs.true56_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true56

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp54 = icmp sgt i8 %28, -1
  br i1 %cmp54, label %lor.lhs.false.land.lhs.true56_crit_edge, label %lor.lhs.false.if.then59_crit_edge

lor.lhs.false.if.then59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

lor.lhs.false.land.lhs.true56_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true56

land.lhs.true56:                                  ; preds = %lor.lhs.false.land.lhs.true56_crit_edge, %land.lhs.true.land.lhs.true56_crit_edge
  %fastopenq1.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7
  %max_qlen.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7, i32 4
  %29 = ptrtoint ptr %max_qlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %land.lhs.true56.if.then59_crit_edge, label %if.end.i

land.lhs.true56.if.then59_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

if.end.i:                                         ; preds = %land.lhs.true56
  %qlen.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7, i32 3
  %31 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp3.not.i = icmp slt i32 %32, %30
  br i1 %cmp3.not.i, label %if.end.i.if.end61_crit_edge, label %if.then4.i

if.end.i.if.end61_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then4.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %33 = ptrtoint ptr %fastopenq1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fastopenq1.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.then4.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.then4.i.if.then6.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.then4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %expires.i = getelementptr inbounds %struct.request_sock, ptr %34, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %expires.i, align 4
  %sub.i = sub i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp slt i32 %sub.i, 0
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %if.end23.i

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.then4.i.if.then6.i_crit_edge
  %38 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skc_net.i, align 4
  %net_statistics.i = getelementptr inbounds %struct.net, ptr %39, i32 0, i32 30, i32 3
  %40 = ptrtoint ptr %net_statistics.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_statistics.i, align 4
  %arrayidx.i = getelementptr [126 x i32], ptr %41, i32 0, i32 88
  %42 = ptrtoint ptr %arrayidx.i to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i384 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i384 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i, align 4
  %arrayidx16.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx16.i, align 4
  %add.i = add i32 %48, %42
  %49 = inttoptr i32 %add.i to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add17.i = add i32 %51, 1
  store i32 %add17.i, ptr %49, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %if.then59

if.end23.i:                                       ; preds = %lor.lhs.false.i
  %dl_next.i = getelementptr inbounds %struct.request_sock, ptr %34, i32 0, i32 1
  %52 = ptrtoint ptr %dl_next.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dl_next.i, align 8
  %54 = ptrtoint ptr %fastopenq1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %fastopenq1.i, align 4
  %55 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qlen.i, align 4
  %dec.i = add i32 %56, -1
  store i32 %dec.i, ptr %qlen.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %34, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #9
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end61_crit_edge, label %if.then10.i.i.i.i.i, !prof !67

if.end5.i.i.i.i.i.if.end61_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #9
  br label %if.end61

if.then.i.i:                                      ; preds = %if.end23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  %58 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i.i.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i.i.i, label %if.then.i.i.if.end27.i.i.i_crit_edge, label %land.rhs.i.i.i

if.then.i.i.if.end27.i.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i
  %.b38.i.i.i = load i1, ptr @reqsk_free.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.rhs.i.i.i.if.end27.i.i.i_crit_edge, label %if.then.i.i.i, !prof !67

land.rhs.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 126, i32 noundef 9, ptr noundef null) #9
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.end27.i.i.i_crit_edge, %if.then.i.i.if.end27.i.i.i_crit_edge
  %rsk_ops.i.i.i.i = getelementptr inbounds %struct.request_sock, ptr %34, i32 0, i32 7
  %60 = ptrtoint ptr %rsk_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rsk_ops.i.i.i.i, align 4
  %destructor.i.i.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %destructor.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %destructor.i.i.i.i, align 4
  tail call void %63(ptr noundef nonnull %34) #9
  %64 = getelementptr inbounds %struct.sock_common, ptr %34, i32 0, i32 13
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i.i.i, label %if.end27.i.i.i.reqsk_free.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.end27.i.i.i.reqsk_free.exit.i.i_crit_edge:     ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reqsk_free.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end27.i.i.i
  %skc_refcnt.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %66, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i.i, ptr %skc_refcnt.i.i.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.reqsk_free.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !67

if.end5.i.i.i.i.i.i.i.i.reqsk_free.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reqsk_free.exit.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i.i, i32 noundef 3) #9
  br label %reqsk_free.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @sk_free(ptr noundef nonnull %66) #9
  br label %reqsk_free.exit.i.i

reqsk_free.exit.i.i:                              ; preds = %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.reqsk_free.exit.i.i_crit_edge, %if.end27.i.i.i.reqsk_free.exit.i.i_crit_edge
  %saved_syn.i.i.i.i = getelementptr inbounds %struct.request_sock, ptr %34, i32 0, i32 9
  %68 = ptrtoint ptr %saved_syn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %saved_syn.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %69) #9
  %70 = ptrtoint ptr %rsk_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rsk_ops.i.i.i.i, align 4
  %slab.i.i.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %slab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %slab.i.i.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %73, ptr noundef nonnull %34) #9
  br label %if.end61

if.then59:                                        ; preds = %if.then6.i, %land.lhs.true56.if.then59_crit_edge, %lor.lhs.false.if.then59_crit_edge, %if.end48.if.then59_crit_edge
  %74 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %len, align 8
  br label %cleanup

if.end61:                                         ; preds = %reqsk_free.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end61_crit_edge, %if.end.i.if.end61_crit_edge
  %75 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_fastopen.i = getelementptr inbounds %struct.net, ptr %76, i32 0, i32 35, i32 109
  %77 = ptrtoint ptr %sysctl_tcp_fastopen.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sysctl_tcp_fastopen.i, align 16
  %and.i386 = and i32 %78, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i386)
  %tobool.not.i387 = icmp eq i32 %and.i386, 0
  br i1 %tobool.not.i387, label %lor.lhs.false.i388, label %if.end61.fastopen_crit_edge

if.end61.fastopen_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %fastopen

lor.lhs.false.i388:                               ; preds = %if.end61
  %fastopen_no_cookie.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %79 = ptrtoint ptr %fastopen_no_cookie.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load.i = load i16, ptr %fastopen_no_cookie.i, align 4
  %80 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool2.not.i = icmp eq i16 %80, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i388.fastopen_crit_edge

lor.lhs.false.i388.fastopen_crit_edge:            ; preds = %lor.lhs.false.i388
  call void @__sanitizer_cov_trace_pc() #11
  br label %fastopen

lor.rhs.i:                                        ; preds = %lor.lhs.false.i388
  %tobool3.not.i = icmp eq ptr %dst, null
  br i1 %tobool3.not.i, label %lor.rhs.i.if.end64_crit_edge, label %tcp_fastopen_no_cookie.exit

lor.rhs.i.if.end64_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

tcp_fastopen_no_cookie.exit:                      ; preds = %lor.rhs.i
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %81 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %82, -4
  %83 = inttoptr i32 %and.i.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %83, i32 16
  %84 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool5.i.not = icmp eq i32 %85, 0
  br i1 %tobool5.i.not, label %tcp_fastopen_no_cookie.exit.if.end64_crit_edge, label %tcp_fastopen_no_cookie.exit.fastopen_crit_edge

tcp_fastopen_no_cookie.exit.fastopen_crit_edge:   ; preds = %tcp_fastopen_no_cookie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fastopen

tcp_fastopen_no_cookie.exit.if.end64_crit_edge:   ; preds = %tcp_fastopen_no_cookie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end64:                                         ; preds = %tcp_fastopen_no_cookie.exit.if.end64_crit_edge, %lor.rhs.i.if.end64_crit_edge
  %86 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp67 = icmp eq i8 %87, 0
  br i1 %cmp67, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.end64
  %88 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %91, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then69.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then69.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then69
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i389

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i389:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i389, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then69.rcu_read_lock.exit.i_crit_edge
  %ctx1.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7, i32 5
  %92 = ptrtoint ptr %ctx1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %ctx1.i.i, align 4
  %call3.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i3.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i, label %rcu_read_lock.exit.i.do.end9.i.i_crit_edge

rcu_read_lock.exit.i.do.end9.i.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i4.i.do.end9.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i4.i.do.end9.i.i_crit_edge:         ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i4.i
  %.b36.i.i = load i1, ptr @tcp_fastopen_get_ctx.__warned, align 1
  br i1 %.b36.i.i, label %land.lhs.true6.i.i.do.end9.i.i_crit_edge, label %if.then.i5.i

land.lhs.true6.i.i.do.end9.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

if.then.i5.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_fastopen_get_ctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1754, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.then.i5.i, %land.lhs.true6.i.i.do.end9.i.i_crit_edge, %land.lhs.true.i4.i.do.end9.i.i_crit_edge, %rcu_read_lock.exit.i.do.end9.i.i_crit_edge
  %tobool11.not.i.i = icmp eq ptr %93, null
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %do.end9.i.i.if.then.i_crit_edge

do.end9.i.i.if.then.i_crit_edge:                  ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then12.i.i:                                    ; preds = %do.end9.i.i
  %94 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %skc_net.i, align 4
  %tcp_fastopen_ctx.i.i = getelementptr inbounds %struct.net, ptr %95, i32 0, i32 35, i32 111
  %96 = ptrtoint ptr %tcp_fastopen_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %tcp_fastopen_ctx.i.i, align 8
  %call19.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true21.i.i, label %if.then12.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge

if.then12.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_get_ctx.exit.i

land.lhs.true21.i.i:                              ; preds = %if.then12.i.i
  %call22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true21.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge, label %land.lhs.true24.i.i

land.lhs.true21.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge: ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_get_ctx.exit.i

land.lhs.true24.i.i:                              ; preds = %land.lhs.true21.i.i
  %.b3435.i.i = load i1, ptr @tcp_fastopen_get_ctx.__warned.10, align 1
  br i1 %.b3435.i.i, label %land.lhs.true24.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge, label %if.then26.i.i

land.lhs.true24.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge: ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_get_ctx.exit.i

if.then26.i.i:                                    ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_fastopen_get_ctx.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1756, ptr noundef nonnull @.str.1) #9
  br label %tcp_fastopen_get_ctx.exit.i

tcp_fastopen_get_ctx.exit.i:                      ; preds = %if.then26.i.i, %land.lhs.true24.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge, %land.lhs.true21.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge, %if.then12.i.i.tcp_fastopen_get_ctx.exit.i_crit_edge
  %tobool.not.i390 = icmp eq ptr %97, null
  br i1 %tobool.not.i390, label %tcp_fastopen_get_ctx.exit.i.if.end.i391_crit_edge, label %tcp_fastopen_get_ctx.exit.i.if.then.i_crit_edge

tcp_fastopen_get_ctx.exit.i.if.then.i_crit_edge:  ; preds = %tcp_fastopen_get_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

tcp_fastopen_get_ctx.exit.i.if.end.i391_crit_edge: ; preds = %tcp_fastopen_get_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i391

if.then.i:                                        ; preds = %tcp_fastopen_get_ctx.exit.i.if.then.i_crit_edge, %do.end9.i.i.if.then.i_crit_edge
  %ctx.0.i18.i = phi ptr [ %97, %tcp_fastopen_get_ctx.exit.i.if.then.i_crit_edge ], [ %93, %do.end9.i.i.if.then.i_crit_edge ]
  %rsk_ops.i.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %98 = ptrtoint ptr %rsk_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rsk_ops.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i32 %101, label %if.then.i.if.end.i391_crit_edge [
    i32 2, label %if.then.i6.i
    i32 10, label %if.then5.i.i
  ]

if.then.i.if.end.i391_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i391

if.then.i6.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %103 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %105 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %106 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %104, i32 %conv.i.i.i.i
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %call.i.i.i = tail call i64 @__siphash_unaligned(ptr noundef %saddr.i.i, i32 noundef 8, ptr noundef nonnull %ctx.0.i18.i) #9
  br label %return.sink.split.i.i

if.then5.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %107 = ptrtoint ptr %head.i.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %head.i.i1.i.i, align 8
  %network_header.i.i2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %109 = ptrtoint ptr %network_header.i.i2.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %network_header.i.i2.i.i, align 4
  %conv.i.i3.i.i = zext i16 %110 to i32
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %108, i32 %conv.i.i3.i.i
  %saddr7.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i4.i.i, i32 0, i32 5
  %call.i5.i.i = tail call i64 @__siphash_unaligned(ptr noundef %saddr7.i.i, i32 noundef 32, ptr noundef nonnull %ctx.0.i18.i) #9
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.then5.i.i, %if.then.i6.i
  %call.i5.sink.i.i = phi i64 [ %call.i5.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then.i6.i ]
  %111 = tail call i64 @llvm.bswap.i64(i64 %call.i5.sink.i.i) #9
  %112 = ptrtoint ptr %valid_foc to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %valid_foc, align 8
  %len11.i.i = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %valid_foc, i32 0, i32 1
  %113 = ptrtoint ptr %len11.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 8, ptr %len11.i.i, align 8
  br label %if.end.i391

if.end.i391:                                      ; preds = %return.sink.split.i.i, %if.then.i.if.end.i391_crit_edge, %tcp_fastopen_get_ctx.exit.i.if.end.i391_crit_edge
  %call.i7.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i7.i, label %if.end.i391.tcp_fastopen_cookie_gen.exit_crit_edge, label %land.lhs.true.i10.i

if.end.i391.tcp_fastopen_cookie_gen.exit_crit_edge: ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_cookie_gen.exit

land.lhs.true.i10.i:                              ; preds = %if.end.i391
  %call1.i8.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call1.i8.i, 0
  br i1 %tobool.not.i9.i, label %land.lhs.true.i10.i.tcp_fastopen_cookie_gen.exit_crit_edge, label %land.lhs.true2.i12.i

land.lhs.true.i10.i.tcp_fastopen_cookie_gen.exit_crit_edge: ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_cookie_gen.exit

land.lhs.true2.i12.i:                             ; preds = %land.lhs.true.i10.i
  %.b4.i11.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11.i, label %land.lhs.true2.i12.i.tcp_fastopen_cookie_gen.exit_crit_edge, label %if.then.i13.i

land.lhs.true2.i12.i.tcp_fastopen_cookie_gen.exit_crit_edge: ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_cookie_gen.exit

if.then.i13.i:                                    ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %tcp_fastopen_cookie_gen.exit

tcp_fastopen_cookie_gen.exit:                     ; preds = %if.then.i13.i, %land.lhs.true2.i12.i.tcp_fastopen_cookie_gen.exit_crit_edge, %land.lhs.true.i10.i.tcp_fastopen_cookie_gen.exit_crit_edge, %if.end.i391.tcp_fastopen_cookie_gen.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %114 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i14.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i14.i to ptr
  %preempt_count.i.i.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i.i.i15.i, align 4
  %sub.i.i.i.i = add i32 %117, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i15.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end346

if.else:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp72 = icmp sgt i8 %87, 0
  br i1 %cmp72, label %if.then74, label %if.else.if.end346_crit_edge

if.else.if.end346_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end346

if.then74:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %search_foc.i) #9
  %118 = call ptr @memcpy(ptr %search_foc.i, ptr @__const.tcp_fastopen_cookie_gen_check.search_foc, i32 24)
  %119 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i.i392 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i.i.i.i392 to ptr
  %preempt_count.i.i.i.i.i393 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %preempt_count.i.i.i.i.i393 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %preempt_count.i.i.i.i.i393, align 4
  %add.i.i.i.i394 = add i32 %122, 1
  store volatile i32 %add.i.i.i.i394, ptr %preempt_count.i.i.i.i.i393, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i395 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i395, label %if.then74.rcu_read_lock.exit.i404_crit_edge, label %land.lhs.true.i.i398

if.then74.rcu_read_lock.exit.i404_crit_edge:      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i404

land.lhs.true.i.i398:                             ; preds = %if.then74
  %call1.i.i396 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i396)
  %tobool.not.i.i397 = icmp eq i32 %call1.i.i396, 0
  br i1 %tobool.not.i.i397, label %land.lhs.true.i.i398.rcu_read_lock.exit.i404_crit_edge, label %land.lhs.true2.i.i400

land.lhs.true.i.i398.rcu_read_lock.exit.i404_crit_edge: ; preds = %land.lhs.true.i.i398
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i404

land.lhs.true2.i.i400:                            ; preds = %land.lhs.true.i.i398
  %.b4.i.i399 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i399, label %land.lhs.true2.i.i400.rcu_read_lock.exit.i404_crit_edge, label %if.then.i.i401

land.lhs.true2.i.i400.rcu_read_lock.exit.i404_crit_edge: ; preds = %land.lhs.true2.i.i400
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i404

if.then.i.i401:                                   ; preds = %land.lhs.true2.i.i400
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit.i404

rcu_read_lock.exit.i404:                          ; preds = %if.then.i.i401, %land.lhs.true2.i.i400.rcu_read_lock.exit.i404_crit_edge, %land.lhs.true.i.i398.rcu_read_lock.exit.i404_crit_edge, %if.then74.rcu_read_lock.exit.i404_crit_edge
  %ctx1.i.i402 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7, i32 5
  %123 = ptrtoint ptr %ctx1.i.i402 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile ptr, ptr %ctx1.i.i402, align 4
  %call3.i.i403 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i403)
  %tobool.not.i12.i = icmp eq i32 %call3.i.i403, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i, label %rcu_read_lock.exit.i404.do.end9.i.i410_crit_edge

rcu_read_lock.exit.i404.do.end9.i.i410_crit_edge: ; preds = %rcu_read_lock.exit.i404
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i410

land.lhs.true.i13.i:                              ; preds = %rcu_read_lock.exit.i404
  %call4.i.i405 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i405)
  %tobool5.not.i.i406 = icmp eq i32 %call4.i.i405, 0
  br i1 %tobool5.not.i.i406, label %land.lhs.true.i13.i.do.end9.i.i410_crit_edge, label %land.lhs.true6.i.i408

land.lhs.true.i13.i.do.end9.i.i410_crit_edge:     ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i410

land.lhs.true6.i.i408:                            ; preds = %land.lhs.true.i13.i
  %.b36.i.i407 = load i1, ptr @tcp_fastopen_get_ctx.__warned, align 1
  br i1 %.b36.i.i407, label %land.lhs.true6.i.i408.do.end9.i.i410_crit_edge, label %if.then.i14.i

land.lhs.true6.i.i408.do.end9.i.i410_crit_edge:   ; preds = %land.lhs.true6.i.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i410

if.then.i14.i:                                    ; preds = %land.lhs.true6.i.i408
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_fastopen_get_ctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1754, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i.i410

do.end9.i.i410:                                   ; preds = %if.then.i14.i, %land.lhs.true6.i.i408.do.end9.i.i410_crit_edge, %land.lhs.true.i13.i.do.end9.i.i410_crit_edge, %rcu_read_lock.exit.i404.do.end9.i.i410_crit_edge
  %tobool11.not.i.i409 = icmp eq ptr %124, null
  br i1 %tobool11.not.i.i409, label %if.then12.i.i415, label %do.end9.i.i410.for.cond.preheader.i_crit_edge

do.end9.i.i410.for.cond.preheader.i_crit_edge:    ; preds = %do.end9.i.i410
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

if.then12.i.i415:                                 ; preds = %do.end9.i.i410
  %125 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %skc_net.i, align 4
  %tcp_fastopen_ctx.i.i412 = getelementptr inbounds %struct.net, ptr %126, i32 0, i32 35, i32 111
  %127 = ptrtoint ptr %tcp_fastopen_ctx.i.i412 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %tcp_fastopen_ctx.i.i412, align 8
  %call19.i.i413 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i413)
  %tobool20.not.i.i414 = icmp eq i32 %call19.i.i413, 0
  br i1 %tobool20.not.i.i414, label %land.lhs.true21.i.i418, label %if.then12.i.i415.tcp_fastopen_get_ctx.exit.i423_crit_edge

if.then12.i.i415.tcp_fastopen_get_ctx.exit.i423_crit_edge: ; preds = %if.then12.i.i415
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_get_ctx.exit.i423

land.lhs.true21.i.i418:                           ; preds = %if.then12.i.i415
  %call22.i.i416 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i416)
  %tobool23.not.i.i417 = icmp eq i32 %call22.i.i416, 0
  br i1 %tobool23.not.i.i417, label %land.lhs.true21.i.i418.tcp_fastopen_get_ctx.exit.i423_crit_edge, label %land.lhs.true24.i.i420

land.lhs.true21.i.i418.tcp_fastopen_get_ctx.exit.i423_crit_edge: ; preds = %land.lhs.true21.i.i418
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_get_ctx.exit.i423

land.lhs.true24.i.i420:                           ; preds = %land.lhs.true21.i.i418
  %.b3435.i.i419 = load i1, ptr @tcp_fastopen_get_ctx.__warned.10, align 1
  br i1 %.b3435.i.i419, label %land.lhs.true24.i.i420.tcp_fastopen_get_ctx.exit.i423_crit_edge, label %if.then26.i.i421

land.lhs.true24.i.i420.tcp_fastopen_get_ctx.exit.i423_crit_edge: ; preds = %land.lhs.true24.i.i420
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_get_ctx.exit.i423

if.then26.i.i421:                                 ; preds = %land.lhs.true24.i.i420
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_fastopen_get_ctx.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1756, ptr noundef nonnull @.str.1) #9
  br label %tcp_fastopen_get_ctx.exit.i423

tcp_fastopen_get_ctx.exit.i423:                   ; preds = %if.then26.i.i421, %land.lhs.true24.i.i420.tcp_fastopen_get_ctx.exit.i423_crit_edge, %land.lhs.true21.i.i418.tcp_fastopen_get_ctx.exit.i423_crit_edge, %if.then12.i.i415.tcp_fastopen_get_ctx.exit.i423_crit_edge
  %tobool.not.i422 = icmp eq ptr %128, null
  br i1 %tobool.not.i422, label %tcp_fastopen_get_ctx.exit.i423.out.i_crit_edge, label %tcp_fastopen_get_ctx.exit.i423.for.cond.preheader.i_crit_edge

tcp_fastopen_get_ctx.exit.i423.for.cond.preheader.i_crit_edge: ; preds = %tcp_fastopen_get_ctx.exit.i423
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

tcp_fastopen_get_ctx.exit.i423.out.i_crit_edge:   ; preds = %tcp_fastopen_get_ctx.exit.i423
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

for.cond.preheader.i:                             ; preds = %tcp_fastopen_get_ctx.exit.i423.for.cond.preheader.i_crit_edge, %do.end9.i.i410.for.cond.preheader.i_crit_edge
  %ctx.0.i36.i = phi ptr [ %128, %tcp_fastopen_get_ctx.exit.i423.for.cond.preheader.i_crit_edge ], [ %124, %do.end9.i.i410.for.cond.preheader.i_crit_edge ]
  %num.i.i = getelementptr inbounds %struct.tcp_fastopen_context, ptr %ctx.0.i36.i, i32 0, i32 1
  %129 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp29.i = icmp sgt i32 %130, 0
  br i1 %cmp29.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.out.i_crit_edge

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rsk_ops.i.i424 = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %head.i.i1.i.i425 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i2.i.i426 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %foc.030.i = phi ptr [ %valid_foc, %for.body.lr.ph.i ], [ %search_foc.i, %if.end5.i.for.body.i_crit_edge ]
  %arrayidx.i427 = getelementptr [2 x %struct.siphash_key_t], ptr %ctx.0.i36.i, i32 0, i32 %i.031.i
  %131 = ptrtoint ptr %rsk_ops.i.i424 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rsk_ops.i.i424, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %134, label %for.body.i.__tcp_fastopen_cookie_gen_cipher.exit.i_crit_edge [
    i32 2, label %if.then.i15.i
    i32 10, label %if.then5.i.i436
  ]

for.body.i.__tcp_fastopen_cookie_gen_cipher.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__tcp_fastopen_cookie_gen_cipher.exit.i

if.then.i15.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %head.i.i1.i.i425 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %head.i.i1.i.i425, align 8
  %138 = ptrtoint ptr %network_header.i.i2.i.i426 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %network_header.i.i2.i.i426, align 4
  %conv.i.i.i.i428 = zext i16 %139 to i32
  %add.ptr.i.i.i.i429 = getelementptr i8, ptr %137, i32 %conv.i.i.i.i428
  %saddr.i.i430 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i429, i32 0, i32 8
  %call.i.i.i431 = tail call i64 @__siphash_unaligned(ptr noundef %saddr.i.i430, i32 noundef 8, ptr noundef %arrayidx.i427) #9
  br label %return.sink.split.i.i439

if.then5.i.i436:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %head.i.i1.i.i425 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %head.i.i1.i.i425, align 8
  %142 = ptrtoint ptr %network_header.i.i2.i.i426 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %network_header.i.i2.i.i426, align 4
  %conv.i.i3.i.i432 = zext i16 %143 to i32
  %add.ptr.i.i4.i.i433 = getelementptr i8, ptr %141, i32 %conv.i.i3.i.i432
  %saddr7.i.i434 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i4.i.i433, i32 0, i32 5
  %call.i5.i.i435 = tail call i64 @__siphash_unaligned(ptr noundef %saddr7.i.i434, i32 noundef 32, ptr noundef %arrayidx.i427) #9
  br label %return.sink.split.i.i439

return.sink.split.i.i439:                         ; preds = %if.then5.i.i436, %if.then.i15.i
  %call.i5.sink.i.i437 = phi i64 [ %call.i5.i.i435, %if.then5.i.i436 ], [ %call.i.i.i431, %if.then.i15.i ]
  %144 = tail call i64 @llvm.bswap.i64(i64 %call.i5.sink.i.i437) #9
  %145 = ptrtoint ptr %foc.030.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %foc.030.i, align 8
  %len11.i.i438 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %foc.030.i, i32 0, i32 1
  %146 = ptrtoint ptr %len11.i.i438 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 8, ptr %len11.i.i438, align 8
  br label %__tcp_fastopen_cookie_gen_cipher.exit.i

__tcp_fastopen_cookie_gen_cipher.exit.i:          ; preds = %return.sink.split.i.i439, %for.body.i.__tcp_fastopen_cookie_gen_cipher.exit.i_crit_edge
  %147 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %148)
  %cmp.i.i = icmp eq i8 %148, 8
  br i1 %cmp.i.i, label %land.lhs.true.i16.i, label %__tcp_fastopen_cookie_gen_cipher.exit.i.if.end5.i_crit_edge

__tcp_fastopen_cookie_gen_cipher.exit.i.if.end5.i_crit_edge: ; preds = %__tcp_fastopen_cookie_gen_cipher.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

land.lhs.true.i16.i:                              ; preds = %__tcp_fastopen_cookie_gen_cipher.exit.i
  %len4.i.i = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %foc.030.i, i32 0, i32 1
  %149 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %len4.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %150)
  %cmp6.i.i = icmp eq i8 %150, 8
  br i1 %cmp6.i.i, label %land.lhs.true8.i.i, label %land.lhs.true.i16.i.if.end5.i_crit_edge

land.lhs.true.i16.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i16.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %foc, ptr noundef nonnull dereferenceable(8) %foc.030.i, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i17.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i17.i, label %if.then4.i441, label %land.lhs.true8.i.i.if.end5.i_crit_edge

land.lhs.true8.i.i.if.end5.i_crit_edge:           ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i441:                                    ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i440 = add nuw nsw i32 %i.031.i, 1
  br label %out.i

if.end5.i:                                        ; preds = %land.lhs.true8.i.i.if.end5.i_crit_edge, %land.lhs.true.i16.i.if.end5.i_crit_edge, %__tcp_fastopen_cookie_gen_cipher.exit.i.if.end5.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %151 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %num.i.i, align 8
  %cmp.i442 = icmp slt i32 %inc.i, %152
  br i1 %cmp.i442, label %if.end5.i.for.body.i_crit_edge, label %if.end5.i.out.i_crit_edge

if.end5.i.out.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

out.i:                                            ; preds = %if.end5.i.out.i_crit_edge, %if.then4.i441, %for.cond.preheader.i.out.i_crit_edge, %tcp_fastopen_get_ctx.exit.i423.out.i_crit_edge
  %ret.0.i = phi i32 [ %add.i440, %if.then4.i441 ], [ 0, %tcp_fastopen_get_ctx.exit.i423.out.i_crit_edge ], [ 0, %for.cond.preheader.i.out.i_crit_edge ], [ 0, %if.end5.i.out.i_crit_edge ]
  %call.i18.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i18.i, label %out.i.tcp_fastopen_cookie_gen_check.exit_crit_edge, label %land.lhs.true.i21.i

out.i.tcp_fastopen_cookie_gen_check.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_cookie_gen_check.exit

land.lhs.true.i21.i:                              ; preds = %out.i
  %call1.i19.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.tcp_fastopen_cookie_gen_check.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.tcp_fastopen_cookie_gen_check.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_cookie_gen_check.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.tcp_fastopen_cookie_gen_check.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.tcp_fastopen_cookie_gen_check.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_cookie_gen_check.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %tcp_fastopen_cookie_gen_check.exit

tcp_fastopen_cookie_gen_check.exit:               ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.tcp_fastopen_cookie_gen_check.exit_crit_edge, %land.lhs.true.i21.i.tcp_fastopen_cookie_gen_check.exit_crit_edge, %out.i.tcp_fastopen_cookie_gen_check.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %153 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i25.i = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i443 = add i32 %156, -1
  store volatile i32 %sub.i.i.i.i443, ptr %preempt_count.i.i.i.i26.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %search_foc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool76.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool76.not, label %do.body79, label %tcp_fastopen_cookie_gen_check.exit.fastopen_crit_edge

tcp_fastopen_cookie_gen_check.exit.fastopen_crit_edge: ; preds = %tcp_fastopen_cookie_gen_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fastopen

do.body79:                                        ; preds = %tcp_fastopen_cookie_gen_check.exit
  %157 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %158 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %skc_net.i, align 4
  %net_statistics103 = getelementptr inbounds %struct.net, ptr %159, i32 0, i32 30, i32 3
  %160 = ptrtoint ptr %net_statistics103 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %net_statistics103, align 4
  %arrayidx105 = getelementptr [126 x i32], ptr %161, i32 0, i32 87
  %162 = ptrtoint ptr %arrayidx105 to i32
  %163 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i445 = and i32 %163, -16384
  %164 = inttoptr i32 %and.i445 to ptr
  %cpu108 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %cpu108 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cpu108, align 4
  %arrayidx109 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx109, align 4
  %add110 = add i32 %168, %162
  %169 = inttoptr i32 %add110 to ptr
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %add111 = add i32 %171, 1
  store i32 %add111, ptr %169, align 4
  %172 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i446 = and i32 %172, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i446)
  %tobool122.not = icmp eq i32 %and.i.i446, 0
  br i1 %tobool122.not, label %if.then131, label %do.body79.do.end134_crit_edge, !prof !65

do.body79.do.end134_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end134

if.then131:                                       ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end134

do.end134:                                        ; preds = %if.then131, %do.body79.do.end134_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %157) #9, !srcloc !72
  br label %if.end346

fastopen:                                         ; preds = %tcp_fastopen_cookie_gen_check.exit.fastopen_crit_edge, %tcp_fastopen_no_cookie.exit.fastopen_crit_edge, %lor.lhs.false.i388.fastopen_crit_edge, %if.end61.fastopen_crit_edge
  %ret.0 = phi i32 [ 0, %tcp_fastopen_no_cookie.exit.fastopen_crit_edge ], [ %ret.0.i, %tcp_fastopen_cookie_gen_check.exit.fastopen_crit_edge ], [ 0, %lor.lhs.false.i388.fastopen_crit_edge ], [ 0, %if.end61.fastopen_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %own_req.i) #9
  %173 = ptrtoint ptr %own_req.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -1, ptr %own_req.i, align 1, !annotation !76
  %icsk_af_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %174 = ptrtoint ptr %icsk_af_ops.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %icsk_af_ops.i, align 8
  %syn_recv_sock.i = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %syn_recv_sock.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %syn_recv_sock.i, align 4
  %call2.i = call ptr %177(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef null, ptr noundef null, ptr noundef nonnull %own_req.i) #9
  %tobool.not.i447 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i447, label %do.body282, label %if.then144

if.then144:                                       ; preds = %fastopen
  %lock.i448 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 7, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i448) #9
  %178 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %qlen.i, align 4
  %inc.i450 = add i32 %179, 1
  store i32 %inc.i450, ptr %qlen.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i448) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  %fastopen_rsk28.i = getelementptr inbounds %struct.tcp_sock, ptr %call2.i, i32 0, i32 120
  %180 = ptrtoint ptr %fastopen_rsk28.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %req, ptr %fastopen_rsk28.i, align 4
  %tfo_listener.i = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 3
  %181 = ptrtoint ptr %tfo_listener.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %tfo_listener.i, align 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %182 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %184 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %185 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %183, i32 %conv.i.i.i
  %window.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %186 = ptrtoint ptr %window.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %window.i, align 2
  %conv.i = zext i16 %187 to i32
  %snd_wnd.i = getelementptr inbounds %struct.tcp_sock, ptr %call2.i, i32 0, i32 26
  %188 = ptrtoint ptr %snd_wnd.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv.i, ptr %snd_wnd.i, align 4
  %max_window.i = getelementptr inbounds %struct.tcp_sock, ptr %call2.i, i32 0, i32 27
  %189 = ptrtoint ptr %max_window.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %conv.i, ptr %max_window.i, align 8
  %icsk_pending.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %call2.i, i32 0, i32 19
  %190 = ptrtoint ptr %icsk_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %icsk_pending.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %191 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %191, 100
  %icsk_timeout.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %call2.i, i32 0, i32 3
  %192 = ptrtoint ptr %icsk_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %add.i.i, ptr %icsk_timeout.i.i, align 8
  %icsk_retransmit_timer.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %call2.i, i32 0, i32 4
  call void @sk_reset_timer(ptr noundef nonnull %call2.i, ptr noundef %icsk_retransmit_timer.i.i, i32 noundef %add.i.i) #9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 19
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  %193 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile i32 2, ptr %skc_refcnt.i, align 4
  call void @tcp_init_transfer(ptr noundef nonnull %call2.i, i32 noundef 5, ptr noundef %skb) #9
  %194 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cb, align 8
  %add.i451 = add i32 %195, 1
  %rcv_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %call2.i, i32 0, i32 7
  %196 = ptrtoint ptr %rcv_nxt.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %add.i451, ptr %rcv_nxt.i, align 8
  call void @tcp_fastopen_add_skb(ptr noundef nonnull %call2.i, ptr noundef %skb) #9
  %197 = ptrtoint ptr %rcv_nxt.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %rcv_nxt.i, align 8
  %rcv_nxt45.i = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 11
  %199 = ptrtoint ptr %rcv_nxt45.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %rcv_nxt45.i, align 8
  %200 = load i32, ptr %rcv_nxt.i, align 8
  %rcv_wup.i = getelementptr inbounds %struct.tcp_sock, ptr %call2.i, i32 0, i32 9
  %201 = ptrtoint ptr %rcv_wup.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %rcv_wup.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %own_req.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0)
  %cmp145 = icmp eq i32 %ret.0, 2
  br i1 %cmp145, label %if.then147, label %if.else214

if.then147:                                       ; preds = %if.then144
  %exp = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %foc, i32 0, i32 2
  %202 = ptrtoint ptr %exp to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %exp, align 1, !range !78
  %exp149 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %valid_foc, i32 0, i32 2
  %204 = ptrtoint ptr %exp149 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %exp149, align 1
  %205 = call ptr @memcpy(ptr %foc, ptr %valid_foc, i32 24)
  %206 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %207 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %skc_net.i, align 4
  %net_statistics176 = getelementptr inbounds %struct.net, ptr %208, i32 0, i32 30, i32 3
  %209 = ptrtoint ptr %net_statistics176 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %net_statistics176, align 4
  %arrayidx178 = getelementptr [126 x i32], ptr %210, i32 0, i32 119
  %211 = ptrtoint ptr %arrayidx178 to i32
  %212 = call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i454 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i454 to ptr
  %cpu181 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %cpu181 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %cpu181, align 4
  %arrayidx182 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %215
  %216 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx182, align 4
  %add183 = add i32 %217, %211
  %218 = inttoptr i32 %add183 to ptr
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %218, align 4
  %add184 = add i32 %220, 1
  store i32 %add184, ptr %218, align 4
  %221 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i455 = and i32 %221, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i455)
  %tobool195.not = icmp eq i32 %and.i.i455, 0
  br i1 %tobool195.not, label %if.then204, label %if.then147.do.end207_crit_edge, !prof !65

if.then147.do.end207_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

if.then204:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end207

do.end207:                                        ; preds = %if.then204, %if.then147.do.end207_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %206) #9, !srcloc !72
  br label %do.body218

if.else214:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  %222 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 -1, ptr %len, align 8
  br label %do.body218

do.body218:                                       ; preds = %if.else214, %do.end207
  %223 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %224 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %skc_net.i, align 4
  %net_statistics242 = getelementptr inbounds %struct.net, ptr %225, i32 0, i32 30, i32 3
  %226 = ptrtoint ptr %net_statistics242 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %net_statistics242, align 4
  %arrayidx244 = getelementptr [126 x i32], ptr %227, i32 0, i32 86
  %228 = ptrtoint ptr %arrayidx244 to i32
  %229 = call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i457 = and i32 %229, -16384
  %230 = inttoptr i32 %and.i457 to ptr
  %cpu247 = getelementptr inbounds %struct.thread_info, ptr %230, i32 0, i32 3
  %231 = ptrtoint ptr %cpu247 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %cpu247, align 4
  %arrayidx248 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %232
  %233 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx248, align 4
  %add249 = add i32 %234, %228
  %235 = inttoptr i32 %add249 to ptr
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 4
  %add250 = add i32 %237, 1
  store i32 %add250, ptr %235, align 4
  %238 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i458 = and i32 %238, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i458)
  %tobool261.not = icmp eq i32 %and.i.i458, 0
  br i1 %tobool261.not, label %if.then270, label %do.body218.do.end273_crit_edge, !prof !65

do.body218.do.end273_crit_edge:                   ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end273

if.then270:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end273

do.end273:                                        ; preds = %if.then270, %do.body218.do.end273_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %223) #9, !srcloc !72
  br label %cleanup

do.body282:                                       ; preds = %fastopen
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %own_req.i) #9
  %239 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %240 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %skc_net.i, align 4
  %net_statistics306 = getelementptr inbounds %struct.net, ptr %241, i32 0, i32 30, i32 3
  %242 = ptrtoint ptr %net_statistics306 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %net_statistics306, align 4
  %arrayidx308 = getelementptr [126 x i32], ptr %243, i32 0, i32 87
  %244 = ptrtoint ptr %arrayidx308 to i32
  %245 = call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i460 = and i32 %245, -16384
  %246 = inttoptr i32 %and.i460 to ptr
  %cpu311 = getelementptr inbounds %struct.thread_info, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %cpu311 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cpu311, align 4
  %arrayidx312 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %248
  %249 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx312, align 4
  %add313 = add i32 %250, %244
  %251 = inttoptr i32 %add313 to ptr
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 4
  %add314 = add i32 %253, 1
  store i32 %add314, ptr %251, align 4
  %254 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i461 = and i32 %254, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i461)
  %tobool325.not = icmp eq i32 %and.i.i461, 0
  br i1 %tobool325.not, label %if.then334, label %do.body282.do.end337_crit_edge, !prof !65

do.body282.do.end337_crit_edge:                   ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end337

if.then334:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end337

do.end337:                                        ; preds = %if.then334, %do.body282.do.end337_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %239) #9, !srcloc !72
  br label %if.end346

if.end346:                                        ; preds = %do.end337, %do.end134, %if.else.if.end346_crit_edge, %tcp_fastopen_cookie_gen.exit
  %exp347 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %foc, i32 0, i32 2
  %255 = ptrtoint ptr %exp347 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %exp347, align 1, !range !78
  %exp349 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %valid_foc, i32 0, i32 2
  %257 = ptrtoint ptr %exp349 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %exp349, align 1
  %258 = call ptr @memcpy(ptr %foc, ptr %valid_foc, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end346, %do.end273, %if.then59
  %retval.0 = phi ptr [ %call2.i, %do.end273 ], [ null, %if.end346 ], [ null, %if.then59 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %valid_foc) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_fastopen_cookie_check(ptr noundef %sk, ptr noundef %mss, ptr noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcp_fastopen_cache_get(ptr noundef %sk, ptr noundef %mss, ptr noundef %cookie) #9
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_fastopen_blackhole_timeout.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 112
  %2 = ptrtoint ptr %sysctl_tcp_fastopen_blackhole_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sysctl_tcp_fastopen_blackhole_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %tfo_active_disable_times.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 113
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tfo_active_disable_times.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %tfo_active_disable_times.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tfo_active_disable_times.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %do.end.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  %sub.i = add i32 %5, -1
  %6 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 6) #9
  %7 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i.i, align 4
  %tfo_active_disable_stamp.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 35, i32 114
  %9 = ptrtoint ptr %tfo_active_disable_stamp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tfo_active_disable_stamp.i, align 4
  %mul.i = shl i32 %3, %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %mul16.neg.i = mul i32 %mul.i, -100
  %add.neg.i = sub i32 %mul16.neg.i, %10
  %sub17.i = add i32 %add.neg.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17.i)
  %cmp18.i = icmp slt i32 %sub17.i, 0
  br i1 %cmp18.i, label %if.then, label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %syn_fastopen_ch.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %12 = ptrtoint ptr %syn_fastopen_ch.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %syn_fastopen_ch.i, align 1
  %bf.set.i = or i8 %bf.load.i, 4
  store i8 %bf.set.i, ptr %syn_fastopen_ch.i, align 1
  br label %if.end

if.then:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %cookie, i32 0, i32 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %len, align 8
  br label %cleanup

if.end:                                           ; preds = %if.end20.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %14 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i18 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i18)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i18, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %if.end.__sk_dst_get.exit_crit_edge

if.end.__sk_dst_get.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %if.end
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i19 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i20 = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i20, label %land.lhs.true.i.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__sk_dst_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 2068, ptr noundef nonnull @.str.1) #9
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %if.end.__sk_dst_get.exit_crit_edge
  %16 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_fastopen.i = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 35, i32 109
  %18 = ptrtoint ptr %sysctl_tcp_fastopen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysctl_tcp_fastopen.i, align 16
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i22, label %lor.lhs.false.i24, label %__sk_dst_get.exit.if.then3_crit_edge

__sk_dst_get.exit.if.then3_crit_edge:             ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

lor.lhs.false.i24:                                ; preds = %__sk_dst_get.exit
  %fastopen_no_cookie.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %20 = ptrtoint ptr %fastopen_no_cookie.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i23 = load i16, ptr %fastopen_no_cookie.i, align 4
  %21 = and i16 %bf.load.i23, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool2.not.i = icmp eq i16 %21, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i24.if.then3_crit_edge

lor.lhs.false.i24.if.then3_crit_edge:             ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

lor.rhs.i:                                        ; preds = %lor.lhs.false.i24
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %lor.rhs.i.if.end5_crit_edge, label %tcp_fastopen_no_cookie.exit

lor.rhs.i.if.end5_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

tcp_fastopen_no_cookie.exit:                      ; preds = %lor.rhs.i
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %23, -4
  %24 = inttoptr i32 %and.i.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %24, i32 16
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.i.not = icmp eq i32 %26, 0
  br i1 %tobool5.i.not, label %tcp_fastopen_no_cookie.exit.if.end5_crit_edge, label %tcp_fastopen_no_cookie.exit.if.then3_crit_edge

tcp_fastopen_no_cookie.exit.if.then3_crit_edge:   ; preds = %tcp_fastopen_no_cookie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

tcp_fastopen_no_cookie.exit.if.end5_crit_edge:    ; preds = %tcp_fastopen_no_cookie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %tcp_fastopen_no_cookie.exit.if.then3_crit_edge, %lor.lhs.false.i24.if.then3_crit_edge, %__sk_dst_get.exit.if.then3_crit_edge
  %len4 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %cookie, i32 0, i32 1
  %27 = ptrtoint ptr %len4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %len4, align 8
  br label %cleanup

if.end5:                                          ; preds = %tcp_fastopen_no_cookie.exit.if.end5_crit_edge, %lor.rhs.i.if.end5_crit_edge
  %len6 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %cookie, i32 0, i32 1
  %28 = ptrtoint ptr %len6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %len6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp = icmp sgt i8 %29, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %fastopen_no_cookie.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %fastopen_no_cookie.i, align 4
  %bf.clear = and i16 %bf.load, -769
  %bf.set = or i16 %bf.clear, 256
  store i16 %bf.set, ptr %fastopen_no_cookie.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.then3 ], [ false, %if.end9 ], [ true, %if.end5.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_cache_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_fastopen_active_should_disable(ptr nocapture noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_fastopen_blackhole_timeout = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 112
  %2 = ptrtoint ptr %sysctl_tcp_fastopen_blackhole_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sysctl_tcp_fastopen_blackhole_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tfo_active_disable_times = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 113
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tfo_active_disable_times, i32 noundef 4) #9
  %4 = ptrtoint ptr %tfo_active_disable_times to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tfo_active_disable_times, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  %sub = add i32 %5, -1
  %6 = tail call i32 @llvm.smin.i32(i32 %sub, i32 6)
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %tfo_active_disable_stamp = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 35, i32 114
  %9 = ptrtoint ptr %tfo_active_disable_stamp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tfo_active_disable_stamp, align 4
  %mul = shl i32 %3, %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %mul16.neg = mul i32 %mul, -100
  %add.neg = sub i32 %mul16.neg, %10
  %sub17 = add i32 %add.neg, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18 = icmp slt i32 %sub17, 0
  br i1 %cmp18, label %do.end.cleanup_crit_edge, label %if.end20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %syn_fastopen_ch = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %12 = ptrtoint ptr %syn_fastopen_ch to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %syn_fastopen_ch, align 1
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %syn_fastopen_ch, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end20 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %do.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_fastopen_defer_connect(ptr noundef %sk, ptr nocapture noundef writeonly %err) #0 align 64 {
entry:
  %cookie = alloca %struct.tcp_fastopen_cookie, align 8
  %mss = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cookie) #9
  %0 = call ptr @memset(ptr %cookie, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mss) #9
  %1 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %mss, align 2, !annotation !76
  %fastopen_connect = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %2 = ptrtoint ptr %fastopen_connect to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %fastopen_connect, align 4
  %3 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %fastopen_req = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 119
  %4 = ptrtoint ptr %fastopen_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fastopen_req, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call2 = call zeroext i1 @tcp_fastopen_cookie_check(ptr noundef %sk, ptr noundef nonnull %mss, ptr noundef nonnull %cookie)
  br i1 %call2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %defer_connect = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %6 = ptrtoint ptr %defer_connect to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load5 = load i16, ptr %defer_connect, align 8
  %bf.set = or i16 %bf.load5, 32
  store i16 %bf.set, ptr %defer_connect, align 8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %7 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_allocation, align 8
  %and.i.i.i = and i32 %8, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !67

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
  %and2.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %8, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %9 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef %or.i, i32 noundef 40) #12
  %11 = ptrtoint ptr %fastopen_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %fastopen_req, align 8
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memcpy(ptr %call7.i.i, ptr %cookie, i32 24)
  br label %cleanup

if.else:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -105, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.then3, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then3 ], [ false, %if.then11 ], [ false, %if.else ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mss) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cookie) #9
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_active_disable(ptr nocapture noundef readonly %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_fastopen_blackhole_timeout = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 112
  %2 = ptrtoint ptr %sysctl_tcp_fastopen_blackhole_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sysctl_tcp_fastopen_blackhole_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %tfo_active_disable_stamp = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 114
  %5 = ptrtoint ptr %tfo_active_disable_stamp to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %4, ptr %tfo_active_disable_stamp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %tfo_active_disable_times = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 113
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfo_active_disable_times, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tfo_active_disable_times, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tfo_active_disable_times, ptr %tfo_active_disable_times, i32 1, ptr elementtype(i32) %tfo_active_disable_times) #9, !srcloc !69
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %net_statistics = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 3
  %8 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %9, i32 0, i32 90
  %10 = ptrtoint ptr %arrayidx to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx33, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add34 = add i32 %19, 1
  store i32 %add34, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool45.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool45.not, label %if.then49, label %do.body3.do.end52_crit_edge, !prof !65

do.body3.do.end52_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.then49:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %do.body3.do.end52_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #9, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_active_disable_ofo_check(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %syn_fastopen = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %0 = ptrtoint ptr %syn_fastopen to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %syn_fastopen, align 1
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_segs_in = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 6
  %2 = ptrtoint ptr %data_segs_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_segs_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %out_of_order_queue = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 89
  %call3 = tail call ptr @rb_first(ptr noundef %out_of_order_queue) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %land.lhs.true

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then2
  %call8 = tail call ptr @rb_next(ptr noundef nonnull %call3) #9
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then19, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  %tcp_flags = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tcp_flags, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool20.not = icmp eq i8 %6, 0
  br i1 %tobool20.not, label %if.then19.cleanup_crit_edge, label %if.then21

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.then19
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_fastopen_blackhole_timeout.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 35, i32 112
  %9 = ptrtoint ptr %sysctl_tcp_fastopen_blackhole_timeout.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sysctl_tcp_fastopen_blackhole_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then21.cleanup_crit_edge, label %do.body3.i

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3.i:                                       ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %tfo_active_disable_stamp.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 35, i32 114
  %12 = ptrtoint ptr %tfo_active_disable_stamp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %11, ptr %tfo_active_disable_stamp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %tfo_active_disable_times.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 35, i32 113
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfo_active_disable_times.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tfo_active_disable_times.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tfo_active_disable_times.i, ptr %tfo_active_disable_times.i, i32 1, ptr elementtype(i32) %tfo_active_disable_times.i) #9, !srcloc !69
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %net_statistics.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 3
  %15 = ptrtoint ptr %net_statistics.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_statistics.i, align 4
  %arrayidx.i = getelementptr [126 x i32], ptr %16, i32 0, i32 90
  %17 = ptrtoint ptr %arrayidx.i to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx33.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx33.i, align 4
  %add.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add34.i = add i32 %26, 1
  store i32 %add34.i, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool45.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool45.not.i, label %if.then49.i, label %do.body3.i.do.end52.i_crit_edge, !prof !65

do.body3.i.do.end52.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

if.then49.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then49.i, %do.body3.i.do.end52.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #9, !srcloc !72
  br label %cleanup

if.else:                                          ; preds = %if.end
  %28 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool28.not = icmp eq i8 %28, 0
  br i1 %tobool28.not, label %if.else.cleanup_crit_edge, label %land.lhs.true29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.else
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %29 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skc_net.i, align 4
  %tfo_active_disable_times = getelementptr inbounds %struct.net, ptr %30, i32 0, i32 35, i32 113
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tfo_active_disable_times, i32 noundef 4) #9
  %31 = ptrtoint ptr %tfo_active_disable_times to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %tfo_active_disable_times, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool32.not = icmp eq i32 %32, 0
  br i1 %tobool32.not, label %land.lhs.true29.cleanup_crit_edge, label %if.then33

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true29
  %33 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i66 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i66, label %if.then33.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then33.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then33
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then33.rcu_read_lock.exit.i_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %37 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i67 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 2077, ptr noundef nonnull @.str.1) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %38, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end13.i_crit_edge, label %land.lhs.true10.i

do.end7.i.if.end13.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

land.lhs.true10.i:                                ; preds = %do.end7.i
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %38, i32 0, i32 18
  %call.i.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #9, !srcloc !82
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true10.i.if.end13.i_crit_edge, label %do.end11.i.i.i.i.i

land.lhs.true10.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

do.end11.i.i.i.i.i:                               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end11.i.i.i.i.i, %land.lhs.true10.i.if.end13.i_crit_edge, %do.end7.i.if.end13.i_crit_edge
  %dst.0.i = phi ptr [ null, %do.end7.i.if.end13.i_crit_edge ], [ null, %land.lhs.true10.i.if.end13.i_crit_edge ], [ %38, %do.end11.i.i.i.i.i ]
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17.i, label %if.end13.i.sk_dst_get.exit_crit_edge, label %land.lhs.true.i20.i

if.end13.i.sk_dst_get.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_dst_get.exit

land.lhs.true.i20.i:                              ; preds = %if.end13.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_dst_get.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge:   ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_dst_get.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %sk_dst_get.exit

sk_dst_get.exit:                                  ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, %if.end13.i.sk_dst_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %40 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i24.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %tobool35.not = icmp eq ptr %dst.0.i, null
  br i1 %tobool35.not, label %sk_dst_get.exit.if.then42_crit_edge, label %land.lhs.true36

sk_dst_get.exit.if.then42_crit_edge:              ; preds = %sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

land.lhs.true36:                                  ; preds = %sk_dst_get.exit
  %44 = ptrtoint ptr %dst.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst.0.i, align 4
  %tobool37.not = icmp eq ptr %45, null
  br i1 %tobool37.not, label %land.lhs.true36.if.then42_crit_edge, label %land.lhs.true38

land.lhs.true36.if.then42_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %flags = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 8
  %and40 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %land.lhs.true38.if.then42_crit_edge, label %land.lhs.true38.if.end46_crit_edge

land.lhs.true38.if.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

land.lhs.true38.if.then42_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then42:                                        ; preds = %land.lhs.true38.if.then42_crit_edge, %land.lhs.true36.if.then42_crit_edge, %sk_dst_get.exit.if.then42_crit_edge
  %48 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skc_net.i, align 4
  %tfo_active_disable_times45 = getelementptr inbounds %struct.net, ptr %49, i32 0, i32 35, i32 113
  %call.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfo_active_disable_times45, i32 noundef 4) #9
  %50 = ptrtoint ptr %tfo_active_disable_times45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %tfo_active_disable_times45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %land.lhs.true38.if.end46_crit_edge
  tail call void @dst_release(ptr noundef %dst.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %land.lhs.true29.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end52.i, %if.then21.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_active_detect_blackhole(ptr nocapture noundef readonly %sk, i1 noundef zeroext %expired) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %syn_fastopen = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %0 = ptrtoint ptr %syn_fastopen to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %syn_fastopen, align 1
  %1 = and i8 %bf.load, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %entry.if.end63_crit_edge, label %land.lhs.true

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true:                                    ; preds = %entry
  %icsk_retransmits = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %3 = ptrtoint ptr %icsk_retransmits to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %icsk_retransmits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp eq i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp16 = icmp ult i8 %4, 2
  %5 = and i1 %cmp16, %expired
  %or.cond = or i1 %cmp, %5
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then:                                          ; preds = %land.lhs.true
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_fastopen_blackhole_timeout.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 112
  %8 = ptrtoint ptr %sysctl_tcp_fastopen_blackhole_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysctl_tcp_fastopen_blackhole_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.tcp_fastopen_active_disable.exit_crit_edge, label %do.body3.i

if.then.tcp_fastopen_active_disable.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fastopen_active_disable.exit

do.body3.i:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %tfo_active_disable_stamp.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 114
  %11 = ptrtoint ptr %tfo_active_disable_stamp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %tfo_active_disable_stamp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %tfo_active_disable_times.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 113
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfo_active_disable_times.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tfo_active_disable_times.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tfo_active_disable_times.i, ptr %tfo_active_disable_times.i, i32 1, ptr elementtype(i32) %tfo_active_disable_times.i) #9, !srcloc !69
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %net_statistics.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30, i32 3
  %14 = ptrtoint ptr %net_statistics.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_statistics.i, align 4
  %arrayidx.i = getelementptr [126 x i32], ptr %15, i32 0, i32 90
  %16 = ptrtoint ptr %arrayidx.i to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx33.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx33.i, align 4
  %add.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add34.i = add i32 %25, 1
  store i32 %add34.i, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool45.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool45.not.i, label %if.then49.i, label %do.body3.i.do.end52.i_crit_edge, !prof !65

do.body3.i.do.end52.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

if.then49.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then49.i, %do.body3.i.do.end52.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #9, !srcloc !72
  br label %tcp_fastopen_active_disable.exit

tcp_fastopen_active_disable.exit:                 ; preds = %do.end52.i, %if.then.tcp_fastopen_active_disable.exit_crit_edge
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !70
  %28 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skc_net.i.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 30, i32 3
  %30 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %31, i32 0, i32 85
  %32 = ptrtoint ptr %arrayidx to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu, align 4
  %arrayidx38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx38, align 4
  %add = add i32 %38, %32
  %39 = inttoptr i32 %add to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add39 = add i32 %41, 1
  store i32 %add39, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i71 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %tobool50.not = icmp eq i32 %and.i.i71, 0
  br i1 %tobool50.not, label %if.then54, label %tcp_fastopen_active_disable.exit.do.end56_crit_edge, !prof !65

tcp_fastopen_active_disable.exit.do.end56_crit_edge: ; preds = %tcp_fastopen_active_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

if.then54:                                        ; preds = %tcp_fastopen_active_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end56

do.end56:                                         ; preds = %if.then54, %tcp_fastopen_active_disable.exit.do.end56_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #9, !srcloc !72
  br label %if.end63

if.end63:                                         ; preds = %do.end56, %land.lhs.true.if.end63_crit_edge, %entry.if.end63_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_transfer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !24, !26, !27, !29, !30, !32, !34, !35, !36, !37, !38, !40, !41, !43, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_fastopen.c", i32 13, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_fastopen.c", i32 42, i32 8}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_fastopen.c", i32 102, i32 9}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_fastopen.c", i32 104, i32 9}
!10 = !{ptr @__ksymtab_tcp_fastopen_defer_connect, !11, !"__ksymtab_tcp_fastopen_defer_connect", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_fastopen.c", i32 467, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_fastopen.c", i32 318, i32 4}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/net/request_sock.h", i32 126, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/net/dst.h", i32 161, i32 2}
!26 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/net/tcp.h", i32 1754, i32 8}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/net/tcp.h", i32 1756, i32 9}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/inet_connection_sock.h", i32 223, i32 3}
!34 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !33, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/net/inet_connection_sock.h", i32 238, i32 3}
!40 = distinct !{null, !39, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/net/sock.h", i32 2067, i32 9}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/net/sock.h", i32 2077, i32 8}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2149677901}
!57 = !{i64 2149678167}
!58 = !{i64 2158597564}
!59 = !{i64 731411, i64 731428, i64 731452, i64 731478, i64 731496}
!60 = !{i64 2158597909}
!61 = !{i64 2158596280}
!62 = !{i64 2158596625}
!63 = !{i64 2158594844}
!64 = !{i64 2158595197}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2154597063, i64 2154597551, i64 2154597100, i64 2154597156, i64 2154597190, i64 2154597214, i64 2154597255, i64 2154597276, i64 2154597304, i64 2154597338}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2154612113, i64 2154612601, i64 2154612150, i64 2154612206, i64 2154612240, i64 2154612264, i64 2154612305, i64 2154612326, i64 2154612354, i64 2154612388}
!69 = !{i64 2148224643, i64 2148224669, i64 2148224698, i64 2148224732, i64 2148224763, i64 2148224786}
!70 = !{i64 617124, i64 617185}
!71 = !{i64 619856}
!72 = !{i64 620141}
!73 = !{i64 2148314174}
!74 = !{i64 2148228638, i64 2148228670, i64 2148228699, i64 2148228733, i64 2148228764, i64 2148228787}
!75 = !{i64 2150552448}
!76 = !{!"auto-init"}
!77 = !{i64 2158615486}
!78 = !{i8 0, i8 2}
!79 = !{i64 2158712426}
!80 = !{i64 2158700217}
!81 = !{i64 2148224062}
!82 = !{i64 708885, i64 708910, i64 708932, i64 708948, i64 708960, i64 708980, i64 709004, i64 709020, i64 709032}
!83 = !{i64 2148224250}
