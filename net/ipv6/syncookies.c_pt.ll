; ModuleID = '/llk/IR_all_yes/net/ipv6/syncookies.c_pt.bc'
source_filename = "../net/ipv6/syncookies.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__cookie_v6_init_sequence\22, \22a\22\09"
module asm "\09.weak\09__crc___cookie_v6_init_sequence\09\09\09\09"
module asm "\09.long\09__crc___cookie_v6_init_sequence\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cookie_v6_init_sequence:\09\09\09\09\09"
module asm "\09.asciz \09\22__cookie_v6_init_sequence\22\09\09\09\09\09"
module asm "__kstrtabns___cookie_v6_init_sequence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cookie_v6_check\22, \22a\22\09"
module asm "\09.weak\09__crc___cookie_v6_check\09\09\09\09"
module asm "\09.long\09__crc___cookie_v6_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cookie_v6_check:\09\09\09\09\09"
module asm "\09.asciz \09\22__cookie_v6_check\22\09\09\09\09\09"
module asm "__kstrtabns___cookie_v6_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.207 = type { %struct.in6_addr, %struct.in6_addr, i32, i16, i16 }
%struct.sk_buff = type { %union.anon.0, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.24 }
%union.anon.24 = type { %struct.flowi6 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.196, %struct.anon.197, %struct.anon.198, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.194, %struct.anon.195, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.194 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.195 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.196 = type { i32, i32, i64 }
%struct.anon.197 = type { i32, i32, i64 }
%struct.anon.198 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.189 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { ptr, ptr }
%struct.anon.141 = type { i16, i16 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.191, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.25 = type { i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }

@msstab = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1220, i16 1420, i16 1440, i16 8940], [24 x i8] zeroinitializer }, align 32
@__kstrtab___cookie_v6_init_sequence = external dso_local constant [0 x i8], align 1
@__kstrtabns___cookie_v6_init_sequence = external dso_local constant [0 x i8], align 1
@__ksymtab___cookie_v6_init_sequence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cookie_v6_init_sequence to i32), ptr @__kstrtab___cookie_v6_init_sequence, ptr @__kstrtabns___cookie_v6_init_sequence }, section "___ksymtab_gpl+__cookie_v6_init_sequence", align 4
@__kstrtab___cookie_v6_check = external dso_local constant [0 x i8], align 1
@__kstrtabns___cookie_v6_check = external dso_local constant [0 x i8], align 1
@__ksymtab___cookie_v6_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cookie_v6_check to i32), ptr @__kstrtab___cookie_v6_check, ptr @__kstrtabns___cookie_v6_check }, section "___ksymtab_gpl+__cookie_v6_check", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcp6_request_sock_ops = external dso_local global %struct.request_sock_ops, align 4
@cookie_v6_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ipv6/syncookies.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cookie_hash.___done = internal global i8 0, section ".data.once", align 1
@cookie_hash.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@syncookie6_secret = internal global { [2 x %struct.siphash_key_t], [32 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tcp_synq_no_recent_overflow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/tcp.h\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/request_sock.h\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"msstab\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 33, i32 20 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 229, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 58, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"syncookie6_secret\00", align 1
@___asan_gen_.22 = private constant [25 x i8] c"../net/ipv6/syncookies.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 23, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"../include/net/tcp.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 533, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 695, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [30 x i8] c"../include/net/request_sock.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 126, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___cookie_v6_check, ptr @__ksymtab___cookie_v6_init_sequence, ptr @msstab, ptr @.str.1, ptr @.str.2, ptr @cookie_hash.___once_key, ptr @syncookie6_secret, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msstab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cookie_hash.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syncookie6_secret to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cookie_v6_init_sequence(ptr nocapture noundef readonly %iph, ptr nocapture noundef readonly %th, ptr nocapture noundef %mssp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mssp to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mssp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8940, i16 %1)
  %cmp.not = icmp ult i16 %1, 8940
  br i1 %cmp.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1440, i16 %1)
  %cmp.not.1 = icmp ult i16 %1, 1440
  br i1 %cmp.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1419, i16 %1)
  %cmp.not.2 = icmp ugt i16 %1, 1419
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
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 6
  %5 = ptrtoint ptr %th to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %th, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 1
  %7 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dest, align 2
  %seq = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 2
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seq, align 4
  %call = tail call fastcc i32 @secure_tcp_syn_cookie(ptr noundef %saddr, ptr noundef %daddr, i16 noundef zeroext %6, i16 noundef zeroext %8, i32 noundef %10, i32 noundef %mssind.0.lcssa)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @secure_tcp_syn_cookie(ptr nocapture noundef readonly %saddr, ptr nocapture noundef readonly %daddr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, i32 noundef %sseq, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %combined.i11 = alloca %struct.anon.207, align 8
  %___flags.i12 = alloca i32, align 4
  %combined.i = alloca %struct.anon.207, align 8
  %___flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @get_jiffies_64() #6
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -5853766786057164379, i64 %call.i) #9, !srcloc !43
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5853766786057164379, i64 %call.i, i64 %0, i32 0) #9, !srcloc !44
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  %div159261.i = lshr i64 %asmresult10.i.i, 12
  %conv181.i = trunc i64 %div159261.i to i32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %combined.i) #6
  %2 = call ptr @memcpy(ptr %combined.i, ptr %saddr, i32 16)
  %daddr2.i = getelementptr inbounds %struct.anon.207, ptr %combined.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %daddr2.i, ptr %daddr, i32 16)
  %count3.i = getelementptr inbounds %struct.anon.207, ptr %combined.i, i32 0, i32 2
  %4 = ptrtoint ptr %count3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %count3.i, align 8
  %sport4.i = getelementptr inbounds %struct.anon.207, ptr %combined.i, i32 0, i32 3
  %5 = ptrtoint ptr %sport4.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %sport, ptr %sport4.i, align 4
  %dport5.i = getelementptr inbounds %struct.anon.207, ptr %combined.i, i32 0, i32 4
  %6 = ptrtoint ptr %dport5.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %dport, ptr %dport5.i, align 2
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cookie_hash.___once_key, ptr blockaddress(@secure_tcp_syn_cookie, %if.then.i)) #6
          to label %cookie_hash.exit [label %if.then.i], !srcloc !45

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i) #6
  %7 = ptrtoint ptr %___flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %___flags.i, align 4, !annotation !46
  %call8.i = call zeroext i1 @__do_once_start(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull %___flags.i) #6
  br i1 %call8.i, label %if.then17.i, label %if.then.i.if.end.i_crit_edge, !prof !47

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @get_random_bytes(ptr noundef nonnull @syncookie6_secret, i32 noundef 32) #6
  call void @__do_once_done(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull @cookie_hash.___once_key, ptr noundef nonnull %___flags.i, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %if.then.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i) #6
  br label %cookie_hash.exit

cookie_hash.exit:                                 ; preds = %if.end.i, %entry
  %call.i.i = call i64 @__siphash_unaligned(ptr noundef nonnull %combined.i, i32 noundef 40, ptr noundef nonnull @syncookie6_secret) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %combined.i) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %combined.i11) #6
  %8 = call ptr @memcpy(ptr %combined.i11, ptr %saddr, i32 16)
  %daddr2.i13 = getelementptr inbounds %struct.anon.207, ptr %combined.i11, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %daddr2.i13, ptr %daddr, i32 16)
  %count3.i14 = getelementptr inbounds %struct.anon.207, ptr %combined.i11, i32 0, i32 2
  %10 = ptrtoint ptr %count3.i14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv181.i, ptr %count3.i14, align 8
  %sport4.i15 = getelementptr inbounds %struct.anon.207, ptr %combined.i11, i32 0, i32 3
  %11 = ptrtoint ptr %sport4.i15 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %sport, ptr %sport4.i15, align 4
  %dport5.i16 = getelementptr inbounds %struct.anon.207, ptr %combined.i11, i32 0, i32 4
  %12 = ptrtoint ptr %dport5.i16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %dport, ptr %dport5.i16, align 2
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cookie_hash.___once_key, ptr blockaddress(@secure_tcp_syn_cookie, %if.then.i18)) #6
          to label %cookie_hash.exit23 [label %if.then.i18], !srcloc !45

if.then.i18:                                      ; preds = %cookie_hash.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i12) #6
  %13 = ptrtoint ptr %___flags.i12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %___flags.i12, align 4, !annotation !46
  %call8.i17 = call zeroext i1 @__do_once_start(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull %___flags.i12) #6
  br i1 %call8.i17, label %if.then17.i19, label %if.then.i18.if.end.i20_crit_edge, !prof !47

if.then.i18.if.end.i20_crit_edge:                 ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i20

if.then17.i19:                                    ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #8
  call void @get_random_bytes(ptr noundef nonnull @syncookie6_secret, i32 noundef 32) #6
  call void @__do_once_done(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull @cookie_hash.___once_key, ptr noundef nonnull %___flags.i12, ptr noundef null) #6
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then17.i19, %if.then.i18.if.end.i20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i12) #6
  br label %cookie_hash.exit23

cookie_hash.exit23:                               ; preds = %if.end.i20, %cookie_hash.exit
  %conv.i = trunc i64 %call.i.i to i32
  %shl = shl i32 %conv181.i, 24
  %call.i.i21 = call i64 @__siphash_unaligned(ptr noundef nonnull %combined.i11, i32 noundef 40, ptr noundef getelementptr inbounds ([2 x %struct.siphash_key_t], ptr @syncookie6_secret, i32 0, i32 1)) #6
  %conv.i22 = trunc i64 %call.i.i21 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %combined.i11) #6
  %add4 = add i32 %conv.i22, %data
  %and = and i32 %add4, 16777215
  %add = add i32 %shl, %sseq
  %add2 = add i32 %add, %conv.i
  %add5 = add i32 %add2, %and
  ret i32 %add5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cookie_v6_init_sequence(ptr nocapture noundef readonly %skb, ptr nocapture noundef %mssp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 8940, i16 %7)
  %cmp.not.i = icmp ult i16 %7, 8940
  br i1 %cmp.not.i, label %for.inc.i, label %entry.__cookie_v6_init_sequence.exit_crit_edge

entry.__cookie_v6_init_sequence.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__cookie_v6_init_sequence.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1440, i16 %7)
  %cmp.not.1.i = icmp ult i16 %7, 1440
  br i1 %cmp.not.1.i, label %for.inc.1.i, label %for.inc.i.__cookie_v6_init_sequence.exit_crit_edge

for.inc.i.__cookie_v6_init_sequence.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__cookie_v6_init_sequence.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1419, i16 %7)
  %cmp.not.2.i = icmp ugt i16 %7, 1419
  %spec.select.i = zext i1 %cmp.not.2.i to i32
  br label %__cookie_v6_init_sequence.exit

__cookie_v6_init_sequence.exit:                   ; preds = %for.inc.1.i, %for.inc.i.__cookie_v6_init_sequence.exit_crit_edge, %entry.__cookie_v6_init_sequence.exit_crit_edge
  %mssind.0.lcssa.i = phi i32 [ 3, %entry.__cookie_v6_init_sequence.exit_crit_edge ], [ 2, %for.inc.i.__cookie_v6_init_sequence.exit_crit_edge ], [ %spec.select.i, %for.inc.1.i ]
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
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i6, align 4
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i6, i32 0, i32 1
  %13 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dest.i, align 2
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i6, i32 0, i32 2
  %15 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq.i, align 4
  %call.i = tail call fastcc i32 @secure_tcp_syn_cookie(ptr noundef %saddr.i, ptr noundef %daddr.i, i16 noundef zeroext %12, i16 noundef zeroext %14, i32 noundef %16, i32 noundef %mssind.0.lcssa.i) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cookie_v6_check(ptr nocapture noundef readonly %iph, ptr nocapture noundef readonly %th, i32 noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seq1 = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 2
  %0 = ptrtoint ptr %seq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq1, align 4
  %sub = add i32 %1, -1
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 6
  %2 = ptrtoint ptr %th to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %th, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 1
  %4 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dest, align 2
  %call = tail call fastcc i32 @check_tcp_syn_cookie(i32 noundef %cookie, ptr noundef %saddr, ptr noundef %daddr, i16 noundef zeroext %3, i16 noundef zeroext %5, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp ult i32 %call, 4
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x i16], ptr @msstab, i32 0, i32 %call
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_tcp_syn_cookie(i32 noundef %cookie, ptr nocapture noundef readonly %saddr, ptr nocapture noundef readonly %daddr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, i32 noundef %sseq) unnamed_addr #0 align 64 {
entry:
  %combined.i16 = alloca %struct.anon.207, align 8
  %___flags.i17 = alloca i32, align 4
  %combined.i = alloca %struct.anon.207, align 8
  %___flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @get_jiffies_64() #6
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -5853766786057164379, i64 %call.i) #9, !srcloc !43
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5853766786057164379, i64 %call.i, i64 %0, i32 0) #9, !srcloc !44
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  %div159261.i = lshr i64 %asmresult10.i.i, 12
  %conv181.i = trunc i64 %div159261.i to i32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %combined.i) #6
  %2 = call ptr @memcpy(ptr %combined.i, ptr %saddr, i32 16)
  %daddr2.i = getelementptr inbounds %struct.anon.207, ptr %combined.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %daddr2.i, ptr %daddr, i32 16)
  %count3.i = getelementptr inbounds %struct.anon.207, ptr %combined.i, i32 0, i32 2
  %4 = ptrtoint ptr %count3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %count3.i, align 8
  %sport4.i = getelementptr inbounds %struct.anon.207, ptr %combined.i, i32 0, i32 3
  %5 = ptrtoint ptr %sport4.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %sport, ptr %sport4.i, align 4
  %dport5.i = getelementptr inbounds %struct.anon.207, ptr %combined.i, i32 0, i32 4
  %6 = ptrtoint ptr %dport5.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %dport, ptr %dport5.i, align 2
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cookie_hash.___once_key, ptr blockaddress(@check_tcp_syn_cookie, %if.then.i)) #6
          to label %cookie_hash.exit [label %if.then.i], !srcloc !45

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i) #6
  %7 = ptrtoint ptr %___flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %___flags.i, align 4, !annotation !46
  %call8.i = call zeroext i1 @__do_once_start(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull %___flags.i) #6
  br i1 %call8.i, label %if.then17.i, label %if.then.i.if.end.i_crit_edge, !prof !47

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @get_random_bytes(ptr noundef nonnull @syncookie6_secret, i32 noundef 32) #6
  call void @__do_once_done(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull @cookie_hash.___once_key, ptr noundef nonnull %___flags.i, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %if.then.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i) #6
  br label %cookie_hash.exit

cookie_hash.exit:                                 ; preds = %if.end.i, %entry
  %call.i.i = call i64 @__siphash_unaligned(ptr noundef nonnull %combined.i, i32 noundef 40, ptr noundef nonnull @syncookie6_secret) #6
  %conv.i = trunc i64 %call.i.i to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %combined.i) #6
  %8 = add i32 %conv.i, %sseq
  %sub = sub i32 %cookie, %8
  %shr = lshr i32 %sub, 24
  %sub2 = sub i32 %conv181.i, %shr
  %and = and i32 %sub2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp ugt i32 %and, 1
  br i1 %cmp, label %cookie_hash.exit.cleanup_crit_edge, label %if.end

cookie_hash.exit.cleanup_crit_edge:               ; preds = %cookie_hash.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cookie_hash.exit
  %sub3 = sub i32 %conv181.i, %and
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %combined.i16) #6
  %9 = call ptr @memcpy(ptr %combined.i16, ptr %saddr, i32 16)
  %daddr2.i18 = getelementptr inbounds %struct.anon.207, ptr %combined.i16, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %daddr2.i18, ptr %daddr, i32 16)
  %count3.i19 = getelementptr inbounds %struct.anon.207, ptr %combined.i16, i32 0, i32 2
  %11 = ptrtoint ptr %count3.i19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub3, ptr %count3.i19, align 8
  %sport4.i20 = getelementptr inbounds %struct.anon.207, ptr %combined.i16, i32 0, i32 3
  %12 = ptrtoint ptr %sport4.i20 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %sport, ptr %sport4.i20, align 4
  %dport5.i21 = getelementptr inbounds %struct.anon.207, ptr %combined.i16, i32 0, i32 4
  %13 = ptrtoint ptr %dport5.i21 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %dport, ptr %dport5.i21, align 2
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cookie_hash.___once_key, ptr blockaddress(@check_tcp_syn_cookie, %if.then.i23)) #6
          to label %cookie_hash.exit28 [label %if.then.i23], !srcloc !45

if.then.i23:                                      ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i17) #6
  %14 = ptrtoint ptr %___flags.i17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %___flags.i17, align 4, !annotation !46
  %call8.i22 = call zeroext i1 @__do_once_start(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull %___flags.i17) #6
  br i1 %call8.i22, label %if.then17.i24, label %if.then.i23.if.end.i25_crit_edge, !prof !47

if.then.i23.if.end.i25_crit_edge:                 ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

if.then17.i24:                                    ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #8
  call void @get_random_bytes(ptr noundef nonnull @syncookie6_secret, i32 noundef 32) #6
  call void @__do_once_done(ptr noundef nonnull @cookie_hash.___done, ptr noundef nonnull @cookie_hash.___once_key, ptr noundef nonnull %___flags.i17, ptr noundef null) #6
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then17.i24, %if.then.i23.if.end.i25_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i17) #6
  br label %cookie_hash.exit28

cookie_hash.exit28:                               ; preds = %if.end.i25, %if.end
  %call.i.i26 = call i64 @__siphash_unaligned(ptr noundef nonnull %combined.i16, i32 noundef 40, ptr noundef getelementptr inbounds ([2 x %struct.siphash_key_t], ptr @syncookie6_secret, i32 0, i32 1)) #6
  %conv.i27 = trunc i64 %call.i.i26 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %combined.i16) #6
  %sub5 = sub i32 %sub, %conv.i27
  %and6 = and i32 %sub5, 16777215
  br label %cleanup

cleanup:                                          ; preds = %cookie_hash.exit28, %cookie_hash.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %and6, %cookie_hash.exit28 ], [ -1, %cookie_hash.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cookie_v6_check(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %tcp_opt = alloca %struct.tcp_options_received, align 4
  %rcv_wscale = alloca i8, align 1
  %final = alloca %struct.in6_addr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tcp_opt) #6
  %0 = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tcp_options_received, ptr %tcp_opt, i32 0, i32 4
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = call ptr @memset(ptr %tcp_opt, i32 255, i32 24)
  %4 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %6 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i421 = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i421
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ack_seq, align 4
  %sub = add i32 %13, -1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rcv_wscale) #6
  %14 = ptrtoint ptr %rcv_wscale to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %rcv_wscale, align 1, !annotation !46
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_syncookies = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 35, i32 63
  %17 = ptrtoint ptr %sysctl_tcp_syncookies to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sysctl_tcp_syncookies, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %inet6_sk.exit.cleanup296_crit_edge, label %lor.lhs.false

inet6_sk.exit.cleanup296_crit_edge:               ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup296

lor.lhs.false:                                    ; preds = %inet6_sk.exit
  %ack = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %ack to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %ack, align 4
  %20 = and i16 %bf.load, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %20)
  %21 = icmp eq i16 %20, 16
  br i1 %21, label %if.end, label %lor.lhs.false.cleanup296_crit_edge

lor.lhs.false.cleanup296_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup296

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %23 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %24 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end.do.end28.i_crit_edge, label %if.then.i

if.end.do.end28.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

if.then.i:                                        ; preds = %if.end
  %sk_reuseport_cb.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %25 = ptrtoint ptr %sk_reuseport_cb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %sk_reuseport_cb.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.then.i.do.end9.i_crit_edge

if.then.i.do.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b50.i = load i1, ptr @tcp_synq_no_recent_overflow.__warned, align 1
  br i1 %.b50.i, label %land.lhs.true5.i.do.end9.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tcp_synq_no_recent_overflow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 533, ptr noundef nonnull @.str.2) #6
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then7.i, %land.lhs.true5.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %if.then.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i, label %do.end9.i.do.end28.i_crit_edge, label %cleanup.i, !prof !47

do.end9.i.do.end28.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

cleanup.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %synq_overflow_ts.i = getelementptr inbounds %struct.sock_reuseport, ptr %26, i32 0, i32 4
  br label %tcp_synq_no_recent_overflow.exit

do.end28.i:                                       ; preds = %do.end9.i.do.end28.i_crit_edge, %if.end.do.end28.i_crit_edge
  %rx_opt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61
  br label %tcp_synq_no_recent_overflow.exit

tcp_synq_no_recent_overflow.exit:                 ; preds = %do.end28.i, %cleanup.i
  %sub32.pn.in.in.i = phi ptr [ %rx_opt.i, %do.end28.i ], [ %synq_overflow_ts.i, %cleanup.i ]
  %27 = ptrtoint ptr %sub32.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %sub32.pn.in.i = load volatile i32, ptr %sub32.pn.in.in.i, align 4
  %sub32.pn.neg.i = add i32 %22, 100
  %retval.1.in.i = sub i32 %sub32.pn.neg.i, %sub32.pn.in.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12100, i32 %retval.1.in.i)
  %retval.1.i = icmp ugt i32 %retval.1.in.i, 12100
  br i1 %retval.1.i, label %tcp_synq_no_recent_overflow.exit.cleanup296_crit_edge, label %if.end12

tcp_synq_no_recent_overflow.exit.cleanup296_crit_edge: ; preds = %tcp_synq_no_recent_overflow.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup296

if.end12:                                         ; preds = %tcp_synq_no_recent_overflow.exit
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i423 = zext i16 %31 to i32
  %add.ptr.i.i424 = getelementptr i8, ptr %29, i32 %conv.i.i423
  %seq1.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seq1.i, align 4
  %sub.i = add i32 %33, -1
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i424, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i424, i32 0, i32 6
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i, align 4
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dest.i, align 2
  %call.i425 = tail call fastcc i32 @check_tcp_syn_cookie(i32 noundef %sub, ptr noundef %saddr.i, ptr noundef %daddr.i, i16 noundef zeroext %35, i16 noundef zeroext %37, i32 noundef %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i425)
  %cmp.i = icmp ult i32 %call.i425, 4
  br i1 %cmp.i, label %__cookie_v6_check.exit, label %if.then16

__cookie_v6_check.exit:                           ; preds = %if.end12
  %arrayidx.i = getelementptr [4 x i16], ptr @msstab, i32 0, i32 %call.i425
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i, align 2
  %40 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i, align 4
  %net_statistics47 = getelementptr inbounds %struct.net, ptr %41, i32 0, i32 30, i32 3
  %42 = ptrtoint ptr %net_statistics47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_statistics47, align 4
  %arrayidx49 = getelementptr [126 x i32], ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx49 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i430 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i430 to ptr
  %cpu52 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu52, align 4
  %arrayidx53 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %50, %44
  %51 = inttoptr i32 %add54 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add55 = add i32 %53, 1
  store i32 %add55, ptr %51, align 4
  %54 = call ptr @memset(ptr %tcp_opt, i32 0, i32 24)
  %55 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skc_net.i, align 4
  call void @tcp_parse_options(ptr noundef %56, ptr noundef %skb, ptr noundef nonnull %tcp_opt, i32 noundef 0, ptr noundef null) #6
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 3)
  %bf.load61 = load i24, ptr %2, align 4
  %tobool64.not = icmp sgt i24 %bf.load61, -1
  br i1 %tobool64.not, label %__cookie_v6_check.exit.if.end75_crit_edge, label %land.lhs.true

__cookie_v6_check.exit.if.end75_crit_edge:        ; preds = %__cookie_v6_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %59, i32 0, i32 30, i32 3
  %60 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx26, align 4
  %add = add i32 %68, %62
  %69 = inttoptr i32 %add to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add27 = add i32 %71, 1
  store i32 %add27, ptr %69, align 4
  br label %cleanup296

land.lhs.true:                                    ; preds = %__cookie_v6_check.exit
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool65.not = icmp eq i32 %73, 0
  br i1 %tobool65.not, label %land.lhs.true.if.end75_crit_edge, label %if.then66

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then66:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skc_net.i, align 4
  %76 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i, align 8
  %78 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i435 = zext i16 %79 to i32
  %add.ptr.i.i436 = getelementptr i8, ptr %77, i32 %conv.i.i435
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i436, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i436, i32 0, i32 5
  %call72 = call i32 @secure_tcpv6_ts_off(ptr noundef %75, ptr noundef %daddr, ptr noundef %saddr) #6
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %1, align 4
  %sub74 = sub i32 %81, %call72
  store i32 %sub74, ptr %1, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then66, %land.lhs.true.if.end75_crit_edge, %__cookie_v6_check.exit.if.end75_crit_edge
  %tsoff.0 = phi i32 [ %call72, %if.then66 ], [ 0, %land.lhs.true.if.end75_crit_edge ], [ 0, %__cookie_v6_check.exit.if.end75_crit_edge ]
  %82 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %skc_net.i, align 4
  %call77 = call zeroext i1 @cookie_timestamp_decode(ptr noundef %83, ptr noundef nonnull %tcp_opt) #6
  br i1 %call77, label %if.end79, label %if.end75.cleanup296_crit_edge

if.end75.cleanup296_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup296

if.end79:                                         ; preds = %if.end75
  %call80 = call ptr @cookie_tcp_reqsk_alloc(ptr noundef nonnull @tcp6_request_sock_ops, ptr noundef %sk, ptr noundef %skb) #6
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.end79.cleanup296_crit_edge, label %if.end83

if.end79.cleanup296_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup296

if.end83:                                         ; preds = %if.end79
  %tfo_listener = getelementptr inbounds %struct.tcp_request_sock, ptr %call80, i32 0, i32 3
  %84 = ptrtoint ptr %tfo_listener to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %tfo_listener, align 8
  %call86 = call i32 @security_inet_conn_request(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %call80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end83.out_free_crit_edge

if.end83.out_free_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end89:                                         ; preds = %if.end83
  %mss91 = getelementptr inbounds %struct.request_sock, ptr %call80, i32 0, i32 2
  %85 = ptrtoint ptr %mss91 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %39, ptr %mss91, align 4
  %86 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i, align 4
  %88 = getelementptr inbounds %struct.sock_common, ptr %call80, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %87, ptr %88, align 4
  %90 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %dest.i, align 2
  %skc_num = getelementptr inbounds %struct.anon.141, ptr %88, i32 0, i32 1
  %92 = ptrtoint ptr %skc_num to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %skc_num, align 2
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %call80, i32 0, i32 10
  %93 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %head.i.i, align 8
  %95 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i444 = zext i16 %96 to i32
  %add.ptr.i.i445 = getelementptr i8, ptr %94, i32 %conv.i.i444
  %saddr98 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i445, i32 0, i32 5
  %97 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %saddr98, i32 16)
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %call80, i32 0, i32 11
  %98 = load ptr, ptr %head.i.i, align 8
  %99 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i448 = zext i16 %99 to i32
  %add.ptr.i.i449 = getelementptr i8, ptr %98, i32 %conv.i.i448
  %daddr102 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i449, i32 0, i32 6
  %100 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %daddr102, i32 16)
  %101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %call104 = call zeroext i1 @ipv6_opt_accepted(ptr noundef %sk, ptr noundef %skb, ptr noundef %101) #6
  br i1 %call104, label %if.end89.if.then133_crit_edge, label %lor.lhs.false106

if.end89.if.then133_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then133

lor.lhs.false106:                                 ; preds = %if.end89
  %rxopt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %102 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load107 = load i16, ptr %rxopt, align 4
  %103 = and i16 %bf.load107, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %lor.lhs.false106.if.end134_crit_edge, label %lor.lhs.false106.if.then133_crit_edge

lor.lhs.false106.if.then133_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then133

lor.lhs.false106.if.end134_crit_edge:             ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then133:                                       ; preds = %lor.lhs.false106.if.then133_crit_edge, %if.end89.if.then133_crit_edge
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  call fastcc void @refcount_inc(ptr noundef %users)
  %pktopts = getelementptr inbounds %struct.inet_request_sock, ptr %call80, i32 0, i32 3, i32 0, i32 1
  %105 = ptrtoint ptr %pktopts to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %skb, ptr %pktopts, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %lor.lhs.false106.if.end134_crit_edge
  %call135 = call fastcc i32 @inet_request_bound_dev_if(ptr noundef %sk, ptr noundef %skb)
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %call80, i32 0, i32 6
  %106 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call135, ptr %skc_bound_dev_if, align 4
  %skc_bound_dev_if138 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %107 = ptrtoint ptr %skc_bound_dev_if138 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %skc_bound_dev_if138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool139.not = icmp eq i32 %108, 0
  br i1 %tobool139.not, label %land.lhs.true140, label %if.end134.if.end151_crit_edge

if.end134.if.end151_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

land.lhs.true140:                                 ; preds = %if.end134
  %call.i450 = call i32 @__ipv6_addr_type(ptr noundef %skc_v6_daddr) #6
  %and = and i32 %call.i450, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool145.not = icmp eq i32 %and, 0
  br i1 %tobool145.not, label %land.lhs.true140.if.end151_crit_edge, label %if.then146

land.lhs.true140.if.end151_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then146:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %101, align 8
  %111 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %skc_bound_dev_if, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %land.lhs.true140.if.end151_crit_edge, %if.end134.if.end151_crit_edge
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %112 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sk_mark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i452 = icmp eq i32 %113, 0
  br i1 %tobool.not.i452, label %land.lhs.true.i453, label %if.end151.inet_request_mark.exit_crit_edge

if.end151.inet_request_mark.exit_crit_edge:       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_request_mark.exit

land.lhs.true.i453:                               ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_fwmark_accept.i = getelementptr inbounds %struct.net, ptr %115, i32 0, i32 35, i32 50
  %116 = ptrtoint ptr %sysctl_tcp_fwmark_accept.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sysctl_tcp_fwmark_accept.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool1.not.i = icmp eq i8 %117, 0
  %118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %spec.select.i = select i1 %tobool1.not.i, ptr %sk_mark.i, ptr %118
  br label %inet_request_mark.exit

inet_request_mark.exit:                           ; preds = %land.lhs.true.i453, %if.end151.inet_request_mark.exit_crit_edge
  %retval.0.in.i = phi ptr [ %sk_mark.i, %if.end151.inet_request_mark.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i453 ]
  %119 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %ir_mark = getelementptr inbounds %struct.inet_request_sock, ptr %call80, i32 0, i32 2
  %120 = ptrtoint ptr %ir_mark to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %retval.0.i, ptr %ir_mark, align 4
  %num_retrans = getelementptr inbounds %struct.request_sock, ptr %call80, i32 0, i32 3
  %121 = ptrtoint ptr %num_retrans to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %num_retrans, align 2
  %122 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 3)
  %bf.load153 = load i24, ptr %2, align 4
  %123 = trunc i24 %bf.load153 to i16
  %124 = and i16 %123, -4096
  %snd_wscale157 = getelementptr inbounds %struct.inet_request_sock, ptr %call80, i32 0, i32 1
  %125 = ptrtoint ptr %snd_wscale157 to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load158 = load i16, ptr %snd_wscale157, align 8
  %bf.clear159 = and i16 %bf.load158, 3871
  %bf.set = or i16 %bf.clear159, %124
  %sh.diff = lshr i24 %bf.load153, 11
  %tr.sh.diff = trunc i24 %sh.diff to i16
  %bf.shl167 = and i16 %tr.sh.diff, 64
  %bf.set169 = or i16 %bf.set, %bf.shl167
  %sh.diff412 = lshr i24 %bf.load153, 15
  %tr.sh.diff413 = trunc i24 %sh.diff412 to i16
  %bf.shl177 = and i16 %tr.sh.diff413, 32
  %bf.set179 = or i16 %bf.set169, %bf.shl177
  %sh.diff414 = lshr i24 %bf.load153, 16
  %tr.sh.diff415 = trunc i24 %sh.diff414 to i16
  %bf.shl186 = and i16 %tr.sh.diff415, 128
  %bf.set188 = or i16 %bf.set179, %bf.shl186
  store i16 %bf.set188, ptr %snd_wscale157, align 8
  %tobool194.not = icmp sgt i24 %bf.load153, -1
  br i1 %tobool194.not, label %inet_request_mark.exit.cond.end_crit_edge, label %cond.true

inet_request_mark.exit.cond.end_crit_edge:        ; preds = %inet_request_mark.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %inet_request_mark.exit
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %inet_request_mark.exit.cond.end_crit_edge
  %cond = phi i32 [ %127, %cond.true ], [ 0, %inet_request_mark.exit.cond.end_crit_edge ]
  %ts_recent = getelementptr inbounds %struct.request_sock, ptr %call80, i32 0, i32 5
  %128 = ptrtoint ptr %ts_recent to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %cond, ptr %ts_recent, align 8
  %snt_synack = getelementptr inbounds %struct.tcp_request_sock, ptr %call80, i32 0, i32 2
  %129 = ptrtoint ptr %snt_synack to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 0, ptr %snt_synack, align 8
  %130 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %seq1.i, align 4
  %sub195 = add i32 %131, -1
  %rcv_isn = getelementptr inbounds %struct.tcp_request_sock, ptr %call80, i32 0, i32 7
  %132 = ptrtoint ptr %rcv_isn to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub195, ptr %rcv_isn, align 8
  %snt_isn = getelementptr inbounds %struct.tcp_request_sock, ptr %call80, i32 0, i32 8
  %133 = ptrtoint ptr %snt_isn to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %sub, ptr %snt_isn, align 4
  %ts_off = getelementptr inbounds %struct.tcp_request_sock, ptr %call80, i32 0, i32 9
  %134 = ptrtoint ptr %ts_off to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %ts_off, align 8
  %call.i454 = call i32 @prandom_u32() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i454)
  %tobool.not.i455 = icmp eq i32 %call.i454, 0
  %..i = select i1 %tobool.not.i455, i32 1, i32 %call.i454
  %txhash = getelementptr inbounds %struct.tcp_request_sock, ptr %call80, i32 0, i32 6
  %135 = ptrtoint ptr %txhash to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %..i, ptr %txhash, align 4
  %136 = ptrtoint ptr %snd_wscale157 to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load197 = load i16, ptr %snd_wscale157, align 8
  %bf.clear198 = and i16 %bf.load197, -3
  store i16 %bf.clear198, ptr %snd_wscale157, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #6
  %137 = call ptr @memset(ptr %final, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #6
  %138 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %139 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 6, ptr %flowic_proto, align 2
  %daddr200 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %140 = call ptr @memcpy(ptr %daddr200, ptr %skc_v6_daddr, i32 16)
  %opt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %141 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %opt, align 4
  %call209 = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %land.lhs.true211, label %cond.end.do.end219_crit_edge

cond.end.do.end219_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end219

land.lhs.true211:                                 ; preds = %cond.end
  %call212 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %land.lhs.true211.do.end219_crit_edge, label %land.lhs.true214

land.lhs.true211.do.end219_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end219

land.lhs.true214:                                 ; preds = %land.lhs.true211
  %.b416 = load i1, ptr @cookie_v6_check.__warned, align 1
  br i1 %.b416, label %land.lhs.true214.do.end219_crit_edge, label %if.then216

land.lhs.true214.do.end219_crit_edge:             ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end219

if.then216:                                       ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cookie_v6_check.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 229, ptr noundef nonnull @.str.2) #6
  br label %do.end219

do.end219:                                        ; preds = %if.then216, %land.lhs.true214.do.end219_crit_edge, %land.lhs.true211.do.end219_crit_edge, %cond.end.do.end219_crit_edge
  %call221 = call ptr @fl6_update_dst(ptr noundef nonnull %fl6, ptr noundef %142, ptr noundef nonnull %final) #6
  %saddr222 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %143 = call ptr @memcpy(ptr %saddr222, ptr %skc_v6_rcv_saddr, i32 16)
  %144 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %skc_bound_dev_if, align 4
  %146 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %fl6, align 8
  %147 = ptrtoint ptr %ir_mark to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ir_mark, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %149 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %flowic_mark, align 8
  %150 = ptrtoint ptr %88 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %88, align 4
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %152 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %uli, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %153 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %inet_sport, align 8
  %sport = getelementptr inbounds %struct.anon.25, ptr %uli, i32 0, i32 1
  %155 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %sport, align 2
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %156 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sk_uid, align 4
  %158 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %flowic_uid, align 4
  call void @security_req_classify_flow(ptr noundef nonnull %call80, ptr noundef nonnull %fl6) #6
  %159 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %skc_net.i, align 4
  %call240 = call ptr @ip6_dst_lookup_flow(ptr noundef %160, ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %call221) #6
  %cmp.i457 = icmp ugt ptr %call240, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #6
  br i1 %cmp.i457, label %do.end219.out_free_crit_edge, label %cleanup.cont

do.end219.out_free_crit_edge:                     ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

cleanup.cont:                                     ; preds = %do.end219
  %window_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 29
  %161 = ptrtoint ptr %window_clamp to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %window_clamp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool246.not = icmp eq i32 %162, 0
  br i1 %tobool246.not, label %cond.false248, label %cleanup.cont.cond.end250_crit_edge

cleanup.cont.cond.end250_crit_edge:               ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end250

cond.false248:                                    ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #8
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %call240, i32 0, i32 2
  %163 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i458 = and i32 %164, -4
  %165 = inttoptr i32 %and.i.i458 to ptr
  %arrayidx.i.i = getelementptr i32, ptr %165, i32 2
  %166 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i.i, align 4
  br label %cond.end250

cond.end250:                                      ; preds = %cond.false248, %cleanup.cont.cond.end250_crit_edge
  %cond251 = phi i32 [ %167, %cond.false248 ], [ %162, %cleanup.cont.cond.end250_crit_edge ]
  %168 = getelementptr inbounds %struct.sock_common, ptr %call80, i32 0, i32 21
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %cond251, ptr %168, align 8
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %170 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %sk_rcvbuf.i, align 8
  %172 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_adv_win_scale.i.i = getelementptr inbounds %struct.net, ptr %173, i32 0, i32 35, i32 85
  %174 = ptrtoint ptr %sysctl_tcp_adv_win_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sysctl_tcp_adv_win_scale.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp.i.i = icmp slt i32 %175, 1
  %sub.i.i = sub i32 0, %175
  %shr.i.i = ashr i32 %171, %sub.i.i
  %shr1.i.i = ashr i32 %171, %175
  %sub2.i.i = sub i32 %171, %shr1.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr.i.i, i32 %sub2.i.i
  %sk_userlocks = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 43
  %176 = ptrtoint ptr %sk_userlocks to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load254 = load i8, ptr %sk_userlocks, align 8
  %177 = and i8 %bf.load254, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool258.not = icmp eq i8 %177, 0
  %178 = add i32 %cond251, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %cond.i.i)
  %.not = icmp ult i32 %178, %cond.i.i
  %or.cond = select i1 %tobool258.not, i1 true, i1 %.not
  br i1 %or.cond, label %cond.end250.if.end269_crit_edge, label %if.then267

cond.end250.if.end269_crit_edge:                  ; preds = %cond.end250
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end269

if.then267:                                       ; preds = %cond.end250
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %cond.i.i, ptr %168, align 8
  br label %if.end269

if.end269:                                        ; preds = %if.then267, %cond.end250.if.end269_crit_edge
  %180 = ptrtoint ptr %mss91 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %mss91, align 4
  %conv271 = zext i16 %181 to i32
  %182 = getelementptr inbounds %struct.sock_common, ptr %call80, i32 0, i32 18
  %183 = ptrtoint ptr %snd_wscale157 to i32
  call void @__asan_load2_noabort(i32 %183)
  %bf.load275 = load i16, ptr %snd_wscale157, align 8
  %bf.lshr276 = lshr i16 %bf.load275, 5
  %bf.clear277 = and i16 %bf.lshr276, 1
  %conv278 = zext i16 %bf.clear277 to i32
  %_metrics.i.i459 = getelementptr inbounds %struct.dst_entry, ptr %call240, i32 0, i32 2
  %184 = ptrtoint ptr %_metrics.i.i459 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %_metrics.i.i459, align 4
  %and.i.i460 = and i32 %185, -4
  %186 = inttoptr i32 %and.i.i460 to ptr
  %arrayidx.i.i461 = getelementptr i32, ptr %186, i32 13
  %187 = ptrtoint ptr %arrayidx.i.i461 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.i.i461, align 4
  call void @tcp_select_initial_window(ptr noundef %sk, i32 noundef %cond.i.i, i32 noundef %conv271, ptr noundef %182, ptr noundef %168, i32 noundef %conv278, ptr noundef nonnull %rcv_wscale, i32 noundef %188) #6
  %189 = ptrtoint ptr %rcv_wscale to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %rcv_wscale, align 1
  %191 = ptrtoint ptr %snd_wscale157 to i32
  call void @__asan_load2_noabort(i32 %191)
  %bf.load282 = load i16, ptr %snd_wscale157, align 8
  %192 = and i8 %190, 15
  %bf.value283 = zext i8 %192 to i16
  %bf.shl284 = shl nuw nsw i16 %bf.value283, 8
  %bf.clear285 = and i16 %bf.load282, -3841
  %bf.set286 = or i16 %bf.shl284, %bf.clear285
  store i16 %bf.set286, ptr %snd_wscale157, align 8
  %193 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %skc_net.i, align 4
  %call288 = call zeroext i1 @cookie_ecn_ok(ptr noundef nonnull %tcp_opt, ptr noundef %194, ptr noundef %call240) #6
  %195 = ptrtoint ptr %snd_wscale157 to i32
  call void @__asan_load2_noabort(i32 %195)
  %bf.load290 = load i16, ptr %snd_wscale157, align 8
  %bf.shl292 = select i1 %call288, i16 16, i16 0
  %bf.clear293 = and i16 %bf.load290, -17
  %bf.set294 = or i16 %bf.clear293, %bf.shl292
  store i16 %bf.set294, ptr %snd_wscale157, align 8
  %call295 = call ptr @tcp_get_cookie_sock(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %call80, ptr noundef %call240, i32 noundef %tsoff.0) #6
  br label %cleanup296

out_free:                                         ; preds = %do.end219.out_free_crit_edge, %if.end83.out_free_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call80, i32 0, i32 19
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  %196 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp.not.i = icmp eq i32 %197, 0
  br i1 %cmp.not.i, label %out_free.if.end27.i_crit_edge, label %land.rhs.i

out_free.if.end27.i_crit_edge:                    ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

land.rhs.i:                                       ; preds = %out_free
  %.b38.i = load i1, ptr @reqsk_free.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.if.end27.i_crit_edge, label %if.then.i463, !prof !48

land.rhs.i.if.end27.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then.i463:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @reqsk_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 126, i32 noundef 9, ptr noundef null) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i463, %land.rhs.i.if.end27.i_crit_edge, %out_free.if.end27.i_crit_edge
  %rsk_ops.i.i = getelementptr inbounds %struct.request_sock, ptr %call80, i32 0, i32 7
  %198 = ptrtoint ptr %rsk_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rsk_ops.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %199, i32 0, i32 7
  %200 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %destructor.i.i, align 4
  call void %201(ptr noundef nonnull %call80) #6
  %202 = getelementptr inbounds %struct.sock_common, ptr %call80, i32 0, i32 13
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 8
  %tobool.not.i.i = icmp eq ptr %204, null
  br i1 %tobool.not.i.i, label %if.end27.i.reqsk_free.exit_crit_edge, label %if.then.i.i

if.end27.i.reqsk_free.exit_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reqsk_free.exit

if.then.i.i:                                      ; preds = %if.end27.i
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %204, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !49
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #6
  %205 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #6, !srcloc !50
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %205, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.reqsk_free.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !48

if.end5.i.i.i.i.i.i.reqsk_free.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reqsk_free.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef 3) #6
  br label %reqsk_free.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !51
  call void @sk_free(ptr noundef nonnull %204) #6
  br label %reqsk_free.exit

reqsk_free.exit:                                  ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.reqsk_free.exit_crit_edge, %if.end27.i.reqsk_free.exit_crit_edge
  %saved_syn.i.i = getelementptr inbounds %struct.request_sock, ptr %call80, i32 0, i32 9
  %206 = ptrtoint ptr %saved_syn.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %saved_syn.i.i, align 4
  call void @kfree(ptr noundef %207) #6
  %208 = ptrtoint ptr %rsk_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rsk_ops.i.i, align 4
  %slab.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %slab.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %slab.i.i, align 4
  call void @kmem_cache_free(ptr noundef %211, ptr noundef nonnull %call80) #6
  br label %cleanup296

cleanup296:                                       ; preds = %reqsk_free.exit, %if.end269, %if.end79.cleanup296_crit_edge, %if.end75.cleanup296_crit_edge, %if.then16, %tcp_synq_no_recent_overflow.exit.cleanup296_crit_edge, %lor.lhs.false.cleanup296_crit_edge, %inet6_sk.exit.cleanup296_crit_edge
  %retval.0 = phi ptr [ null, %reqsk_free.exit ], [ %sk, %tcp_synq_no_recent_overflow.exit.cleanup296_crit_edge ], [ %sk, %if.then16 ], [ %call295, %if.end269 ], [ null, %if.end79.cleanup296_crit_edge ], [ %sk, %if.end75.cleanup296_crit_edge ], [ %sk, %lor.lhs.false.cleanup296_crit_edge ], [ %sk, %inet6_sk.exit.cleanup296_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rcv_wscale) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tcp_opt) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_parse_options(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_tcpv6_ts_off(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cookie_timestamp_decode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cookie_tcp_reqsk_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inet_conn_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_opt_accepted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #6, !srcloc !52
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !47

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !48

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #6
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inet_request_bound_dev_if(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %2 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %sysctl_tcp_l3mdev_accept = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 51
  %4 = ptrtoint ptr %sysctl_tcp_l3mdev_accept to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sysctl_tcp_l3mdev_accept, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %6 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i, !prof !47

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %8 = tail call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %1, i32 noundef %7) #6
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %if.then4.i

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then4.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef nonnull %call.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %rc.0.i = phi i32 [ %call5.i, %if.then4.i ], [ 0, %rcu_read_lock.exit.i.if.end.i_crit_edge ]
  %call.i9.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i9.i, label %if.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i12.i

if.end.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i12.i:                              ; preds = %if.end.i
  %call1.i10.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i14.i

land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i14.i:                             ; preds = %land.lhs.true.i12.i
  %.b4.i13.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i, label %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i15.i

land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i15.i:                                    ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  %12 = tail call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i.i.i.i.i16.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i16.i to ptr
  %preempt_count.i.i.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i17.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i17.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit.i, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %rcu_read_unlock.exit.i ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_req_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_select_initial_window(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cookie_ecn_ok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_get_cookie_sock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !15, !17, !19, !20, !22, !23, !24, !26, !27, !29, !30, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__ksymtab___cookie_v6_init_sequence, !1, !"__ksymtab___cookie_v6_init_sequence", i1 false, i1 false}
!1 = !{!"../net/ipv6/syncookies.c", i32 107, i32 1}
!2 = !{ptr @__ksymtab___cookie_v6_check, !3, !"__ksymtab___cookie_v6_check", i1 false, i1 false}
!3 = !{!"../net/ipv6/syncookies.c", i32 126, i32 1}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv6/syncookies.c", i32 152, i32 3}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/ipv6/syncookies.c", i32 229, i32 34}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @msstab, !11, !"msstab", i1 false, i1 false}
!11 = !{!"../net/ipv6/syncookies.c", i32 33, i32 20}
!12 = !{ptr @cookie_hash.___done, !13, !"___done", i1 false, i1 false}
!13 = !{!"../net/ipv6/syncookies.c", i32 58, i32 2}
!14 = !{ptr @cookie_hash.___once_key, !13, !"___once_key", i1 false, i1 false}
!15 = !{ptr @syncookie6_secret, !16, !"syncookie6_secret", i1 false, i1 false}
!16 = !{!"../net/ipv6/syncookies.c", i32 23, i32 30}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/tcp.h", i32 533, i32 11}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/net/dst.h", i32 161, i32 2}
!29 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/net/request_sock.h", i32 126, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 1276657, i64 1276684}
!44 = !{i64 1277352, i64 1277379, i64 1277412, i64 1277433, i64 1277460, i64 1277486}
!45 = !{i64 2148854172, i64 2148854177, i64 2148854198, i64 2148854242, i64 2148854276, i64 2148854297}
!46 = !{!"auto-init"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2148461485}
!50 = !{i64 2148375949, i64 2148375981, i64 2148376010, i64 2148376044, i64 2148376075, i64 2148376098}
!51 = !{i64 2150543138}
!52 = !{i64 2148373484, i64 2148373516, i64 2148373545, i64 2148373579, i64 2148373610, i64 2148373633}
!53 = !{i64 2149668591}
!54 = !{i64 2149668857}
