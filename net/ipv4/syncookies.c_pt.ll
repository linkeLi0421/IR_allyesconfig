; ModuleID = '/llk/IR_all_yes/net/ipv4/syncookies.c_pt.bc'
source_filename = "../net/ipv4/syncookies.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__cookie_v4_init_sequence\22, \22a\22\09"
module asm "\09.weak\09__crc___cookie_v4_init_sequence\09\09\09\09"
module asm "\09.long\09__crc___cookie_v4_init_sequence\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cookie_v4_init_sequence:\09\09\09\09\09"
module asm "\09.asciz \09\22__cookie_v4_init_sequence\22\09\09\09\09\09"
module asm "__kstrtabns___cookie_v4_init_sequence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cookie_v4_check\22, \22a\22\09"
module asm "\09.weak\09__crc___cookie_v4_check\09\09\09\09"
module asm "\09.long\09__crc___cookie_v4_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cookie_v4_check:\09\09\09\09\09"
module asm "\09.asciz \09\22__cookie_v4_check\22\09\09\09\09\09"
module asm "__kstrtabns___cookie_v4_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tcp_get_cookie_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_get_cookie_sock\09\09\09\09"
module asm "\09.long\09__crc_tcp_get_cookie_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_get_cookie_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_get_cookie_sock\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_get_cookie_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cookie_timestamp_decode\22, \22a\22\09"
module asm "\09.weak\09__crc_cookie_timestamp_decode\09\09\09\09"
module asm "\09.long\09__crc_cookie_timestamp_decode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cookie_timestamp_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22cookie_timestamp_decode\22\09\09\09\09\09"
module asm "__kstrtabns_cookie_timestamp_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cookie_ecn_ok\22, \22a\22\09"
module asm "\09.weak\09__crc_cookie_ecn_ok\09\09\09\09"
module asm "\09.long\09__crc_cookie_ecn_ok\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cookie_ecn_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22cookie_ecn_ok\22\09\09\09\09\09"
module asm "__kstrtabns_cookie_ecn_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cookie_tcp_reqsk_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_cookie_tcp_reqsk_alloc\09\09\09\09"
module asm "\09.long\09__crc_cookie_tcp_reqsk_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cookie_tcp_reqsk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22cookie_tcp_reqsk_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_cookie_tcp_reqsk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.189 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.194, %struct.anon.195, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.194 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.195 = type { i32, i32, i32, i32 }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.196, %struct.anon.197, %struct.anon.198, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.196 = type { i32, i32, i64 }
%struct.anon.197 = type { i32, i32, i64 }
%struct.anon.198 = type { i32, i32 }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.2 = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.anon.40 = type { i16, i16 }

@msstab = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 536, i16 1300, i16 1440, i16 1460], [24 x i8] zeroinitializer }, align 32
@__kstrtab___cookie_v4_init_sequence = external dso_local constant [0 x i8], align 1
@__kstrtabns___cookie_v4_init_sequence = external dso_local constant [0 x i8], align 1
@__ksymtab___cookie_v4_init_sequence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cookie_v4_init_sequence to i32), ptr @__kstrtab___cookie_v4_init_sequence, ptr @__kstrtabns___cookie_v4_init_sequence }, section "___ksymtab_gpl+__cookie_v4_init_sequence", align 4
@__kstrtab___cookie_v4_check = external dso_local constant [0 x i8], align 1
@__kstrtabns___cookie_v4_check = external dso_local constant [0 x i8], align 1
@__ksymtab___cookie_v4_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cookie_v4_check to i32), ptr @__kstrtab___cookie_v4_check, ptr @__kstrtabns___cookie_v4_check }, section "___ksymtab_gpl+__cookie_v4_check", align 4
@__kstrtab_tcp_get_cookie_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_get_cookie_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_get_cookie_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_get_cookie_sock to i32), ptr @__kstrtab_tcp_get_cookie_sock, ptr @__kstrtabns_tcp_get_cookie_sock }, section "___ksymtab+tcp_get_cookie_sock", align 4
@__kstrtab_cookie_timestamp_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_cookie_timestamp_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_cookie_timestamp_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cookie_timestamp_decode to i32), ptr @__kstrtab_cookie_timestamp_decode, ptr @__kstrtabns_cookie_timestamp_decode }, section "___ksymtab+cookie_timestamp_decode", align 4
@__kstrtab_cookie_ecn_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_cookie_ecn_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_cookie_ecn_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cookie_ecn_ok to i32), ptr @__kstrtab_cookie_ecn_ok, ptr @__kstrtabns_cookie_ecn_ok }, section "___ksymtab+cookie_ecn_ok", align 4
@mptcp_subflow_request_sock_ops = external dso_local global %struct.request_sock_ops, align 4
@__kstrtab_cookie_tcp_reqsk_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_cookie_tcp_reqsk_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_cookie_tcp_reqsk_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cookie_tcp_reqsk_alloc to i32), ptr @__kstrtab_cookie_tcp_reqsk_alloc, ptr @__kstrtabns_cookie_tcp_reqsk_alloc }, section "___ksymtab_gpl+cookie_tcp_reqsk_alloc", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcp_request_sock_ops = external dso_local global %struct.request_sock_ops, align 4
@cookie_hash.___done = internal global i8 0, section ".data.once", align 1
@cookie_hash.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@syncookie_secret = internal global { [2 x %struct.siphash_key_t], [32 x i8] } zeroinitializer, align 32
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/request_sock.h\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tcp_synq_no_recent_overflow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/tcp.h\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"msstab\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 148, i32 20 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 49, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"syncookie_secret\00", align 1
@___asan_gen_.15 = private constant [25 x i8] c"../net/ipv4/syncookies.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 17, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [30 x i8] c"../include/net/request_sock.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 126, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"../include/net/tcp.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 533, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 695, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 723, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab___cookie_v4_check, ptr @__ksymtab___cookie_v4_init_sequence, ptr @__ksymtab_cookie_ecn_ok, ptr @__ksymtab_cookie_tcp_reqsk_alloc, ptr @__ksymtab_cookie_timestamp_decode, ptr @__ksymtab_tcp_get_cookie_sock, ptr @msstab, ptr @cookie_hash.___once_key, ptr @syncookie_secret, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msstab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cookie_hash.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syncookie_secret to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @cookie_init_timestamp(ptr nocapture noundef readonly %req, i64 noundef %now) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %now) #13, !srcloc !48
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %now, i64 %0, i32 0) #13, !srcloc !49
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %1, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %wscale_ok = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %wscale_ok to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %wscale_ok, align 8
  %3 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %bf.lshr3 = lshr i16 %bf.load, 12
  %narrow = select i1 %tobool.not, i16 15, i16 %bf.lshr3
  %4 = lshr i16 %bf.load, 2
  %5 = and i16 %4, 16
  %6 = shl i16 %bf.load, 1
  %7 = and i16 %6, 32
  %8 = or i16 %7, %5
  %9 = or i16 %8, %narrow
  %10 = zext i16 %9 to i32
  %and = and i32 %conv.i, -64
  %or16 = or i32 %and, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %or16, i32 %conv.i)
  %cmp = icmp ugt i32 %or16, %conv.i
  %11 = add i32 %or16, -64
  %shl = and i32 %11, -64
  %or19 = or i32 %shl, %10
  %ts.0 = select i1 %cmp, i32 %or19, i32 %or16
  %conv21 = zext i32 %ts.0 to i64
  %mul = mul nuw nsw i64 %conv21, 1000000
  ret i64 %mul
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cookie_v4_init_sequence(ptr nocapture noundef readonly %iph, ptr nocapture noundef readonly %th, ptr nocapture noundef %mssp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mssp to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mssp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1460, i16 %1)
  %cmp.not = icmp ult i16 %1, 1460
  br i1 %cmp.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1440, i16 %1)
  %cmp.not.1 = icmp ult i16 %1, 1440
  br i1 %cmp.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 1299, i16 %1)
  %cmp.not.2 = icmp ugt i16 %1, 1299
  %spec.select = zext i1 %cmp.not.2 to i32
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mssind.0.lcssa = phi i32 [ 3, %entry.for.end_crit_edge ], [ 2, %for.inc.for.end_crit_edge ], [ %spec.select, %for.inc.1 ]
  %arrayidx3 = getelementptr [4 x i16], ptr @msstab, i32 0, i32 %mssind.0.lcssa
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx3, align 2
  %4 = ptrtoint ptr %mssp to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %mssp, align 2
  %saddr = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 8
  %5 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 9
  %7 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %daddr, align 4
  %9 = ptrtoint ptr %th to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %th, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 1
  %11 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dest, align 2
  %seq = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 2
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seq, align 4
  %call = tail call fastcc i32 @secure_tcp_syn_cookie(i32 noundef %6, i32 noundef %8, i16 noundef zeroext %10, i16 noundef zeroext %12, i32 noundef %14, i32 noundef %mssind.0.lcssa)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @secure_tcp_syn_cookie(i32 noundef %saddr, i32 noundef %daddr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, i32 noundef %sseq, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %___flags.i11 = alloca i32, align 4
  %___flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @get_jiffies_64() #10
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -5853766786057164379, i64 %call.i) #13, !srcloc !48
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5853766786057164379, i64 %call.i, i64 %0, i32 0) #13, !srcloc !49
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cookie_hash.___once_key, ptr blockaddress(@secure_tcp_syn_cookie, %if.then.i)) #10
          to label %cookie_hash.exit [label %if.then.i], !srcloc !50

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i) #10
  %2 = ptrtoint ptr %___flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %___flags.i, align 4, !annotation !51
  %call3.i = call zeroext i1 @__do_once_start(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull %___flags.i) #10
  br i1 %call3.i, label %if.then12.i, label %if.then.i.if.end.i_crit_edge, !prof !52

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @get_random_bytes(ptr noundef nonnull @syncookie_secret, i32 noundef 32) #10
  call void @__do_once_done(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull @cookie_hash.___once_key, ptr noundef nonnull %___flags.i, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.then.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i) #10
  br label %cookie_hash.exit

cookie_hash.exit:                                 ; preds = %if.end.i, %entry
  %conv.i = zext i16 %sport to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv18.i = zext i16 %dport to i32
  %or.i = or i32 %shl.i, %conv18.i
  %conv.i.i = zext i32 %daddr to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %saddr to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %conv4.i.i = zext i32 %or.i to i64
  %call.i.i = call i64 @siphash_2u64(i64 noundef %or.i.i, i64 noundef %conv4.i.i, ptr noundef nonnull @syncookie_secret) #10
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cookie_hash.___once_key, ptr blockaddress(@secure_tcp_syn_cookie, %if.then.i13)) #10
          to label %cookie_hash.exit27 [label %if.then.i13], !srcloc !50

if.then.i13:                                      ; preds = %cookie_hash.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i11) #10
  %3 = ptrtoint ptr %___flags.i11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %___flags.i11, align 4, !annotation !51
  %call3.i12 = call zeroext i1 @__do_once_start(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull %___flags.i11) #10
  br i1 %call3.i12, label %if.then12.i14, label %if.then.i13.if.end.i15_crit_edge, !prof !52

if.then.i13.if.end.i15_crit_edge:                 ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i15

if.then12.i14:                                    ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  call void @get_random_bytes(ptr noundef nonnull @syncookie_secret, i32 noundef 32) #10
  call void @__do_once_done(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull @cookie_hash.___once_key, ptr noundef nonnull %___flags.i11, ptr noundef null) #10
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then12.i14, %if.then.i13.if.end.i15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i11) #10
  br label %cookie_hash.exit27

cookie_hash.exit27:                               ; preds = %if.end.i15, %cookie_hash.exit
  %conv20.i = trunc i64 %call.i.i to i32
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  %extract262.i = lshr i64 %asmresult10.i.i, 12
  %extract.t263.i = trunc i64 %extract262.i to i32
  %shl = shl i32 %extract.t263.i, 24
  %conv2.i.i = shl i64 %extract262.i, 32
  %or5.i.i = or i64 %conv2.i.i, %conv4.i.i
  %call.i.i25 = call i64 @siphash_2u64(i64 noundef %or.i.i, i64 noundef %or5.i.i, ptr noundef getelementptr inbounds ([2 x %struct.siphash_key_t], ptr @syncookie_secret, i32 0, i32 1)) #10
  %conv20.i26 = trunc i64 %call.i.i25 to i32
  %add4 = add i32 %conv20.i26, %data
  %and = and i32 %add4, 16777215
  %add = add i32 %shl, %sseq
  %add2 = add i32 %add, %conv20.i
  %add5 = add i32 %add2, %and
  ret i32 %add5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cookie_v4_init_sequence(ptr nocapture noundef readonly %skb, ptr nocapture noundef %mssp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %6 = ptrtoint ptr %mssp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mssp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1460, i16 %7)
  %cmp.not.i = icmp ult i16 %7, 1460
  br i1 %cmp.not.i, label %for.inc.i, label %entry.__cookie_v4_init_sequence.exit_crit_edge

entry.__cookie_v4_init_sequence.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cookie_v4_init_sequence.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1440, i16 %7)
  %cmp.not.1.i = icmp ult i16 %7, 1440
  br i1 %cmp.not.1.i, label %for.inc.1.i, label %for.inc.i.__cookie_v4_init_sequence.exit_crit_edge

for.inc.i.__cookie_v4_init_sequence.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cookie_v4_init_sequence.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 1299, i16 %7)
  %cmp.not.2.i = icmp ugt i16 %7, 1299
  %spec.select.i = zext i1 %cmp.not.2.i to i32
  br label %__cookie_v4_init_sequence.exit

__cookie_v4_init_sequence.exit:                   ; preds = %for.inc.1.i, %for.inc.i.__cookie_v4_init_sequence.exit_crit_edge, %entry.__cookie_v4_init_sequence.exit_crit_edge
  %mssind.0.lcssa.i = phi i32 [ 3, %entry.__cookie_v4_init_sequence.exit_crit_edge ], [ 2, %for.inc.i.__cookie_v4_init_sequence.exit_crit_edge ], [ %spec.select.i, %for.inc.1.i ]
  %conv.i.i5 = zext i16 %5 to i32
  %add.ptr.i.i6 = getelementptr i8, ptr %1, i32 %conv.i.i5
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %arrayidx3.i = getelementptr [4 x i16], ptr @msstab, i32 0, i32 %mssind.0.lcssa.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx3.i, align 2
  %10 = ptrtoint ptr %mssp to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %mssp, align 2
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr.i, align 4
  %15 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i6, align 4
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i6, i32 0, i32 1
  %17 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dest.i, align 2
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i6, i32 0, i32 2
  %19 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq.i, align 4
  %call.i = tail call fastcc i32 @secure_tcp_syn_cookie(i32 noundef %12, i32 noundef %14, i16 noundef zeroext %16, i16 noundef zeroext %18, i32 noundef %20, i32 noundef %mssind.0.lcssa.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cookie_v4_check(ptr nocapture noundef readonly %iph, ptr nocapture noundef readonly %th, i32 noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seq1 = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 2
  %0 = ptrtoint ptr %seq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq1, align 4
  %sub = add i32 %1, -1
  %saddr = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 8
  %2 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 9
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %daddr, align 4
  %6 = ptrtoint ptr %th to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %th, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 1
  %8 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dest, align 2
  %call = tail call fastcc i32 @check_tcp_syn_cookie(i32 noundef %cookie, i32 noundef %3, i32 noundef %5, i16 noundef zeroext %7, i16 noundef zeroext %9, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp ult i32 %call, 4
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [4 x i16], ptr @msstab, i32 0, i32 %call
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_tcp_syn_cookie(i32 noundef %cookie, i32 noundef %saddr, i32 noundef %daddr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, i32 noundef %sseq) unnamed_addr #2 align 64 {
entry:
  %___flags.i16 = alloca i32, align 4
  %___flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @get_jiffies_64() #10
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -5853766786057164379, i64 %call.i) #13, !srcloc !48
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5853766786057164379, i64 %call.i, i64 %0, i32 0) #13, !srcloc !49
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  %extract262.i = lshr i64 %asmresult10.i.i, 12
  %extract.t263.i = trunc i64 %extract262.i to i32
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cookie_hash.___once_key, ptr blockaddress(@check_tcp_syn_cookie, %if.then.i)) #10
          to label %cookie_hash.exit [label %if.then.i], !srcloc !50

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i) #10
  %2 = ptrtoint ptr %___flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %___flags.i, align 4, !annotation !51
  %call3.i = call zeroext i1 @__do_once_start(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull %___flags.i) #10
  br i1 %call3.i, label %if.then12.i, label %if.then.i.if.end.i_crit_edge, !prof !52

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @get_random_bytes(ptr noundef nonnull @syncookie_secret, i32 noundef 32) #10
  call void @__do_once_done(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull @cookie_hash.___once_key, ptr noundef nonnull %___flags.i, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.then.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i) #10
  br label %cookie_hash.exit

cookie_hash.exit:                                 ; preds = %if.end.i, %entry
  %conv.i = zext i16 %sport to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv18.i = zext i16 %dport to i32
  %or.i = or i32 %shl.i, %conv18.i
  %conv.i.i = zext i32 %daddr to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %saddr to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %conv4.i.i = zext i32 %or.i to i64
  %call.i.i = call i64 @siphash_2u64(i64 noundef %or.i.i, i64 noundef %conv4.i.i, ptr noundef nonnull @syncookie_secret) #10
  %conv20.i = trunc i64 %call.i.i to i32
  %3 = add i32 %conv20.i, %sseq
  %sub = sub i32 %cookie, %3
  %shr = lshr i32 %sub, 24
  %sub2 = sub i32 %extract.t263.i, %shr
  %and = and i32 %sub2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp ugt i32 %and, 1
  br i1 %cmp, label %cookie_hash.exit.cleanup_crit_edge, label %if.end

cookie_hash.exit.cleanup_crit_edge:               ; preds = %cookie_hash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cookie_hash.exit
  %sub3 = sub i32 %extract.t263.i, %and
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cookie_hash.___once_key, ptr blockaddress(@check_tcp_syn_cookie, %if.then.i18)) #10
          to label %cookie_hash.exit32 [label %if.then.i18], !srcloc !50

if.then.i18:                                      ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i16) #10
  %4 = ptrtoint ptr %___flags.i16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %___flags.i16, align 4, !annotation !51
  %call3.i17 = call zeroext i1 @__do_once_start(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull %___flags.i16) #10
  br i1 %call3.i17, label %if.then12.i19, label %if.then.i18.if.end.i20_crit_edge, !prof !52

if.then.i18.if.end.i20_crit_edge:                 ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i20

if.then12.i19:                                    ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #12
  call void @get_random_bytes(ptr noundef nonnull @syncookie_secret, i32 noundef 32) #10
  call void @__do_once_done(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull @cookie_hash.___once_key, ptr noundef nonnull %___flags.i16, ptr noundef null) #10
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then12.i19, %if.then.i18.if.end.i20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i16) #10
  br label %cookie_hash.exit32

cookie_hash.exit32:                               ; preds = %if.end.i20, %if.end
  %conv2.i.i = zext i32 %sub3 to i64
  %shl3.i.i = shl nuw i64 %conv2.i.i, 32
  %or5.i.i = or i64 %shl3.i.i, %conv4.i.i
  %call.i.i30 = call i64 @siphash_2u64(i64 noundef %or.i.i, i64 noundef %or5.i.i, ptr noundef getelementptr inbounds ([2 x %struct.siphash_key_t], ptr @syncookie_secret, i32 0, i32 1)) #10
  %conv20.i31 = trunc i64 %call.i.i30 to i32
  %sub5 = sub i32 %sub, %conv20.i31
  %and6 = and i32 %sub5, 16777215
  br label %cleanup

cleanup:                                          ; preds = %cookie_hash.exit32, %cookie_hash.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %and6, %cookie_hash.exit32 ], [ -1, %cookie_hash.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tcp_get_cookie_sock(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef %dst, i32 noundef %tsoff) #2 align 64 {
entry:
  %own_req = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %own_req) #10
  %0 = ptrtoint ptr %own_req to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %own_req, align 1, !annotation !51
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %1 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %icsk_af_ops, align 8
  %syn_recv_sock = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %syn_recv_sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %syn_recv_sock, align 4
  %call1 = call ptr %4(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef %dst, ptr noundef null, ptr noundef nonnull %own_req) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 19
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %5 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %skc_refcnt, align 4
  %tsoffset = getelementptr inbounds %struct.tcp_sock, ptr %call1, i32 0, i32 22
  %6 = ptrtoint ptr %tsoffset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %tsoff, ptr %tsoffset, align 4
  %7 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 21
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %10 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i = icmp eq i32 %9, %11
  br i1 %cmp.not.i, label %if.then.sock_rps_save_rxhash.exit_crit_edge, label %if.then.i, !prof !53

if.then.sock_rps_save_rxhash.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rps_save_rxhash.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %7, align 8
  br label %sock_rps_save_rxhash.exit

sock_rps_save_rxhash.exit:                        ; preds = %if.then.i, %if.then.sock_rps_save_rxhash.exit_crit_edge
  %is_mptcp.i = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_mptcp.i, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %sock_rps_save_rxhash.exit.if.end_crit_edge, label %rsk_drop_req.exit

sock_rps_save_rxhash.exit.if.end_crit_edge:       ; preds = %sock_rps_save_rxhash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

rsk_drop_req.exit:                                ; preds = %sock_rps_save_rxhash.exit
  %drop_req.i = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %drop_req.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %drop_req.i, align 2, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.i.not = icmp eq i8 %16, 0
  br i1 %tobool2.i.not, label %rsk_drop_req.exit.if.end_crit_edge, label %if.then4

rsk_drop_req.exit.if.end_crit_edge:               ; preds = %rsk_drop_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %rsk_drop_req.exit
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i27, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #10
  br label %cleanup

if.then.i27:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call fastcc void @reqsk_free(ptr noundef %req) #10
  br label %cleanup

if.end:                                           ; preds = %rsk_drop_req.exit.if.end_crit_edge, %sock_rps_save_rxhash.exit.if.end_crit_edge
  %call5 = call ptr @inet_csk_reqsk_queue_add(ptr noundef %sk, ptr noundef %req, ptr noundef nonnull %call1) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %sk_lock = getelementptr inbounds %struct.sock, ptr %call1, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock) #10
  %skc_refcnt.i28 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 19
  %call.i.i.i.i.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i28, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i28, i32 1, i32 3, i32 1) #10
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i28, ptr %skc_refcnt.i28, i32 1, ptr elementtype(i32) %skc_refcnt.i28) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i30)
  %cmp.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i30, 1
  br i1 %cmp.i.i.i.i31, label %if.then.i35, label %if.end5.i.i.i.i33

if.end5.i.i.i.i33:                                ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i30)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i30, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i33.if.end9_crit_edge, label %if.then10.i.i.i.i34, !prof !53

if.end5.i.i.i.i33.if.end9_crit_edge:              ; preds = %if.end5.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then10.i.i.i.i34:                              ; preds = %if.end5.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i28, i32 noundef 3) #10
  br label %if.end9

if.then.i35:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @sk_free(ptr noundef nonnull %call1) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then.i35, %if.then10.i.i.i.i34, %if.end5.i.i.i.i33.if.end9_crit_edge, %entry.if.end9_crit_edge
  %rsk_ops.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %19 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rsk_ops.i, align 4
  %destructor.i = getelementptr inbounds %struct.request_sock_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %destructor.i, align 4
  call void %22(ptr noundef %req) #10
  %23 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %tobool.not.i36 = icmp eq ptr %25, null
  br i1 %tobool.not.i36, label %if.end9.__reqsk_free.exit_crit_edge, label %if.then.i37

if.end9.__reqsk_free.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %__reqsk_free.exit

if.then.i37:                                      ; preds = %if.end9
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !53

if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__reqsk_free.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %__reqsk_free.exit

if.then.i.i:                                      ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @sk_free(ptr noundef nonnull %25) #10
  br label %__reqsk_free.exit

__reqsk_free.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge, %if.end9.__reqsk_free.exit_crit_edge
  %saved_syn.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 9
  %27 = ptrtoint ptr %saved_syn.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %saved_syn.i, align 4
  call void @kfree(ptr noundef %28) #10
  %29 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rsk_ops.i, align 4
  %slab.i = getelementptr inbounds %struct.request_sock_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %slab.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slab.i, align 4
  call void @kmem_cache_free(ptr noundef %32, ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %__reqsk_free.exit, %if.end.cleanup_crit_edge, %if.then.i27, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %__reqsk_free.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call1, %if.then10.i.i.i.i ], [ %call1, %if.then.i27 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %own_req) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_reqsk_queue_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cookie_timestamp_decode(ptr nocapture noundef readonly %net, ptr nocapture noundef %tcp_opt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_tsecr = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 3
  %0 = ptrtoint ptr %rcv_tsecr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rcv_tsecr, align 4
  %saw_tstamp = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 4
  %2 = ptrtoint ptr %saw_tstamp to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %saw_tstamp, align 4
  %tobool.not = icmp sgt i24 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear11.i = and i24 %bf.load, -6287361
  %3 = ptrtoint ptr %saw_tstamp to i32
  call void @__asan_storeN_noabort(i32 %3, i32 3)
  store i24 %bf.clear11.i, ptr %saw_tstamp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sysctl_tcp_timestamps = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 74
  %4 = ptrtoint ptr %sysctl_tcp_timestamps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sysctl_tcp_timestamps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = trunc i32 %1 to i16
  %7 = lshr i16 %6, 4
  %8 = and i16 %7, 1
  %bf.value = zext i16 %8 to i24
  %bf.shl = shl nuw nsw i24 %bf.value, 17
  %bf.clear = and i24 %bf.load, -917505
  %bf.set = or i24 %bf.shl, %bf.clear
  %9 = ptrtoint ptr %saw_tstamp to i32
  call void @__asan_storeN_noabort(i32 %9, i32 3)
  store i24 %bf.set, ptr %saw_tstamp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool12.not = icmp eq i16 %8, 0
  br i1 %tobool12.not, label %if.end3.if.end16_crit_edge, label %land.lhs.true

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end3
  %sysctl_tcp_sack = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 72
  %10 = ptrtoint ptr %sysctl_tcp_sack to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sysctl_tcp_sack, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %and17 = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and17)
  %cmp = icmp eq i32 %and17, 15
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %12 = trunc i32 %1 to i24
  %bf.value27 = shl i24 %12, 12
  %bf.shl28 = and i24 %bf.value27, 61440
  %bf.set23 = and i24 %bf.set, -1896449
  %bf.clear29 = or i24 %bf.shl28, %bf.set23
  %bf.set30 = or i24 %bf.clear29, 1048576
  %13 = ptrtoint ptr %saw_tstamp to i32
  call void @__asan_storeN_noabort(i32 %13, i32 3)
  store i24 %bf.set30, ptr %saw_tstamp, align 4
  %sysctl_tcp_window_scaling = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 73
  %14 = ptrtoint ptr %sysctl_tcp_window_scaling to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sysctl_tcp_window_scaling, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp34 = icmp ne i8 %15, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %cmp34, %if.end20 ], [ true, %if.then ], [ false, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ true, %if.end16.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cookie_ecn_ok(ptr nocapture noundef readonly %tcp_opt, ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %dst) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_tsecr = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 3
  %0 = ptrtoint ptr %rcv_tsecr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rcv_tsecr, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sysctl_tcp_ecn = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 35
  %2 = ptrtoint ptr %sysctl_tcp_ecn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sysctl_tcp_ecn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %4 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %6, i32 11
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5 = icmp ne i32 %and.i, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool5, %if.end4 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cookie_tcp_reqsk_alloc(ptr noundef %ops, ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_mptcp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 115
  %0 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_mptcp.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.i.not, ptr %ops, ptr @mptcp_subflow_request_sock_ops
  %call1 = tail call ptr @inet_reqsk_alloc(ptr noundef %spec.select, ptr noundef %sk, i1 noundef zeroext false) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup14_crit_edge, label %if.end3

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.end3:                                          ; preds = %entry
  %ip_dsfield = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %2 = ptrtoint ptr %ip_dsfield to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip_dsfield, align 2
  %syn_tos = getelementptr inbounds %struct.tcp_request_sock, ptr %call1, i32 0, i32 12
  %4 = ptrtoint ptr %syn_tos to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %syn_tos, align 4
  %5 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_mptcp.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i27.not = icmp eq i8 %6, 0
  %is_mptcp = getelementptr inbounds %struct.tcp_request_sock, ptr %call1, i32 0, i32 4
  %7 = ptrtoint ptr %is_mptcp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %is_mptcp, align 1
  br i1 %tobool.i27.not, label %if.end3.cleanup14_crit_edge, label %if.then8

if.end3.cleanup14_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.then8:                                         ; preds = %if.end3
  %call9 = tail call i32 @mptcp_subflow_init_cookie_req(ptr noundef nonnull %call1, ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.cleanup14_crit_edge, label %if.then11

if.then8.cleanup14_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @reqsk_free(ptr noundef nonnull %call1)
  br label %cleanup14

cleanup14:                                        ; preds = %if.then11, %if.then8.cleanup14_crit_edge, %if.end3.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi ptr [ null, %entry.cleanup14_crit_edge ], [ null, %if.then11 ], [ %call1, %if.end3.cleanup14_crit_edge ], [ %call1, %if.then8.cleanup14_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_reqsk_alloc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_subflow_init_cookie_req(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reqsk_free(ptr noundef %req) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %0 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %skc_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b38 = load i1, ptr @reqsk_free.__already_done, align 1
  br i1 %.b38, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !53

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 126, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %rsk_ops.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %2 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsk_ops.i, align 4
  %destructor.i = getelementptr inbounds %struct.request_sock_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destructor.i, align 4
  tail call void %5(ptr noundef %req) #10
  %6 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end27.__reqsk_free.exit_crit_edge, label %if.then.i

if.end27.__reqsk_free.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %__reqsk_free.exit

if.then.i:                                        ; preds = %if.end27
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !53

if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__reqsk_free.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %__reqsk_free.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @sk_free(ptr noundef nonnull %8) #10
  br label %__reqsk_free.exit

__reqsk_free.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge, %if.end27.__reqsk_free.exit_crit_edge
  %saved_syn.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 9
  %10 = ptrtoint ptr %saved_syn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %saved_syn.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rsk_ops.i, align 4
  %slab.i = getelementptr inbounds %struct.request_sock_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %slab.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %req) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cookie_v4_check(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  %tcp_opt = alloca %struct.tcp_options_received, align 4
  %rcv_wscale = alloca i8, align 1
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %opt1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tcp_opt) #10
  %0 = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = call ptr @memset(ptr %tcp_opt, i32 255, i32 24)
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ack_seq, align 4
  %sub = add i32 %9, -1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rcv_wscale) #10
  %10 = ptrtoint ptr %rcv_wscale to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %rcv_wscale, align 1, !annotation !51
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #10
  %11 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_syncookies = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 35, i32 63
  %14 = ptrtoint ptr %sysctl_tcp_syncookies to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sysctl_tcp_syncookies, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %ack = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %ack to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %ack, align 4
  %17 = and i16 %bf.load, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %17)
  %18 = icmp eq i16 %17, 16
  br i1 %18, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %20 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %21 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end.do.end28.i_crit_edge, label %if.then.i

if.end.do.end28.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

if.then.i:                                        ; preds = %if.end
  %sk_reuseport_cb.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %22 = ptrtoint ptr %sk_reuseport_cb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %sk_reuseport_cb.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.then.i.do.end9.i_crit_edge

if.then.i.do.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b50.i = load i1, ptr @tcp_synq_no_recent_overflow.__warned, align 1
  br i1 %.b50.i, label %land.lhs.true5.i.do.end9.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcp_synq_no_recent_overflow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 533, ptr noundef nonnull @.str.3) #10
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then7.i, %land.lhs.true5.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %if.then.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %23, null
  br i1 %tobool11.not.i, label %do.end9.i.do.end28.i_crit_edge, label %cleanup.i, !prof !52

do.end9.i.do.end28.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

cleanup.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %synq_overflow_ts.i = getelementptr inbounds %struct.sock_reuseport, ptr %23, i32 0, i32 4
  br label %tcp_synq_no_recent_overflow.exit

do.end28.i:                                       ; preds = %do.end9.i.do.end28.i_crit_edge, %if.end.do.end28.i_crit_edge
  %rx_opt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61
  br label %tcp_synq_no_recent_overflow.exit

tcp_synq_no_recent_overflow.exit:                 ; preds = %do.end28.i, %cleanup.i
  %sub32.pn.in.in.i = phi ptr [ %rx_opt.i, %do.end28.i ], [ %synq_overflow_ts.i, %cleanup.i ]
  %24 = ptrtoint ptr %sub32.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %sub32.pn.in.i = load volatile i32, ptr %sub32.pn.in.in.i, align 4
  %sub32.pn.neg.i = add i32 %19, 100
  %retval.1.in.i = sub i32 %sub32.pn.neg.i, %sub32.pn.in.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12100, i32 %retval.1.in.i)
  %retval.1.i = icmp ugt i32 %retval.1.in.i, 12100
  br i1 %retval.1.i, label %tcp_synq_no_recent_overflow.exit.out_crit_edge, label %if.end12

tcp_synq_no_recent_overflow.exit.out_crit_edge:   ; preds = %tcp_synq_no_recent_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %tcp_synq_no_recent_overflow.exit
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i353 = zext i16 %28 to i32
  %add.ptr.i.i354 = getelementptr i8, ptr %26, i32 %conv.i.i353
  %seq1.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq1.i, align 4
  %sub.i = add i32 %30, -1
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i354, i32 0, i32 8
  %31 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i354, i32 0, i32 9
  %33 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daddr.i, align 4
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i, align 4
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dest.i, align 2
  %call.i355 = tail call fastcc i32 @check_tcp_syn_cookie(i32 noundef %sub, i32 noundef %32, i32 noundef %34, i16 noundef zeroext %36, i16 noundef zeroext %38, i32 noundef %sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i355)
  %cmp.i = icmp ult i32 %call.i355, 4
  br i1 %cmp.i, label %__cookie_v4_check.exit, label %if.then16

__cookie_v4_check.exit:                           ; preds = %if.end12
  %arrayidx.i = getelementptr [4 x i16], ptr @msstab, i32 0, i32 %call.i355
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i, align 2
  %41 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skc_net.i, align 4
  %net_statistics48 = getelementptr inbounds %struct.net, ptr %42, i32 0, i32 30, i32 3
  %43 = ptrtoint ptr %net_statistics48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net_statistics48, align 4
  %arrayidx50 = getelementptr [126 x i32], ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx50 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i358 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i358 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu53, align 4
  %arrayidx54 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %51, %45
  %52 = inttoptr i32 %add55 to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add56 = add i32 %54, 1
  store i32 %add56, ptr %52, align 4
  %55 = call ptr @memset(ptr %tcp_opt, i32 0, i32 24)
  %56 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skc_net.i, align 4
  call void @tcp_parse_options(ptr noundef %57, ptr noundef %skb, ptr noundef nonnull %tcp_opt, i32 noundef 0, ptr noundef null) #10
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 3)
  %bf.load62 = load i24, ptr %2, align 4
  %tobool65.not = icmp sgt i24 %bf.load62, -1
  br i1 %tobool65.not, label %__cookie_v4_check.exit.if.then.i372_crit_edge, label %land.lhs.true

__cookie_v4_check.exit.if.then.i372_crit_edge:    ; preds = %__cookie_v4_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i372

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %60, i32 0, i32 30, i32 3
  %61 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net_statistics, align 4
  %arrayidx24 = getelementptr [126 x i32], ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx24 to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx27, align 4
  %add = add i32 %69, %63
  %70 = inttoptr i32 %add to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add28 = add i32 %72, 1
  store i32 %add28, ptr %70, align 4
  br label %out

land.lhs.true:                                    ; preds = %__cookie_v4_check.exit
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool66.not = icmp eq i32 %74, 0
  br i1 %tobool66.not, label %if.end74.thread435, label %if.end74

if.end74.thread435:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %1, align 4
  br label %if.end.i

if.end74:                                         ; preds = %land.lhs.true
  %77 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %skc_net.i, align 4
  %79 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i.i, align 8
  %81 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i363 = zext i16 %82 to i32
  %add.ptr.i.i364 = getelementptr i8, ptr %80, i32 %conv.i.i363
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i364, i32 0, i32 9
  %83 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i364, i32 0, i32 8
  %85 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %saddr, align 4
  %call71 = call i32 @secure_tcp_ts_off(ptr noundef %78, i32 noundef %84, i32 noundef %86) #10
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %1, align 4
  %sub73 = sub i32 %88, %call71
  store i32 %sub73, ptr %1, align 4
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 3)
  %bf.load.i370.pr = load i24, ptr %2, align 4
  %tobool.not.i371 = icmp sgt i24 %bf.load.i370.pr, -1
  br i1 %tobool.not.i371, label %if.end74.if.then.i372_crit_edge, label %if.end74.if.end.i_crit_edge

if.end74.if.end.i_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end74.if.then.i372_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i372

if.then.i372:                                     ; preds = %if.end74.if.then.i372_crit_edge, %__cookie_v4_check.exit.if.then.i372_crit_edge
  %tsoff.0434 = phi i32 [ %call71, %if.end74.if.then.i372_crit_edge ], [ 0, %__cookie_v4_check.exit.if.then.i372_crit_edge ]
  %bf.load.i370432 = phi i24 [ %bf.load.i370.pr, %if.end74.if.then.i372_crit_edge ], [ %bf.load62, %__cookie_v4_check.exit.if.then.i372_crit_edge ]
  %bf.clear11.i.i = and i24 %bf.load.i370432, -6287361
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 3)
  store i24 %bf.clear11.i.i, ptr %2, align 4
  br label %if.end78

if.end.i:                                         ; preds = %if.end74.if.end.i_crit_edge, %if.end74.thread435
  %91 = phi i32 [ %76, %if.end74.thread435 ], [ %sub73, %if.end74.if.end.i_crit_edge ]
  %tsoff.0440 = phi i32 [ 0, %if.end74.thread435 ], [ %call71, %if.end74.if.end.i_crit_edge ]
  %bf.load.i370439 = phi i24 [ %bf.load62, %if.end74.thread435 ], [ %bf.load.i370.pr, %if.end74.if.end.i_crit_edge ]
  %92 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_timestamps.i = getelementptr inbounds %struct.net, ptr %93, i32 0, i32 35, i32 74
  %94 = ptrtoint ptr %sysctl_tcp_timestamps.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sysctl_tcp_timestamps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool1.not.i = icmp eq i8 %95, 0
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %if.end3.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3.i:                                        ; preds = %if.end.i
  %96 = trunc i32 %91 to i16
  %97 = lshr i16 %96, 4
  %98 = and i16 %97, 1
  %bf.value.i = zext i16 %98 to i24
  %bf.shl.i = shl nuw nsw i24 %bf.value.i, 17
  %bf.clear.i = and i24 %bf.load.i370439, -917505
  %bf.set.i = or i24 %bf.shl.i, %bf.clear.i
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 3)
  store i24 %bf.set.i, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool12.not.i = icmp eq i16 %98, 0
  br i1 %tobool12.not.i, label %if.end3.i.if.end16.i_crit_edge, label %land.lhs.true.i373

if.end3.i.if.end16.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

land.lhs.true.i373:                               ; preds = %if.end3.i
  %sysctl_tcp_sack.i = getelementptr inbounds %struct.net, ptr %93, i32 0, i32 35, i32 72
  %100 = ptrtoint ptr %sysctl_tcp_sack.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %sysctl_tcp_sack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool14.not.i = icmp eq i8 %101, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i373.out_crit_edge, label %land.lhs.true.i373.if.end16.i_crit_edge

land.lhs.true.i373.if.end16.i_crit_edge:          ; preds = %land.lhs.true.i373
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

land.lhs.true.i373.out_crit_edge:                 ; preds = %land.lhs.true.i373
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end16.i:                                       ; preds = %land.lhs.true.i373.if.end16.i_crit_edge, %if.end3.i.if.end16.i_crit_edge
  %and17.i = and i32 %91, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and17.i)
  %cmp.i374 = icmp eq i32 %and17.i, 15
  br i1 %cmp.i374, label %if.end16.i.if.end78_crit_edge, label %cookie_timestamp_decode.exit

if.end16.i.if.end78_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

cookie_timestamp_decode.exit:                     ; preds = %if.end16.i
  %102 = trunc i32 %91 to i24
  %bf.value27.i = shl i24 %102, 12
  %bf.shl28.i = and i24 %bf.value27.i, 61440
  %bf.set23.i = and i24 %bf.set.i, -1896449
  %bf.clear29.i = or i24 %bf.shl28.i, %bf.set23.i
  %bf.set30.i = or i24 %bf.clear29.i, 1048576
  %103 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 3)
  store i24 %bf.set30.i, ptr %2, align 4
  %sysctl_tcp_window_scaling.i = getelementptr inbounds %struct.net, ptr %93, i32 0, i32 35, i32 73
  %104 = ptrtoint ptr %sysctl_tcp_window_scaling.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %sysctl_tcp_window_scaling.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp34.i.not = icmp eq i8 %105, 0
  br i1 %cmp34.i.not, label %cookie_timestamp_decode.exit.out_crit_edge, label %cookie_timestamp_decode.exit.if.end78_crit_edge

cookie_timestamp_decode.exit.if.end78_crit_edge:  ; preds = %cookie_timestamp_decode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

cookie_timestamp_decode.exit.out_crit_edge:       ; preds = %cookie_timestamp_decode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end78:                                         ; preds = %cookie_timestamp_decode.exit.if.end78_crit_edge, %if.end16.i.if.end78_crit_edge, %if.then.i372
  %tsoff.0433443 = phi i32 [ %tsoff.0440, %cookie_timestamp_decode.exit.if.end78_crit_edge ], [ %tsoff.0440, %if.end16.i.if.end78_crit_edge ], [ %tsoff.0434, %if.then.i372 ]
  %is_mptcp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 115
  %106 = ptrtoint ptr %is_mptcp.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %is_mptcp.i.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.i.not.i = icmp eq i8 %107, 0
  %spec.select.i = select i1 %tobool.i.not.i, ptr @tcp_request_sock_ops, ptr @mptcp_subflow_request_sock_ops
  %call1.i = call ptr @inet_reqsk_alloc(ptr noundef nonnull %spec.select.i, ptr noundef %sk, i1 noundef zeroext false) #10
  %tobool.not.i376 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i376, label %if.end78.out_crit_edge, label %if.end3.i377

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3.i377:                                     ; preds = %if.end78
  %ip_dsfield.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %108 = ptrtoint ptr %ip_dsfield.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %ip_dsfield.i, align 2
  %syn_tos.i = getelementptr inbounds %struct.tcp_request_sock, ptr %call1.i, i32 0, i32 12
  %110 = ptrtoint ptr %syn_tos.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %syn_tos.i, align 4
  %111 = ptrtoint ptr %is_mptcp.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %is_mptcp.i.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.i27.not.i = icmp eq i8 %112, 0
  %is_mptcp.i = getelementptr inbounds %struct.tcp_request_sock, ptr %call1.i, i32 0, i32 4
  %113 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %is_mptcp.i, align 1
  br i1 %tobool.i27.not.i, label %if.end3.i377.if.end82_crit_edge, label %if.then8.i

if.end3.i377.if.end82_crit_edge:                  ; preds = %if.end3.i377
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then8.i:                                       ; preds = %if.end3.i377
  %call9.i = call i32 @mptcp_subflow_init_cookie_req(ptr noundef nonnull %call1.i, ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end82_crit_edge, label %if.then11.i

if.then8.i.if.end82_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @reqsk_free(ptr noundef nonnull %call1.i) #10
  br label %out

if.end82:                                         ; preds = %if.then8.i.if.end82_crit_edge, %if.end3.i377.if.end82_crit_edge
  %114 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %seq1.i, align 4
  %sub85 = add i32 %115, -1
  %rcv_isn = getelementptr inbounds %struct.tcp_request_sock, ptr %call1.i, i32 0, i32 7
  %116 = ptrtoint ptr %rcv_isn to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub85, ptr %rcv_isn, align 8
  %snt_isn = getelementptr inbounds %struct.tcp_request_sock, ptr %call1.i, i32 0, i32 8
  %117 = ptrtoint ptr %snt_isn to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %sub, ptr %snt_isn, align 4
  %ts_off = getelementptr inbounds %struct.tcp_request_sock, ptr %call1.i, i32 0, i32 9
  %118 = ptrtoint ptr %ts_off to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %ts_off, align 8
  %call.i379 = call i32 @prandom_u32() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %tobool.not.i380 = icmp eq i32 %call.i379, 0
  %..i = select i1 %tobool.not.i380, i32 1, i32 %call.i379
  %txhash = getelementptr inbounds %struct.tcp_request_sock, ptr %call1.i, i32 0, i32 6
  %119 = ptrtoint ptr %txhash to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %..i, ptr %txhash, align 4
  %mss88 = getelementptr inbounds %struct.request_sock, ptr %call1.i, i32 0, i32 2
  %120 = ptrtoint ptr %mss88 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %40, ptr %mss88, align 4
  %121 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %dest.i, align 2
  %123 = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %skc_num to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %122, ptr %skc_num, align 2
  %125 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %add.ptr.i.i, align 4
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %123, align 4
  %128 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i.i, align 8
  %130 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i383 = zext i16 %131 to i32
  %add.ptr.i.i384 = getelementptr i8, ptr %129, i32 %conv.i.i383
  %daddr94 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i384, i32 0, i32 9
  %132 = ptrtoint ptr %daddr94 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %daddr94, align 4
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %call1.i, i32 0, i32 1
  %134 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %skc_rcv_saddr.i, align 4
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 11
  %135 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %skc_v6_rcv_saddr.i, align 4
  %arrayidx1.i.i.i.i = getelementptr %struct.sock_common, ptr %call1.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %136 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %arrayidx1.i.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.sock_common, ptr %call1.i, i32 0, i32 11, i32 0, i32 0, i32 2
  %137 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 65535, ptr %arrayidx2.i.i.i, align 4
  %arrayidx1.i1.i.i.i = getelementptr %struct.sock_common, ptr %call1.i, i32 0, i32 11, i32 0, i32 0, i32 3
  %138 = ptrtoint ptr %arrayidx1.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %133, ptr %arrayidx1.i1.i.i.i, align 4
  %139 = load ptr, ptr %head.i.i, align 8
  %140 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i387 = zext i16 %140 to i32
  %add.ptr.i.i388 = getelementptr i8, ptr %139, i32 %conv.i.i387
  %saddr97 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i388, i32 0, i32 8
  %141 = ptrtoint ptr %saddr97 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %saddr97, align 4
  %143 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %call1.i, align 8
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 10
  %144 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %skc_v6_daddr.i, align 4
  %arrayidx1.i.i.i.i389 = getelementptr %struct.sock_common, ptr %call1.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %145 = ptrtoint ptr %arrayidx1.i.i.i.i389 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %arrayidx1.i.i.i.i389, align 4
  %arrayidx2.i.i.i390 = getelementptr %struct.sock_common, ptr %call1.i, i32 0, i32 10, i32 0, i32 0, i32 2
  %146 = ptrtoint ptr %arrayidx2.i.i.i390 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 65535, ptr %arrayidx2.i.i.i390, align 4
  %arrayidx1.i1.i.i.i391 = getelementptr %struct.sock_common, ptr %call1.i, i32 0, i32 10, i32 0, i32 0, i32 3
  %147 = ptrtoint ptr %arrayidx1.i1.i.i.i391 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %142, ptr %arrayidx1.i1.i.i.i391, align 4
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %148 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sk_mark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i392 = icmp eq i32 %149, 0
  br i1 %tobool.not.i392, label %land.lhs.true.i395, label %if.end82.inet_request_mark.exit_crit_edge

if.end82.inet_request_mark.exit_crit_edge:        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_request_mark.exit

land.lhs.true.i395:                               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_fwmark_accept.i = getelementptr inbounds %struct.net, ptr %151, i32 0, i32 35, i32 50
  %152 = ptrtoint ptr %sysctl_tcp_fwmark_accept.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %sysctl_tcp_fwmark_accept.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool1.not.i393 = icmp eq i8 %153, 0
  %154 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %spec.select.i394 = select i1 %tobool1.not.i393, ptr %sk_mark.i, ptr %154
  br label %inet_request_mark.exit

inet_request_mark.exit:                           ; preds = %land.lhs.true.i395, %if.end82.inet_request_mark.exit_crit_edge
  %retval.0.in.i = phi ptr [ %sk_mark.i, %if.end82.inet_request_mark.exit_crit_edge ], [ %spec.select.i394, %land.lhs.true.i395 ]
  %155 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %retval.0.i396 = load i32, ptr %retval.0.in.i, align 4
  %ir_mark = getelementptr inbounds %struct.inet_request_sock, ptr %call1.i, i32 0, i32 2
  %156 = ptrtoint ptr %ir_mark to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %retval.0.i396, ptr %ir_mark, align 4
  %157 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 3)
  %bf.load99 = load i24, ptr %2, align 4
  %158 = trunc i24 %bf.load99 to i16
  %159 = and i16 %158, -4096
  %snd_wscale103 = getelementptr inbounds %struct.inet_request_sock, ptr %call1.i, i32 0, i32 1
  %160 = ptrtoint ptr %snd_wscale103 to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load104 = load i16, ptr %snd_wscale103, align 8
  %bf.clear105 = and i16 %bf.load104, 3871
  %bf.set = or i16 %bf.clear105, %159
  %sh.diff = lshr i24 %bf.load99, 11
  %tr.sh.diff = trunc i24 %sh.diff to i16
  %bf.shl113 = and i16 %tr.sh.diff, 64
  %bf.set115 = or i16 %bf.set, %bf.shl113
  %sh.diff347 = lshr i24 %bf.load99, 15
  %tr.sh.diff348 = trunc i24 %sh.diff347 to i16
  %bf.shl123 = and i16 %tr.sh.diff348, 32
  %bf.set125 = or i16 %bf.set115, %bf.shl123
  %sh.diff349 = lshr i24 %bf.load99, 16
  %tr.sh.diff350 = trunc i24 %sh.diff349 to i16
  %bf.shl132 = and i16 %tr.sh.diff350, 128
  %bf.set134 = or i16 %bf.set125, %bf.shl132
  store i16 %bf.set134, ptr %snd_wscale103, align 8
  %tobool140.not = icmp sgt i24 %bf.load99, -1
  br i1 %tobool140.not, label %inet_request_mark.exit.cond.end_crit_edge, label %cond.true

inet_request_mark.exit.cond.end_crit_edge:        ; preds = %inet_request_mark.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %inet_request_mark.exit
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %inet_request_mark.exit.cond.end_crit_edge
  %cond = phi i32 [ %162, %cond.true ], [ 0, %inet_request_mark.exit.cond.end_crit_edge ]
  %ts_recent = getelementptr inbounds %struct.request_sock, ptr %call1.i, i32 0, i32 5
  %163 = ptrtoint ptr %ts_recent to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %cond, ptr %ts_recent, align 8
  %snt_synack = getelementptr inbounds %struct.tcp_request_sock, ptr %call1.i, i32 0, i32 2
  %164 = ptrtoint ptr %snt_synack to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 0, ptr %snt_synack, align 8
  %tfo_listener = getelementptr inbounds %struct.tcp_request_sock, ptr %call1.i, i32 0, i32 3
  %165 = ptrtoint ptr %tfo_listener to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %tfo_listener, align 8
  %bf.clear142 = and i16 %bf.set134, -3
  %166 = ptrtoint ptr %snd_wscale103 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %bf.clear142, ptr %snd_wscale103, align 8
  %167 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %skc_net.i, align 4
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %169 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i398 = icmp eq i32 %170, 0
  br i1 %tobool.not.i398, label %land.lhs.true.i400, label %cond.end.inet_request_bound_dev_if.exit_crit_edge

cond.end.inet_request_bound_dev_if.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_request_bound_dev_if.exit

land.lhs.true.i400:                               ; preds = %cond.end
  %sysctl_tcp_l3mdev_accept.i = getelementptr inbounds %struct.net, ptr %168, i32 0, i32 35, i32 51
  %171 = ptrtoint ptr %sysctl_tcp_l3mdev_accept.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %sysctl_tcp_l3mdev_accept.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool1.not.i399 = icmp eq i8 %172, 0
  br i1 %tobool1.not.i399, label %land.lhs.true.i400.inet_request_bound_dev_if.exit_crit_edge, label %if.then.i401

land.lhs.true.i400.inet_request_bound_dev_if.exit_crit_edge: ; preds = %land.lhs.true.i400
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_request_bound_dev_if.exit

if.then.i401:                                     ; preds = %land.lhs.true.i400
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %173 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %skb_iif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i.i = icmp eq i32 %174, 0
  br i1 %tobool.not.i.i, label %if.then.i401.inet_request_bound_dev_if.exit_crit_edge, label %if.then.i.i, !prof !52

if.then.i401.inet_request_bound_dev_if.exit_crit_edge: ; preds = %if.then.i401
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_request_bound_dev_if.exit

if.then.i.i:                                      ; preds = %if.then.i401
  %175 = call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i.i.i.i.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %178, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %if.then.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.rcu_read_lock.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i = call ptr @dev_get_by_index_rcu(ptr noundef %168, i32 noundef %174) #10
  %tobool3.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i.i, label %rcu_read_lock.exit.i.i.if.end.i.i_crit_edge, label %if.then4.i.i

rcu_read_lock.exit.i.i.if.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then4.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i.i = call i32 @l3mdev_master_ifindex_rcu(ptr noundef nonnull %call.i.i) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then4.i.i, %rcu_read_lock.exit.i.i.if.end.i.i_crit_edge
  %rc.0.i.i = phi i32 [ %call5.i.i, %if.then4.i.i ], [ 0, %rcu_read_lock.exit.i.i.if.end.i.i_crit_edge ]
  %call.i9.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i9.i.i, label %if.end.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i12.i.i

if.end.i.i.rcu_read_unlock.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i12.i.i:                            ; preds = %if.end.i.i
  %call1.i10.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i.i)
  %tobool.not.i11.i.i = icmp eq i32 %call1.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %land.lhs.true.i12.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i14.i.i

land.lhs.true.i12.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i14.i.i:                           ; preds = %land.lhs.true.i12.i.i
  %.b4.i13.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i.i, label %land.lhs.true2.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i15.i.i

land.lhs.true2.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

if.then.i15.i.i:                                  ; preds = %land.lhs.true2.i14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i15.i.i, %land.lhs.true2.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i12.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !59
  %179 = call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i.i.i16.i.i = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i.i.i.i16.i.i to ptr
  %preempt_count.i.i.i.i17.i.i = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %preempt_count.i.i.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %preempt_count.i.i.i.i17.i.i, align 4
  %sub.i.i.i.i.i = add i32 %182, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i17.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %inet_request_bound_dev_if.exit

inet_request_bound_dev_if.exit:                   ; preds = %rcu_read_unlock.exit.i.i, %if.then.i401.inet_request_bound_dev_if.exit_crit_edge, %land.lhs.true.i400.inet_request_bound_dev_if.exit_crit_edge, %cond.end.inet_request_bound_dev_if.exit_crit_edge
  %retval.0.i402 = phi i32 [ %rc.0.i.i, %rcu_read_unlock.exit.i.i ], [ 0, %if.then.i401.inet_request_bound_dev_if.exit_crit_edge ], [ 0, %land.lhs.true.i400.inet_request_bound_dev_if.exit_crit_edge ], [ %170, %cond.end.inet_request_bound_dev_if.exit_crit_edge ]
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 6
  %183 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %retval.0.i402, ptr %skc_bound_dev_if, align 4
  %184 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %skc_net.i, align 4
  %optlen.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %186 = ptrtoint ptr %optlen.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %optlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool.not.i405 = icmp eq i8 %187, 0
  br i1 %tobool.not.i405, label %inet_request_bound_dev_if.exit.tcp_v4_save_options.exit_crit_edge, label %if.end8.i.i

inet_request_bound_dev_if.exit.tcp_v4_save_options.exit_crit_edge: ; preds = %inet_request_bound_dev_if.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcp_v4_save_options.exit

if.end8.i.i:                                      ; preds = %inet_request_bound_dev_if.exit
  %conv.i406 = zext i8 %187 to i32
  %add.i = add nuw nsw i32 %conv.i406, 24
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #14
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end8.i.i.tcp_v4_save_options.exit_crit_edge, label %land.lhs.true.i409

if.end8.i.i.tcp_v4_save_options.exit_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcp_v4_save_options.exit

land.lhs.true.i409:                               ; preds = %if.end8.i.i
  %opt4.i = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1
  %call5.i = call i32 @__ip_options_echo(ptr noundef %185, ptr noundef %opt4.i, ptr noundef %skb, ptr noundef %opt1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i409.tcp_v4_save_options.exit_crit_edge, label %if.then7.i410

land.lhs.true.i409.tcp_v4_save_options.exit_crit_edge: ; preds = %land.lhs.true.i409
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcp_v4_save_options.exit

if.then7.i410:                                    ; preds = %land.lhs.true.i409
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %tcp_v4_save_options.exit

tcp_v4_save_options.exit:                         ; preds = %if.then7.i410, %land.lhs.true.i409.tcp_v4_save_options.exit_crit_edge, %if.end8.i.i.tcp_v4_save_options.exit_crit_edge, %inet_request_bound_dev_if.exit.tcp_v4_save_options.exit_crit_edge
  %dopt.1.i = phi ptr [ null, %inet_request_bound_dev_if.exit.tcp_v4_save_options.exit_crit_edge ], [ null, %if.then7.i410 ], [ %call9.i.i, %land.lhs.true.i409.tcp_v4_save_options.exit_crit_edge ], [ null, %if.end8.i.i.tcp_v4_save_options.exit_crit_edge ]
  %188 = getelementptr inbounds %struct.inet_request_sock, ptr %call1.i, i32 0, i32 3
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %dopt.1.i, ptr %188, align 8
  %call161 = call i32 @security_inet_conn_request(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %call1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.then163

if.then163:                                       ; preds = %tcp_v4_save_options.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @reqsk_free(ptr noundef nonnull %call1.i)
  br label %out

if.end164:                                        ; preds = %tcp_v4_save_options.exit
  %num_retrans = getelementptr inbounds %struct.request_sock, ptr %call1.i, i32 0, i32 3
  %190 = ptrtoint ptr %num_retrans to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %num_retrans, align 2
  %191 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %skc_bound_dev_if, align 4
  %193 = ptrtoint ptr %ir_mark to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %ir_mark, align 4
  %tos = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %195 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %tos, align 4
  %197 = and i8 %196, 30
  %198 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %198, align 4
  %201 = lshr i32 %200, 13
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %or = or i8 %203, %197
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %204 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %bf.load.i411 = load i16, ptr %transparent.i, align 8
  %205 = and i16 %bf.load.i411, 5120
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %206 = icmp ne i16 %205, 0
  %flags.0.i = zext i1 %206 to i8
  %srr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %207 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool176.not = icmp eq i8 %208, 0
  %call83.opt1 = select i1 %tobool176.not, ptr %call1.i, ptr %opt1
  %209 = ptrtoint ptr %call83.opt1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %cond182 = load i32, ptr %call83.opt1, align 4
  %210 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %skc_rcv_saddr.i, align 4
  %212 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %add.ptr.i.i, align 4
  %214 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %dest.i, align 2
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %216 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %216)
  %.unpack = load i32, ptr %sk_uid, align 4
  %217 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %192, ptr %fl4, align 8
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %218 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %219 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %194, ptr %flowic_mark.i, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %220 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %or, ptr %flowic_tos.i, align 4
  %flowic_scope.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %221 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %flowic_scope.i, align 1
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %222 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 6, ptr %flowic_proto.i, align 2
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %223 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %flags.0.i, ptr %flowic_flags.i, align 1
  %flowic_secid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %224 = ptrtoint ptr %flowic_secid.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %flowic_secid.i, align 8
  %flowic_tun_key.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %225 = ptrtoint ptr %flowic_tun_key.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 0, ptr %flowic_tun_key.i, align 8
  %flowic_uid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %226 = ptrtoint ptr %flowic_uid.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %.unpack, ptr %flowic_uid.i, align 4
  %daddr10.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %227 = ptrtoint ptr %daddr10.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %cond182, ptr %daddr10.i, align 4
  %saddr11.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %228 = ptrtoint ptr %saddr11.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %211, ptr %saddr11.i, align 8
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %229 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %213, ptr %uli.i, align 8
  %sport14.i = getelementptr inbounds %struct.anon.40, ptr %uli.i, i32 0, i32 1
  %230 = ptrtoint ptr %sport14.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %215, ptr %sport14.i, align 2
  %flowic_multipath_hash.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %231 = ptrtoint ptr %flowic_multipath_hash.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %flowic_multipath_hash.i, align 8
  call void @security_req_classify_flow(ptr noundef nonnull %call1.i, ptr noundef nonnull %fl4) #10
  %232 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %skc_net.i, align 4
  %call.i413 = call ptr @ip_route_output_flow(ptr noundef %233, ptr noundef nonnull %fl4, ptr noundef null) #10
  %cmp.i414 = icmp ugt ptr %call.i413, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i414, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @reqsk_free(ptr noundef nonnull %call1.i)
  br label %out

if.end192:                                        ; preds = %if.end164
  %window_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 29
  %234 = ptrtoint ptr %window_clamp to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %window_clamp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool193.not = icmp eq i32 %235, 0
  br i1 %tobool193.not, label %cond.false195, label %if.end192.cond.end197_crit_edge

if.end192.cond.end197_crit_edge:                  ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end197

cond.false195:                                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %call.i413, i32 0, i32 2
  %236 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %237, -4
  %238 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %238, i32 2
  %239 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx.i.i, align 4
  br label %cond.end197

cond.end197:                                      ; preds = %cond.false195, %if.end192.cond.end197_crit_edge
  %cond198 = phi i32 [ %240, %cond.false195 ], [ %235, %if.end192.cond.end197_crit_edge ]
  %241 = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 21
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %cond198, ptr %241, align 8
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %243 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile i32, ptr %sk_rcvbuf.i, align 8
  %245 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_adv_win_scale.i.i = getelementptr inbounds %struct.net, ptr %246, i32 0, i32 35, i32 85
  %247 = ptrtoint ptr %sysctl_tcp_adv_win_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %sysctl_tcp_adv_win_scale.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %248)
  %cmp.i.i = icmp slt i32 %248, 1
  %sub.i.i = sub i32 0, %248
  %shr.i.i = ashr i32 %244, %sub.i.i
  %shr1.i.i = ashr i32 %244, %248
  %sub2.i.i = sub i32 %244, %shr1.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr.i.i, i32 %sub2.i.i
  %sk_userlocks = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 43
  %249 = ptrtoint ptr %sk_userlocks to i32
  call void @__asan_load1_noabort(i32 %249)
  %bf.load201 = load i8, ptr %sk_userlocks, align 8
  %250 = and i8 %bf.load201, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool205.not = icmp eq i8 %250, 0
  %251 = add i32 %cond198, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %cond.i.i)
  %.not = icmp ult i32 %251, %cond.i.i
  %or.cond = select i1 %tobool205.not, i1 true, i1 %.not
  br i1 %or.cond, label %cond.end197.if.end216_crit_edge, label %if.then214

cond.end197.if.end216_crit_edge:                  ; preds = %cond.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

if.then214:                                       ; preds = %cond.end197
  call void @__sanitizer_cov_trace_pc() #12
  %252 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %cond.i.i, ptr %241, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.then214, %cond.end197.if.end216_crit_edge
  %253 = ptrtoint ptr %mss88 to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %mss88, align 4
  %conv218 = zext i16 %254 to i32
  %255 = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 18
  %256 = ptrtoint ptr %snd_wscale103 to i32
  call void @__asan_load2_noabort(i32 %256)
  %bf.load222 = load i16, ptr %snd_wscale103, align 8
  %bf.lshr223 = lshr i16 %bf.load222, 5
  %bf.clear224 = and i16 %bf.lshr223, 1
  %conv225 = zext i16 %bf.clear224 to i32
  %_metrics.i.i415 = getelementptr inbounds %struct.dst_entry, ptr %call.i413, i32 0, i32 2
  %257 = ptrtoint ptr %_metrics.i.i415 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %_metrics.i.i415, align 4
  %and.i.i416 = and i32 %258, -4
  %259 = inttoptr i32 %and.i.i416 to ptr
  %arrayidx.i.i417 = getelementptr i32, ptr %259, i32 13
  %260 = ptrtoint ptr %arrayidx.i.i417 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx.i.i417, align 4
  call void @tcp_select_initial_window(ptr noundef %sk, i32 noundef %cond.i.i, i32 noundef %conv218, ptr noundef %255, ptr noundef %241, i32 noundef %conv225, ptr noundef nonnull %rcv_wscale, i32 noundef %261) #10
  %262 = ptrtoint ptr %rcv_wscale to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %rcv_wscale, align 1
  %264 = ptrtoint ptr %snd_wscale103 to i32
  call void @__asan_load2_noabort(i32 %264)
  %bf.load230 = load i16, ptr %snd_wscale103, align 8
  %265 = and i8 %263, 15
  %bf.value231 = zext i8 %265 to i16
  %bf.shl232 = shl nuw nsw i16 %bf.value231, 8
  %bf.clear233 = and i16 %bf.load230, -3841
  %bf.set234 = or i16 %bf.shl232, %bf.clear233
  store i16 %bf.set234, ptr %snd_wscale103, align 8
  %266 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %1, align 4
  %and.i420 = and i32 %267, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i420)
  %tobool.not.i421 = icmp eq i32 %and.i420, 0
  br i1 %tobool.not.i421, label %if.end216.cookie_ecn_ok.exit.thread451_crit_edge, label %if.end.i423

if.end216.cookie_ecn_ok.exit.thread451_crit_edge: ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %cookie_ecn_ok.exit.thread451

if.end.i423:                                      ; preds = %if.end216
  %268 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_ecn.i = getelementptr inbounds %struct.net, ptr %269, i32 0, i32 35, i32 35
  %270 = ptrtoint ptr %sysctl_tcp_ecn.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %sysctl_tcp_ecn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool2.not.i422 = icmp eq i8 %271, 0
  br i1 %tobool2.not.i422, label %cookie_ecn_ok.exit, label %if.end.i423.cookie_ecn_ok.exit.thread_crit_edge

if.end.i423.cookie_ecn_ok.exit.thread_crit_edge:  ; preds = %if.end.i423
  call void @__sanitizer_cov_trace_pc() #12
  br label %cookie_ecn_ok.exit.thread

cookie_ecn_ok.exit:                               ; preds = %if.end.i423
  %272 = ptrtoint ptr %_metrics.i.i415 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %_metrics.i.i415, align 4
  %and.i.i.i.i = and i32 %273, -4
  %274 = inttoptr i32 %and.i.i.i.i to ptr
  %arrayidx.i.i.i.i = getelementptr i32, ptr %274, i32 11
  %275 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i424 = and i32 %276, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i424)
  %tobool5.i.not = icmp eq i32 %and.i.i424, 0
  br i1 %tobool5.i.not, label %cookie_ecn_ok.exit.cookie_ecn_ok.exit.thread451_crit_edge, label %cookie_ecn_ok.exit.cookie_ecn_ok.exit.thread_crit_edge

cookie_ecn_ok.exit.cookie_ecn_ok.exit.thread_crit_edge: ; preds = %cookie_ecn_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cookie_ecn_ok.exit.thread

cookie_ecn_ok.exit.cookie_ecn_ok.exit.thread451_crit_edge: ; preds = %cookie_ecn_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cookie_ecn_ok.exit.thread451

cookie_ecn_ok.exit.thread:                        ; preds = %cookie_ecn_ok.exit.cookie_ecn_ok.exit.thread_crit_edge, %if.end.i423.cookie_ecn_ok.exit.thread_crit_edge
  br label %cookie_ecn_ok.exit.thread451

cookie_ecn_ok.exit.thread451:                     ; preds = %cookie_ecn_ok.exit.thread, %cookie_ecn_ok.exit.cookie_ecn_ok.exit.thread451_crit_edge, %if.end216.cookie_ecn_ok.exit.thread451_crit_edge
  %277 = phi i16 [ 16, %cookie_ecn_ok.exit.thread ], [ 0, %cookie_ecn_ok.exit.cookie_ecn_ok.exit.thread451_crit_edge ], [ 0, %if.end216.cookie_ecn_ok.exit.thread451_crit_edge ]
  %bf.clear242 = and i16 %bf.set234, -17
  %bf.set243 = or i16 %277, %bf.clear242
  %278 = ptrtoint ptr %snd_wscale103 to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %bf.set243, ptr %snd_wscale103, align 8
  %call245 = call ptr @tcp_get_cookie_sock(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %call1.i, ptr noundef %call.i413, i32 noundef %tsoff.0433443)
  %tobool246.not = icmp eq ptr %call245, null
  br i1 %tobool246.not, label %cookie_ecn_ok.exit.thread451.out_crit_edge, label %if.then247

cookie_ecn_ok.exit.thread451.out_crit_edge:       ; preds = %cookie_ecn_ok.exit.thread451
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then247:                                       ; preds = %cookie_ecn_ok.exit.thread451
  call void @__sanitizer_cov_trace_pc() #12
  %fl = getelementptr inbounds %struct.inet_sock, ptr %call245, i32 0, i32 19, i32 1
  %279 = call ptr @memcpy(ptr %fl, ptr %fl4, i32 56)
  br label %out

out:                                              ; preds = %if.then247, %cookie_ecn_ok.exit.thread451.out_crit_edge, %if.then191, %if.then163, %if.then11.i, %if.end78.out_crit_edge, %cookie_timestamp_decode.exit.out_crit_edge, %land.lhs.true.i373.out_crit_edge, %if.end.i.out_crit_edge, %if.then16, %tcp_synq_no_recent_overflow.exit.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi ptr [ %sk, %tcp_synq_no_recent_overflow.exit.out_crit_edge ], [ %sk, %if.then16 ], [ null, %if.then163 ], [ null, %if.then191 ], [ %call245, %if.then247 ], [ null, %cookie_ecn_ok.exit.thread451.out_crit_edge ], [ %sk, %cookie_timestamp_decode.exit.out_crit_edge ], [ %sk, %lor.lhs.false.out_crit_edge ], [ %sk, %entry.out_crit_edge ], [ %sk, %if.end.i.out_crit_edge ], [ %sk, %land.lhs.true.i373.out_crit_edge ], [ null, %if.end78.out_crit_edge ], [ null, %if.then11.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rcv_wscale) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tcp_opt) #10
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_parse_options(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_tcp_ts_off(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inet_conn_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_req_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_select_initial_window(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_2u64(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_echo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab___cookie_v4_init_sequence, !1, !"__ksymtab___cookie_v4_init_sequence", i1 false, i1 false}
!1 = !{!"../net/ipv4/syncookies.c", i32 174, i32 1}
!2 = !{ptr @__ksymtab___cookie_v4_check, !3, !"__ksymtab___cookie_v4_check", i1 false, i1 false}
!3 = !{!"../net/ipv4/syncookies.c", i32 197, i32 1}
!4 = !{ptr @__ksymtab_tcp_get_cookie_sock, !5, !"__ksymtab_tcp_get_cookie_sock", i1 false, i1 false}
!5 = !{!"../net/ipv4/syncookies.c", i32 229, i32 1}
!6 = !{ptr @__ksymtab_cookie_timestamp_decode, !7, !"__ksymtab_cookie_timestamp_decode", i1 false, i1 false}
!7 = !{!"../net/ipv4/syncookies.c", i32 266, i32 1}
!8 = !{ptr @__ksymtab_cookie_ecn_ok, !9, !"__ksymtab_cookie_ecn_ok", i1 false, i1 false}
!9 = !{!"../net/ipv4/syncookies.c", i32 281, i32 1}
!10 = !{ptr @__ksymtab_cookie_tcp_reqsk_alloc, !11, !"__ksymtab_cookie_tcp_reqsk_alloc", i1 false, i1 false}
!11 = !{!"../net/ipv4/syncookies.c", i32 315, i32 1}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv4/syncookies.c", i32 346, i32 3}
!14 = !{ptr @msstab, !15, !"msstab", i1 false, i1 false}
!15 = !{!"../net/ipv4/syncookies.c", i32 148, i32 20}
!16 = !{ptr @cookie_hash.___done, !17, !"___done", i1 false, i1 false}
!17 = !{!"../net/ipv4/syncookies.c", i32 49, i32 2}
!18 = !{ptr @cookie_hash.___once_key, !17, !"___once_key", i1 false, i1 false}
!19 = !{ptr @syncookie_secret, !20, !"syncookie_secret", i1 false, i1 false}
!20 = !{!"../net/ipv4/syncookies.c", i32 17, i32 30}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/net/request_sock.h", i32 126, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/net/tcp.h", i32 533, i32 11}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/net/dst.h", i32 161, i32 2}
!37 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 1281905, i64 1281932}
!49 = !{i64 1282600, i64 1282627, i64 1282660, i64 1282681, i64 1282708, i64 1282734}
!50 = !{i64 2148859420, i64 2148859425, i64 2148859446, i64 2148859490, i64 2148859524, i64 2148859545}
!51 = !{!"auto-init"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i8 0, i8 2}
!55 = !{i64 2148466733}
!56 = !{i64 2148381197, i64 2148381229, i64 2148381258, i64 2148381292, i64 2148381323, i64 2148381346}
!57 = !{i64 2150548386}
!58 = !{i64 2149673839}
!59 = !{i64 2149674105}
