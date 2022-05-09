; ModuleID = '/llk/IR_all_yes/net/mptcp/subflow.c_pt.bc'
source_filename = "../net/mptcp/subflow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mptcp_subflow_init_cookie_req\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_subflow_init_cookie_req\09\09\09\09"
module asm "\09.long\09__crc_mptcp_subflow_init_cookie_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_subflow_init_cookie_req:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_subflow_init_cookie_req\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_subflow_init_cookie_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mptcp_subflow_request_sock_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_subflow_request_sock_ops\09\09\09\09"
module asm "\09.long\09__crc_mptcp_subflow_request_sock_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_subflow_request_sock_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_subflow_request_sock_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_subflow_request_sock_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.tcp_request_sock_ops = type { i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.162, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.162 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.143 }
%union.anon.143 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mptcp_options_received = type { i64, i64, i64, i64, i32, i16, i16, i16, i32, i32, i16, i8, i64, [20 x i8], %struct.mptcp_addr_info, %struct.mptcp_rm_list, i64, i64 }
%struct.mptcp_addr_info = type { i8, i16, i16, %union.anon.207 }
%union.anon.207 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.mptcp_rm_list = type { [8 x i8], i8 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.205, %struct.anon.206, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.167, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.168, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.169, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.163, [0 x i32], %union.anon.164, i16, i16, %union.anon.165, %struct.refcount_struct, [0 x i32], %union.anon.166 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.163 = type { i32 }
%union.anon.164 = type { %struct.hlist_node }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.167 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.168 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.169 = type { ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.205 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.206 = type { i32, i32, i32, i32 }
%struct.mptcp_subflow_request_sock = type { %struct.tcp_request_sock, i8, i8, i8, i64, i64, i32, i32, i64, i32, i32, ptr, %struct.hlist_nulls_node }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.200 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.200 = type { %struct.anon.201 }
%struct.anon.201 = type { ptr, ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.mptcp_subflow_context = type { %struct.list_head, %union.anon.197, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i24, i32, i32, i64, i32, i32, [20 x i8], i8, i8, i8, i8, i32 }
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
%struct.mptcp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i32, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, ptr, %struct.rb_root, %struct.sk_buff_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.mptcp_pm_data, %struct.anon.208, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.mptcp_pm_data = type { %struct.mptcp_addr_info, %struct.mptcp_addr_info, %struct.list_head, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32], %struct.mptcp_rm_list, %struct.mptcp_rm_list }
%struct.anon.208 = type { i32, i32, i64, i64 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.217, %struct.anon.218, %struct.anon.219, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.217 = type { i32, i32, i64 }
%struct.anon.218 = type { i32, i32, i64 }
%struct.anon.219 = type { i32, i32 }
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
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.78, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.78 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.215 }
%union.anon.215 = type { ptr, [124 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.192, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.193, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.194, ptr, %struct.address_space, %struct.list_head, %union.anon.195, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.192 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.193 = type { %struct.callback_head }
%union.anon.194 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.195 = type { ptr }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.141, ptr, i64, i16, i16, ptr }
%union.anon.141 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.74, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.74 = type { %struct.in6_addr }
%struct.mptcp_ext = type { %union.anon.223, i64, i32, i16, i16, i16 }
%union.anon.223 = type { i64 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }

@__kstrtab_mptcp_subflow_init_cookie_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_subflow_init_cookie_req = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_subflow_init_cookie_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_subflow_init_cookie_req to i32), ptr @__kstrtab_mptcp_subflow_init_cookie_req, ptr @__kstrtabns_mptcp_subflow_init_cookie_req }, section "___ksymtab_gpl+mptcp_subflow_init_cookie_req", align 4
@mptcp_subflow_request_sock_ops = dso_local global { %struct.request_sock_ops, [60 x i8] } zeroinitializer, align 32
@__kstrtab_mptcp_subflow_request_sock_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_subflow_request_sock_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_subflow_request_sock_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_subflow_request_sock_ops to i32), ptr @__kstrtab_mptcp_subflow_request_sock_ops, ptr @__kstrtabns_mptcp_subflow_request_sock_ops }, section "___ksymtab_gpl+mptcp_subflow_request_sock_ops", align 4
@mptcp_subflow_data_available.__UNIQUE_ID_ddebug738 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mptcp\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mptcp_subflow_data_available\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mptcp/subflow.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Done with mapping: seq=%u data_len=%u\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MPTCP: Done with mapping: seq=%u data_len=%u\00", [51 x i8] zeroinitializer }, align 32
@subflow_v6m_specific = internal global { %struct.inet_connection_sock_af_ops, [48 x i8] } zeroinitializer, align 32
@mptcpv6_handle_mapped.__UNIQUE_ID_ddebug739 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mptcpv6_handle_mapped\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"subflow=%p family=%d ops=%p target=%p mapped=%d\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"MPTCP: subflow=%p family=%d ops=%p target=%p mapped=%d\00", [41 x i8] zeroinitializer }, align 32
@__mptcp_subflow_connect.__UNIQUE_ID_ddebug740 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 1, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__mptcp_subflow_connect\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"msk=%p remote_token=%u local_id=%d remote_id=%d\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"MPTCP: msk=%p remote_token=%u local_id=%d remote_id=%d\00", [41 x i8] zeroinitializer }, align 32
@mptcp_subflow_create_socket.__UNIQUE_ID_ddebug741 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 1, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mptcp_subflow_create_socket\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"subflow=%p\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MPTCP: subflow=%p\00", [46 x i8] zeroinitializer }, align 32
@tcp_request_sock_ops = external dso_local local_unnamed_addr global %struct.request_sock_ops, align 4
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MPTCP: failed to init subflow request sock ops\0A\00", [48 x i8] zeroinitializer }, align 32
@subflow_request_sock_ipv4_ops = internal global { %struct.tcp_request_sock_ops, [32 x i8] } zeroinitializer, align 32
@tcp_request_sock_ipv4_ops = external dso_local local_unnamed_addr constant %struct.tcp_request_sock_ops, align 4
@subflow_specific = internal global { %struct.inet_connection_sock_af_ops, [48 x i8] } zeroinitializer, align 32
@ipv4_specific = external dso_local local_unnamed_addr constant %struct.inet_connection_sock_af_ops, align 4
@tcp_prot_override = internal global { %struct.proto, [36 x i8] } zeroinitializer, align 32
@tcp_prot = external dso_local global %struct.proto, align 4
@subflow_request_sock_ipv6_ops = internal global { %struct.tcp_request_sock_ops, [32 x i8] } zeroinitializer, align 32
@tcp_request_sock_ipv6_ops = external dso_local local_unnamed_addr constant %struct.tcp_request_sock_ops, align 4
@subflow_v6_specific = internal global { %struct.inet_connection_sock_af_ops, [48 x i8] } zeroinitializer, align 32
@ipv6_specific = external dso_local local_unnamed_addr constant %struct.inet_connection_sock_af_ops, align 4
@tcpv6_prot_override = internal global { %struct.proto, [36 x i8] } zeroinitializer, align 32
@tcpv6_prot = external dso_local global %struct.proto, align 4
@subflow_ulp_ops = internal global %struct.tcp_ulp_ops { %struct.list_head zeroinitializer, ptr @subflow_ulp_init, ptr null, ptr @subflow_ulp_release, ptr null, ptr null, ptr @subflow_ulp_clone, [16 x i8] c"mptcp\00\00\00\00\00\00\00\00\00\00\00", ptr null }, section ".data..read_mostly", align 4
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MPTCP: failed to register subflows to ULP\0A\00", [53 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@subflow_check_data_avail.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@subflow_check_data_avail.__UNIQUE_ID_ddebug731 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"subflow_check_data_avail\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"msk ack_seq=%llx subflow ack_seq=%llx\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MPTCP: msk ack_seq=%llx subflow ack_seq=%llx\00", [51 x i8] zeroinitializer }, align 32
@get_mapping_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0len seq %d:%d flags %x\00", [40 x i8] zeroinitializer }, align 32
@get_mapping_status.__UNIQUE_ID_ddebug719 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_mapping_status\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DATA_FIN with no payload seq=%llu\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MPTCP: DATA_FIN with no payload seq=%llu\00", [55 x i8] zeroinitializer }, align 32
@get_mapping_status.__UNIQUE_ID_ddebug720 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.23, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DATA_FIN with mapping seq=%llu dsn64=%d\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MPTCP: DATA_FIN with mapping seq=%llu dsn64=%d\00", [49 x i8] zeroinitializer }, align 32
@get_mapping_status.__UNIQUE_ID_ddebug723 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.25, i8 1, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"new map seq=%llu subflow_seq=%u data_len=%u csum=%d:%u\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"MPTCP: new map seq=%llu subflow_seq=%u data_len=%u csum=%d:%u\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_get_mapping_status = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/mptcp.h\00", [35 x i8] zeroinitializer }, align 32
@trace_get_mapping_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@skb_is_fully_mapped.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dbg_bad_map.__UNIQUE_ID_ddebug715 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dbg_bad_map\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Bad mapping: ssn=%d map_seq=%d map_data_len=%d\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"MPTCP: Bad mapping: ssn=%d map_seq=%d map_data_len=%d\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_subflow_check_data_avail = external dso_local global %struct.tracepoint, align 4
@trace_subflow_check_data_avail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mptcp_subflow_discard_data.__UNIQUE_ID_ddebug724 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptcp_subflow_discard_data\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"discarding=%d len=%d seq=%d\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MPTCP: discarding=%d len=%d seq=%d\00", [61 x i8] zeroinitializer }, align 32
@__mptcp_do_fallback.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.37, ptr @.str.38, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mptcp_do_fallback\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mptcp/protocol.h\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TCP fallback already done (msk=%p)\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MPTCP: TCP fallback already done (msk=%p)\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"request_sock_subflow\00", [43 x i8] zeroinitializer }, align 32
@subflow_req_destructor.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"subflow_req_destructor\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"subflow_req=%p\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MPTCP: subflow_req=%p\00", [42 x i8] zeroinitializer }, align 32
@subflow_check_req.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"subflow_check_req\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"subflow_req=%p, listener=%p\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MPTCP: subflow_req=%p, listener=%p\00", [61 x i8] zeroinitializer }, align 32
@subflow_check_req.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"syn inet_sport=%d %d\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MPTCP: syn inet_sport=%d %d\00", [36 x i8] zeroinitializer }, align 32
@subflow_check_req.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.52, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"token=%u, remote_nonce=%u msk=%p\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MPTCP: token=%u, remote_nonce=%u msk=%p\00", [56 x i8] zeroinitializer }, align 32
@subflow_v4_conn_request.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.12, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"subflow_v4_conn_request\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@subflow_syn_recv_sock.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"subflow_syn_recv_sock\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"listener=%p, req=%p, conn=%p\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MPTCP: listener=%p, req=%p, conn=%p\00", [60 x i8] zeroinitializer }, align 32
@subflow_syn_recv_sock.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.60, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ack inet_sport=%d %d\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MPTCP: ack inet_sport=%d %d\00", [36 x i8] zeroinitializer }, align 32
@subflow_syn_recv_sock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_sock_destruct.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@subflow_finish_connect.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"subflow_finish_connect\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"subflow=%p synack seq=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MPTCP: subflow=%p synack seq=%x\00", [32 x i8] zeroinitializer }, align 32
@subflow_finish_connect.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.65, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:fallback to TCP (msk=%p)\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MPTCP: %s:fallback to TCP (msk=%p)\00", [61 x i8] zeroinitializer }, align 32
@subflow_finish_connect.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.67, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"subflow=%p, remote_key=%llu\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MPTCP: subflow=%p, remote_key=%llu\00", [61 x i8] zeroinitializer }, align 32
@subflow_finish_connect.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.69, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"subflow=%p, thmac=%llu, remote_nonce=%u backup=%d\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"MPTCP: subflow=%p, thmac=%llu, remote_nonce=%u backup=%d\00", [39 x i8] zeroinitializer }, align 32
@subflow_finish_connect.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.71, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"synack inet_dport=%d %d\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MPTCP: synack inet_dport=%d %d\00", [33 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@subflow_thmac_valid.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"subflow_thmac_valid\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"subflow=%p, token=%u, thmac=%llu, subflow->thmac=%llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"MPTCP: subflow=%p, token=%u, thmac=%llu, subflow->thmac=%llu\0A\00", [34 x i8] zeroinitializer }, align 32
@tcp6_request_sock_ops = external dso_local local_unnamed_addr global %struct.request_sock_ops, align 4
@subflow_v6_conn_request.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.12, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"subflow_v6_conn_request\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@subflow_ulp_init.__UNIQUE_ID_ddebug749 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 1, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subflow_ulp_init\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"subflow=%p, family=%d\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MPTCP: subflow=%p, family=%d\00", [35 x i8] zeroinitializer }, align 32
@subflow_create_ctx.__UNIQUE_ID_ddebug745 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.12, i8 1, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"subflow_create_ctx\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@subflow_data_ready.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@subflow_state_change.__UNIQUE_ID_ddebug748 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.65, i8 1, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"subflow_state_change\00", [43 x i8] zeroinitializer }, align 32
@__subflow_state_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"mptcp_subflow_request_sock_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 486, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1212, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"subflow_v6m_specific\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 511, i32 43 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1333, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1432, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1553, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1786, i32 9 }
@___asan_gen_.139 = private unnamed_addr constant [30 x i8] c"subflow_request_sock_ipv4_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 488, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"subflow_specific\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 793, i32 43 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"tcp_prot_override\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 794, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant [30 x i8] c"subflow_request_sock_ipv6_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 509, i32 36 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"subflow_v6_specific\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 510, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"tcpv6_prot_override\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 512, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1822, i32 9 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1147, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 949, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 975, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1000, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1047, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [32 x i8] c"../include/trace/events/mptcp.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 118, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 108, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 806, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1076, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"../net/mptcp/protocol.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 864, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 695, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 723, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1767, i32 27 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 42, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 146, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 216, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 235, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 494, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1011, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 642, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 751, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 411, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 419, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 430, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 446, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 469, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1750, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 346, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 518, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 271, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1655, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1577, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [23 x i8] c"../net/mptcp/subflow.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1611, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__ksymtab_mptcp_subflow_init_cookie_req, ptr @__ksymtab_mptcp_subflow_request_sock_ops, ptr @mptcp_subflow_request_sock_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @subflow_v6m_specific, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @subflow_request_sock_ipv4_ops, ptr @subflow_specific, ptr @tcp_prot_override, ptr @subflow_request_sock_ipv6_ops, ptr @subflow_v6_specific, ptr @tcpv6_prot_override, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_subflow_request_sock_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subflow_v6m_specific to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subflow_request_sock_ipv4_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subflow_specific to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_prot_override to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subflow_request_sock_ipv6_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subflow_v6_specific to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_prot_override to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_subflow_init_cookie_req(ptr noundef %req, ptr noundef %sk_listener, ptr noundef %skb) #0 align 64 {
entry:
  %mp_opt = alloca %struct.mptcp_options_received, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk_listener, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mp_opt) #13
  %2 = call ptr @memset(ptr %mp_opt, i32 255, i32 136)
  %mp_capable.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %mp_capable.i, align 8
  %bf.clear2.i = and i8 %bf.load.i, 63
  store i8 %bf.clear2.i, ptr %mp_capable.i, align 8
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk_listener, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i.i, align 4
  %call5.i = tail call i32 @mptcp_is_checksum_enabled(ptr noundef %5) #13
  %6 = trunc i32 %call5.i to i8
  %7 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load6.i = load i8, ptr %mp_capable.i, align 8
  %bf.value.i = shl i8 %6, 4
  %bf.shl.i = and i8 %bf.value.i, 16
  %bf.clear7.i = and i8 %bf.load6.i, -17
  %bf.set8.i = or i8 %bf.shl.i, %bf.clear7.i
  store i8 %bf.set8.i, ptr %mp_capable.i, align 8
  %8 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i.i, align 4
  %call10.i = tail call i32 @mptcp_allow_join_id0(ptr noundef %9) #13
  %10 = trunc i32 %call10.i to i8
  %11 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load12.i = load i8, ptr %mp_capable.i, align 8
  %bf.value13.i = shl i8 %10, 3
  %bf.shl14.i = and i8 %bf.value13.i, 8
  %bf.clear15.i = and i8 %bf.load12.i, -9
  %bf.set16.i = or i8 %bf.shl14.i, %bf.clear15.i
  store i8 %bf.set16.i, ptr %mp_capable.i, align 8
  %msk.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 11
  %12 = ptrtoint ptr %msk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %msk.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i.i, align 4
  call void @mptcp_get_options(ptr noundef %sk_listener, ptr noundef %skb, ptr noundef nonnull %mp_opt) #13
  %suboptions = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %14 = ptrtoint ptr %suboptions to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %suboptions, align 8
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %conv, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %brmerge = or i1 %tobool.not, %tobool6.not
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true16

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true16:                                  ; preds = %if.end
  %request_mptcp = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %16 = ptrtoint ptr %request_mptcp to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %request_mptcp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool17.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool17.not, label %land.lhs.true16.if.else_crit_edge, label %if.then18

land.lhs.true16.if.else_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true16
  %17 = ptrtoint ptr %mp_opt to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mp_opt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp = icmp eq i64 %18, 0
  br i1 %cmp, label %if.then18.cleanup_crit_edge, label %if.end21

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.then18
  %rcvr_key = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 1
  %19 = ptrtoint ptr %rcvr_key to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rcvr_key, align 8
  %local_key = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 4
  %21 = ptrtoint ptr %local_key to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %local_key, align 8
  %call22 = call i32 @mptcp_token_new_request(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup.sink.split_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true16.if.else_crit_edge, %if.end.if.else_crit_edge
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %land.lhs.true29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.else
  %request_mptcp30 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %22 = ptrtoint ptr %request_mptcp30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load31 = load i32, ptr %request_mptcp30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load31)
  %tobool33.not = icmp sgt i32 %bf.load31, -1
  br i1 %tobool33.not, label %land.lhs.true29.cleanup_crit_edge, label %if.then34

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true29
  %call35 = call zeroext i1 @mptcp_token_join_cookie_init_state(ptr noundef %req, ptr noundef %skb) #13
  br i1 %call35, label %if.then34.cleanup.sink.split_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34.cleanup.sink.split_crit_edge:           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then34.cleanup.sink.split_crit_edge, %if.end21.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ -128, %if.end21.cleanup.sink.split_crit_edge ], [ 64, %if.then34.cleanup.sink.split_crit_edge ]
  %23 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load26 = load i8, ptr %mp_capable.i, align 8
  %bf.set = or i8 %bf.load26, %.sink
  store i8 %bf.set, ptr %mp_capable.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb, align 8
  %sub = add i32 %25, -1
  %ssn_offset = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 7
  %26 = ptrtoint ptr %ssn_offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %ssn_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then34.cleanup_crit_edge, %land.lhs.true29.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ -22, %if.then34.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true29.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mp_opt) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_get_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_token_new_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_token_join_cookie_init_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_subflow_reset(ptr noundef %ssk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !207
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !208

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !209

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @tcp_set_state(ptr noundef %ssk, i32 noundef 7) #13
  tail call void @tcp_send_active_reset(ptr noundef %ssk, i32 noundef 2592) #13
  tail call void @tcp_done(ptr noundef %ssk) #13
  %flags = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 18
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %sock_hold.exit.if.end_crit_edge

sock_hold.exit.if.end_crit_edge:                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %sock_hold.exit
  %work = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work) #13
  br i1 %call.i.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sock_hold.exit.if.end_crit_edge
  %call.i.i.i.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !211
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i14 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i14, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !209

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @sk_free(ptr noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_active_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #13, !srcloc !211
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !209

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @sk_free(ptr noundef %sk) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mptcp_set_connected(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @inet_sk_state_store(ptr noundef %sk, i32 noundef 1) #13
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %2 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_state_change, align 4
  tail call void %3(ptr noundef %sk) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_state_store(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_subflow_fully_established(ptr nocapture noundef %subflow, ptr nocapture noundef readonly %mp_opt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 6
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %2 = ptrtoint ptr %mp_opt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mp_opt, align 8
  %remote_key = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %remote_key to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %remote_key, align 8
  %fully_established = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 1, i32 0, i32 13
  %5 = ptrtoint ptr %fully_established to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %fully_established, align 8
  %bf.set3 = or i32 %bf.load, 67125248
  store i32 %bf.set3, ptr %fully_established, align 8
  %fully_established6 = getelementptr inbounds %struct.mptcp_sock, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %fully_established6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 1, ptr %fully_established6, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_subflow_data_available(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %map_valid = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %2 = ptrtoint ptr %map_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %map_valid, align 8
  %3 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %land.lhs.true

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true:                                    ; preds = %entry
  %tcp_sock.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tcp_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcp_sock.i.i, align 8
  %copied_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %copied_seq.i, align 4
  %ssn_offset.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 9
  %8 = ptrtoint ptr %ssn_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssn_offset.i, align 8
  %map_subflow_seq.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 8
  %10 = ptrtoint ptr %map_subflow_seq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_subflow_seq.i, align 4
  %12 = add i32 %9, %11
  %sub2.i = sub i32 %7, %12
  %map_data_len = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 10
  %13 = ptrtoint ptr %map_data_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %map_data_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %14)
  %cmp.not = icmp ult i32 %sub2.i, %14
  br i1 %cmp.not, label %land.lhs.true.if.end21_crit_edge, label %if.then

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear5 = and i32 %bf.load, -8388609
  %15 = ptrtoint ptr %map_valid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.clear5, ptr %map_valid, align 8
  %data_avail = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 14
  %16 = ptrtoint ptr %data_avail to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %data_avail, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_subflow_data_available.__UNIQUE_ID_ddebug738, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_subflow_data_available, %if.then17)) #13
          to label %if.end21 [label %if.then17], !srcloc !213

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %map_subflow_seq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %map_subflow_seq.i, align 4
  %19 = ptrtoint ptr %map_data_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %map_data_len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_subflow_data_available.__UNIQUE_ID_ddebug738, ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef %20) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then, %land.lhs.true.if.end21_crit_edge, %entry.if.end21_crit_edge
  %call22 = tail call fastcc zeroext i1 @subflow_check_data_avail(ptr noundef %sk)
  ret i1 %call22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @subflow_check_data_avail(ptr noundef %ssk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 8
  %2 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %3, %sk_receive_queue
  %tobool.not342 = icmp eq ptr %3, null
  %tobool.not = or i1 %cmp.i, %tobool.not342
  br i1 %tobool.not, label %do.body3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %data_avail = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 14
  %4 = ptrtoint ptr %data_avail to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %data_avail, align 4
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  %data_avail8 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 14
  %5 = ptrtoint ptr %data_avail8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_avail8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup261_crit_edge

if.end.cleanup261_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup261

if.end11:                                         ; preds = %if.end
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn, align 4
  %can_ack = getelementptr inbounds %struct.mptcp_sock, ptr %8, i32 0, i32 22
  %mpc_map = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %remote_key = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 2
  %remote_key115 = getelementptr inbounds %struct.mptcp_sock, ptr %8, i32 0, i32 2
  %map_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 4
  %ack_seq125 = getelementptr inbounds %struct.mptcp_sock, ptr %8, i32 0, i32 5
  %tcp_sock.i.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 5
  %ssn_offset.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 9
  %map_subflow_seq.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end11
  %call13 = tail call fastcc i32 @get_mapping_status(ptr noundef %ssk, ptr noundef %8)
  %conv = trunc i32 %call13 to i8
  %9 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i326 = icmp eq ptr %10, %sk_receive_queue
  %spec.store.select.i327 = select i1 %cmp.i326, ptr null, ptr %10
  tail call fastcc void @trace_subflow_check_data_avail(i8 noundef zeroext %conv, ptr noundef %spec.store.select.i327)
  %11 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %for.cond.no_data_crit_edge [
    i32 1, label %for.cond.fallback_crit_edge
    i32 4, label %for.cond.fallback_crit_edge352
    i32 0, label %if.end34
  ], !prof !214

for.cond.fallback_crit_edge352:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %fallback

for.cond.fallback_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %fallback

for.cond.no_data_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_data

if.end34:                                         ; preds = %for.cond
  %12 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i328 = icmp eq ptr %13, %sk_receive_queue
  %tobool37.not343 = icmp eq ptr %13, null
  %tobool37.not = or i1 %cmp.i328, %tobool37.not343
  br i1 %tobool37.not, label %land.rhs, label %do.end93

land.rhs:                                         ; preds = %if.end34
  %.b324 = load i1, ptr @subflow_check_data_avail.__already_done, align 1
  br i1 %.b324, label %land.rhs.no_data_crit_edge, label %if.then55, !prof !209

land.rhs.no_data_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_data

if.then55:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @subflow_check_data_avail.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1131, i32 noundef 9, ptr noundef null) #13
  br label %no_data

do.end93:                                         ; preds = %if.end34
  %14 = ptrtoint ptr %can_ack to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %can_ack, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool95.not = icmp eq i8 %15, 0
  br i1 %tobool95.not, label %if.then106, label %do.end93.do.end143_crit_edge, !prof !208

do.end93.do.end143_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end143

if.then106:                                       ; preds = %do.end93
  %16 = ptrtoint ptr %mpc_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %mpc_map, align 8
  %17 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool107.not = icmp eq i32 %17, 0
  br i1 %tobool107.not, label %if.then106.fallback_crit_edge, label %do.body114

if.then106.fallback_crit_edge:                    ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %fallback

do.body114:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %remote_key, align 8
  %20 = ptrtoint ptr %remote_key115 to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %19, ptr %remote_key115, align 8
  %21 = ptrtoint ptr %map_seq to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %map_seq, align 8
  %23 = ptrtoint ptr %ack_seq125 to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %22, ptr %ack_seq125, align 8
  %24 = ptrtoint ptr %can_ack to i32
  call void @__asan_store1_noabort(i32 %24)
  store volatile i8 1, ptr %can_ack, align 1
  br label %do.end143

do.end143:                                        ; preds = %do.body114, %do.end93.do.end143_crit_edge
  %25 = ptrtoint ptr %ack_seq125 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load volatile i64, ptr %ack_seq125, align 8
  %27 = ptrtoint ptr %map_seq to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %map_seq, align 8
  %29 = ptrtoint ptr %tcp_sock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tcp_sock.i.i.i, align 8
  %copied_seq.i.i = getelementptr inbounds %struct.tcp_sock, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %copied_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %copied_seq.i.i, align 4
  %33 = ptrtoint ptr %ssn_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ssn_offset.i.i, align 8
  %35 = ptrtoint ptr %map_subflow_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %map_subflow_seq.i.i, align 4
  %37 = add i32 %34, %36
  %sub2.i.i = sub i32 %32, %37
  %conv.i.i = zext i32 %sub2.i.i to i64
  %add.i = add i64 %28, %conv.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_check_data_avail.__UNIQUE_ID_ddebug731, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_check_data_avail, %if.then158)) #13
          to label %do.end161 [label %if.then158], !srcloc !213

if.then158:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_check_data_avail.__UNIQUE_ID_ddebug731, ptr noundef nonnull @.str.18, i64 noundef %26, i64 noundef %add.i) #13
  br label %do.end161

do.end161:                                        ; preds = %if.then158, %do.end143
  %sub.i = sub i64 %add.i, %26
  %cmp.i330 = icmp slt i64 %sub.i, 0
  br i1 %cmp.i330, label %cleanup, label %cleanup.thread340, !prof !208

cleanup.thread340:                                ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %data_avail8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 1, ptr %data_avail8, align 4
  br label %cleanup261

cleanup:                                          ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i64 %26, %add.i
  tail call fastcc void @mptcp_subflow_discard_data(ptr noundef %ssk, ptr noundef nonnull %13, i64 noundef %sub)
  br label %for.cond

no_data:                                          ; preds = %if.then55, %land.rhs.no_data_crit_edge, %for.cond.no_data_crit_edge
  tail call fastcc void @subflow_sched_work_if_closed(ptr noundef %8, ptr noundef %ssk)
  br label %cleanup261

fallback:                                         ; preds = %if.then106.fallback_crit_edge, %for.cond.fallback_crit_edge, %for.cond.fallback_crit_edge352
  %39 = ptrtoint ptr %mpc_map to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load182 = load i32, ptr %mpc_map, align 8
  %40 = and i32 %bf.load182, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool185.not = icmp eq i32 %40, 0
  br i1 %tobool185.not, label %if.end208, label %if.then186

if.then186:                                       ; preds = %fallback
  %41 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %conn.i, align 4
  %conn_list.i = getelementptr inbounds %struct.mptcp_sock, ptr %44, i32 0, i32 34
  %45 = ptrtoint ptr %conn_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %tmp.0.i.peel = load ptr, ptr %conn_list.i, align 8
  %cmp.not.i.peel = icmp ne ptr %tmp.0.i.peel, %conn_list.i
  %cmp4.not.i.peel = icmp eq ptr %tmp.0.i.peel, %42
  %or.cond.i.peel = select i1 %cmp.not.i.peel, i1 %cmp4.not.i.peel, i1 false
  br i1 %or.cond.i.peel, label %for.cond.i.peel.next, label %if.then186.mptcp_has_another_subflow.exit_crit_edge

if.then186.mptcp_has_another_subflow.exit_crit_edge: ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_has_another_subflow.exit

for.cond.i.peel.next:                             ; preds = %if.then186
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %tmp.0.i = load ptr, ptr %42, align 8
  %cmp.not.i = icmp ne ptr %tmp.0.i, %conn_list.i
  %cmp4.not.i = icmp eq ptr %tmp.0.i, %42
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp4.not.i, i1 false
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.peel.next
  br i1 %or.cond.i, label %for.cond.i.for.cond.i_crit_edge, label %for.cond.i.mptcp_has_another_subflow.exit_crit_edge, !llvm.loop !216

for.cond.i.mptcp_has_another_subflow.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_has_another_subflow.exit

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

mptcp_has_another_subflow.exit:                   ; preds = %for.cond.i.mptcp_has_another_subflow.exit_crit_edge, %if.then186.mptcp_has_another_subflow.exit_crit_edge
  %cmp.not.i.lcssa = phi i1 [ %cmp.not.i.peel, %if.then186.mptcp_has_another_subflow.exit_crit_edge ], [ %cmp.not.i, %for.cond.i.mptcp_has_another_subflow.exit_crit_edge ]
  br i1 %cmp.not.i.lcssa, label %while.cond.preheader, label %mptcp_has_another_subflow.exit.if.end192_crit_edge

mptcp_has_another_subflow.exit.if.end192_crit_edge: ; preds = %mptcp_has_another_subflow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192

while.cond.preheader:                             ; preds = %mptcp_has_another_subflow.exit
  %47 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i331347 = icmp eq ptr %48, %sk_receive_queue
  %tobool191.not344348 = icmp eq ptr %48, null
  %tobool191.not349 = or i1 %cmp.i331347, %tobool191.not344348
  br i1 %tobool191.not349, label %while.cond.preheader.if.end192_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end192_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 8, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %49 = phi ptr [ %48, %while.body.lr.ph ], [ %59, %while.body.while.body_crit_edge ]
  %50 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %49, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %55, ptr %prev17.i.i, align 4
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %53, ptr %55, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %49) #13
  %58 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i331 = icmp eq ptr %59, %sk_receive_queue
  %tobool191.not344 = icmp eq ptr %59, null
  %tobool191.not = or i1 %cmp.i331, %tobool191.not344
  br i1 %tobool191.not, label %while.body.if.end192_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.if.end192_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192

if.end192:                                        ; preds = %while.body.if.end192_crit_edge, %while.cond.preheader.if.end192_crit_edge, %mptcp_has_another_subflow.exit.if.end192_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 51
  %60 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 74, ptr %sk_err, align 4
  tail call void @tcp_set_state(ptr noundef %ssk, i32 noundef 7) #13
  %reset_transient = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 22
  %61 = ptrtoint ptr %reset_transient to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load193 = load i8, ptr %reset_transient, align 2
  %bf.clear196 = and i8 %bf.load193, -125
  %bf.set197 = or i8 %bf.clear196, 24
  store i8 %bf.set197, ptr %reset_transient, align 2
  tail call void @tcp_send_active_reset(ptr noundef %ssk, i32 noundef 2592) #13
  %62 = ptrtoint ptr %data_avail8 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %data_avail8, align 4
  br label %cleanup261

if.end208:                                        ; preds = %fallback
  %63 = and i32 %bf.load182, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %if.end237, label %if.then217

if.then217:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  %sk_err218 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 51
  %65 = ptrtoint ptr %sk_err218 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 74, ptr %sk_err218, align 4
  tail call void @tcp_set_state(ptr noundef %ssk, i32 noundef 7) #13
  %reset_transient219 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 22
  %66 = ptrtoint ptr %reset_transient219 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load220 = load i8, ptr %reset_transient219, align 2
  %bf.clear225 = and i8 %bf.load220, -125
  %bf.set226 = or i8 %bf.clear225, 4
  store i8 %bf.set226, ptr %reset_transient219, align 2
  tail call void @tcp_send_active_reset(ptr noundef %ssk, i32 noundef 2592) #13
  %67 = ptrtoint ptr %data_avail8 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %data_avail8, align 4
  br label %cleanup261

if.end237:                                        ; preds = %if.end208
  %flags.i = getelementptr inbounds %struct.mptcp_sock, ptr %8, i32 0, i32 18
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags.i, align 4
  %70 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mptcp_do_fallback.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_check_data_avail, %if.then5.i)) #13
          to label %__mptcp_do_fallback.exit [label %if.then5.i], !srcloc !213

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__mptcp_do_fallback.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.39, ptr noundef %8) #13
  br label %__mptcp_do_fallback.exit

if.end6.i:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #13
  br label %__mptcp_do_fallback.exit

__mptcp_do_fallback.exit:                         ; preds = %if.end6.i, %if.then5.i, %do.body.i
  %71 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i333 = icmp eq ptr %72, %sk_receive_queue
  %spec.store.select.i334 = select i1 %cmp.i333, ptr null, ptr %72
  %73 = ptrtoint ptr %mpc_map to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load240 = load i32, ptr %mpc_map, align 8
  %bf.set242 = or i32 %bf.load240, 8388608
  store i32 %bf.set242, ptr %mpc_map, align 8
  %74 = ptrtoint ptr %ack_seq125 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load volatile i64, ptr %ack_seq125, align 8
  %76 = ptrtoint ptr %map_seq to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %map_seq, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i334, i32 0, i32 6
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  %map_data_len = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 10
  %79 = ptrtoint ptr %map_data_len to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %map_data_len, align 4
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 8
  %80 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %copied_seq, align 4
  %82 = ptrtoint ptr %ssn_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ssn_offset.i.i, align 8
  %sub250 = sub i32 %81, %83
  %84 = ptrtoint ptr %map_subflow_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub250, ptr %map_subflow_seq.i.i, align 4
  %85 = ptrtoint ptr %data_avail8 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 1, ptr %data_avail8, align 4
  br label %cleanup261

cleanup261:                                       ; preds = %__mptcp_do_fallback.exit, %if.then217, %if.end192, %no_data, %cleanup.thread340, %if.end.cleanup261_crit_edge
  %retval.0 = phi i1 [ true, %if.end192 ], [ false, %if.then217 ], [ true, %__mptcp_do_fallback.exit ], [ false, %no_data ], [ true, %if.end.cleanup261_crit_edge ], [ true, %cleanup.thread340 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_space(ptr nocapture noundef readonly %ssk, ptr nocapture noundef writeonly %space, ptr nocapture noundef writeonly %full_space) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_rcvbuf.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %rmem_released.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %rmem_released.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %rmem_released.i.i, align 8
  %sub.i.neg.i = sub i32 %9, %7
  %sub.i = add i32 %sub.i.neg.i, %5
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i.i.i, align 4
  %sysctl_tcp_adv_win_scale.i.i = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 35, i32 85
  %12 = ptrtoint ptr %sysctl_tcp_adv_win_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sysctl_tcp_adv_win_scale.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp slt i32 %13, 1
  %sub.i4.i = sub i32 0, %13
  %shr.i.i = ashr i32 %sub.i, %sub.i4.i
  %shr1.i.i = ashr i32 %sub.i, %13
  %sub2.i.i = sub i32 %sub.i, %shr1.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr.i.i, i32 %sub2.i.i
  %14 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i.i, ptr %space, align 4
  %15 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sk_rcvbuf.i, align 8
  %17 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i.i.i, align 4
  %sysctl_tcp_adv_win_scale.i.i6 = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 35, i32 85
  %19 = ptrtoint ptr %sysctl_tcp_adv_win_scale.i.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sysctl_tcp_adv_win_scale.i.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i7 = icmp slt i32 %20, 1
  %sub.i.i = sub i32 0, %20
  %shr.i.i8 = ashr i32 %16, %sub.i.i
  %shr1.i.i9 = ashr i32 %16, %20
  %sub2.i.i10 = sub i32 %16, %shr1.i.i9
  %cond.i.i11 = select i1 %cmp.i.i7, i32 %shr.i.i8, i32 %sub2.i.i10
  %21 = ptrtoint ptr %full_space to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond.i.i11, ptr %full_space, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mptcp_error_report(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %0 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %subflow.035 = load ptr, ptr %conn_list, align 8
  %cmp.not36 = icmp eq ptr %subflow.035, %conn_list
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %subflow.037 = phi ptr [ %subflow.035, %for.body.lr.ph ], [ %subflow.0, %cleanup.for.body_crit_edge ]
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.037, i32 0, i32 5
  %1 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tcp_sock.i, align 8
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 51
  %3 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %sock_error.exit, !prof !209

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sock_error.exit:                                  ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !218
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #13, !srcloc !219
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %sock_error.exit.cleanup_crit_edge, label %if.end

sock_error.exit.cleanup_crit_edge:                ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sock_error.exit
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp4.not = icmp eq i8 %7, 2
  br i1 %cmp4.not, label %if.end.cleanup.thread_crit_edge, label %land.lhs.true

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge
  %asmresult.i.i.le = extractvalue { i32, i32 } %5, 0
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !221
  %conv.i = zext i8 %12 to i32
  tail call void @inet_sk_state_store(ptr noundef %sk, i32 noundef %conv.i) #13
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %13 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %asmresult.i.i.le, ptr %sk_err, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !222
  tail call void @sk_error_report(ptr noundef %sk) #13
  br label %for.end

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %sock_error.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %14 = ptrtoint ptr %subflow.037 to i32
  call void @__asan_load4_noabort(i32 %14)
  %subflow.0 = load ptr, ptr %subflow.037, align 8
  %cmp.not = icmp eq ptr %subflow.0, %conn_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcpv6_handle_mapped(ptr nocapture noundef %sk, i1 noundef zeroext %mapped) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  br i1 %mapped, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.i = icmp eq i16 %3, 10
  %subflow_v6_specific.subflow_specific.i = select i1 %cmp.i, ptr @subflow_v6_specific, ptr @subflow_specific
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %subflow_v6_specific.subflow_specific.i, %cond.false ], [ @subflow_v6m_specific, %entry.cond.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcpv6_handle_mapped.__UNIQUE_ID_ddebug739, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcpv6_handle_mapped, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %skc_family, align 8
  %conv = zext i16 %5 to i32
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %6 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %icsk_af_ops, align 8
  %conv9 = zext i1 %mapped to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcpv6_handle_mapped.__UNIQUE_ID_ddebug739, ptr noundef nonnull @.str.7, ptr noundef %1, i32 noundef %conv, ptr noundef %7, ptr noundef nonnull %cond, i32 noundef %conv9) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %icsk_af_ops10 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %8 = ptrtoint ptr %icsk_af_ops10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %icsk_af_ops10, align 8
  %cmp = icmp eq ptr %9, %cond
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end19, !prof !209

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %icsk_af_ops21 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %icsk_af_ops21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %icsk_af_ops21, align 8
  %11 = ptrtoint ptr %icsk_af_ops10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cond, ptr %icsk_af_ops10, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mptcp_info2sockaddr(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %addr, i16 noundef zeroext %family) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %addr, i32 0, i32 128)
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %family, ptr %addr, align 4
  %2 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %family, label %entry.if.end28_crit_edge [
    i16 2, label %if.then
    i16 10, label %if.then16
  ]

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then:                                          ; preds = %entry
  %family3 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %family3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %family3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp5 = icmp eq i16 %4, 2
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sin_addr, align 4
  br label %if.end10

if.else:                                          ; preds = %if.then
  %9 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %arrayidx2.i = getelementptr %struct.mptcp_addr_info, ptr %info, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %13, %11
  %arrayidx4.i = getelementptr %struct.mptcp_addr_info, ptr %info, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %15, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.then8, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.mptcp_addr_info, ptr %info, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %sin_addr9 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %18 = ptrtoint ptr %sin_addr9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sin_addr9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else.if.end10_crit_edge, %if.then7
  %port = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %port, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %21 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %sin_port, align 2
  br label %if.end28

if.then16:                                        ; preds = %entry
  %family17 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 1
  %22 = ptrtoint ptr %family17 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %family17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp19 = icmp eq i16 %23, 2
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %24 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %arrayidx1.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65535, ptr %arrayidx2.i.i, align 4
  %arrayidx1.i1.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %arrayidx1.i1.i.i, align 4
  br label %if.end25

if.else23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %sin6_addr24 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %30 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %sin6_addr24, ptr %30, i32 16)
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then21
  %port26 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 2
  %32 = ptrtoint ptr %port26 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %port26, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %34 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %sin6_port, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end10, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mptcp_subflow_connect(ptr noundef %sk, ptr nocapture noundef readonly %loc, ptr nocapture noundef readonly %remote) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.__kernel_sockaddr_storage, align 4
  %sf = alloca ptr, align 4
  %remote_token = alloca i32, align 4
  %ifindex = alloca i32, align 4
  %flags = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr) #13
  %0 = call ptr @memset(ptr %addr, i32 255, i32 128)
  %1 = ptrtoint ptr %remote to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %remote, align 4
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %loc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %loc, align 4
  %conv2 = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sf) #13
  %5 = ptrtoint ptr %sf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %sf, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_token) #13
  %6 = ptrtoint ptr %remote_token to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %remote_token, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifindex) #13
  %7 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ifindex, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags) #13
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %flags, align 1, !annotation !223
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp eq i8 %10, 1
  br i1 %cmp.i, label %mptcp_is_fully_established.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mptcp_is_fully_established.exit:                  ; preds = %entry
  %fully_established.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 23
  %11 = ptrtoint ptr %fully_established.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %fully_established.i, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not = icmp eq i8 %12, 0
  br i1 %tobool.i.not, label %mptcp_is_fully_established.exit.cleanup_crit_edge, label %if.end

mptcp_is_fully_established.exit.cleanup_crit_edge: ; preds = %mptcp_is_fully_established.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %mptcp_is_fully_established.exit
  %call4 = call i32 @mptcp_subflow_create_socket(ptr noundef %sk, ptr noundef nonnull %sf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sf, align 4
  %sk7 = getelementptr inbounds %struct.socket, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %sk7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk7, align 16
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %icsk_ulp_data.i, align 8
  %local_nonce = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end6
  tail call void @get_random_bytes(ptr noundef %local_nonce, i32 noundef 4) #13
  %19 = ptrtoint ptr %local_nonce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %local_nonce, align 8
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool11.not = icmp eq i8 %4, 0
  br i1 %tobool11.not, label %if.then12, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12:                                        ; preds = %do.end
  %call13 = tail call i32 @mptcp_pm_get_local_id(ptr noundef %sk, ptr noundef %16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then12.failed_crit_edge, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12.failed_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %do.end.if.end17_crit_edge
  %local_id.0 = phi i32 [ %conv2, %do.end.if.end17_crit_edge ], [ %call13, %if.then12.if.end17_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %21 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skc_net.i, align 4
  %call19 = call i32 @mptcp_pm_get_flags_and_ifindex_by_id(ptr noundef %22, i32 noundef %local_id.0, ptr noundef nonnull %flags, ptr noundef nonnull %ifindex) #13
  %remote_key = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 2
  %23 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %remote_key, align 8
  %remote_key20 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %remote_key20 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %remote_key20, align 8
  %local_key = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 1
  %26 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %local_key, align 8
  %local_key21 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %local_key21 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %local_key21, align 8
  %token = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 16
  %29 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %token, align 4
  %token22 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 6
  %31 = ptrtoint ptr %token22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %token22, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 3
  %32 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %skc_family, align 8
  %34 = call ptr @memset(ptr %addr, i32 0, i32 128)
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %33, ptr %addr, align 4
  %36 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %33, label %if.end17.mptcp_info2sockaddr.exit_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then16.i
  ]

if.end17.mptcp_info2sockaddr.exit_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_info2sockaddr.exit

if.then.i:                                        ; preds = %if.end17
  %family3.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %loc, i32 0, i32 1
  %37 = ptrtoint ptr %family3.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %family3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %38)
  %cmp5.i = icmp eq i16 %38, 2
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %39 = getelementptr inbounds %struct.mptcp_addr_info, ptr %loc, i32 0, i32 3
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %sin_addr.i, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then.i
  %43 = getelementptr inbounds %struct.mptcp_addr_info, ptr %loc, i32 0, i32 3
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %arrayidx2.i.i = getelementptr %struct.mptcp_addr_info, ptr %loc, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %47, %45
  %arrayidx4.i.i = getelementptr %struct.mptcp_addr_info, ptr %loc, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %49, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then8.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.mptcp_addr_info, ptr %loc, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %sin_addr9.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %52 = ptrtoint ptr %sin_addr9.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %sin_addr9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.else.i.if.end10.i_crit_edge, %if.then7.i
  %port.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %loc, i32 0, i32 2
  %53 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %port.i, align 4
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %55 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %sin_port.i, align 2
  br label %mptcp_info2sockaddr.exit

if.then16.i:                                      ; preds = %if.end17
  %family17.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %loc, i32 0, i32 1
  %56 = ptrtoint ptr %family17.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %family17.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %57)
  %cmp19.i = icmp eq i16 %57, 2
  br i1 %cmp19.i, label %if.then21.i, label %if.else23.i

if.then21.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = getelementptr inbounds %struct.mptcp_addr_info, ptr %loc, i32 0, i32 3
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %arrayidx2.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 65535, ptr %arrayidx2.i.i.i, align 4
  %arrayidx1.i1.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx1.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %arrayidx1.i1.i.i.i, align 4
  br label %if.end25.i

if.else23.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  %sin6_addr24.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %63 = getelementptr inbounds %struct.mptcp_addr_info, ptr %loc, i32 0, i32 3
  %64 = call ptr @memcpy(ptr %sin6_addr24.i, ptr %63, i32 16)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else23.i, %if.then21.i
  %port26.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %loc, i32 0, i32 2
  %65 = ptrtoint ptr %port26.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %port26.i, align 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %67 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %sin6_port.i, align 2
  br label %mptcp_info2sockaddr.exit

mptcp_info2sockaddr.exit:                         ; preds = %if.end25.i, %if.end10.i, %if.end17.mptcp_info2sockaddr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %33)
  %cmp24 = icmp eq i16 %33, 10
  %spec.store.select = select i1 %cmp24, i32 28, i32 16
  call void @mptcp_sockopt_sync(ptr noundef %sk, ptr noundef %16) #13
  %68 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ifindex, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 6
  %70 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %skc_bound_dev_if, align 4
  %call29 = call i32 @kernel_bind(ptr noundef %14, ptr noundef nonnull %addr, i32 noundef %spec.store.select) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %mptcp_info2sockaddr.exit.failed_crit_edge

mptcp_info2sockaddr.exit.failed_crit_edge:        ; preds = %mptcp_info2sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed

if.end32:                                         ; preds = %mptcp_info2sockaddr.exit
  %71 = ptrtoint ptr %remote_key20 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %remote_key20, align 8
  call void @mptcp_crypto_key_sha(i64 noundef %72, ptr noundef nonnull %remote_token, ptr noundef null) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mptcp_subflow_connect.__UNIQUE_ID_ddebug740, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mptcp_subflow_connect, %if.then40)) #13
          to label %do.end43 [label %if.then40], !srcloc !213

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %remote_token to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %remote_token, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__mptcp_subflow_connect.__UNIQUE_ID_ddebug740, ptr noundef nonnull @.str.10, ptr noundef %sk, i32 noundef %74, i32 noundef %local_id.0, i32 noundef %conv) #13
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %if.end32
  %75 = ptrtoint ptr %remote_token to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %remote_token, align 4
  %remote_token44 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 18
  %77 = ptrtoint ptr %remote_token44 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %remote_token44, align 4
  %conv45 = trunc i32 %local_id.0 to i8
  %local_id46 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 20
  %78 = ptrtoint ptr %local_id46 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv45, ptr %local_id46, align 4
  %remote_id48 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 21
  %79 = ptrtoint ptr %remote_id48 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %2, ptr %remote_id48, align 1
  %request_join = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 13
  %80 = ptrtoint ptr %request_join to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load = load i32, ptr %request_join, align 8
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags, align 1
  %83 = lshr i8 %82, 2
  %84 = and i8 %83, 1
  %bf.value = zext i8 %84 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 29
  %bf.set = and i32 %bf.load, -1610612737
  %bf.clear56 = or i32 %bf.set, 1073741824
  %bf.set57 = or i32 %bf.shl, %bf.clear56
  store i32 %bf.set57, ptr %request_join, align 8
  %85 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %skc_family, align 8
  %87 = call ptr @memset(ptr %addr, i32 0, i32 128)
  %88 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %86, ptr %addr, align 4
  %89 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %86, label %do.end43.mptcp_info2sockaddr.exit159_crit_edge [
    i16 2, label %if.then.i131
    i16 10, label %if.then16.i149
  ]

do.end43.mptcp_info2sockaddr.exit159_crit_edge:   ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_info2sockaddr.exit159

if.then.i131:                                     ; preds = %do.end43
  %family3.i129 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 1
  %90 = ptrtoint ptr %family3.i129 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %family3.i129, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %91)
  %cmp5.i130 = icmp eq i16 %91, 2
  br i1 %cmp5.i130, label %if.then7.i133, label %if.else.i140

if.then7.i133:                                    ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #15
  %sin_addr.i132 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %92 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %95 = ptrtoint ptr %sin_addr.i132 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %sin_addr.i132, align 4
  br label %if.end10.i146

if.else.i140:                                     ; preds = %if.then.i131
  %96 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %arrayidx2.i.i134 = getelementptr %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx2.i.i134 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx2.i.i134, align 4
  %or.i.i135 = or i32 %100, %98
  %arrayidx4.i.i136 = getelementptr %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %101 = ptrtoint ptr %arrayidx4.i.i136 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx4.i.i136, align 4
  %xor.i.i137 = xor i32 %102, 65535
  %or5.i.i138 = or i32 %or.i.i135, %xor.i.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i138)
  %cmp.i.i139 = icmp eq i32 %or5.i.i138, 0
  br i1 %cmp.i.i139, label %if.then8.i143, label %if.else.i140.if.end10.i146_crit_edge

if.else.i140.if.end10.i146_crit_edge:             ; preds = %if.else.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i146

if.then8.i143:                                    ; preds = %if.else.i140
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i141 = getelementptr %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %103 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i141, align 4
  %sin_addr9.i142 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %105 = ptrtoint ptr %sin_addr9.i142 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %sin_addr9.i142, align 4
  br label %if.end10.i146

if.end10.i146:                                    ; preds = %if.then8.i143, %if.else.i140.if.end10.i146_crit_edge, %if.then7.i133
  %port.i144 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 2
  %106 = ptrtoint ptr %port.i144 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %port.i144, align 4
  %sin_port.i145 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %108 = ptrtoint ptr %sin_port.i145 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %sin_port.i145, align 2
  br label %mptcp_info2sockaddr.exit159

if.then16.i149:                                   ; preds = %do.end43
  %family17.i147 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 1
  %109 = ptrtoint ptr %family17.i147 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %family17.i147, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %110)
  %cmp19.i148 = icmp eq i16 %110, 2
  br i1 %cmp19.i148, label %if.then21.i153, label %if.else23.i155

if.then21.i153:                                   ; preds = %if.then16.i149
  call void @__sanitizer_cov_trace_pc() #15
  %111 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %arrayidx2.i.i.i151 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %114 = ptrtoint ptr %arrayidx2.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 65535, ptr %arrayidx2.i.i.i151, align 4
  %arrayidx1.i1.i.i.i152 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %115 = ptrtoint ptr %arrayidx1.i1.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %113, ptr %arrayidx1.i1.i.i.i152, align 4
  br label %if.end25.i158

if.else23.i155:                                   ; preds = %if.then16.i149
  call void @__sanitizer_cov_trace_pc() #15
  %sin6_addr24.i154 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %116 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3
  %117 = call ptr @memcpy(ptr %sin6_addr24.i154, ptr %116, i32 16)
  br label %if.end25.i158

if.end25.i158:                                    ; preds = %if.else23.i155, %if.then21.i153
  %port26.i156 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 2
  %118 = ptrtoint ptr %port26.i156 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %port26.i156, align 4
  %sin6_port.i157 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %120 = ptrtoint ptr %sin6_port.i157 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %sin6_port.i157, align 2
  br label %mptcp_info2sockaddr.exit159

mptcp_info2sockaddr.exit159:                      ; preds = %if.end25.i158, %if.end10.i146, %do.end43.mptcp_info2sockaddr.exit159_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !207
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %mptcp_info2sockaddr.exit159.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !208

mptcp_info2sockaddr.exit159.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %mptcp_info2sockaddr.exit159
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %mptcp_info2sockaddr.exit159
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %122 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %.not.i.i.i.i = icmp sgt i32 %122, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !209

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %mptcp_info2sockaddr.exit159.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %mptcp_info2sockaddr.exit159.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %prev.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34, i32 1
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef %124, ptr noundef %conn_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %sock_hold.exit.list_add_tail.exit_crit_edge

sock_hold.exit.list_add_tail.exit_crit_edge:      ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %18, ptr %prev.i, align 4
  %126 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %conn_list, ptr %18, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %127 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev3.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %18, ptr %124, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sock_hold.exit.list_add_tail.exit_crit_edge
  %129 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sf, align 4
  %call60 = call i32 @kernel_connect(ptr noundef %130, ptr noundef nonnull %addr, i32 noundef %spec.store.select, i32 noundef 2048) #13
  %131 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call60, label %failed_unlink [
    i32 0, label %list_add_tail.exit.if.end65_crit_edge
    i32 -115, label %list_add_tail.exit.if.end65_crit_edge168
  ]

list_add_tail.exit.if.end65_crit_edge168:         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

list_add_tail.exit.if.end65_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end65:                                         ; preds = %list_add_tail.exit.if.end65_crit_edge, %list_add_tail.exit.if.end65_crit_edge168
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %132 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sk_socket, align 8
  call void @mptcp_sock_graft(ptr noundef %16, ptr noundef %133) #13
  %vfs_inode.i = getelementptr inbounds %struct.socket_alloc, ptr %130, i32 0, i32 1
  call void @iput(ptr noundef %vfs_inode.i) #13
  br label %cleanup

failed_unlink:                                    ; preds = %list_add_tail.exit
  %call.i.i160 = call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #13
  br i1 %call.i.i160, label %if.end.i.i161, label %failed_unlink.list_del.exit_crit_edge

failed_unlink.list_del.exit_crit_edge:            ; preds = %failed_unlink
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i161:                                    ; preds = %failed_unlink
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i, align 4
  %136 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i161, %failed_unlink.list_del.exit_crit_edge
  %140 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i162 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i162 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i162, align 4
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 5
  %142 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tcp_sock.i, align 8
  %skc_refcnt.i163 = getelementptr inbounds %struct.sock_common, ptr %143, i32 0, i32 19
  %call.i.i.i.i.i.i164 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i163, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i163, i32 1, i32 3, i32 1) #13
  %144 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i163, ptr %skc_refcnt.i163, i32 1, ptr elementtype(i32) %skc_refcnt.i163) #13, !srcloc !211
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i166, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i165 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i165, label %if.end5.i.i.i.i.failed_crit_edge, label %if.then10.i.i.i.i, !prof !209

if.end5.i.i.i.i.failed_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i163, i32 noundef 3) #13
  br label %failed

if.then.i166:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  call void @sk_free(ptr noundef %143) #13
  br label %failed

failed:                                           ; preds = %if.then.i166, %if.then10.i.i.i.i, %if.end5.i.i.i.i.failed_crit_edge, %mptcp_info2sockaddr.exit.failed_crit_edge, %if.then12.failed_crit_edge
  %err.0 = phi i32 [ %call29, %mptcp_info2sockaddr.exit.failed_crit_edge ], [ %call13, %if.then12.failed_crit_edge ], [ %call60, %if.end5.i.i.i.i.failed_crit_edge ], [ %call60, %if.then10.i.i.i.i ], [ %call60, %if.then.i166 ]
  %disposable = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 13
  %145 = ptrtoint ptr %disposable to i32
  call void @__asan_load4_noabort(i32 %145)
  %bf.load69 = load i32, ptr %disposable, align 8
  %bf.set71 = or i32 %bf.load69, 8192
  store i32 %bf.set71, ptr %disposable, align 8
  %146 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sf, align 4
  call void @sock_release(ptr noundef %147) #13
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end65, %if.end.cleanup_crit_edge, %mptcp_is_fully_established.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %failed ], [ %call60, %if.end65 ], [ -107, %mptcp_is_fully_established.exit.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -107, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifindex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_token) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sf) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_subflow_create_socket(ptr noundef %sk, ptr nocapture noundef writeonly %new_sock) local_unnamed_addr #0 align 64 {
entry:
  %sf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sf) #13
  %2 = ptrtoint ptr %sf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sf, align 4, !annotation !223
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %3 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !208

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %5 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skc_family, align 8
  %conv = zext i16 %6 to i32
  %call4 = call i32 @sock_create_kern(ptr noundef %1, i32 noundef %conv, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %sf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sf, align 4
  %sk8 = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %sk8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk8, align 16
  call void @lock_sock_nested(ptr noundef %10, i32 noundef 0) #13
  %11 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sf, align 4
  %sk9 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %sk9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk9, align 16
  %sk_cgrp_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 74
  %sk_cgrp_data1.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 74
  %15 = ptrtoint ptr %sk_cgrp_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk_cgrp_data.i, align 4
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kn.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %id.i.i, align 8
  %21 = ptrtoint ptr %sk_cgrp_data1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk_cgrp_data1.i, align 4
  %kn.i18.i = getelementptr inbounds %struct.cgroup, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %kn.i18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kn.i18.i, align 8
  %id.i19.i = getelementptr inbounds %struct.kernfs_node, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %id.i19.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %id.i19.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %26)
  %cmp.not.i = icmp eq i64 %20, %26
  br i1 %cmp.not.i, label %if.end7.mptcp_attach_cgroup.exit_crit_edge, label %if.then.i

if.end7.mptcp_attach_cgroup.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_attach_cgroup.exit

if.then.i:                                        ; preds = %if.end7
  %sk_memcg.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 75
  %27 = ptrtoint ptr %sk_memcg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_memcg.i, align 8
  call void @mem_cgroup_sk_free(ptr noundef %14) #13
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.if.then6.i_crit_edge

land.lhs.true.i.if.then6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %28, i32 0, i32 2
  %31 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !224
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i.i, label %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i
  %call1.i.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %35 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %refcnt.i.i, align 4
  %and.i.i.i.i.i = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i1.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i.i, label %do.body1.i.i.i.i, label %if.else.i.i.i.i64, !prof !209

do.body1.i.i.i.i:                                 ; preds = %rcu_read_lock.exit.i.i.i.i
  %37 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %38 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i2.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i2.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i62 = add i32 %43, %36
  %44 = inttoptr i32 %add.i.i.i.i62 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add15.i.i.i.i = add i32 %46, 1
  store i32 %add15.i.i.i.i, ptr %44, align 4
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i.i.i.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then29.i.i.i.i, label %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge, !prof !208

do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end31.i.i.i.i

do.end31.i.i.i.i:                                 ; preds = %if.then29.i.i.i.i, %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #13, !srcloc !227
  br label %if.end39.i.i.i.i

if.else.i.i.i.i64:                                ; preds = %rcu_read_lock.exit.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %28, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef %49, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !228
  call void @llvm.prefetch.p0(ptr %49, i32 1, i32 3, i32 1) #13
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 0, i32 1, ptr elementtype(i32) %49) #13, !srcloc !229
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i64.atomic_long_add_unless.exit.i.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i.i

if.else.i.i.i.i64.atomic_long_add_unless.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %atomic_long_add_unless.exit.i.i.i.i

do.end11.i.i.i.i.i.i.i.i:                         ; preds = %if.else.i.i.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !230
  br label %atomic_long_add_unless.exit.i.i.i.i

atomic_long_add_unless.exit.i.i.i.i:              ; preds = %do.end11.i.i.i.i.i.i.i.i, %if.else.i.i.i.i64.atomic_long_add_unless.exit.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br label %if.end39.i.i.i.i

if.end39.i.i.i.i:                                 ; preds = %atomic_long_add_unless.exit.i.i.i.i, %do.end31.i.i.i.i
  %ret.0.off0.i.i.i.i = phi i1 [ true, %do.end31.i.i.i.i ], [ %cmp.i.i.i.i.i.i.i, %atomic_long_add_unless.exit.i.i.i.i ]
  %call.i3.i.i.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i3.i.i.i.i, label %if.end39.i.i.i.i.css_tryget.exit.i_crit_edge, label %land.lhs.true.i6.i.i.i.i

if.end39.i.i.i.i.css_tryget.exit.i_crit_edge:     ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %css_tryget.exit.i

land.lhs.true.i6.i.i.i.i:                         ; preds = %if.end39.i.i.i.i
  %call1.i4.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.css_tryget.exit.i_crit_edge, label %land.lhs.true2.i8.i.i.i.i

land.lhs.true.i6.i.i.i.i.css_tryget.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %css_tryget.exit.i

land.lhs.true2.i8.i.i.i.i:                        ; preds = %land.lhs.true.i6.i.i.i.i
  %.b4.i7.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.css_tryget.exit.i_crit_edge, label %if.then.i9.i.i.i.i

land.lhs.true2.i8.i.i.i.i.css_tryget.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %css_tryget.exit.i

if.then.i9.i.i.i.i:                               ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #13
  br label %css_tryget.exit.i

css_tryget.exit.i:                                ; preds = %if.then.i9.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.css_tryget.exit.i_crit_edge, %land.lhs.true.i6.i.i.i.i.css_tryget.exit.i_crit_edge, %if.end39.i.i.i.i.css_tryget.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !231
  %51 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i.i10.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %ret.0.off0.i.i.i.i, label %css_tryget.exit.i.if.then6.i_crit_edge, label %css_tryget.exit.i.if.end.i_crit_edge

css_tryget.exit.i.if.end.i_crit_edge:             ; preds = %css_tryget.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

css_tryget.exit.i.if.then6.i_crit_edge:           ; preds = %css_tryget.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

if.then6.i:                                       ; preds = %css_tryget.exit.i.if.then6.i_crit_edge, %land.lhs.true.i.if.then6.i_crit_edge
  %sk_memcg7.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 75
  %55 = ptrtoint ptr %sk_memcg7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %28, ptr %sk_memcg7.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %css_tryget.exit.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  call void @cgroup_sk_free(ptr noundef %sk_cgrp_data1.i) #13
  %56 = call ptr @memcpy(ptr %sk_cgrp_data1.i, ptr %sk_cgrp_data.i, i32 12)
  call void @cgroup_sk_clone(ptr noundef %sk_cgrp_data1.i) #13
  br label %mptcp_attach_cgroup.exit

mptcp_attach_cgroup.exit:                         ; preds = %if.end.i, %if.end7.mptcp_attach_cgroup.exit_crit_edge
  %57 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sf, align 4
  %sk10 = getelementptr inbounds %struct.socket, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %sk10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sk10, align 16
  %skc_net_refcnt = getelementptr inbounds %struct.sock_common, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %skc_net_refcnt to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %skc_net_refcnt, align 1
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %skc_net_refcnt, align 1
  %62 = load ptr, ptr %sk10, align 16
  %ns_tracker = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 86
  %count.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !207
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %mptcp_attach_cgroup.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !208

mptcp_attach_cgroup.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %mptcp_attach_cgroup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %mptcp_attach_cgroup.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %64 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %.not.i.i.i.i.i = icmp sgt i32 %64, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_net_track.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !209

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_net_track.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_net_track.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %mptcp_attach_cgroup.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %mptcp_attach_cgroup.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_net_track.exit

get_net_track.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_net_track.exit_crit_edge
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %ns_tracker, i32 noundef 3264) #13
  %65 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 29, i32 2
  %66 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prot_inuse.i, align 8
  %68 = ptrtoint ptr %67 to i32
  %69 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i65 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i65 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %74, %68
  %75 = inttoptr i32 %add.i to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add13.i = add i32 %77, 1
  store i32 %add13.i, ptr %75, align 4
  %78 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i66 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i66, label %if.then.i67, label %get_net_track.exit.sock_inuse_add.exit_crit_edge, !prof !208

get_net_track.exit.sock_inuse_add.exit_crit_edge: ; preds = %get_net_track.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_inuse_add.exit

if.then.i67:                                      ; preds = %get_net_track.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %sock_inuse_add.exit

sock_inuse_add.exit:                              ; preds = %if.then.i67, %get_net_track.exit.sock_inuse_add.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #13, !srcloc !227
  %79 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sf, align 4
  %sk14 = getelementptr inbounds %struct.socket, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %sk14 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sk14, align 16
  %call15 = call i32 @tcp_set_ulp(ptr noundef %82, ptr noundef nonnull @.str) #13
  %83 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sf, align 4
  %sk16 = getelementptr inbounds %struct.socket, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %sk16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sk16, align 16
  call void @release_sock(ptr noundef %86) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %sock_inuse_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sf, align 4
  call void @sock_release(ptr noundef %88) #13
  br label %cleanup

if.end19:                                         ; preds = %sock_inuse_add.exit
  %89 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sk_socket, align 8
  %i_ino = getelementptr inbounds %struct.socket_alloc, ptr %90, i32 0, i32 1, i32 11
  %91 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_ino, align 8
  %93 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sf, align 4
  %i_ino23 = getelementptr inbounds %struct.socket_alloc, ptr %94, i32 0, i32 1, i32 11
  %95 = ptrtoint ptr %i_ino23 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %92, ptr %i_ino23, align 8
  %i_uid = getelementptr inbounds %struct.socket_alloc, ptr %94, i32 0, i32 1, i32 2
  %96 = load ptr, ptr %sk_socket, align 8
  %i_uid27 = getelementptr inbounds %struct.socket_alloc, ptr %96, i32 0, i32 1, i32 2
  %97 = ptrtoint ptr %i_uid27 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %i_uid27, align 4
  %99 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.socket_alloc, ptr %94, i32 0, i32 1, i32 3
  %100 = load ptr, ptr %sk_socket, align 8
  %i_gid31 = getelementptr inbounds %struct.socket_alloc, ptr %100, i32 0, i32 1, i32 3
  %101 = ptrtoint ptr %i_gid31 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %i_gid31, align 8
  %103 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %i_gid, align 8
  %sk32 = getelementptr inbounds %struct.socket, ptr %94, i32 0, i32 4
  %104 = ptrtoint ptr %sk32 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sk32, align 16
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %105, i32 0, i32 13
  %106 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %icsk_ulp_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_subflow_create_socket.__UNIQUE_ID_ddebug741, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_subflow_create_socket, %if.then42)) #13
          to label %do.end [label %if.then42], !srcloc !213

if.then42:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_subflow_create_socket.__UNIQUE_ID_ddebug741, ptr noundef nonnull @.str.13, ptr noundef %107) #13
  br label %do.end

do.end:                                           ; preds = %if.then42, %if.end19
  %108 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sf, align 4
  %110 = ptrtoint ptr %new_sock to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %new_sock, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !207
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !208

do.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %112 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %.not.i.i.i.i = icmp sgt i32 %112, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !209

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %107, i32 0, i32 6
  %113 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %sk, ptr %conn, align 4
  %114 = ptrtoint ptr %sf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sf, align 4
  %sk44 = getelementptr inbounds %struct.socket, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %sk44 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sk44, align 16
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %skc_prot.i, align 8
  %cmp.i = icmp eq ptr %119, @tcpv6_prot
  %tcpv6_prot_override.tcp_prot_override.i = select i1 %cmp.i, ptr @tcpv6_prot_override, ptr @tcp_prot_override
  store ptr %tcpv6_prot_override.tcp_prot_override.i, ptr %skc_prot.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %sock_hold.exit, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then18 ], [ 0, %sock_hold.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sf) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_get_local_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_get_flags_and_ifindex_by_id(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_sockopt_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_crypto_key_sha(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_ulp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_subflow_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @mptcp_subflow_request_sock_ops, ptr @tcp_request_sock_ops, i32 36)
  store i32 320, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @mptcp_subflow_request_sock_ops, i32 0, i32 1), align 4
  store ptr @.str.43, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @mptcp_subflow_request_sock_ops, i32 0, i32 3), align 4
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.43, i32 noundef 320, i32 noundef 0, i32 noundef 67633152, ptr noundef null) #13
  store ptr %call.i, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @mptcp_subflow_request_sock_ops, i32 0, i32 2), align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #16
  unreachable

if.end:                                           ; preds = %entry
  store ptr @subflow_req_destructor, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @mptcp_subflow_request_sock_ops, i32 0, i32 7), align 4
  %1 = call ptr @memcpy(ptr @subflow_request_sock_ipv4_ops, ptr @tcp_request_sock_ipv4_ops, i32 32)
  store ptr @subflow_v4_route_req, ptr getelementptr inbounds (%struct.tcp_request_sock_ops, ptr @subflow_request_sock_ipv4_ops, i32 0, i32 4), align 4
  %2 = call ptr @memcpy(ptr @subflow_specific, ptr @ipv4_specific, i32 48)
  store ptr @subflow_v4_conn_request, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_specific, i32 0, i32 4), align 4
  store ptr @subflow_syn_recv_sock, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_specific, i32 0, i32 5), align 4
  store ptr @subflow_finish_connect, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_specific, i32 0, i32 3), align 4
  %3 = call ptr @memcpy(ptr @tcp_prot_override, ptr @tcp_prot, i32 252)
  store ptr @tcp_release_cb_override, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot_override, i32 0, i32 19), align 4
  %4 = call ptr @memcpy(ptr @subflow_request_sock_ipv6_ops, ptr @tcp_request_sock_ipv6_ops, i32 32)
  store ptr @subflow_v6_route_req, ptr getelementptr inbounds (%struct.tcp_request_sock_ops, ptr @subflow_request_sock_ipv6_ops, i32 0, i32 4), align 4
  %5 = call ptr @memcpy(ptr @subflow_v6_specific, ptr @ipv6_specific, i32 48)
  store ptr @subflow_v6_conn_request, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_v6_specific, i32 0, i32 4), align 4
  store ptr @subflow_syn_recv_sock, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_v6_specific, i32 0, i32 5), align 4
  store ptr @subflow_finish_connect, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_v6_specific, i32 0, i32 3), align 4
  %6 = call ptr @memcpy(ptr @subflow_v6m_specific, ptr @subflow_v6_specific, i32 44)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv4_specific to i32))
  %7 = load ptr, ptr @ipv4_specific, align 4
  store ptr %7, ptr @subflow_v6m_specific, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @ipv4_specific, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @ipv4_specific, i32 0, i32 1), align 4
  store ptr %8, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_v6m_specific, i32 0, i32 1), align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @ipv4_specific, i32 0, i32 6) to i32))
  %9 = load i16, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @ipv4_specific, i32 0, i32 6), align 4
  store i16 %9, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_v6m_specific, i32 0, i32 6), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @ipv4_specific, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @ipv4_specific, i32 0, i32 12), align 4
  store ptr %10, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_v6m_specific, i32 0, i32 12), align 4
  store i16 0, ptr getelementptr inbounds (%struct.inet_connection_sock_af_ops, ptr @subflow_v6m_specific, i32 0, i32 7), align 2
  %11 = call ptr @memcpy(ptr @tcpv6_prot_override, ptr @tcpv6_prot, i32 252)
  store ptr @tcp_release_cb_override, ptr getelementptr inbounds (%struct.proto, ptr @tcpv6_prot_override, i32 0, i32 19), align 4
  tail call void @mptcp_diag_subflow_init(ptr noundef nonnull @subflow_ulp_ops) #13
  %call1 = tail call i32 @tcp_register_ulp(ptr noundef nonnull @subflow_ulp_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.15) #16
  unreachable

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @subflow_v4_route_req(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_mptcp = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %is_mptcp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %is_mptcp, align 1
  %mp_capable.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %mp_capable.i, align 8
  %bf.clear2.i = and i8 %bf.load.i, 63
  store i8 %bf.clear2.i, ptr %mp_capable.i, align 8
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i.i, align 4
  %call5.i = tail call i32 @mptcp_is_checksum_enabled(ptr noundef %3) #13
  %4 = trunc i32 %call5.i to i8
  %5 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load6.i = load i8, ptr %mp_capable.i, align 8
  %bf.value.i = shl i8 %4, 4
  %bf.shl.i = and i8 %bf.value.i, 16
  %bf.clear7.i = and i8 %bf.load6.i, -17
  %bf.set8.i = or i8 %bf.shl.i, %bf.clear7.i
  store i8 %bf.set8.i, ptr %mp_capable.i, align 8
  %6 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i.i, align 4
  %call10.i = tail call i32 @mptcp_allow_join_id0(ptr noundef %7) #13
  %8 = trunc i32 %call10.i to i8
  %9 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load12.i = load i8, ptr %mp_capable.i, align 8
  %bf.value13.i = shl i8 %8, 3
  %bf.shl14.i = and i8 %bf.value13.i, 8
  %bf.clear15.i = and i8 %bf.load12.i, -9
  %bf.set16.i = or i8 %bf.shl14.i, %bf.clear15.i
  store i8 %bf.set16.i, ptr %mp_capable.i, align 8
  %msk.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %msk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %msk.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tcp_request_sock_ops, ptr @tcp_request_sock_ipv4_ops, i32 0, i32 4) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.tcp_request_sock_ops, ptr @tcp_request_sock_ipv4_ops, i32 0, i32 4), align 4
  %call1 = tail call ptr %12(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl, ptr noundef %req) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @subflow_check_req(ptr noundef %req, ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @dst_release(ptr noundef nonnull %call1) #13
  %syncookie = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %syncookie to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %syncookie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.request_sock_ops, ptr @tcp_request_sock_ops, i32 0, i32 6) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @tcp_request_sock_ops, i32 0, i32 6), align 4
  tail call void %14(ptr noundef %sk, ptr noundef %skb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ null, %if.then6 ], [ null, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subflow_v4_conn_request(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_v4_conn_request.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_v4_conn_request, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_v4_conn_request.__UNIQUE_ID_ddebug705, ptr noundef nonnull @.str.13, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

do.end.skb_rtable.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %do.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !208

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %do.end.skb_rtable.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i.i to ptr
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rt_flags, align 4
  %and = and i32 %9, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %drop

if.end7:                                          ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @tcp_conn_request(ptr noundef nonnull @mptcp_subflow_request_sock_ops, ptr noundef nonnull @subflow_request_sock_ipv4_ops, ptr noundef %sk, ptr noundef %skb) #13
  br label %cleanup

drop:                                             ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sk_drops.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_drops.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i, ptr %sk_drops.i, i32 1, ptr elementtype(i32) %sk_drops.i) #13, !srcloc !232
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i.i, align 4
  %net_statistics.i = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 30, i32 3
  %13 = ptrtoint ptr %net_statistics.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_statistics.i, align 4
  %arrayidx.i = getelementptr [126 x i32], ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %arrayidx.i to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i12 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i12 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx8.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8.i, align 4
  %add.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add9.i = add i32 %24, 1
  store i32 %add9.i, ptr %22, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end7
  %retval.0 = phi i32 [ 0, %drop ], [ %call8, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @subflow_syn_recv_sock(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef %dst, ptr noundef %req_unhash, ptr noundef %own_req) #0 align 64 {
entry:
  %msg.i.i = alloca [8 x i8], align 4
  %hmac.i = alloca [32 x i8], align 1
  %mp_opt = alloca %struct.mptcp_options_received, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mp_opt) #13
  %2 = call ptr @memset(ptr %mp_opt, i32 255, i32 136)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_syn_recv_sock.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_syn_recv_sock, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_syn_recv_sock.__UNIQUE_ID_ddebug712, ptr noundef nonnull @.str.59, ptr noundef %1, ptr noundef %req, ptr noundef %4) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %suboptions = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %5 = ptrtoint ptr %suboptions to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %suboptions, align 8
  %is_mptcp = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %is_mptcp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_mptcp, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %do.end.create_child_crit_edge, label %if.end17

do.end.create_child_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_child

if.end17:                                         ; preds = %do.end
  %mp_join = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %mp_join to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %mp_join, align 8
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7 = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @mptcp_get_options(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %mp_opt) #13
  %10 = ptrtoint ptr %suboptions to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %suboptions, align 8
  %12 = and i16 %11, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool25.not = icmp eq i16 %12, 0
  br i1 %tobool25.not, label %if.then22.create_child_crit_edge, label %if.end27

if.then22.create_child_crit_edge:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_child

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %conn28 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %conn28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn28, align 4
  %call29 = call ptr @mptcp_sk_clone(ptr noundef %14, ptr noundef nonnull %mp_opt, ptr noundef %req) #13
  %tobool30.not = icmp eq ptr %call29, null
  br label %create_child

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool38.not = icmp eq i8 %9, 0
  br i1 %tobool38.not, label %if.else.create_child_crit_edge, label %if.then39

if.else.create_child_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_child

if.then39:                                        ; preds = %if.else
  call void @mptcp_get_options(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %mp_opt) #13
  %15 = ptrtoint ptr %suboptions to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %suboptions, align 8
  %17 = and i16 %16, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool43.not = icmp eq i16 %17, 0
  br i1 %tobool43.not, label %if.then39.if.then47_crit_edge, label %lor.lhs.false

if.then39.if.then47_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

lor.lhs.false:                                    ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hmac.i) #13
  %msk1.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 11
  %18 = call ptr @memset(ptr %hmac.i, i32 255, i32 32)
  %19 = ptrtoint ptr %msk1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msk1.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %subflow_hmac_valid.exit.thread, label %subflow_hmac_valid.exit

subflow_hmac_valid.exit.thread:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac.i) #13
  br label %if.then47

subflow_hmac_valid.exit:                          ; preds = %lor.lhs.false
  %remote_key.i = getelementptr inbounds %struct.mptcp_sock, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %remote_key.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %remote_key.i, align 8
  %local_key.i = getelementptr inbounds %struct.mptcp_sock, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %local_key.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %local_key.i, align 8
  %remote_nonce.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 10
  %25 = ptrtoint ptr %remote_nonce.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %remote_nonce.i, align 4
  %local_nonce.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 9
  %27 = ptrtoint ptr %local_nonce.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %local_nonce.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i.i) #13
  %29 = getelementptr inbounds [8 x i8], ptr %msg.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %msg.i.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %29, align 4
  call void @mptcp_crypto_hmac_sha(i64 noundef %22, i64 noundef %24, ptr noundef nonnull %msg.i.i, i32 noundef 8, ptr noundef nonnull %hmac.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i.i) #13
  %hmac3.i = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 13
  %call.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %hmac.i, ptr noundef %hmac3.i, i32 noundef 20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac.i) #13
  br i1 %cmp.not.i.not.i, label %lor.lhs.false45, label %subflow_hmac_valid.exit.if.then47_crit_edge

subflow_hmac_valid.exit.if.then47_crit_edge:      ; preds = %subflow_hmac_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

lor.lhs.false45:                                  ; preds = %subflow_hmac_valid.exit
  %32 = ptrtoint ptr %msk1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msk1.i, align 8
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load volatile i8, ptr %skc_state.i.i.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp.i.i = icmp eq i8 %35, 1
  br i1 %cmp.i.i, label %mptcp_is_fully_established.exit.i, label %lor.lhs.false45.if.then47_crit_edge

lor.lhs.false45.if.then47_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

mptcp_is_fully_established.exit.i:                ; preds = %lor.lhs.false45
  %fully_established.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %33, i32 0, i32 23
  %36 = ptrtoint ptr %fully_established.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load volatile i8, ptr %fully_established.i.i, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.not.i = icmp eq i8 %37, 0
  br i1 %tobool.i.not.i, label %mptcp_is_fully_established.exit.i.if.then47_crit_edge, label %mptcp_can_accept_new_subflow.exit

mptcp_is_fully_established.exit.i.if.then47_crit_edge: ; preds = %mptcp_is_fully_established.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

mptcp_can_accept_new_subflow.exit:                ; preds = %mptcp_is_fully_established.exit.i
  %accept_subflow.i = getelementptr inbounds %struct.mptcp_sock, ptr %33, i32 0, i32 40, i32 8
  %38 = ptrtoint ptr %accept_subflow.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load volatile i8, ptr %accept_subflow.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.i.not = icmp eq i8 %39, 0
  br i1 %tobool.i.not, label %mptcp_can_accept_new_subflow.exit.if.then47_crit_edge, label %mptcp_can_accept_new_subflow.exit.create_child_crit_edge

mptcp_can_accept_new_subflow.exit.create_child_crit_edge: ; preds = %mptcp_can_accept_new_subflow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_child

mptcp_can_accept_new_subflow.exit.if.then47_crit_edge: ; preds = %mptcp_can_accept_new_subflow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.then47:                                        ; preds = %mptcp_can_accept_new_subflow.exit.if.then47_crit_edge, %mptcp_is_fully_established.exit.i.if.then47_crit_edge, %lor.lhs.false45.if.then47_crit_edge, %subflow_hmac_valid.exit.if.then47_crit_edge, %subflow_hmac_valid.exit.thread, %if.then39.if.then47_crit_edge
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 9
  %40 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i.i, align 4
  %mptcp_statistics.i.i = getelementptr inbounds %struct.net, ptr %41, i32 0, i32 30, i32 8
  %42 = ptrtoint ptr %mptcp_statistics.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mptcp_statistics.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.then47.create_child_crit_edge, label %do.body3.i.i, !prof !208

if.then47.create_child_crit_edge:                 ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_child

do.body3.i.i:                                     ; preds = %if.then47
  %44 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %45 = ptrtoint ptr %mptcp_statistics.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mptcp_statistics.i.i, align 4
  %arrayidx.i.i = getelementptr [43 x i32], ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  %48 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i.i, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx17.i.i, align 4
  %add.i.i = add i32 %53, %47
  %54 = inttoptr i32 %add.i.i to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add18.i.i = add i32 %56, 1
  store i32 %add18.i.i, ptr %54, align 4
  %57 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i.i = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool29.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then38.i.i, label %do.body3.i.i.do.end40.i.i_crit_edge, !prof !208

do.body3.i.i.do.end40.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i.i

if.then38.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end40.i.i

do.end40.i.i:                                     ; preds = %if.then38.i.i, %do.body3.i.i.do.end40.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #13, !srcloc !227
  br label %create_child

create_child:                                     ; preds = %do.end40.i.i, %if.then47.create_child_crit_edge, %mptcp_can_accept_new_subflow.exit.create_child_crit_edge, %if.else.create_child_crit_edge, %if.end27, %if.then22.create_child_crit_edge, %do.end.create_child_crit_edge
  %58 = phi i1 [ true, %mptcp_can_accept_new_subflow.exit.create_child_crit_edge ], [ %tobool7, %if.else.create_child_crit_edge ], [ %tobool7, %if.then22.create_child_crit_edge ], [ %tobool7, %if.end27 ], [ true, %if.then47.create_child_crit_edge ], [ true, %do.end40.i.i ], [ false, %do.end.create_child_crit_edge ]
  %new_msk.0 = phi ptr [ null, %mptcp_can_accept_new_subflow.exit.create_child_crit_edge ], [ null, %if.else.create_child_crit_edge ], [ null, %if.then22.create_child_crit_edge ], [ %call29, %if.end27 ], [ null, %if.then47.create_child_crit_edge ], [ null, %do.end40.i.i ], [ null, %do.end.create_child_crit_edge ]
  %fallback.0.off0 = phi i1 [ false, %mptcp_can_accept_new_subflow.exit.create_child_crit_edge ], [ false, %if.else.create_child_crit_edge ], [ true, %if.then22.create_child_crit_edge ], [ %tobool30.not, %if.end27 ], [ true, %if.then47.create_child_crit_edge ], [ true, %do.end40.i.i ], [ true, %do.end.create_child_crit_edge ]
  %icsk_af_ops = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %icsk_af_ops, align 8
  %syn_recv_sock = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %syn_recv_sock to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %syn_recv_sock, align 4
  %call51 = call ptr %62(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef %dst, ptr noundef %req_unhash, ptr noundef %own_req) #13
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %create_child.out_crit_edge, label %land.lhs.true

create_child.out_crit_edge:                       ; preds = %create_child
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true:                                    ; preds = %create_child
  %63 = ptrtoint ptr %own_req to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %own_req, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool53.not = icmp eq i8 %64, 0
  br i1 %tobool53.not, label %land.lhs.true.out_crit_edge, label %if.then55

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then55:                                        ; preds = %land.lhs.true
  %icsk_ulp_data.i325 = getelementptr inbounds %struct.inet_connection_sock, ptr %call51, i32 0, i32 13
  %65 = ptrtoint ptr %icsk_ulp_data.i325 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %icsk_ulp_data.i325, align 8
  %drop_req = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 5
  %67 = ptrtoint ptr %drop_req to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %drop_req, align 2
  %tobool58.not = icmp eq ptr %66, null
  %brmerge = select i1 %tobool58.not, i1 true, i1 %fallback.0.off0
  br i1 %brmerge, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.then55
  br i1 %58, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then62
  %call.i = call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 3) #13
  %tobool.not.i326 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i326, label %if.then64.dispose_child_crit_edge, label %if.then.i

if.then64.dispose_child_crit_edge:                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %dispose_child

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %68 = call ptr @memset(ptr %call.i, i32 0, i32 32)
  %reset_reason.i = getelementptr inbounds %struct.mptcp_ext, ptr %call.i, i32 0, i32 5
  %69 = ptrtoint ptr %reset_reason.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 16, ptr %reset_reason.i, align 8
  br label %dispose_child

if.end65:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @subflow_drop_ctx(ptr noundef nonnull %call51)
  br label %out

if.end66:                                         ; preds = %if.then55
  %setsockopt_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %setsockopt_seq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %setsockopt_seq, align 8
  %setsockopt_seq67 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %66, i32 0, i32 3
  %72 = ptrtoint ptr %setsockopt_seq67 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %setsockopt_seq67, align 8
  %mp_capable68 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %66, i32 0, i32 1, i32 0, i32 13
  %73 = ptrtoint ptr %mp_capable68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load69 = load i32, ptr %mp_capable68, align 8
  %74 = and i32 %bf.load69, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool72.not = icmp eq i32 %74, 0
  br i1 %tobool72.not, label %if.else96, label %if.then73

if.then73:                                        ; preds = %if.end66
  call void @inet_sk_state_store(ptr noundef %new_msk.0, i32 noundef 1) #13
  %first = getelementptr inbounds %struct.mptcp_sock, ptr %new_msk.0, i32 0, i32 39
  %75 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call51, ptr %first, align 8
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %new_msk.0, i32 0, i32 82
  %76 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @mptcp_sock_destruct, ptr %sk_destruct, align 4
  %77 = ptrtoint ptr %setsockopt_seq67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %setsockopt_seq67, align 8
  %setsockopt_seq86 = getelementptr inbounds %struct.mptcp_sock, ptr %new_msk.0, i32 0, i32 42
  %79 = ptrtoint ptr %setsockopt_seq86 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %setsockopt_seq86, align 8
  call void @mptcp_pm_new_connection(ptr noundef %new_msk.0, ptr noundef nonnull %call51, i32 noundef 1) #13
  call void @mptcp_token_accept(ptr noundef %req, ptr noundef %new_msk.0) #13
  %conn89 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %66, i32 0, i32 6
  %80 = ptrtoint ptr %conn89 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %new_msk.0, ptr %conn89, align 4
  %81 = ptrtoint ptr %suboptions to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %suboptions, align 8
  %83 = and i16 %82, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool93.not = icmp eq i16 %83, 0
  br i1 %tobool93.not, label %if.then73.land.lhs.true157_crit_edge, label %if.then94

if.then73.land.lhs.true157_crit_edge:             ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true157

if.then94:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %mp_opt to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %mp_opt, align 8
  %remote_key.i328 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %66, i32 0, i32 1, i32 0, i32 2
  %86 = ptrtoint ptr %remote_key.i328 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %remote_key.i328, align 8
  %87 = ptrtoint ptr %mp_capable68 to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load.i = load i32, ptr %mp_capable68, align 8
  %bf.set3.i = or i32 %bf.load.i, 67125248
  store i32 %bf.set3.i, ptr %mp_capable68, align 8
  %fully_established6.i = getelementptr inbounds %struct.mptcp_sock, ptr %new_msk.0, i32 0, i32 23
  %88 = ptrtoint ptr %fully_established6.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store volatile i8 1, ptr %fully_established6.i, align 2
  br label %land.lhs.true157

if.else96:                                        ; preds = %if.end66
  %89 = and i32 %bf.load69, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool101.not = icmp eq i32 %89, 0
  br i1 %tobool101.not, label %if.else96.out_crit_edge, label %if.then102

if.else96.out_crit_edge:                          ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then102:                                       ; preds = %if.else96
  %msk103 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 11
  %90 = ptrtoint ptr %msk103 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %msk103, align 8
  %tobool104.not = icmp eq ptr %91, null
  br i1 %tobool104.not, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.then102
  %call.i329 = call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 3) #13
  %tobool.not.i330 = icmp eq ptr %call.i329, null
  br i1 %tobool.not.i330, label %if.then105.dispose_child_crit_edge, label %if.then.i332

if.then105.dispose_child_crit_edge:               ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  br label %dispose_child

if.then.i332:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  %92 = call ptr @memset(ptr %call.i329, i32 0, i32 32)
  %reset_reason.i331 = getelementptr inbounds %struct.mptcp_ext, ptr %call.i329, i32 0, i32 5
  %93 = ptrtoint ptr %reset_reason.i331 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 48, ptr %reset_reason.i331, align 8
  br label %dispose_child

if.end106:                                        ; preds = %if.then102
  %94 = ptrtoint ptr %msk103 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %msk103, align 8
  %conn108 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %66, i32 0, i32 6
  %95 = ptrtoint ptr %conn108 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %91, ptr %conn108, align 4
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %96 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %inet_sport.i, align 8
  %inet_sport2.i = getelementptr inbounds %struct.inet_sock, ptr %91, i32 0, i32 6
  %98 = ptrtoint ptr %inet_sport2.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %inet_sport2.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %97, i16 %99)
  %cmp.i.not = icmp eq i16 %97, %99
  br i1 %cmp.i.not, label %if.end106.if.end135_crit_edge, label %do.body111

if.end106.if.end135_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

do.body111:                                       ; preds = %if.end106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_syn_recv_sock.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_syn_recv_sock, %if.then123)) #13
          to label %do.end131 [label %if.then123], !srcloc !213

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %inet_sport.i, align 8
  %conv125 = zext i16 %101 to i32
  %102 = ptrtoint ptr %inet_sport2.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %inet_sport2.i, align 8
  %conv128 = zext i16 %103 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_syn_recv_sock.__UNIQUE_ID_ddebug714, ptr noundef nonnull @.str.61, i32 noundef %conv125, i32 noundef %conv128) #13
  br label %do.end131

do.end131:                                        ; preds = %if.then123, %do.body111
  %call132 = call zeroext i1 @mptcp_pm_sport_in_anno_list(ptr noundef nonnull %91, ptr noundef %sk) #13
  br i1 %call132, label %if.end134, label %if.then133

if.then133:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @SUBFLOW_REQ_INC_STATS(ptr noundef %req, i32 noundef 32)
  br label %dispose_child

if.end134:                                        ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @SUBFLOW_REQ_INC_STATS(ptr noundef %req, i32 noundef 30)
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end106.if.end135_crit_edge
  %call136 = call zeroext i1 @mptcp_finish_join(ptr noundef nonnull %call51) #13
  br i1 %call136, label %cleanup, label %if.end135.dispose_child_crit_edge

if.end135.dispose_child_crit_edge:                ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  br label %dispose_child

cleanup:                                          ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @SUBFLOW_REQ_INC_STATS(ptr noundef %req, i32 noundef 13)
  %104 = ptrtoint ptr %drop_req to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %drop_req, align 2
  br label %out

out:                                              ; preds = %cleanup, %if.else96.out_crit_edge, %if.end65, %land.lhs.true.out_crit_edge, %create_child.out_crit_edge
  %tobool147.not = icmp eq ptr %new_msk.0, null
  br i1 %tobool147.not, label %out.if.end155_crit_edge, label %if.then154, !prof !209

out.if.end155_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

if.then154:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @inet_sk_state_store(ptr noundef nonnull %new_msk.0, i32 noundef 7) #13
  call void @sk_common_release(ptr noundef nonnull %new_msk.0) #13
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %out.if.end155_crit_edge
  br i1 %tobool52.not, label %if.end155.cleanup228_crit_edge, label %if.end155.land.lhs.true157_crit_edge

if.end155.land.lhs.true157_crit_edge:             ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true157

if.end155.cleanup228_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

land.lhs.true157:                                 ; preds = %if.end155.land.lhs.true157_crit_edge, %if.then94, %if.then73.land.lhs.true157_crit_edge
  %105 = ptrtoint ptr %own_req to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %own_req, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool158.not = icmp eq i8 %106, 0
  br i1 %tobool158.not, label %land.lhs.true157.cleanup228_crit_edge, label %land.lhs.true160

land.lhs.true157.cleanup228_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

land.lhs.true160:                                 ; preds = %land.lhs.true157
  %is_mptcp162 = getelementptr inbounds %struct.tcp_sock, ptr %call51, i32 0, i32 115
  %107 = ptrtoint ptr %is_mptcp162 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_mptcp162, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool163.not = icmp eq i8 %108, 0
  br i1 %tobool163.not, label %land.lhs.true160.cleanup228_crit_edge, label %land.rhs165

land.lhs.true160.cleanup228_crit_edge:            ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

land.rhs165:                                      ; preds = %land.lhs.true160
  %icsk_ulp_data.i335 = getelementptr inbounds %struct.inet_connection_sock, ptr %call51, i32 0, i32 13
  %109 = ptrtoint ptr %icsk_ulp_data.i335 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %icsk_ulp_data.i335, align 8
  %tobool167.not = icmp eq ptr %110, null
  br i1 %tobool167.not, label %land.rhs165.land.rhs181_crit_edge, label %lor.rhs

land.rhs165.land.rhs181_crit_edge:                ; preds = %land.rhs165
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs181

lor.rhs:                                          ; preds = %land.rhs165
  %conn169 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %conn169 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %conn169, align 4
  %tobool170.not = icmp eq ptr %112, null
  br i1 %tobool170.not, label %lor.rhs.land.rhs181_crit_edge, label %lor.rhs.cleanup228_crit_edge

lor.rhs.cleanup228_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

lor.rhs.land.rhs181_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs181

land.rhs181:                                      ; preds = %lor.rhs.land.rhs181_crit_edge, %land.rhs165.land.rhs181_crit_edge
  %.b314 = load i1, ptr @subflow_syn_recv_sock.__already_done, align 1
  br i1 %.b314, label %land.rhs181.cleanup228_crit_edge, label %if.then192, !prof !209

land.rhs181.cleanup228_crit_edge:                 ; preds = %land.rhs181
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.then192:                                       ; preds = %land.rhs181
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @subflow_syn_recv_sock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 779, i32 noundef 9, ptr noundef null) #13
  br label %cleanup228

dispose_child:                                    ; preds = %if.end135.dispose_child_crit_edge, %if.then133, %if.then.i332, %if.then105.dispose_child_crit_edge, %if.then.i, %if.then64.dispose_child_crit_edge
  call fastcc void @subflow_drop_ctx(ptr noundef nonnull %call51)
  %113 = ptrtoint ptr %drop_req to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %drop_req, align 2
  %114 = getelementptr inbounds %struct.sock_common, ptr %call51, i32 0, i32 13
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %or.i.i.i = or i32 %116, 1
  store i32 %or.i.i.i, ptr %114, align 4
  %117 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %call51, i32 0, i32 8
  %118 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %skc_prot.i, align 8
  %orphan_count.i = getelementptr inbounds %struct.proto, ptr %119, i32 0, i32 47
  %120 = ptrtoint ptr %orphan_count.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %orphan_count.i, align 4
  %122 = ptrtoint ptr %121 to i32
  %123 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %128, %122
  %129 = inttoptr i32 %add.i to ptr
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %add13.i = add i32 %131, 1
  store i32 %add13.i, ptr %129, align 4
  %132 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i337 = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i337)
  %tobool.not.i338 = icmp eq i32 %and.i.i.i337, 0
  br i1 %tobool.not.i338, label %if.then.i339, label %dispose_child.inet_csk_prepare_for_destroy_sock.exit_crit_edge, !prof !208

dispose_child.inet_csk_prepare_for_destroy_sock.exit_crit_edge: ; preds = %dispose_child
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet_csk_prepare_for_destroy_sock.exit

if.then.i339:                                     ; preds = %dispose_child
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %inet_csk_prepare_for_destroy_sock.exit

inet_csk_prepare_for_destroy_sock.exit:           ; preds = %if.then.i339, %dispose_child.inet_csk_prepare_for_destroy_sock.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #13, !srcloc !227
  call void @tcp_done(ptr noundef nonnull %call51) #13
  %rsk_ops = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %133 = ptrtoint ptr %rsk_ops to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rsk_ops, align 4
  %send_reset = getelementptr inbounds %struct.request_sock_ops, ptr %134, i32 0, i32 6
  %135 = ptrtoint ptr %send_reset to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %send_reset, align 4
  call void %136(ptr noundef %sk, ptr noundef %skb) #13
  br label %cleanup228

cleanup228:                                       ; preds = %inet_csk_prepare_for_destroy_sock.exit, %if.then192, %land.rhs181.cleanup228_crit_edge, %lor.rhs.cleanup228_crit_edge, %land.lhs.true160.cleanup228_crit_edge, %land.lhs.true157.cleanup228_crit_edge, %if.end155.cleanup228_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mp_opt) #13
  ret ptr %call51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subflow_finish_connect(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  %msg.i = alloca [8 x i8], align 4
  %msg.i.i = alloca [8 x i8], align 4
  %hmac.i = alloca [32 x i8], align 8
  %mp_opt = alloca %struct.mptcp_options_received, align 8
  %hmac = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mp_opt) #13
  %2 = call ptr @memset(ptr %mp_opt, i32 255, i32 136)
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn, align 4
  %icsk_af_ops = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %icsk_af_ops, align 8
  %sk_rx_dst_set = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %sk_rx_dst_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_rx_dst_set, align 4
  tail call void %8(ptr noundef %sk, ptr noundef %skb) #13
  %conn_finished = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %9 = ptrtoint ptr %conn_finished to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %conn_finished, align 8
  %10 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup198_crit_edge

entry.cleanup198_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup198

if.end:                                           ; preds = %entry
  %sk_userlocks.i = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 43
  %11 = ptrtoint ptr %sk_userlocks.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %sk_userlocks.i, align 8
  %12 = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.mptcp_propagate_sndbuf.exit_crit_edge

if.end.mptcp_propagate_sndbuf.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_propagate_sndbuf.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %13 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_sndbuf1.i = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 21
  %15 = ptrtoint ptr %sk_sndbuf1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sk_sndbuf1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not.i = icmp sgt i32 %14, %16
  br i1 %cmp.not.i, label %do.body6.i, label %lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge

lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_propagate_sndbuf.exit

do.body6.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %sk_sndbuf1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %14, ptr %sk_sndbuf1.i, align 4
  br label %mptcp_propagate_sndbuf.exit

mptcp_propagate_sndbuf.exit:                      ; preds = %do.body6.i, %lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge, %if.end.mptcp_propagate_sndbuf.exit_crit_edge
  %rel_write_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 7
  %18 = ptrtoint ptr %rel_write_seq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %rel_write_seq, align 8
  %19 = ptrtoint ptr %conn_finished to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load3 = load i32, ptr %conn_finished, align 8
  %bf.set = or i32 %bf.load3, 16777216
  store i32 %bf.set, ptr %conn_finished, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb, align 8
  %ssn_offset = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 9
  %22 = ptrtoint ptr %ssn_offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ssn_offset, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_finish_connect.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_finish_connect, %if.then9)) #13
          to label %do.end [label %if.then9], !srcloc !213

if.then9:                                         ; preds = %mptcp_propagate_sndbuf.exit
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %ssn_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ssn_offset, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_finish_connect.__UNIQUE_ID_ddebug698, ptr noundef nonnull @.str.64, ptr noundef %1, i32 noundef %24) #13
  br label %do.end

do.end:                                           ; preds = %if.then9, %mptcp_propagate_sndbuf.exit
  call void @mptcp_get_options(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %mp_opt) #13
  %25 = ptrtoint ptr %conn_finished to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load12 = load i32, ptr %conn_finished, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load12)
  %tobool14.not = icmp sgt i32 %bf.load12, -1
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %do.end
  %suboptions = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %26 = ptrtoint ptr %suboptions to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %suboptions, align 8
  %conv = zext i16 %27 to i32
  %and = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %if.end37

if.then17:                                        ; preds = %if.then15
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %28 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 30, i32 8
  %30 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i272 = icmp eq ptr %31, null
  br i1 %tobool.not.i272, label %if.then17.MPTCP_INC_STATS.exit_crit_edge, label %do.body3.i, !prof !208

if.then17.MPTCP_INC_STATS.exit_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %MPTCP_INC_STATS.exit

do.body3.i:                                       ; preds = %if.then17
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %33 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mptcp_statistics.i, align 4
  %arrayidx.i = getelementptr [43 x i32], ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %arrayidx.i to i32
  %36 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx17.i, align 4
  %add.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add18.i = add i32 %44, 1
  store i32 %add18.i, ptr %42, align 4
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool29.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool29.not.i, label %if.then38.i, label %do.body3.i.do.end40.i_crit_edge, !prof !208

do.body3.i.do.end40.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i

if.then38.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then38.i, %do.body3.i.do.end40.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #13, !srcloc !227
  br label %MPTCP_INC_STATS.exit

MPTCP_INC_STATS.exit:                             ; preds = %do.end40.i, %if.then17.MPTCP_INC_STATS.exit_crit_edge
  %46 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %conn.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i.i, align 4
  %52 = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i, label %if.end6.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %MPTCP_INC_STATS.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mptcp_do_fallback.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_finish_connect, %if.then5.i.i)) #13
          to label %mptcp_do_fallback.exit [label %if.then5.i.i], !srcloc !213

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__mptcp_do_fallback.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.39, ptr noundef %49) #13
  br label %mptcp_do_fallback.exit

if.end6.i.i:                                      ; preds = %MPTCP_INC_STATS.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 4, ptr noundef %flags.i.i) #13
  br label %mptcp_do_fallback.exit

mptcp_do_fallback.exit:                           ; preds = %if.end6.i.i, %if.then5.i.i, %do.body.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_finish_connect.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_finish_connect, %if.then31)) #13
          to label %fallback [label %if.then31], !srcloc !213

if.then31:                                        ; preds = %mptcp_do_fallback.exit
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %conn, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_finish_connect.__UNIQUE_ID_ddebug699, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.62, ptr noundef %54) #13
  br label %fallback

if.end37:                                         ; preds = %if.then15
  %and40 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.if.end53_crit_edge, label %do.body47

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.body47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %csum_enabled = getelementptr inbounds %struct.mptcp_sock, ptr %4, i32 0, i32 28
  %55 = ptrtoint ptr %csum_enabled to i32
  call void @__asan_store1_noabort(i32 %55)
  store volatile i8 1, ptr %csum_enabled, align 1
  br label %if.end53

if.end53:                                         ; preds = %do.body47, %if.end37.if.end53_crit_edge
  %deny_join_id0 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %56 = ptrtoint ptr %deny_join_id0 to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load54 = load i16, ptr %deny_join_id0, align 4
  %57 = and i16 %bf.load54, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool57.not = icmp eq i16 %57, 0
  br i1 %tobool57.not, label %if.end53.if.end69_crit_edge, label %do.body63

if.end53.if.end69_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

do.body63:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %remote_deny_join_id0 = getelementptr inbounds %struct.mptcp_sock, ptr %4, i32 0, i32 40, i32 9
  %58 = ptrtoint ptr %remote_deny_join_id0 to i32
  call void @__asan_store1_noabort(i32 %58)
  store volatile i8 1, ptr %remote_deny_join_id0, align 1
  br label %if.end69

if.end69:                                         ; preds = %do.body63, %if.end53.if.end69_crit_edge
  %59 = ptrtoint ptr %conn_finished to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load70 = load i32, ptr %conn_finished, align 8
  %bf.set75 = or i32 %bf.load70, 268451840
  store i32 %bf.set75, ptr %conn_finished, align 8
  %60 = ptrtoint ptr %mp_opt to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %mp_opt, align 8
  %remote_key = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %remote_key to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %remote_key, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_finish_connect.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_finish_connect, %if.then88)) #13
          to label %do.end92 [label %if.then88], !srcloc !213

if.then88:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %remote_key, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_finish_connect.__UNIQUE_ID_ddebug702, ptr noundef nonnull @.str.68, ptr noundef %1, i64 noundef %64) #13
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %if.end69
  %skc_net.i273 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %65 = ptrtoint ptr %skc_net.i273 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skc_net.i273, align 4
  %mptcp_statistics.i274 = getelementptr inbounds %struct.net, ptr %66, i32 0, i32 30, i32 8
  %67 = ptrtoint ptr %mptcp_statistics.i274 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mptcp_statistics.i274, align 4
  %tobool.not.i275 = icmp eq ptr %68, null
  br i1 %tobool.not.i275, label %do.end92.MPTCP_INC_STATS.exit287_crit_edge, label %do.body3.i284, !prof !208

do.end92.MPTCP_INC_STATS.exit287_crit_edge:       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %MPTCP_INC_STATS.exit287

do.body3.i284:                                    ; preds = %do.end92
  %69 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %70 = ptrtoint ptr %mptcp_statistics.i274 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mptcp_statistics.i274, align 4
  %arrayidx.i276 = getelementptr [43 x i32], ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx.i276 to i32
  %73 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i277 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i277 to ptr
  %cpu.i278 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu.i278 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i278, align 4
  %arrayidx17.i279 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx17.i279 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx17.i279, align 4
  %add.i280 = add i32 %78, %72
  %79 = inttoptr i32 %add.i280 to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add18.i281 = add i32 %81, 1
  store i32 %add18.i281, ptr %79, align 4
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i282 = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i282)
  %tobool29.not.i283 = icmp eq i32 %and.i.i.i282, 0
  br i1 %tobool29.not.i283, label %if.then38.i285, label %do.body3.i284.do.end40.i286_crit_edge, !prof !208

do.body3.i284.do.end40.i286_crit_edge:            ; preds = %do.body3.i284
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i286

if.then38.i285:                                   ; preds = %do.body3.i284
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end40.i286

do.end40.i286:                                    ; preds = %if.then38.i285, %do.body3.i284.do.end40.i286_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #13, !srcloc !227
  br label %MPTCP_INC_STATS.exit287

MPTCP_INC_STATS.exit287:                          ; preds = %do.end40.i286, %do.end92.MPTCP_INC_STATS.exit287_crit_edge
  call void @mptcp_finish_connect(ptr noundef %sk) #13
  call fastcc void @mptcp_set_connected(ptr noundef %4)
  br label %cleanup198

if.else:                                          ; preds = %do.end
  %83 = and i32 %bf.load12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool97.not = icmp eq i32 %83, 0
  br i1 %tobool97.not, label %if.else188, label %if.then98

if.then98:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hmac) #13
  %suboptions99 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %84 = call ptr @memset(ptr %hmac, i32 255, i32 32)
  %85 = ptrtoint ptr %suboptions99 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %suboptions99, align 8
  %87 = and i16 %86, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool102.not = icmp eq i16 %87, 0
  br i1 %tobool102.not, label %if.then98.do_reset.sink.split_crit_edge, label %if.end107

if.then98.do_reset.sink.split_crit_edge:          ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_reset.sink.split

if.end107:                                        ; preds = %if.then98
  %backup = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %88 = ptrtoint ptr %backup to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load108 = load i16, ptr %backup, align 4
  %bf.lshr109 = lshr i16 %bf.load108, 3
  %89 = and i16 %bf.lshr109, 1
  %bf.value = zext i16 %89 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 19
  %bf.clear114 = and i32 %bf.load12, -524289
  %bf.set115 = or i32 %bf.shl, %bf.clear114
  %90 = ptrtoint ptr %conn_finished to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %bf.set115, ptr %conn_finished, align 8
  %thmac = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 12
  %91 = ptrtoint ptr %thmac to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %thmac, align 8
  %thmac116 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 16
  %93 = ptrtoint ptr %thmac116 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %thmac116, align 8
  %nonce = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 9
  %94 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nonce, align 8
  %remote_nonce = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 15
  %96 = ptrtoint ptr %remote_nonce to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %remote_nonce, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_finish_connect.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_finish_connect, %if.then129)) #13
          to label %do.end138 [label %if.then129], !srcloc !213

if.then129:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %thmac116 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %thmac116, align 8
  %99 = ptrtoint ptr %remote_nonce to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %remote_nonce, align 8
  %101 = ptrtoint ptr %conn_finished to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load133 = load i32, ptr %conn_finished, align 8
  %bf.lshr134 = lshr i32 %bf.load133, 19
  %bf.clear135 = and i32 %bf.lshr134, 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_finish_connect.__UNIQUE_ID_ddebug703, ptr noundef nonnull @.str.70, ptr noundef %1, i64 noundef %98, i32 noundef %100, i32 noundef %bf.clear135) #13
  br label %do.end138

do.end138:                                        ; preds = %if.then129, %if.end107
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hmac.i) #13
  %remote_key.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 2
  %102 = call ptr @memset(ptr %hmac.i, i32 255, i32 32)
  %103 = ptrtoint ptr %remote_key.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %remote_key.i, align 8
  %local_key.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %local_key.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %local_key.i, align 8
  %107 = ptrtoint ptr %remote_nonce to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %remote_nonce, align 8
  %local_nonce.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 17
  %109 = ptrtoint ptr %local_nonce.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %local_nonce.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i.i) #13
  %111 = getelementptr inbounds [8 x i8], ptr %msg.i.i, i32 0, i32 4
  %112 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %108, ptr %msg.i.i, align 4
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %110, ptr %111, align 4
  call void @mptcp_crypto_hmac_sha(i64 noundef %104, i64 noundef %106, ptr noundef nonnull %msg.i.i, i32 noundef 8, ptr noundef nonnull %hmac.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i.i) #13
  %114 = ptrtoint ptr %hmac.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %hmac.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_thmac_valid.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_finish_connect, %if.then.i)) #13
          to label %subflow_thmac_valid.exit [label %if.then.i], !srcloc !213

if.then.i:                                        ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #15
  %token.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 6
  %116 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %token.i, align 4
  %118 = ptrtoint ptr %thmac116 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %thmac116, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_thmac_valid.__UNIQUE_ID_ddebug697, ptr noundef nonnull @.str.76, ptr noundef %1, i32 noundef %117, i64 noundef %115, i64 noundef %119) #13
  br label %subflow_thmac_valid.exit

subflow_thmac_valid.exit:                         ; preds = %if.then.i, %do.end138
  %120 = ptrtoint ptr %thmac116 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %thmac116, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %115, i64 %121)
  %cmp.i = icmp eq i64 %115, %121
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac.i) #13
  br i1 %cmp.i, label %if.end146, label %if.then140

if.then140:                                       ; preds = %subflow_thmac_valid.exit
  %skc_net.i288 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %122 = ptrtoint ptr %skc_net.i288 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %skc_net.i288, align 4
  %mptcp_statistics.i289 = getelementptr inbounds %struct.net, ptr %123, i32 0, i32 30, i32 8
  %124 = ptrtoint ptr %mptcp_statistics.i289 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mptcp_statistics.i289, align 4
  %tobool.not.i290 = icmp eq ptr %125, null
  br i1 %tobool.not.i290, label %if.then140.do_reset.sink.split_crit_edge, label %do.body3.i299, !prof !208

if.then140.do_reset.sink.split_crit_edge:         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_reset.sink.split

do.body3.i299:                                    ; preds = %if.then140
  %126 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %127 = ptrtoint ptr %mptcp_statistics.i289 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mptcp_statistics.i289, align 4
  %arrayidx.i291 = getelementptr [43 x i32], ptr %128, i32 0, i32 14
  %129 = ptrtoint ptr %arrayidx.i291 to i32
  %130 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i292 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i292 to ptr
  %cpu.i293 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %cpu.i293 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpu.i293, align 4
  %arrayidx17.i294 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx17.i294 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx17.i294, align 4
  %add.i295 = add i32 %135, %129
  %136 = inttoptr i32 %add.i295 to ptr
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %add18.i296 = add i32 %138, 1
  store i32 %add18.i296, ptr %136, align 4
  %139 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i297 = and i32 %139, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i297)
  %tobool29.not.i298 = icmp eq i32 %and.i.i.i297, 0
  br i1 %tobool29.not.i298, label %if.then38.i300, label %do.body3.i299.do.end40.i301_crit_edge, !prof !208

do.body3.i299.do.end40.i301_crit_edge:            ; preds = %do.body3.i299
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i301

if.then38.i300:                                   ; preds = %do.body3.i299
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end40.i301

do.end40.i301:                                    ; preds = %if.then38.i300, %do.body3.i299.do.end40.i301_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %126) #13, !srcloc !227
  br label %do_reset.sink.split

if.end146:                                        ; preds = %subflow_thmac_valid.exit
  %call147 = call zeroext i1 @mptcp_finish_join(ptr noundef %sk) #13
  br i1 %call147, label %if.end149, label %if.end146.do_reset_crit_edge

if.end146.do_reset_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_reset

if.end149:                                        ; preds = %if.end146
  %140 = ptrtoint ptr %local_key.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %local_key.i, align 8
  %142 = ptrtoint ptr %remote_key.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %remote_key.i, align 8
  %144 = ptrtoint ptr %local_nonce.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %local_nonce.i, align 8
  %146 = ptrtoint ptr %remote_nonce to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %remote_nonce, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #13
  %148 = getelementptr inbounds [8 x i8], ptr %msg.i, i32 0, i32 4
  %149 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %145, ptr %msg.i, align 4
  %150 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %147, ptr %148, align 4
  call void @mptcp_crypto_hmac_sha(i64 noundef %141, i64 noundef %143, ptr noundef nonnull %msg.i, i32 noundef 8, ptr noundef nonnull %hmac) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #13
  %hmac152 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 19
  %151 = call ptr @memcpy(ptr %hmac152, ptr %hmac, i32 20)
  %152 = ptrtoint ptr %conn_finished to i32
  call void @__asan_load4_noabort(i32 %152)
  %bf.load155 = load i32, ptr %conn_finished, align 8
  %bf.set157 = or i32 %bf.load155, 134217728
  store i32 %bf.set157, ptr %conn_finished, align 8
  %skc_net.i303 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %153 = ptrtoint ptr %skc_net.i303 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %skc_net.i303, align 4
  %mptcp_statistics.i304 = getelementptr inbounds %struct.net, ptr %154, i32 0, i32 30, i32 8
  %155 = ptrtoint ptr %mptcp_statistics.i304 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mptcp_statistics.i304, align 4
  %tobool.not.i305 = icmp eq ptr %156, null
  br i1 %tobool.not.i305, label %if.end149.MPTCP_INC_STATS.exit317_crit_edge, label %do.body3.i314, !prof !208

if.end149.MPTCP_INC_STATS.exit317_crit_edge:      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #15
  br label %MPTCP_INC_STATS.exit317

do.body3.i314:                                    ; preds = %if.end149
  %157 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %158 = ptrtoint ptr %mptcp_statistics.i304 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mptcp_statistics.i304, align 4
  %arrayidx.i306 = getelementptr [43 x i32], ptr %159, i32 0, i32 11
  %160 = ptrtoint ptr %arrayidx.i306 to i32
  %161 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i307 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i307 to ptr
  %cpu.i308 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %cpu.i308 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cpu.i308, align 4
  %arrayidx17.i309 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %164
  %165 = ptrtoint ptr %arrayidx17.i309 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx17.i309, align 4
  %add.i310 = add i32 %166, %160
  %167 = inttoptr i32 %add.i310 to ptr
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 4
  %add18.i311 = add i32 %169, 1
  store i32 %add18.i311, ptr %167, align 4
  %170 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i312 = and i32 %170, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i312)
  %tobool29.not.i313 = icmp eq i32 %and.i.i.i312, 0
  br i1 %tobool29.not.i313, label %if.then38.i315, label %do.body3.i314.do.end40.i316_crit_edge, !prof !208

do.body3.i314.do.end40.i316_crit_edge:            ; preds = %do.body3.i314
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i316

if.then38.i315:                                   ; preds = %do.body3.i314
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end40.i316

do.end40.i316:                                    ; preds = %if.then38.i315, %do.body3.i314.do.end40.i316_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %157) #13, !srcloc !227
  br label %MPTCP_INC_STATS.exit317

MPTCP_INC_STATS.exit317:                          ; preds = %do.end40.i316, %if.end149.MPTCP_INC_STATS.exit317_crit_edge
  %171 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %171, align 4
  %174 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 2
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %174, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %173, i16 %176)
  %cmp.i318.not = icmp eq i16 %173, %176
  br i1 %cmp.i318.not, label %MPTCP_INC_STATS.exit317.cleanup_crit_edge, label %do.body162

MPTCP_INC_STATS.exit317.cleanup_crit_edge:        ; preds = %MPTCP_INC_STATS.exit317
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body162:                                       ; preds = %MPTCP_INC_STATS.exit317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_finish_connect.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_finish_connect, %if.then174)) #13
          to label %do.end185 [label %if.then174], !srcloc !213

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #15
  %177 = ptrtoint ptr %171 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %171, align 4
  %conv177 = zext i16 %178 to i32
  %179 = ptrtoint ptr %174 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %174, align 4
  %conv182 = zext i16 %180 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_finish_connect.__UNIQUE_ID_ddebug704, ptr noundef nonnull @.str.72, i32 noundef %conv177, i32 noundef %conv182) #13
  br label %do.end185

do.end185:                                        ; preds = %if.then174, %do.body162
  %181 = ptrtoint ptr %skc_net.i303 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %skc_net.i303, align 4
  call fastcc void @MPTCP_INC_STATS(ptr noundef %182, i32 noundef 29)
  br label %cleanup

cleanup:                                          ; preds = %do.end185, %MPTCP_INC_STATS.exit317.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac) #13
  br label %cleanup198

if.else188:                                       ; preds = %if.else
  %183 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn.i321 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %184, i32 0, i32 6
  %185 = ptrtoint ptr %conn.i321 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %conn.i321, align 4
  %flags.i.i322 = getelementptr inbounds %struct.mptcp_sock, ptr %186, i32 0, i32 18
  %187 = ptrtoint ptr %flags.i.i322 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %flags.i.i322, align 4
  %189 = and i32 %188, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.i.i.not = icmp eq i32 %189, 0
  br i1 %tobool.i.i.not, label %if.else188.cleanup198_crit_edge, label %if.else188.fallback_crit_edge

if.else188.fallback_crit_edge:                    ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #15
  br label %fallback

if.else188.cleanup198_crit_edge:                  ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup198

fallback:                                         ; preds = %if.else188.fallback_crit_edge, %if.then31, %mptcp_do_fallback.exit
  call void @mptcp_rcv_space_init(ptr noundef %4, ptr noundef %sk) #13
  call fastcc void @mptcp_set_connected(ptr noundef %4)
  br label %cleanup198

do_reset.sink.split:                              ; preds = %do.end40.i301, %if.then140.do_reset.sink.split_crit_edge, %if.then98.do_reset.sink.split_crit_edge
  %reset_reason = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 22
  %190 = ptrtoint ptr %reset_reason to i32
  call void @__asan_load1_noabort(i32 %190)
  %bf.load143 = load i8, ptr %reset_reason, align 2
  %bf.clear144 = and i8 %bf.load143, -61
  %bf.set145 = or i8 %bf.clear144, 4
  store i8 %bf.set145, ptr %reset_reason, align 2
  br label %do_reset

do_reset:                                         ; preds = %do_reset.sink.split, %if.end146.do_reset_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac) #13
  %reset_transient = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 22
  %191 = ptrtoint ptr %reset_transient to i32
  call void @__asan_load1_noabort(i32 %191)
  %bf.load195 = load i8, ptr %reset_transient, align 2
  %bf.clear196 = and i8 %bf.load195, -65
  store i8 %bf.clear196, ptr %reset_transient, align 2
  call void @mptcp_subflow_reset(ptr noundef %sk)
  br label %cleanup198

cleanup198:                                       ; preds = %do_reset, %fallback, %if.else188.cleanup198_crit_edge, %cleanup, %MPTCP_INC_STATS.exit287, %entry.cleanup198_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mp_opt) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_release_cb_override(ptr noundef %ssk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %delegated_status.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 24
  %2 = ptrtoint ptr %delegated_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %delegated_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mptcp_subflow_process_delegated(ptr noundef %ssk) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @tcp_release_cb(ptr noundef %ssk) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @subflow_v6_route_req(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_mptcp = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %is_mptcp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %is_mptcp, align 1
  %mp_capable.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %mp_capable.i, align 8
  %bf.clear2.i = and i8 %bf.load.i, 63
  store i8 %bf.clear2.i, ptr %mp_capable.i, align 8
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i.i, align 4
  %call5.i = tail call i32 @mptcp_is_checksum_enabled(ptr noundef %3) #13
  %4 = trunc i32 %call5.i to i8
  %5 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load6.i = load i8, ptr %mp_capable.i, align 8
  %bf.value.i = shl i8 %4, 4
  %bf.shl.i = and i8 %bf.value.i, 16
  %bf.clear7.i = and i8 %bf.load6.i, -17
  %bf.set8.i = or i8 %bf.shl.i, %bf.clear7.i
  store i8 %bf.set8.i, ptr %mp_capable.i, align 8
  %6 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i.i, align 4
  %call10.i = tail call i32 @mptcp_allow_join_id0(ptr noundef %7) #13
  %8 = trunc i32 %call10.i to i8
  %9 = ptrtoint ptr %mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load12.i = load i8, ptr %mp_capable.i, align 8
  %bf.value13.i = shl i8 %8, 3
  %bf.shl14.i = and i8 %bf.value13.i, 8
  %bf.clear15.i = and i8 %bf.load12.i, -9
  %bf.set16.i = or i8 %bf.shl14.i, %bf.clear15.i
  store i8 %bf.set16.i, ptr %mp_capable.i, align 8
  %msk.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %msk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %msk.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tcp_request_sock_ops, ptr @tcp_request_sock_ipv6_ops, i32 0, i32 4) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.tcp_request_sock_ops, ptr @tcp_request_sock_ipv6_ops, i32 0, i32 4), align 4
  %call1 = tail call ptr %12(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl, ptr noundef %req) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @subflow_check_req(ptr noundef %req, ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @dst_release(ptr noundef nonnull %call1) #13
  %syncookie = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %syncookie to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %syncookie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.request_sock_ops, ptr @tcp6_request_sock_ops, i32 0, i32 6) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @tcp6_request_sock_ops, i32 0, i32 6), align 4
  tail call void %14(ptr noundef %sk, ptr noundef %skb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ null, %if.then6 ], [ null, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subflow_v6_conn_request(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_v6_conn_request.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_v6_conn_request, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_v6_conn_request.__UNIQUE_ID_ddebug706, ptr noundef nonnull @.str.13, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp = icmp eq i16 %3, 2048
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @subflow_v4_conn_request(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.ipv6_unicast_destination.exit_crit_edge, label %land.lhs.true.i.i

if.end7.ipv6_unicast_destination.exit_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

land.lhs.true.i.i:                                ; preds = %if.end7
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge

land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, !prof !208

land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %ipv6_unicast_destination.exit

ipv6_unicast_destination.exit:                    ; preds = %do.end.i.i, %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge, %if.end7.ipv6_unicast_destination.exit_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %and25.i.i = and i32 %8, -2
  %9 = inttoptr i32 %and25.i.i to ptr
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rt6i_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i = icmp slt i32 %11, 0
  br i1 %tobool.i, label %if.end10, label %drop

if.end10:                                         ; preds = %ipv6_unicast_destination.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %19, %17
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %21, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %do.body39, label %if.end63

do.body39:                                        ; preds = %if.end10
  tail call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %22 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 30, i32 1
  %24 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipv6_statistics, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu51, align 4
  %arrayidx52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %32, %26
  %33 = inttoptr i32 %add53 to ptr
  %syncp54 = getelementptr inbounds %struct.ipstats_mib, ptr %33, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %34 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i78 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i78, label %do.body39.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i79

do.body39.u64_stats_update_begin.exit_crit_edge:  ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i79:                              ; preds = %do.body39
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !233
  %37 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %42, ptrtoint (ptr @lockdep_recursion to i32)
  %43 = inttoptr i32 %add.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !234
  %46 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i7.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool20.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i80, label %land.lhs.true.i.i79.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i79.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs.i.i80:                                   ; preds = %land.lhs.true.i.i79
  %50 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i = icmp eq i32 %53, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i80.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i80.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i80
  %54 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i9.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %57, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !235
  %58 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %61, ptrtoint (ptr @hardirqs_enabled to i32)
  %62 = inttoptr i32 %add47.i.i to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !236
  %65 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i12.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %68, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool54.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !209

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i80.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i79.u64_stats_update_begin.exit_crit_edge, %do.body39.u64_stats_update_begin.exit_crit_edge
  %69 = ptrtoint ptr %syncp54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %syncp54, align 4
  %inc.i.i.i.i = add i32 %70, 1
  store i32 %inc.i.i.i.i, ptr %syncp54, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !237
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %33, i32 0, i32 1, i32 0, i32 1
  %71 = tail call ptr @llvm.returnaddress(i32 0) #13
  %72 = ptrtoint ptr %71 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %72) #13
  %arrayidx56 = getelementptr [37 x i64], ptr %33, i32 0, i32 7
  %73 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx56, align 8
  %add57 = add i64 %74, 1
  store i64 %add57, ptr %arrayidx56, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %72) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !238
  %75 = ptrtoint ptr %syncp54 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %syncp54, align 4
  %inc.i.i.i = add i32 %76, 1
  store i32 %inc.i.i.i, ptr %syncp54, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.end63:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call64 = tail call i32 @tcp_conn_request(ptr noundef nonnull @mptcp_subflow_request_sock_ops, ptr noundef nonnull @subflow_request_sock_ipv6_ops, ptr noundef %sk, ptr noundef %skb) #13
  br label %cleanup

drop:                                             ; preds = %ipv6_unicast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sk_drops.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_drops.i, i32 1, i32 3, i32 1) #13
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i, ptr %sk_drops.i, i32 1, ptr elementtype(i32) %sk_drops.i) #13, !srcloc !232
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %78 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %skc_net.i.i, align 4
  %net_statistics.i = getelementptr inbounds %struct.net, ptr %79, i32 0, i32 30, i32 3
  %80 = ptrtoint ptr %net_statistics.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %net_statistics.i, align 4
  %arrayidx.i = getelementptr [126 x i32], ptr %81, i32 0, i32 20
  %82 = ptrtoint ptr %arrayidx.i to i32
  %83 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i81 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i81 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu.i, align 4
  %arrayidx8.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx8.i, align 4
  %add.i = add i32 %88, %82
  %89 = inttoptr i32 %add.i to ptr
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add9.i = add i32 %91, 1
  store i32 %add9.i, ptr %89, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end63, %u64_stats_update_begin.exit, %if.then5
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ 0, %u64_stats_update_begin.exit ], [ %call64, %if.end63 ], [ 0, %drop ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_diag_subflow_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_ulp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_is_checksum_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_allow_join_id0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_mapping_status(ptr noundef %ssk, ptr noundef %msk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %csum_enabled = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 28
  %2 = ptrtoint ptr %csum_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %csum_enabled, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 8
  %4 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %5, %sk_receive_queue
  %tobool4.not480 = icmp eq ptr %5, null
  %tobool4.not = or i1 %cmp.i, %tobool4.not480
  br i1 %tobool4.not, label %entry.cleanup329_crit_edge, label %if.end

entry.cleanup329_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.end:                                           ; preds = %entry
  %conn.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.i.not, label %if.end7, label %if.end.cleanup329_crit_edge

if.end.cleanup329_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.end7:                                          ; preds = %if.end
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13
  %11 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active_extensions.i.i.i, align 1
  %13 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.i.not.i.i, label %if.end7.if.then11_crit_edge, label %mptcp_get_ext.exit

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

mptcp_get_ext.exit:                               ; preds = %if.end7
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 22
  %14 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %15, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %shl.i.i
  %tobool9.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool9.not, label %mptcp_get_ext.exit.if.then11_crit_edge, label %lor.lhs.false

mptcp_get_ext.exit.if.then11_crit_edge:           ; preds = %mptcp_get_ext.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

lor.lhs.false:                                    ; preds = %mptcp_get_ext.exit
  %use_map = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %use_map to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %use_map, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool10.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool10.not, label %lor.lhs.false.if.then11_crit_edge, label %if.end76

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %mptcp_get_ext.exit.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %map_valid = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %19 = ptrtoint ptr %map_valid to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load12 = load i32, ptr %map_valid, align 8
  %20 = and i32 %bf.load12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.then11.validate_seq_crit_edge

if.then11.validate_seq_crit_edge:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_seq

land.lhs.true:                                    ; preds = %if.then11
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.cleanup329_crit_edge

land.lhs.true.cleanup329_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.then16:                                        ; preds = %land.lhs.true
  %cb = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %tcp_flags = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tcp_flags, align 4
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool17.not = icmp eq i8 %25, 0
  br i1 %tobool17.not, label %land.end, label %if.then16.if.end67_crit_edge

if.then16.if.end67_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

land.end:                                         ; preds = %if.then16
  %.b417 = load i1, ptr @get_mapping_status.__already_done, align 1
  br i1 %.b417, label %land.end.if.end67_crit_edge, label %if.then25, !prof !209

land.end.if.end67_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then25:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @get_mapping_status.__already_done, align 1
  %26 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cb, align 8
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end_seq, align 4
  %conv45 = zext i8 %24 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 952, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %27, i32 noundef %29, i32 noundef %conv45) #13
  br label %if.end67

if.end67:                                         ; preds = %if.then25, %land.end.if.end67_crit_edge, %if.then16.if.end67_crit_edge
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %5, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %35, ptr %prev17.i.i, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %33, ptr %35, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %5) #13
  br label %cleanup329

if.end76:                                         ; preds = %lor.lhs.false
  tail call fastcc void @trace_get_mapping_status(ptr noundef nonnull %add.ptr.i.i)
  %data_len77 = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %data_len77 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %data_len77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp = icmp eq i16 %39, 0
  br i1 %cmp, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end76
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %40 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %41, i32 0, i32 30, i32 8
  %42 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.then80.cleanup329_crit_edge, label %do.body3.i, !prof !208

if.then80.cleanup329_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

do.body3.i:                                       ; preds = %if.then80
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %45 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mptcp_statistics.i, align 4
  %arrayidx.i = getelementptr [43 x i32], ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %arrayidx.i to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx17.i, align 4
  %add.i = add i32 %53, %47
  %54 = inttoptr i32 %add.i to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add18.i = add i32 %56, 1
  store i32 %add18.i, ptr %54, align 4
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool29.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool29.not.i, label %if.then38.i, label %do.body3.i.do.end40.i_crit_edge, !prof !208

do.body3.i.do.end40.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i

if.then38.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then38.i, %do.body3.i.do.end40.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #13, !srcloc !227
  br label %cleanup329

if.end82:                                         ; preds = %if.end76
  %58 = ptrtoint ptr %use_map to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load83 = load i16, ptr %use_map, align 8
  %59 = and i16 %bf.load83, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp88.not = icmp eq i16 %59, 0
  br i1 %cmp88.not, label %if.end82.do.end176_crit_edge, label %if.then90

if.end82.do.end176_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end176

if.then90:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp92 = icmp eq i16 %39, 1
  %data_seq = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %data_seq to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %data_seq, align 8
  br i1 %cmp92, label %if.then94, label %if.else131

if.then94:                                        ; preds = %if.then90
  %62 = and i16 %bf.load83, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool99 = icmp ne i16 %62, 0
  %call100 = tail call zeroext i1 @mptcp_update_rcv_data_fin(ptr noundef %msk, i64 noundef %61, i1 noundef zeroext %tobool99) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_mapping_status.__UNIQUE_ID_ddebug719, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_mapping_status, %if.then113)) #13
          to label %do.end117 [label %if.then113], !srcloc !213

if.then113:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %data_seq to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %data_seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_mapping_status.__UNIQUE_ID_ddebug719, ptr noundef nonnull @.str.22, i64 noundef %64) #13
  br label %do.end117

do.end117:                                        ; preds = %if.then113, %if.then94
  %map_valid118 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %65 = ptrtoint ptr %map_valid118 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load119 = load i32, ptr %map_valid118, align 8
  %66 = and i32 %bf.load119, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool122.not = icmp eq i32 %66, 0
  br i1 %tobool122.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %do.end117
  %67 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %active_extensions.i.i.i, align 1
  %69 = and i8 %68, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.i.not.i = icmp eq i8 %69, 0
  br i1 %tobool.i.not.i, label %if.then123.cleanup329_crit_edge, label %if.then.i

if.then123.cleanup329_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.then.i:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__skb_ext_del(ptr noundef nonnull %5, i32 noundef 3) #13
  br label %cleanup329

if.else:                                          ; preds = %do.end117
  br i1 %call100, label %land.lhs.true126, label %if.else.cleanup329_crit_edge

if.else.cleanup329_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

land.lhs.true126:                                 ; preds = %if.else
  %work = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %70 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %70, ptr noundef %work) #13
  br i1 %call.i.i, label %if.then129, label %land.lhs.true126.cleanup329_crit_edge

land.lhs.true126.cleanup329_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.then129:                                       ; preds = %land.lhs.true126
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !207
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then129.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !208

if.then129.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then129
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %72 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %.not.i.i.i.i = icmp sgt i32 %72, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup329_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !209

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup329_crit_edge:             ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then129.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then129.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %cleanup329

if.else131:                                       ; preds = %if.then90
  %conv133 = zext i16 %39 to i64
  %add = add nsw i64 %conv133, -1
  %sub = add i64 %add, %61
  %73 = and i16 %bf.load83, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool139.not = icmp eq i16 %73, 0
  %and141 = and i64 %sub, 4294967295
  %spec.select = select i1 %tobool139.not, i64 %and141, i64 %sub
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool148 = icmp ne i16 %73, 0
  %call149 = tail call zeroext i1 @mptcp_update_rcv_data_fin(ptr noundef %msk, i64 noundef %spec.select, i1 noundef zeroext %tobool148) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_mapping_status.__UNIQUE_ID_ddebug720, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_mapping_status, %if.then162)) #13
          to label %do.end171 [label %if.then162], !srcloc !213

if.then162:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %use_map to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load164 = load i16, ptr %use_map, align 8
  %bf.lshr165 = lshr i16 %bf.load164, 14
  %75 = and i16 %bf.lshr165, 1
  %bf.cast167 = zext i16 %75 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_mapping_status.__UNIQUE_ID_ddebug720, ptr noundef nonnull @.str.24, i64 noundef %spec.select, i32 noundef %bf.cast167) #13
  br label %do.end171

do.end171:                                        ; preds = %if.then162, %if.else131
  %dec = add i16 %39, -1
  br label %do.end176

do.end176:                                        ; preds = %do.end171, %if.end82.do.end176_crit_edge
  %data_len.0 = phi i16 [ %dec, %do.end171 ], [ %39, %if.end82.do.end176_crit_edge ]
  %ack_seq = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 5
  %76 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load volatile i64, ptr %ack_seq, align 8
  %data_seq178 = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %data_seq178 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %data_seq178, align 8
  %80 = ptrtoint ptr %use_map to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load180 = load i16, ptr %use_map, align 8
  %81 = and i16 %bf.load180, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool184.not = icmp eq i16 %81, 0
  br i1 %tobool184.not, label %if.end.i, label %do.end176.mptcp_expand_seq.exit_crit_edge

do.end176.mptcp_expand_seq.exit_crit_edge:        ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_expand_seq.exit

if.end.i:                                         ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i64 @__mptcp_expand_seq(i64 noundef %77, i64 noundef %79) #13
  br label %mptcp_expand_seq.exit

mptcp_expand_seq.exit:                            ; preds = %if.end.i, %do.end176.mptcp_expand_seq.exit_crit_edge
  %retval.0.i429 = phi i64 [ %call.i, %if.end.i ], [ %79, %do.end176.mptcp_expand_seq.exit_crit_edge ]
  %82 = ptrtoint ptr %use_map to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load192 = load i16, ptr %use_map, align 8
  %83 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %conn.i, align 4
  %use_64bit_ack = getelementptr inbounds %struct.mptcp_sock, ptr %84, i32 0, i32 27
  %85 = lshr i16 %bf.load192, 14
  %86 = trunc i16 %85 to i8
  %87 = and i8 %86, 1
  %88 = ptrtoint ptr %use_64bit_ack to i32
  call void @__asan_store1_noabort(i32 %88)
  store volatile i8 %87, ptr %use_64bit_ack, align 2
  %map_valid207 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %89 = ptrtoint ptr %map_valid207 to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load208 = load i32, ptr %map_valid207, align 8
  %90 = and i32 %bf.load208, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool211.not = icmp eq i32 %90, 0
  %map_seq242 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 4
  br i1 %tobool211.not, label %if.end241, label %if.then212

if.then212:                                       ; preds = %mptcp_expand_seq.exit
  %91 = ptrtoint ptr %map_seq242 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %map_seq242, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %92, i64 %retval.0.i429)
  %cmp214 = icmp eq i64 %92, %retval.0.i429
  br i1 %cmp214, label %land.lhs.true216, label %if.then212.if.end236_crit_edge

if.then212.if.end236_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end236

land.lhs.true216:                                 ; preds = %if.then212
  %map_subflow_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 8
  %93 = ptrtoint ptr %map_subflow_seq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %map_subflow_seq, align 4
  %subflow_seq = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %subflow_seq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %subflow_seq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp217 = icmp eq i32 %94, %96
  br i1 %cmp217, label %land.lhs.true219, label %land.lhs.true216.if.end236_crit_edge

land.lhs.true216.if.end236_crit_edge:             ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end236

land.lhs.true219:                                 ; preds = %land.lhs.true216
  %map_data_len = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 10
  %97 = ptrtoint ptr %map_data_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %map_data_len, align 4
  %conv220 = zext i16 %data_len.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %conv220)
  %cmp221 = icmp eq i32 %98, %conv220
  br i1 %cmp221, label %land.lhs.true223, label %land.lhs.true219.if.end236_crit_edge

land.lhs.true219.if.end236_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end236

land.lhs.true223:                                 ; preds = %land.lhs.true219
  %bf.lshr225 = lshr i32 %bf.load208, 22
  %bf.clear226 = and i32 %bf.lshr225, 1
  %99 = ptrtoint ptr %use_map to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load228 = load i16, ptr %use_map, align 8
  %100 = lshr i16 %bf.load228, 3
  %101 = and i16 %100, 1
  %bf.cast231 = zext i16 %101 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear226, i32 %bf.cast231)
  %cmp233 = icmp eq i32 %bf.clear226, %bf.cast231
  br i1 %cmp233, label %if.then235, label %land.lhs.true223.if.end236_crit_edge

land.lhs.true223.if.end236_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end236

if.then235:                                       ; preds = %land.lhs.true223
  %102 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %active_extensions.i.i.i, align 1
  %104 = and i8 %103, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.i.not.i431 = icmp eq i8 %104, 0
  br i1 %tobool.i.not.i431, label %if.then235.validate_csum_crit_edge, label %if.then235.validate_csum.sink.split_crit_edge

if.then235.validate_csum.sink.split_crit_edge:    ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_csum.sink.split

if.then235.validate_csum_crit_edge:               ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_csum

if.end236:                                        ; preds = %land.lhs.true223.if.end236_crit_edge, %land.lhs.true219.if.end236_crit_edge, %land.lhs.true216.if.end236_crit_edge, %if.then212.if.end236_crit_edge
  %call237 = tail call fastcc zeroext i1 @skb_is_fully_mapped(ptr noundef %ssk, ptr noundef nonnull %5)
  br i1 %call237, label %if.then238, label %if.end236.validate_csum_crit_edge

if.end236.validate_csum_crit_edge:                ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_csum

if.then238:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #15
  %skc_net.i435 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %105 = ptrtoint ptr %skc_net.i435 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %skc_net.i435, align 4
  tail call fastcc void @MPTCP_INC_STATS(ptr noundef %106, i32 noundef 15)
  br label %cleanup329

if.end241:                                        ; preds = %mptcp_expand_seq.exit
  %107 = ptrtoint ptr %map_seq242 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %retval.0.i429, ptr %map_seq242, align 8
  %subflow_seq243 = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %subflow_seq243 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %subflow_seq243, align 8
  %map_subflow_seq244 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 8
  %110 = ptrtoint ptr %map_subflow_seq244 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %map_subflow_seq244, align 4
  %conv245 = zext i16 %data_len.0 to i32
  %map_data_len246 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 10
  %111 = ptrtoint ptr %map_data_len246 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv245, ptr %map_data_len246, align 4
  %bf.set = or i32 %bf.load208, 8388608
  %112 = ptrtoint ptr %map_valid207 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %bf.set, ptr %map_valid207, align 8
  %113 = ptrtoint ptr %use_map to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load251 = load i16, ptr %use_map, align 8
  %bf.lshr252 = lshr i16 %bf.load251, 13
  %114 = and i16 %bf.lshr252, 1
  %bf.value = zext i16 %114 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 21
  %bf.clear257 = and i32 %bf.set, -2097153
  %bf.set258 = or i32 %bf.shl, %bf.clear257
  store i32 %bf.set258, ptr %map_valid207, align 8
  %bf.load259 = load i16, ptr %use_map, align 8
  %bf.lshr260 = lshr i16 %bf.load259, 10
  %115 = and i16 %bf.lshr260, 1
  %bf.value266 = zext i16 %115 to i32
  %bf.shl267 = shl nuw nsw i32 %bf.value266, 20
  %bf.clear268 = and i32 %bf.set258, -1048577
  %bf.set269 = or i32 %bf.clear268, %bf.shl267
  store i32 %bf.set269, ptr %map_valid207, align 8
  %bf.load271 = load i16, ptr %use_map, align 8
  %116 = lshr i16 %bf.load271, 3
  %117 = and i16 %116, 1
  %bf.value278 = zext i16 %117 to i32
  %bf.shl279 = shl nuw nsw i32 %bf.value278, 22
  %bf.clear280 = and i32 %bf.set269, -4194305
  %bf.set281 = or i32 %bf.clear280, %bf.shl279
  store i32 %bf.set281, ptr %map_valid207, align 8
  %map_csum_len = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 12
  %118 = ptrtoint ptr %map_csum_len to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %map_csum_len, align 4
  %csum = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 4
  %119 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %csum, align 2
  %conv.i = zext i16 %120 to i32
  %map_data_csum = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 11
  %121 = ptrtoint ptr %map_data_csum to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv.i, ptr %map_data_csum, align 8
  %122 = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %122)
  %cmp289.not = icmp eq i16 %117, %122
  br i1 %cmp289.not, label %do.body299, label %if.end241.cleanup329_crit_edge, !prof !209

if.end241.cleanup329_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

do.body299:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_mapping_status.__UNIQUE_ID_ddebug723, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_mapping_status, %if.then311)) #13
          to label %validate_seq [label %if.then311], !srcloc !213

if.then311:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %map_seq242 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %map_seq242, align 8
  %125 = ptrtoint ptr %map_subflow_seq244 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %map_subflow_seq244, align 4
  %127 = ptrtoint ptr %map_data_len246 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %map_data_len246, align 4
  %129 = ptrtoint ptr %map_valid207 to i32
  call void @__asan_load4_noabort(i32 %129)
  %bf.load316 = load i32, ptr %map_valid207, align 8
  %bf.lshr317 = lshr i32 %bf.load316, 22
  %bf.clear318 = and i32 %bf.lshr317, 1
  %130 = ptrtoint ptr %map_data_csum to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %map_data_csum, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_mapping_status.__UNIQUE_ID_ddebug723, ptr noundef nonnull @.str.26, i64 noundef %124, i32 noundef %126, i32 noundef %128, i32 noundef %bf.clear318, i32 noundef %131) #13
  br label %validate_seq

validate_seq:                                     ; preds = %if.then311, %do.body299, %if.then11.validate_seq_crit_edge
  %132 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %icsk_ulp_data.i, align 8
  %copied_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 8
  %134 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %copied_seq.i, align 4
  %ssn_offset.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %133, i32 0, i32 1, i32 0, i32 9
  %136 = ptrtoint ptr %ssn_offset.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ssn_offset.i, align 8
  %sub.i = sub i32 %135, %137
  %map_subflow_seq.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %133, i32 0, i32 1, i32 0, i32 8
  %138 = ptrtoint ptr %map_subflow_seq.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %map_subflow_seq.i, align 4
  %sub.i.i437 = sub i32 %sub.i, %139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i437)
  %cmp.i.i = icmp slt i32 %sub.i.i437, 0
  br i1 %cmp.i.i, label %if.then.i438, label %if.end.i440, !prof !208

if.then.i438:                                     ; preds = %validate_seq
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_bad_map.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_mapping_status, %if.then.i.i439)) #13
          to label %if.then324 [label %if.then.i.i439], !srcloc !213

if.then.i.i439:                                   ; preds = %if.then.i438
  call void @__sanitizer_cov_trace_pc() #15
  %map_data_len.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %133, i32 0, i32 1, i32 0, i32 10
  br label %cleanup.sink.split.i

if.end.i440:                                      ; preds = %validate_seq
  %map_data_len.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %133, i32 0, i32 1, i32 0, i32 10
  %140 = ptrtoint ptr %map_data_len.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %map_data_len.i, align 4
  %142 = add i32 %139, %141
  %sub.i1.i = sub i32 %sub.i, %142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1.i)
  %cmp.i2.i = icmp slt i32 %sub.i1.i, 0
  br i1 %cmp.i2.i, label %if.end326, label %if.then14.i, !prof !209

if.then14.i:                                      ; preds = %if.end.i440
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_bad_map.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_mapping_status, %cleanup.sink.split.i)) #13
          to label %if.then324 [label %cleanup.sink.split.i], !srcloc !213

cleanup.sink.split.i:                             ; preds = %if.then14.i, %if.then.i.i439
  %map_data_len.sink.i = phi ptr [ %map_data_len.i.i, %if.then.i.i439 ], [ %map_data_len.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %map_subflow_seq.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.sink.i = load i32, ptr %map_subflow_seq.i, align 4
  %144 = ptrtoint ptr %map_data_len.sink.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %map_data_len.sink.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbg_bad_map.__UNIQUE_ID_ddebug715, ptr noundef nonnull @.str.32, i32 noundef %sub.i, i32 noundef %.sink.i, i32 noundef %145) #13
  br label %if.then324

if.then324:                                       ; preds = %cleanup.sink.split.i, %if.then14.i, %if.then.i438
  %skc_net.i442 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %146 = ptrtoint ptr %skc_net.i442 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %skc_net.i442, align 4
  %mptcp_statistics.i443 = getelementptr inbounds %struct.net, ptr %147, i32 0, i32 30, i32 8
  %148 = ptrtoint ptr %mptcp_statistics.i443 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mptcp_statistics.i443, align 4
  %tobool.not.i444 = icmp eq ptr %149, null
  br i1 %tobool.not.i444, label %if.then324.cleanup329_crit_edge, label %do.body3.i453, !prof !208

if.then324.cleanup329_crit_edge:                  ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

do.body3.i453:                                    ; preds = %if.then324
  %150 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %151 = ptrtoint ptr %mptcp_statistics.i443 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mptcp_statistics.i443, align 4
  %arrayidx.i445 = getelementptr [43 x i32], ptr %152, i32 0, i32 17
  %153 = ptrtoint ptr %arrayidx.i445 to i32
  %154 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i446 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i446 to ptr
  %cpu.i447 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %cpu.i447 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cpu.i447, align 4
  %arrayidx17.i448 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx17.i448 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx17.i448, align 4
  %add.i449 = add i32 %159, %153
  %160 = inttoptr i32 %add.i449 to ptr
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %add18.i450 = add i32 %162, 1
  store i32 %add18.i450, ptr %160, align 4
  %163 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i451 = and i32 %163, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i451)
  %tobool29.not.i452 = icmp eq i32 %and.i.i.i451, 0
  br i1 %tobool29.not.i452, label %if.then38.i454, label %do.body3.i453.do.end40.i455_crit_edge, !prof !208

do.body3.i453.do.end40.i455_crit_edge:            ; preds = %do.body3.i453
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i455

if.then38.i454:                                   ; preds = %do.body3.i453
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end40.i455

do.end40.i455:                                    ; preds = %if.then38.i454, %do.body3.i453.do.end40.i455_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %150) #13, !srcloc !227
  br label %cleanup329

if.end326:                                        ; preds = %if.end.i440
  %164 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %active_extensions.i.i.i, align 1
  %166 = and i8 %165, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.i.not.i458 = icmp eq i8 %166, 0
  br i1 %tobool.i.not.i458, label %if.end326.validate_csum_crit_edge, label %if.end326.validate_csum.sink.split_crit_edge

if.end326.validate_csum.sink.split_crit_edge:     ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_csum.sink.split

if.end326.validate_csum_crit_edge:                ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_csum

validate_csum.sink.split:                         ; preds = %if.end326.validate_csum.sink.split_crit_edge, %if.then235.validate_csum.sink.split_crit_edge
  tail call void @__skb_ext_del(ptr noundef nonnull %5, i32 noundef 3) #13
  br label %validate_csum

validate_csum:                                    ; preds = %validate_csum.sink.split, %if.end326.validate_csum_crit_edge, %if.end236.validate_csum_crit_edge, %if.then235.validate_csum_crit_edge
  %167 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %icsk_ulp_data.i, align 8
  br i1 %tobool.not, label %validate_csum.cleanup329_crit_edge, label %if.end.i465

validate_csum.cleanup329_crit_edge:               ; preds = %validate_csum
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.end.i465:                                      ; preds = %validate_csum
  %map_csum_len.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %168, i32 0, i32 1, i32 0, i32 12
  %169 = ptrtoint ptr %map_csum_len.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %map_csum_len.i, align 4
  %map_data_len.i463 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %168, i32 0, i32 1, i32 0, i32 10
  %171 = ptrtoint ptr %map_data_len.i463 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %map_data_len.i463, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %170)
  %cmp.i464 = icmp eq i32 %172, %170
  br i1 %cmp.i464, label %if.end.i465.cleanup329_crit_edge, label %if.end2.i

if.end.i465.cleanup329_crit_edge:                 ; preds = %if.end.i465
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.end2.i:                                        ; preds = %if.end.i465
  %sub.i466 = sub i32 %172, %170
  %copied_seq.i467 = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 8
  %map_data_csum.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %168, i32 0, i32 1, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end26.i.for.cond.i_crit_edge, %if.end2.i
  %skb.addr.0.i = phi ptr [ %5, %if.end2.i ], [ %189, %if.end26.i.for.cond.i_crit_edge ]
  %delta.0.i = phi i32 [ %sub.i466, %if.end2.i ], [ %delta.1.i, %if.end26.i.for.cond.i_crit_edge ]
  %173 = ptrtoint ptr %copied_seq.i467 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %copied_seq.i467, align 4
  %175 = ptrtoint ptr %map_csum_len.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %map_csum_len.i, align 4
  %add.i468 = add i32 %176, %174
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3
  %177 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %cb.i, align 8
  %sub8.i = sub i32 %add.i468, %178
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 6
  %179 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %len9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %sub8.i)
  %cmp10.i = icmp ugt i32 %180, %sub8.i
  br i1 %cmp10.i, label %if.then11.i, label %for.cond.i.if.end23.i_crit_edge

for.cond.i.if.end23.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then11.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub14.i = sub i32 %180, %sub8.i
  %181 = tail call i32 @llvm.umin.i32(i32 %sub14.i, i32 %delta.0.i) #13
  %call16.i = tail call i32 @skb_checksum(ptr noundef %skb.addr.0.i, i32 noundef %sub8.i, i32 noundef %181, i32 noundef 0) #13
  %182 = ptrtoint ptr %map_data_csum.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %map_data_csum.i, align 8
  %184 = ptrtoint ptr %map_csum_len.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %map_csum_len.i, align 4
  %and.i.i.i469 = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i469)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i469, 0
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %call16.i, i32 %call16.i, i32 24) #13
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %call16.i, i32 %or.i.i.i.i
  %add.i.i.i = add i32 %retval.0.i.i.i, %183
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %retval.0.i.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %186 = ptrtoint ptr %map_data_csum.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add1.i.i.i, ptr %map_data_csum.i, align 8
  %sub20.i = sub i32 %delta.0.i, %181
  %add22.i = add i32 %185, %181
  %187 = ptrtoint ptr %map_csum_len.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %add22.i, ptr %map_csum_len.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then11.i, %for.cond.i.if.end23.i_crit_edge
  %delta.1.i = phi i32 [ %sub20.i, %if.then11.i ], [ %delta.0.i, %for.cond.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.1.i)
  %cmp24.i = icmp eq i32 %delta.1.i, 0
  br i1 %cmp24.i, label %for.end.i, label %if.end26.i

if.end26.i:                                       ; preds = %if.end23.i
  %188 = ptrtoint ptr %skb.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %skb.addr.0.i, align 8
  %cmp.i.i470 = icmp eq ptr %189, %sk_receive_queue
  br i1 %cmp.i.i470, label %if.then28.i, label %if.end26.i.for.cond.i_crit_edge

if.end26.i.for.cond.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then28.i:                                      ; preds = %if.end26.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 4
  %190 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %191)
  %cmp29.i = icmp eq i8 %191, 7
  br i1 %cmp29.i, label %while.cond.preheader.i, label %if.then28.i.cleanup329_crit_edge, !prof !208

if.then28.i.cleanup329_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

while.cond.preheader.i:                           ; preds = %if.then28.i
  %192 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i105108.i = icmp eq ptr %193, %sk_receive_queue
  %tobool36.not107109.i = icmp eq ptr %193, null
  %tobool36.not110.i = or i1 %cmp.i105108.i, %tobool36.not107109.i
  br i1 %tobool36.not110.i, label %while.cond.preheader.i.cleanup329_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.cleanup329_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 8, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %194 = phi ptr [ %193, %while.body.lr.ph.i ], [ %204, %while.body.i.while.body.i_crit_edge ]
  %195 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %196, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %194, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.46, ptr %194, i32 0, i32 1
  %199 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %194, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.46, ptr %198, i32 0, i32 1
  %201 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %200, ptr %prev17.i.i.i, align 4
  %202 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile ptr %198, ptr %200, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %194) #13
  %203 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i105.i = icmp eq ptr %204, %sk_receive_queue
  %tobool36.not107.i = icmp eq ptr %204, null
  %tobool36.not.i = or i1 %cmp.i105.i, %tobool36.not107.i
  br i1 %tobool36.not.i, label %while.body.i.cleanup329_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.cleanup329_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

for.end.i:                                        ; preds = %if.end23.i
  %map_seq.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %168, i32 0, i32 1, i32 0, i32 4
  %205 = ptrtoint ptr %map_seq.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %map_seq.i, align 8
  %map_subflow_seq.i471 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %168, i32 0, i32 1, i32 0, i32 8
  %207 = ptrtoint ptr %map_subflow_seq.i471 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %map_subflow_seq.i471, align 4
  %209 = ptrtoint ptr %map_data_len.i463 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %map_data_len.i463, align 4
  %map_data_fin.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %168, i32 0, i32 1, i32 0, i32 13
  %211 = ptrtoint ptr %map_data_fin.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %bf.load.i = load i32, ptr %map_data_fin.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 21
  %bf.clear.i = and i32 %bf.lshr.i, 1
  %add40.i = add i32 %bf.clear.i, %210
  %conv41.i = trunc i32 %add40.i to i16
  %212 = ptrtoint ptr %map_data_csum.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %map_data_csum.i, align 8
  %call43.i = tail call zeroext i16 @__mptcp_make_csum(i64 noundef %206, i32 noundef %208, i16 noundef zeroext %conv41.i, i32 noundef %213) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call43.i)
  %tobool44.not.i = icmp eq i16 %call43.i, 0
  br i1 %tobool44.not.i, label %for.end.i.cleanup329_crit_edge, label %if.then51.i, !prof !209

for.end.i.cleanup329_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup329

if.then51.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %214 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %skc_net.i.i, align 4
  tail call fastcc void @MPTCP_INC_STATS(ptr noundef %215, i32 noundef 18) #13
  %216 = ptrtoint ptr %map_data_fin.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %bf.load53.i = load i32, ptr %map_data_fin.i, align 8
  %bf.set.i = or i32 %bf.load53.i, 131072
  store i32 %bf.set.i, ptr %map_data_fin.i, align 8
  %217 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %skc_net.i.i, align 4
  tail call fastcc void @MPTCP_INC_STATS(ptr noundef %218, i32 noundef 38) #13
  %219 = ptrtoint ptr %map_data_fin.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %bf.load56.i = load i32, ptr %map_data_fin.i, align 8
  %220 = and i32 %bf.load56.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool59.not.i = icmp eq i32 %220, 0
  %cond60.i = select i1 %tobool59.not.i, i32 4, i32 1
  br label %cleanup329

cleanup329:                                       ; preds = %if.then51.i, %for.end.i.cleanup329_crit_edge, %while.body.i.cleanup329_crit_edge, %while.cond.preheader.i.cleanup329_crit_edge, %if.then28.i.cleanup329_crit_edge, %if.end.i465.cleanup329_crit_edge, %validate_csum.cleanup329_crit_edge, %do.end40.i455, %if.then324.cleanup329_crit_edge, %if.end241.cleanup329_crit_edge, %if.then238, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup329_crit_edge, %land.lhs.true126.cleanup329_crit_edge, %if.else.cleanup329_crit_edge, %if.then.i, %if.then123.cleanup329_crit_edge, %do.end40.i, %if.then80.cleanup329_crit_edge, %if.end67, %land.lhs.true.cleanup329_crit_edge, %if.end.cleanup329_crit_edge, %entry.cleanup329_crit_edge
  %retval.1 = phi i32 [ 1, %if.then238 ], [ 2, %if.end67 ], [ 2, %entry.cleanup329_crit_edge ], [ 4, %if.end.cleanup329_crit_edge ], [ 3, %land.lhs.true126.cleanup329_crit_edge ], [ 3, %if.else.cleanup329_crit_edge ], [ 1, %if.end241.cleanup329_crit_edge ], [ 1, %if.then80.cleanup329_crit_edge ], [ 1, %do.end40.i ], [ 0, %if.then123.cleanup329_crit_edge ], [ 0, %if.then.i ], [ 3, %if.else.i.i.i.i.cleanup329_crit_edge ], [ 3, %if.end15.sink.split.i.i.i.i ], [ 1, %if.then324.cleanup329_crit_edge ], [ 1, %do.end40.i455 ], [ %cond60.i, %if.then51.i ], [ 0, %validate_csum.cleanup329_crit_edge ], [ 0, %if.end.i465.cleanup329_crit_edge ], [ 2, %if.then28.i.cleanup329_crit_edge ], [ 0, %for.end.i.cleanup329_crit_edge ], [ 2, %while.cond.preheader.i.cleanup329_crit_edge ], [ 1, %land.lhs.true.cleanup329_crit_edge ], [ 2, %while.body.i.cleanup329_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_subflow_check_data_avail(i8 noundef zeroext %status, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_subflow_check_data_avail, i32 0, i32 1), ptr blockaddress(@trace_subflow_check_data_avail, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !213

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !239
  %call42 = tail call i32 @__traceiter_subflow_check_data_avail(ptr noundef null, i8 noundef zeroext %status, ptr noundef %skb) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !240
  %13 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !209

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !241
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_subflow_check_data_avail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_subflow_check_data_avail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_subflow_check_data_avail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_subflow_check_data_avail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 173, ptr noundef nonnull @.str.28) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !242
  %31 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_subflow_discard_data(ptr noundef %ssk, ptr noundef %skb, i64 noundef %limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv1 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv1, i64 %limit)
  %cmp.not = icmp ugt i64 %conv1, %limit
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tcp_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tcp_flags, align 4
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %add = add i32 %3, %7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %extract.t44 = trunc i64 %limit to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.off0 = phi i32 [ %add, %cond.true ], [ %extract.t44, %cond.false ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_subflow_discard_data.__UNIQUE_ID_ddebug724, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_subflow_discard_data, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %map_subflow_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 8
  %10 = ptrtoint ptr %map_subflow_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_subflow_seq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_subflow_discard_data.__UNIQUE_ID_ddebug724, ptr noundef nonnull @.str.35, i32 noundef %cond.off0, i32 noundef %9, i32 noundef %11) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 8
  %14 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end.MPTCP_INC_STATS.exit_crit_edge, label %do.body3.i, !prof !208

do.end.MPTCP_INC_STATS.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %MPTCP_INC_STATS.exit

do.body3.i:                                       ; preds = %do.end
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %17 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mptcp_statistics.i, align 4
  %arrayidx.i = getelementptr [43 x i32], ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %arrayidx.i to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i, align 4
  %add.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add18.i = add i32 %28, 1
  store i32 %add18.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool29.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool29.not.i, label %if.then38.i, label %do.body3.i.do.end40.i_crit_edge, !prof !208

do.body3.i.do.end40.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i

if.then38.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then38.i, %do.body3.i.do.end40.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #13, !srcloc !227
  br label %MPTCP_INC_STATS.exit

MPTCP_INC_STATS.exit:                             ; preds = %do.end40.i, %do.end.MPTCP_INC_STATS.exit_crit_edge
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 8
  %30 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %copied_seq, align 4
  %add16 = add i32 %31, %cond.off0
  store i32 %add16, ptr %copied_seq, align 4
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end_seq, align 4
  %sub.i = sub i32 %add16, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %MPTCP_INC_STATS.exit.if.end23_crit_edge, label %if.then22

MPTCP_INC_STATS.exit.if.end23_crit_edge:          ; preds = %MPTCP_INC_STATS.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then22:                                        ; preds = %MPTCP_INC_STATS.exit
  call void @__sanitizer_cov_trace_pc() #15
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %38 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %skb, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %prev17.i.i, align 4
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %37, ptr %39, align 8
  tail call void @__kfree_skb(ptr noundef %skb) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %MPTCP_INC_STATS.exit.if.end23_crit_edge
  %tcp_sock.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %tcp_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tcp_sock.i.i, align 8
  %copied_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %copied_seq.i, align 4
  %ssn_offset.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 9
  %46 = ptrtoint ptr %ssn_offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ssn_offset.i, align 8
  %map_subflow_seq.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 8
  %48 = ptrtoint ptr %map_subflow_seq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %map_subflow_seq.i, align 4
  %50 = add i32 %47, %49
  %sub2.i = sub i32 %45, %50
  %map_data_len = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 10
  %51 = ptrtoint ptr %map_data_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %map_data_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %52)
  %cmp26.not = icmp ult i32 %sub2.i, %52
  br i1 %cmp26.not, label %if.end23.if.end29_crit_edge, label %if.then28

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %map_valid = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %53 = ptrtoint ptr %map_valid to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load = load i32, ptr %map_valid, align 8
  %bf.clear = and i32 %bf.load, -8388609
  store i32 %bf.clear, ptr %map_valid, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end23.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @subflow_sched_work_if_closed(ptr noundef %msk, ptr noundef %ssk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp.not = icmp eq i8 %1, 7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !208

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 8
  %2 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %sk_receive_queue
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 18
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !207
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !208

if.then6.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !209

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %work = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work) #13
  br i1 %call.i.i, label %sock_hold.exit.cleanup_crit_edge, label %if.then8

sock_hold.exit.cleanup_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @sock_put(ptr noundef %msk)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %sock_hold.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_get_mapping_status(ptr noundef %mpext) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_mapping_status, i32 0, i32 1), ptr blockaddress(@trace_get_mapping_status, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !213

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !243
  %call42 = tail call i32 @__traceiter_get_mapping_status(ptr noundef null, ptr noundef %mpext) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !244
  %13 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !209

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !241
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_mapping_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_mapping_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_get_mapping_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_get_mapping_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 120, ptr noundef nonnull @.str.28) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !242
  %31 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @MPTCP_INC_STATS(ptr nocapture noundef readonly %net, i32 noundef %field) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %mptcp_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 8
  %0 = ptrtoint ptr %mptcp_statistics to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mptcp_statistics, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end47_crit_edge, label %do.body3, !prof !208

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

do.body3:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %3 = ptrtoint ptr %mptcp_statistics to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mptcp_statistics, align 4
  %arrayidx = getelementptr [43 x i32], ptr %4, i32 0, i32 %field
  %5 = ptrtoint ptr %arrayidx to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx17, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add18 = add i32 %14, 1
  store i32 %add18, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool29.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool29.not, label %if.then38, label %do.body3.do.end40_crit_edge, !prof !208

do.body3.do.end40_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40

if.then38:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end40

do.end40:                                         ; preds = %if.then38, %do.body3.do.end40_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #13, !srcloc !227
  br label %if.end47

if.end47:                                         ; preds = %do.end40, %entry.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_update_rcv_data_fin(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @skb_is_fully_mapped(ptr nocapture noundef readonly %ssk, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 8
  %0 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %copied_seq, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb, align 8
  %sub = sub i32 %1, %3
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp.not = icmp ugt i32 %5, %sub
  br i1 %cmp.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @skb_is_fully_mapped.__already_done, align 1
  br i1 %.b54, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !209

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @skb_is_fully_mapped.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 816, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %6 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sub40 = sub i32 %5, %sub
  %conv = zext i32 %sub40 to i64
  %map_data_len = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 10
  %8 = ptrtoint ptr %map_data_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_data_len, align 4
  %conv41 = zext i32 %9 to i64
  %tcp_sock.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %tcp_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcp_sock.i.i, align 8
  %copied_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %copied_seq.i, align 4
  %ssn_offset.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 9
  %14 = ptrtoint ptr %ssn_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssn_offset.i, align 8
  %map_subflow_seq.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %7, i32 0, i32 1, i32 0, i32 8
  %16 = ptrtoint ptr %map_subflow_seq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_subflow_seq.i, align 4
  %18 = add i32 %15, %17
  %sub2.i = sub i32 %13, %18
  %conv.i = zext i32 %sub2.i to i64
  %sub43 = sub nsw i64 %conv41, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub43, i64 %conv)
  %cmp44 = icmp uge i64 %sub43, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp44, %if.end38 ], [ true, %if.then ], [ true, %land.rhs.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_get_mapping_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__mptcp_expand_seq(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__mptcp_make_csum(i64 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_subflow_check_data_avail(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_sk_clone(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subflow_req_destructor(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_req_destructor.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_req_destructor, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_req_destructor.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.46, ptr noundef %req) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %msk = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 11
  %0 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msk, align 8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %do.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !211
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i, !prof !209

if.end5.i.i.i.i.if.end7_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %if.end7

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @sk_free(ptr noundef nonnull %1) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end7_crit_edge, %do.end.if.end7_crit_edge
  tail call void @mptcp_token_destroy_request(ptr noundef %req) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.request_sock_ops, ptr @tcp_request_sock_ops, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @tcp_request_sock_ops, i32 0, i32 7), align 4
  tail call void %3(ptr noundef %req) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_token_destroy_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @subflow_check_req(ptr noundef %req, ptr noundef %sk_listener, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %mp_opt = alloca %struct.mptcp_options_received, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk_listener, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mp_opt) #13
  %2 = call ptr @memset(ptr %mp_opt, i32 255, i32 136)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_check_req.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_check_req, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_check_req.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.49, ptr noundef %req, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %md5sig_info = getelementptr inbounds %struct.tcp_sock, ptr %sk_listener, i32 0, i32 118
  %3 = ptrtoint ptr %md5sig_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %md5sig_info, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.end13, label %do.end.cleanup184_crit_edge

do.end.cleanup184_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

if.end13:                                         ; preds = %do.end
  call void @mptcp_get_options(ptr noundef %sk_listener, ptr noundef %skb, ptr noundef nonnull %mp_opt) #13
  %suboptions = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %5 = ptrtoint ptr %suboptions to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %suboptions, align 8
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %and22 = and i32 %conv, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool14.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end13
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i.i, align 4
  %mptcp_statistics.i.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 8
  %9 = ptrtoint ptr %mptcp_statistics.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mptcp_statistics.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then30.SUBFLOW_REQ_INC_STATS.exit_crit_edge, label %do.body3.i.i, !prof !208

if.then30.SUBFLOW_REQ_INC_STATS.exit_crit_edge:   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %SUBFLOW_REQ_INC_STATS.exit

do.body3.i.i:                                     ; preds = %if.then30
  %11 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %12 = ptrtoint ptr %mptcp_statistics.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mptcp_statistics.i.i, align 4
  %arrayidx.i.i = getelementptr [43 x i32], ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  %15 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17.i.i, align 4
  %add.i.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add18.i.i = add i32 %23, 1
  store i32 %add18.i.i, ptr %21, align 4
  %24 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool29.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then38.i.i, label %do.body3.i.i.do.end40.i.i_crit_edge, !prof !208

do.body3.i.i.do.end40.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i.i

if.then38.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end40.i.i

do.end40.i.i:                                     ; preds = %if.then38.i.i, %do.body3.i.i.do.end40.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #13, !srcloc !227
  br label %SUBFLOW_REQ_INC_STATS.exit

SUBFLOW_REQ_INC_STATS.exit:                       ; preds = %do.end40.i.i, %if.then30.SUBFLOW_REQ_INC_STATS.exit_crit_edge
  br i1 %tobool23.not, label %land.lhs.true.critedge, label %SUBFLOW_REQ_INC_STATS.exit.cleanup184_crit_edge

SUBFLOW_REQ_INC_STATS.exit.cleanup184_crit_edge:  ; preds = %SUBFLOW_REQ_INC_STATS.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

if.else:                                          ; preds = %if.end13
  br i1 %tobool23.not, label %if.else.cleanup184_crit_edge, label %if.then35

if.else.cleanup184_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

if.then35:                                        ; preds = %if.else
  %skc_net.i.i251 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 9
  %25 = ptrtoint ptr %skc_net.i.i251 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i.i251, align 4
  %mptcp_statistics.i.i252 = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30, i32 8
  %27 = ptrtoint ptr %mptcp_statistics.i.i252 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mptcp_statistics.i.i252, align 4
  %tobool.not.i.i253 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i253, label %if.then35.SUBFLOW_REQ_INC_STATS.exit265_crit_edge, label %do.body3.i.i262, !prof !208

if.then35.SUBFLOW_REQ_INC_STATS.exit265_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %SUBFLOW_REQ_INC_STATS.exit265

do.body3.i.i262:                                  ; preds = %if.then35
  %29 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %30 = ptrtoint ptr %mptcp_statistics.i.i252 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mptcp_statistics.i.i252, align 4
  %arrayidx.i.i254 = getelementptr [43 x i32], ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %arrayidx.i.i254 to i32
  %33 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i255 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i255 to ptr
  %cpu.i.i256 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i.i256 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i256, align 4
  %arrayidx17.i.i257 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx17.i.i257 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx17.i.i257, align 4
  %add.i.i258 = add i32 %38, %32
  %39 = inttoptr i32 %add.i.i258 to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add18.i.i259 = add i32 %41, 1
  store i32 %add18.i.i259, ptr %39, align 4
  %42 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i.i260 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i260)
  %tobool29.not.i.i261 = icmp eq i32 %and.i.i.i.i260, 0
  br i1 %tobool29.not.i.i261, label %if.then38.i.i263, label %do.body3.i.i262.do.end40.i.i264_crit_edge, !prof !208

do.body3.i.i262.do.end40.i.i264_crit_edge:        ; preds = %do.body3.i.i262
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i.i264

if.then38.i.i263:                                 ; preds = %do.body3.i.i262
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end40.i.i264

do.end40.i.i264:                                  ; preds = %if.then38.i.i263, %do.body3.i.i262.do.end40.i.i264_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #13, !srcloc !227
  br label %SUBFLOW_REQ_INC_STATS.exit265

SUBFLOW_REQ_INC_STATS.exit265:                    ; preds = %do.end40.i.i264, %if.then35.SUBFLOW_REQ_INC_STATS.exit265_crit_edge
  %request_mptcp90 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %43 = ptrtoint ptr %request_mptcp90 to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load91 = load i32, ptr %request_mptcp90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load91)
  %tobool93.not = icmp sgt i32 %bf.load91, -1
  br i1 %tobool93.not, label %SUBFLOW_REQ_INC_STATS.exit265.cleanup184_crit_edge, label %if.then94

SUBFLOW_REQ_INC_STATS.exit265.cleanup184_crit_edge: ; preds = %SUBFLOW_REQ_INC_STATS.exit265
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

land.lhs.true.critedge:                           ; preds = %SUBFLOW_REQ_INC_STATS.exit
  %request_mptcp = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %44 = ptrtoint ptr %request_mptcp to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load = load i32, ptr %request_mptcp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool40.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool40.not, label %land.lhs.true.critedge.cleanup184_crit_edge, label %if.then41

land.lhs.true.critedge.cleanup184_crit_edge:      ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

if.then41:                                        ; preds = %land.lhs.true.critedge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %45 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cb, align 8
  %ssn_offset = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 7
  %47 = ptrtoint ptr %ssn_offset to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ssn_offset, align 4
  %local_key = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 4
  %syncookie = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 4
  %token = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 6
  %idsn = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 5
  br label %again

again:                                            ; preds = %again.backedge, %if.then41
  %retries.0 = phi i32 [ 4, %if.then41 ], [ %retries.0.be, %again.backedge ]
  br label %do.body42

do.body42:                                        ; preds = %do.body42.do.body42_crit_edge, %again
  call void @get_random_bytes(ptr noundef %local_key, i32 noundef 8) #13
  %48 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %local_key, align 8
  %cmp = icmp eq i64 %49, 0
  br i1 %cmp, label %do.body42.do.body42_crit_edge, label %do.end46

do.body42.do.body42_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body42

do.end46:                                         ; preds = %do.body42
  %50 = ptrtoint ptr %syncookie to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load47 = load i8, ptr %syncookie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47)
  %tobool49.not = icmp sgt i8 %bf.load47, -1
  br i1 %tobool49.not, label %if.end68, label %if.then56, !prof !209

if.then56:                                        ; preds = %do.end46
  call void @mptcp_crypto_key_sha(i64 noundef %49, ptr noundef %token, ptr noundef %idsn) #13
  %51 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %token, align 8
  %call59 = call zeroext i1 @mptcp_token_exists(i32 noundef %52) #13
  br i1 %call59, label %if.then60, label %if.else65

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %cmp61 = icmp sgt i32 %retries.0, 0
  br i1 %cmp61, label %if.then60.again.backedge_crit_edge, label %if.end64

if.then60.again.backedge_crit_edge:               ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

again.backedge:                                   ; preds = %if.else77.again.backedge_crit_edge, %if.then60.again.backedge_crit_edge
  %retries.0.be = add nsw i32 %retries.0, -1
  br label %again

if.end64:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @SUBFLOW_REQ_INC_STATS(ptr noundef %req, i32 noundef 7)
  br label %cleanup184

if.else65:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %mp_capable = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %53 = ptrtoint ptr %mp_capable to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load66 = load i8, ptr %mp_capable, align 8
  %bf.set = or i8 %bf.load66, -128
  store i8 %bf.set, ptr %mp_capable, align 8
  br label %cleanup184

if.end68:                                         ; preds = %do.end46
  %call69 = call i32 @mptcp_token_new_request(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.else77

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %mp_capable73 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %54 = ptrtoint ptr %mp_capable73 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load74 = load i8, ptr %mp_capable73, align 8
  %bf.set76 = or i8 %bf.load74, -128
  store i8 %bf.set76, ptr %mp_capable73, align 8
  br label %cleanup184

if.else77:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %cmp79 = icmp sgt i32 %retries.0, 0
  br i1 %cmp79, label %if.else77.again.backedge_crit_edge, label %if.else82

if.else77.again.backedge_crit_edge:               ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

if.else82:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @SUBFLOW_REQ_INC_STATS(ptr noundef %req, i32 noundef 7)
  br label %cleanup184

if.then94:                                        ; preds = %SUBFLOW_REQ_INC_STATS.exit265
  %cb95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %55 = ptrtoint ptr %cb95 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cb95, align 8
  %ssn_offset98 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 7
  %57 = ptrtoint ptr %ssn_offset98 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ssn_offset98, align 4
  %mp_join = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %58 = ptrtoint ptr %mp_join to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load99 = load i8, ptr %mp_join, align 8
  %backup = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %59 = ptrtoint ptr %backup to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load102 = load i16, ptr %backup, align 4
  %60 = trunc i16 %bf.load102 to i8
  %61 = shl i8 %60, 2
  %bf.shl = and i8 %61, 32
  %bf.set101 = and i8 %bf.load99, -97
  %bf.clear107 = or i8 %bf.set101, 64
  %bf.set108 = or i8 %bf.shl, %bf.clear107
  store i8 %bf.set108, ptr %mp_join, align 8
  %join_id = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 11
  %62 = ptrtoint ptr %join_id to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %join_id, align 2
  %remote_id = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 3
  %64 = ptrtoint ptr %remote_id to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %remote_id, align 2
  %token109 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 8
  %65 = ptrtoint ptr %token109 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %token109, align 4
  %token110 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 6
  %67 = ptrtoint ptr %token110 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %token110, align 8
  %nonce = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 9
  %68 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nonce, align 8
  %remote_nonce = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 10
  %70 = ptrtoint ptr %remote_nonce to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %remote_nonce, align 4
  %71 = ptrtoint ptr %skc_net.i.i251 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %skc_net.i.i251, align 4
  %call3.i = call ptr @mptcp_token_get_sock(ptr noundef %72, i32 noundef %66) #13
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then94
  %73 = ptrtoint ptr %skc_net.i.i251 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skc_net.i.i251, align 4
  %mptcp_statistics.i.i.i = getelementptr inbounds %struct.net, ptr %74, i32 0, i32 30, i32 8
  %75 = ptrtoint ptr %mptcp_statistics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mptcp_statistics.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i.i, label %if.then.i.if.then114_crit_edge, label %do.body3.i.i.i, !prof !208

if.then.i.if.then114_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then114

do.body3.i.i.i:                                   ; preds = %if.then.i
  %77 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %78 = ptrtoint ptr %mptcp_statistics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mptcp_statistics.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [43 x i32], ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  %81 = call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i267 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i267 to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx17.i.i.i, align 4
  %add.i.i.i = add i32 %86, %80
  %87 = inttoptr i32 %add.i.i.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add18.i.i.i = add i32 %89, 1
  store i32 %add18.i.i.i, ptr %87, align 4
  %90 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i.i.i = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %if.then38.i.i.i, label %do.body3.i.i.i.do.end40.i.i.i_crit_edge, !prof !208

do.body3.i.i.i.do.end40.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i.i.i

if.then38.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end40.i.i.i

do.end40.i.i.i:                                   ; preds = %if.then38.i.i.i, %do.body3.i.i.i.do.end40.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #13, !srcloc !227
  br label %if.then114

if.end.i:                                         ; preds = %if.then94
  %call4.i = call i32 @mptcp_pm_get_local_id(ptr noundef nonnull %call3.i, ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end115

if.then5.i:                                       ; preds = %if.end.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call3.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !211
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then114_crit_edge, label %if.then10.i.i.i.i.i, !prof !209

if.end5.i.i.i.i.i.if.then114_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then114

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #13
  br label %if.then114

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  call void @sk_free(ptr noundef nonnull %call3.i) #13
  br label %if.then114

if.then114:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then114_crit_edge, %do.end40.i.i.i, %if.then.i.if.then114_crit_edge
  %msk275 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 11
  %92 = ptrtoint ptr %msk275 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %msk275, align 8
  %call.i = call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 3) #13
  %tobool.not.i269 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i269, label %if.then114.cleanup184_crit_edge, label %if.then.i270

if.then114.cleanup184_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

if.then.i270:                                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #15
  %93 = call ptr @memset(ptr %call.i, i32 0, i32 32)
  %reset_reason.i = getelementptr inbounds %struct.mptcp_ext, ptr %call.i, i32 0, i32 5
  %94 = ptrtoint ptr %reset_reason.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 16, ptr %reset_reason.i, align 8
  br label %cleanup184

if.end115:                                        ; preds = %if.end.i
  %conv.i = trunc i32 %call4.i to i8
  %local_id7.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 2
  %95 = ptrtoint ptr %local_id7.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv.i, ptr %local_id7.i, align 1
  %msk = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 11
  %96 = ptrtoint ptr %msk to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call3.i, ptr %msk, align 8
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %sk_listener, i32 0, i32 6
  %97 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %inet_sport.i, align 8
  %inet_sport2.i = getelementptr inbounds %struct.inet_sock, ptr %call3.i, i32 0, i32 6
  %99 = ptrtoint ptr %inet_sport2.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %inet_sport2.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp.i272.not = icmp eq i16 %98, %100
  br i1 %cmp.i272.not, label %if.end115.if.end145_crit_edge, label %do.body119

if.end115.if.end145_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

do.body119:                                       ; preds = %if.end115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_check_req.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_check_req, %if.then131)) #13
          to label %do.end140 [label %if.then131], !srcloc !213

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %inet_sport.i, align 8
  %conv133 = zext i16 %102 to i32
  %103 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %msk, align 8
  %inet_sport136 = getelementptr inbounds %struct.inet_sock, ptr %104, i32 0, i32 6
  %105 = ptrtoint ptr %inet_sport136 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %inet_sport136, align 8
  %conv137 = zext i16 %106 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_check_req.__UNIQUE_ID_ddebug695, ptr noundef nonnull @.str.51, i32 noundef %conv133, i32 noundef %conv137) #13
  br label %do.end140

do.end140:                                        ; preds = %if.then131, %do.body119
  %107 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %msk, align 8
  %call142 = call zeroext i1 @mptcp_pm_sport_in_anno_list(ptr noundef %108, ptr noundef %sk_listener) #13
  br i1 %call142, label %if.end144, label %if.then143

if.then143:                                       ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @SUBFLOW_REQ_INC_STATS(ptr noundef %req, i32 noundef 31)
  br label %cleanup184

if.end144:                                        ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @SUBFLOW_REQ_INC_STATS(ptr noundef %req, i32 noundef 28)
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end115.if.end145_crit_edge
  call fastcc void @subflow_req_create_thmac(ptr noundef %req)
  %syncookie146 = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 4
  %109 = ptrtoint ptr %syncookie146 to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load147 = load i8, ptr %syncookie146, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load147)
  %tobool149.not = icmp sgt i8 %bf.load147, -1
  br i1 %tobool149.not, label %if.end145.do.body163_crit_edge, label %if.then156, !prof !209

if.end145.do.body163_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body163

if.then156:                                       ; preds = %if.end145
  %110 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %msk, align 8
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load volatile i8, ptr %skc_state.i.i.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp.i.i = icmp eq i8 %113, 1
  br i1 %cmp.i.i, label %mptcp_is_fully_established.exit.i, label %if.then156.cleanup184_crit_edge

if.then156.cleanup184_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

mptcp_is_fully_established.exit.i:                ; preds = %if.then156
  %fully_established.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %111, i32 0, i32 23
  %114 = ptrtoint ptr %fully_established.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load volatile i8, ptr %fully_established.i.i, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.i.not.i = icmp eq i8 %115, 0
  br i1 %tobool.i.not.i, label %mptcp_is_fully_established.exit.i.cleanup184_crit_edge, label %mptcp_can_accept_new_subflow.exit

mptcp_is_fully_established.exit.i.cleanup184_crit_edge: ; preds = %mptcp_is_fully_established.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

mptcp_can_accept_new_subflow.exit:                ; preds = %mptcp_is_fully_established.exit.i
  %accept_subflow.i = getelementptr inbounds %struct.mptcp_sock, ptr %111, i32 0, i32 40, i32 8
  %116 = ptrtoint ptr %accept_subflow.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load volatile i8, ptr %accept_subflow.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.i.not = icmp eq i8 %117, 0
  br i1 %tobool.i.not, label %mptcp_can_accept_new_subflow.exit.cleanup184_crit_edge, label %if.then159

mptcp_can_accept_new_subflow.exit.cleanup184_crit_edge: ; preds = %mptcp_can_accept_new_subflow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

if.then159:                                       ; preds = %mptcp_can_accept_new_subflow.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @subflow_init_req_cookie_join_save(ptr noundef %req, ptr noundef %skb) #13
  br label %do.body163

do.body163:                                       ; preds = %if.then159, %if.end145.do.body163_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_check_req.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_check_req, %if.then175)) #13
          to label %cleanup184 [label %if.then175], !srcloc !213

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #15
  %118 = ptrtoint ptr %token110 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %token110, align 8
  %120 = ptrtoint ptr %remote_nonce to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %remote_nonce, align 4
  %122 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %msk, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_check_req.__UNIQUE_ID_ddebug696, ptr noundef nonnull @.str.53, i32 noundef %119, i32 noundef %121, ptr noundef %123) #13
  br label %cleanup184

cleanup184:                                       ; preds = %if.then175, %do.body163, %mptcp_can_accept_new_subflow.exit.cleanup184_crit_edge, %mptcp_is_fully_established.exit.i.cleanup184_crit_edge, %if.then156.cleanup184_crit_edge, %if.then143, %if.then.i270, %if.then114.cleanup184_crit_edge, %if.else82, %if.then72, %if.else65, %if.end64, %land.lhs.true.critedge.cleanup184_crit_edge, %SUBFLOW_REQ_INC_STATS.exit265.cleanup184_crit_edge, %if.else.cleanup184_crit_edge, %SUBFLOW_REQ_INC_STATS.exit.cleanup184_crit_edge, %do.end.cleanup184_crit_edge
  %retval.1 = phi i32 [ -1, %if.then143 ], [ -22, %do.end.cleanup184_crit_edge ], [ 0, %SUBFLOW_REQ_INC_STATS.exit.cleanup184_crit_edge ], [ 0, %if.end64 ], [ 0, %if.else65 ], [ -1, %mptcp_can_accept_new_subflow.exit.cleanup184_crit_edge ], [ 0, %land.lhs.true.critedge.cleanup184_crit_edge ], [ 0, %if.else.cleanup184_crit_edge ], [ 0, %if.else82 ], [ 0, %if.then72 ], [ 0, %SUBFLOW_REQ_INC_STATS.exit265.cleanup184_crit_edge ], [ 0, %if.then175 ], [ -1, %if.then114.cleanup184_crit_edge ], [ -1, %if.then.i270 ], [ 0, %do.body163 ], [ -1, %mptcp_is_fully_established.exit.i.cleanup184_crit_edge ], [ -1, %if.then156.cleanup184_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mp_opt) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SUBFLOW_REQ_INC_STATS(ptr nocapture noundef readonly %req, i32 noundef %field) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 8
  %2 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.MPTCP_INC_STATS.exit_crit_edge, label %do.body3.i, !prof !208

entry.MPTCP_INC_STATS.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %MPTCP_INC_STATS.exit

do.body3.i:                                       ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !225
  %5 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mptcp_statistics.i, align 4
  %arrayidx.i = getelementptr [43 x i32], ptr %6, i32 0, i32 %field
  %7 = ptrtoint ptr %arrayidx.i to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add18.i = add i32 %16, 1
  store i32 %add18.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !226
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool29.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool29.not.i, label %if.then38.i, label %do.body3.i.do.end40.i_crit_edge, !prof !208

do.body3.i.do.end40.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i

if.then38.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then38.i, %do.body3.i.do.end40.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #13, !srcloc !227
  br label %MPTCP_INC_STATS.exit

MPTCP_INC_STATS.exit:                             ; preds = %do.end40.i, %entry.MPTCP_INC_STATS.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_token_exists(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_pm_sport_in_anno_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @subflow_req_create_thmac(ptr noundef %subflow_req) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [8 x i8], align 4
  %hmac = alloca [32 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msk1 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 11
  %0 = ptrtoint ptr %msk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msk1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hmac) #13
  %local_nonce = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 9
  %2 = call ptr @memset(ptr %hmac, i32 255, i32 32)
  tail call void @get_random_bytes(ptr noundef %local_nonce, i32 noundef 4) #13
  %local_key = getelementptr inbounds %struct.mptcp_sock, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %local_key, align 8
  %remote_key = getelementptr inbounds %struct.mptcp_sock, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %remote_key, align 8
  %7 = ptrtoint ptr %local_nonce to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %local_nonce, align 8
  %remote_nonce = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 10
  %9 = ptrtoint ptr %remote_nonce to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %remote_nonce, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #13
  %11 = getelementptr inbounds [8 x i8], ptr %msg.i, i32 0, i32 4
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %8, ptr %msg.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %11, align 4
  call void @mptcp_crypto_hmac_sha(i64 noundef %4, i64 noundef %6, ptr noundef nonnull %msg.i, i32 noundef 8, ptr noundef nonnull %hmac) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #13
  %14 = ptrtoint ptr %hmac to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %hmac, align 8
  %thmac = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 8
  %16 = ptrtoint ptr %thmac to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %thmac, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @subflow_init_req_cookie_join_save(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptcp_token_get_sock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_crypto_hmac_sha(i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_conn_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptcp_sk_clone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @subflow_drop_ctx(ptr noundef %ssk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tcp_data_ready.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %tcp_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcp_data_ready.i.i, align 4
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 77
  %4 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sk_data_ready.i.i, align 8
  %tcp_state_change.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %tcp_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcp_state_change.i.i, align 8
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 76
  %7 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sk_state_change.i.i, align 4
  %tcp_write_space.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %tcp_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcp_write_space.i.i, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 78
  %10 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sk_write_space.i.i, align 4
  %tcp_error_report.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %tcp_error_report.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tcp_error_report.i.i, align 8
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 79
  %13 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %sk_error_report.i.i, align 8
  %icsk_af_ops.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %icsk_af_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %icsk_af_ops.i.i, align 8
  %icsk_af_ops1.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 11
  %16 = ptrtoint ptr %icsk_af_ops1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %icsk_af_ops1.i.i, align 8
  %icsk_ulp_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 12
  %17 = ptrtoint ptr %icsk_ulp_ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %icsk_ulp_ops.i, align 4
  %18 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %icsk_ulp_data.i, align 8
  %is_mptcp.i = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 115
  %19 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %is_mptcp.i, align 4
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 8
  %20 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_prot.i.i, align 8
  %cmp.i.i = icmp eq ptr %21, @tcpv6_prot_override
  %tcpv6_prot.tcp_prot.i.i = select i1 %cmp.i.i, ptr @tcpv6_prot, ptr @tcp_prot
  store ptr %tcpv6_prot.tcp_prot.i.i, ptr %skc_prot.i.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %conn, align 4
  %tobool1.not = icmp eq ptr %23, null
  br i1 %tobool1.not, label %if.end.do.end_crit_edge, label %if.then2

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then2:                                         ; preds = %if.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !211
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.do.end_crit_edge, label %if.then10.i.i.i.i, !prof !209

if.end5.i.i.i.i.do.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %do.end

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @sk_free(ptr noundef nonnull %23) #13
  br label %do.end

do.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %rcu = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 12
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 188 to ptr)) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptcp_sock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %3 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_socket, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.then.if.end33_crit_edge, label %land.rhs

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.rhs:                                         ; preds = %if.then
  %.b49 = load i1, ptr @mptcp_sock_destruct.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end33_crit_edge, label %if.then12, !prof !209

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mptcp_sock_destruct.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 575, i32 noundef 9, ptr noundef null) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then12, %land.rhs.if.end33_crit_edge, %if.then.if.end33_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %or.i.i.i = or i32 %7, 1
  store i32 %or.i.i.i, ptr %5, align 4
  %8 = ptrtoint ptr %sk_socket to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sk_socket, align 8
  %9 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  br label %if.end41

if.end41:                                         ; preds = %if.end33, %entry.if.end41_crit_edge
  tail call void @mptcp_destroy_common(ptr noundef %sk) #13
  tail call void @inet_sock_destruct(ptr noundef %sk) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_new_connection(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_token_accept(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_finish_join(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_destroy_common(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sock_destruct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_finish_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_set_connected(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_lock) #13
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !209

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 1750, i32 noundef 9, ptr noundef null) #13
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %sock_owned_by_user.exit
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.i = icmp eq i8 %4, 2
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @inet_sk_state_store(ptr noundef %sk, i32 noundef 1) #13
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %5 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %6(ptr noundef %sk) #13
  br label %if.end

if.else:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %cb_flags = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 19
  %7 = ptrtoint ptr %cb_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb_flags, align 4
  %or.i = or i32 %8, 64
  store i32 %or.i, ptr %cb_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_rcv_space_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_subflow_process_delegated(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_release_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subflow_ulp_init(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_kern_sock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 43
  %0 = ptrtoint ptr %sk_kern_sock to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sk_kern_sock, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 200) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %do.body.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !245
  %icsk_ulp_data23.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %3 = ptrtoint ptr %icsk_ulp_data23.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i.i, ptr %icsk_ulp_data23.i, align 8
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %delegated_node.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %delegated_node.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %delegated_node.i, ptr %delegated_node.i, align 8
  %prev.i52.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %delegated_node.i, ptr %prev.i52.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_create_ctx.__UNIQUE_ID_ddebug745, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_ulp_init, %if.then40.i)) #13
          to label %do.body [label %if.then40.i], !srcloc !213

if.then40.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_create_ctx.__UNIQUE_ID_ddebug745, ptr noundef nonnull @.str.13, ptr noundef nonnull %call7.i.i.i) #13
  br label %do.body

do.body:                                          ; preds = %if.then40.i, %do.body.i
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sk, ptr %tcp_sock.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_ulp_init.__UNIQUE_ID_ddebug749, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_ulp_init, %if.then10)) #13
          to label %do.end [label %if.then10], !srcloc !213

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %9 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %skc_family, align 8
  %conv = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_ulp_init.__UNIQUE_ID_ddebug749, ptr noundef nonnull @.str.81, ptr noundef nonnull %call7.i.i.i, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %is_mptcp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 115
  %11 = ptrtoint ptr %is_mptcp to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_mptcp, align 4
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %12 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %icsk_af_ops, align 8
  %icsk_af_ops12 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %icsk_af_ops12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %icsk_af_ops12, align 8
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %15 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %16)
  %cmp.i = icmp eq i16 %16, 10
  %subflow_v6_specific.subflow_specific.i = select i1 %cmp.i, ptr @subflow_v6_specific, ptr @subflow_specific
  %17 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %subflow_v6_specific.subflow_specific.i, ptr %icsk_af_ops, align 8
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %18 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_data_ready, align 8
  %tcp_data_ready = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %tcp_data_ready to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %tcp_data_ready, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %21 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk_state_change, align 4
  %tcp_state_change = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %tcp_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %tcp_state_change, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %24 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_write_space, align 4
  %tcp_write_space = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %tcp_write_space to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %tcp_write_space, align 4
  %sk_error_report = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 79
  %27 = ptrtoint ptr %sk_error_report to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_error_report, align 8
  %tcp_error_report = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %tcp_error_report to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %tcp_error_report, align 8
  store ptr @subflow_data_ready, ptr %sk_data_ready, align 8
  store ptr @subflow_write_space, ptr %sk_write_space, align 4
  store ptr @subflow_state_change, ptr %sk_state_change, align 4
  store ptr @subflow_error_report, ptr %sk_error_report, align 8
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %do.end ], [ -95, %entry.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subflow_ulp_release(ptr nocapture noundef %ssk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.do.end.sink.split_crit_edge, label %if.then2

if.end.do.end.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.sink.split

if.then2:                                         ; preds = %if.end
  %disposable = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %4 = ptrtoint ptr %disposable to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %disposable, align 8
  %5 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.rhs, label %do.end.critedge

lor.rhs:                                          ; preds = %if.then2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %7, %1
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !211
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !209

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %sock_put.exit

if.then.i:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @sk_free(ptr noundef nonnull %3) #13
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 8
  %9 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_prot.i, align 8
  %cmp.i25 = icmp eq ptr %10, @tcpv6_prot_override
  %tcpv6_prot.tcp_prot.i = select i1 %cmp.i25, ptr @tcpv6_prot, ptr @tcp_prot
  store ptr %tcpv6_prot.tcp_prot.i, ptr %skc_prot.i, align 8
  br i1 %cmp.i, label %sock_put.exit.do.end_crit_edge, label %sock_put.exit.cleanup_crit_edge

sock_put.exit.cleanup_crit_edge:                  ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sock_put.exit.do.end_crit_edge:                   ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.critedge:                                  ; preds = %if.then2
  %skc_refcnt.i29 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i29, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i29, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i29, ptr %skc_refcnt.i29, i32 1, ptr elementtype(i32) %skc_refcnt.i29) #13, !srcloc !211
  %asmresult.i.i.i.i.i.i.i31 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i31)
  %cmp.i.i.i.i32 = icmp eq i32 %asmresult.i.i.i.i.i.i.i31, 1
  br i1 %cmp.i.i.i.i32, label %if.then.i36, label %if.end5.i.i.i.i34

if.end5.i.i.i.i34:                                ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i31)
  %.not.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i31, 0
  br i1 %.not.i.i.i.i33, label %if.end5.i.i.i.i34.do.end.sink.split_crit_edge, label %if.then10.i.i.i.i35, !prof !209

if.end5.i.i.i.i34.do.end.sink.split_crit_edge:    ; preds = %if.end5.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.sink.split

if.then10.i.i.i.i35:                              ; preds = %if.end5.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i29, i32 noundef 3) #13
  br label %do.end.sink.split

if.then.i36:                                      ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @sk_free(ptr noundef nonnull %3) #13
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.then.i36, %if.then10.i.i.i.i35, %if.end5.i.i.i.i34.do.end.sink.split_crit_edge, %if.end.do.end.sink.split_crit_edge
  %skc_prot.i26 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 8
  %12 = ptrtoint ptr %skc_prot.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_prot.i26, align 8
  %cmp.i39 = icmp eq ptr %13, @tcpv6_prot_override
  %tcpv6_prot.tcp_prot.i40 = select i1 %cmp.i39, ptr @tcpv6_prot, ptr @tcp_prot
  store ptr %tcpv6_prot.tcp_prot.i40, ptr %skc_prot.i26, align 8
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %sock_put.exit.do.end_crit_edge
  %rcu = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 12
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 188 to ptr)) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sock_put.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subflow_ulp_clone(ptr nocapture noundef readonly %req, ptr noundef %newsk, i32 noundef %priority) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %newsk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %is_mptcp = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %is_mptcp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_mptcp, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %mp_capable = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %mp_capable to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %mp_capable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %5 = icmp ult i8 %bf.load, 64
  br i1 %5, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tcp_data_ready.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %tcp_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcp_data_ready.i.i, align 4
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 77
  %8 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %sk_data_ready.i.i, align 8
  %tcp_state_change.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %tcp_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcp_state_change.i.i, align 8
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 76
  %11 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %sk_state_change.i.i, align 4
  %tcp_write_space.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %tcp_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tcp_write_space.i.i, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 78
  %14 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %sk_write_space.i.i, align 4
  %tcp_error_report.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %tcp_error_report.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcp_error_report.i.i, align 8
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 79
  %17 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %sk_error_report.i.i, align 8
  %icsk_af_ops.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %icsk_af_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %icsk_af_ops.i.i, align 8
  %icsk_af_ops1.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %newsk, i32 0, i32 11
  %20 = ptrtoint ptr %icsk_af_ops1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %icsk_af_ops1.i.i, align 8
  %icsk_ulp_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %newsk, i32 0, i32 12
  %21 = ptrtoint ptr %icsk_ulp_ops.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %icsk_ulp_ops.i, align 4
  %22 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr null, ptr %icsk_ulp_data.i, align 8
  %is_mptcp.i = getelementptr inbounds %struct.tcp_sock, ptr %newsk, i32 0, i32 115
  %23 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %is_mptcp.i, align 4
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %newsk, i32 0, i32 8
  %24 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_prot.i.i, align 8
  %cmp.i.i = icmp eq ptr %25, @tcpv6_prot_override
  %tcpv6_prot.tcp_prot.i.i = select i1 %cmp.i.i, ptr @tcpv6_prot, ptr @tcp_prot
  store ptr %tcpv6_prot.tcp_prot.i.i, ptr %skc_prot.i.i, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and.i.i.i.i = and i32 %priority, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !209

if.end.kzalloc.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  %and2.i.i.i.i = and i32 %priority, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i.i = and i32 %priority, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %if.end.kzalloc.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %priority, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 8
  %26 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef %or.i.i, i32 noundef 200) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then10, label %do.body.i

do.body.i:                                        ; preds = %kzalloc.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !245
  %28 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i, ptr %icsk_ulp_data.i, align 8
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %delegated_node.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %delegated_node.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %delegated_node.i, ptr %delegated_node.i, align 8
  %prev.i52.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %delegated_node.i, ptr %prev.i52.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_create_ctx.__UNIQUE_ID_ddebug745, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_ulp_clone, %if.then40.i)) #13
          to label %if.end11 [label %if.then40.i], !srcloc !213

if.then40.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_create_ctx.__UNIQUE_ID_ddebug745, ptr noundef nonnull @.str.13, ptr noundef nonnull %call7.i.i.i) #13
  br label %if.end11

if.then10:                                        ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tcp_data_ready.i.i112 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %tcp_data_ready.i.i112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tcp_data_ready.i.i112, align 4
  %sk_data_ready.i.i113 = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 77
  %35 = ptrtoint ptr %sk_data_ready.i.i113 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %sk_data_ready.i.i113, align 8
  %tcp_state_change.i.i114 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %tcp_state_change.i.i114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tcp_state_change.i.i114, align 8
  %sk_state_change.i.i115 = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 76
  %38 = ptrtoint ptr %sk_state_change.i.i115 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %sk_state_change.i.i115, align 4
  %tcp_write_space.i.i116 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %tcp_write_space.i.i116 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tcp_write_space.i.i116, align 4
  %sk_write_space.i.i117 = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 78
  %41 = ptrtoint ptr %sk_write_space.i.i117 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %sk_write_space.i.i117, align 4
  %tcp_error_report.i.i118 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %tcp_error_report.i.i118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tcp_error_report.i.i118, align 8
  %sk_error_report.i.i119 = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 79
  %44 = ptrtoint ptr %sk_error_report.i.i119 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %sk_error_report.i.i119, align 8
  %icsk_af_ops.i.i120 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %icsk_af_ops.i.i120 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %icsk_af_ops.i.i120, align 8
  %icsk_af_ops1.i.i121 = getelementptr inbounds %struct.inet_connection_sock, ptr %newsk, i32 0, i32 11
  %47 = ptrtoint ptr %icsk_af_ops1.i.i121 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %icsk_af_ops1.i.i121, align 8
  %icsk_ulp_ops.i122 = getelementptr inbounds %struct.inet_connection_sock, ptr %newsk, i32 0, i32 12
  %48 = ptrtoint ptr %icsk_ulp_ops.i122 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %icsk_ulp_ops.i122, align 4
  %49 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr null, ptr %icsk_ulp_data.i, align 8
  %is_mptcp.i124 = getelementptr inbounds %struct.tcp_sock, ptr %newsk, i32 0, i32 115
  %50 = ptrtoint ptr %is_mptcp.i124 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %is_mptcp.i124, align 4
  %skc_prot.i.i125 = getelementptr inbounds %struct.sock_common, ptr %newsk, i32 0, i32 8
  %51 = ptrtoint ptr %skc_prot.i.i125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skc_prot.i.i125, align 8
  %cmp.i.i126 = icmp eq ptr %52, @tcpv6_prot_override
  %tcpv6_prot.tcp_prot.i.i127 = select i1 %cmp.i.i126, ptr @tcpv6_prot, ptr @tcp_prot
  store ptr %tcpv6_prot.tcp_prot.i.i127, ptr %skc_prot.i.i125, align 8
  br label %cleanup

if.end11:                                         ; preds = %if.then40.i, %do.body.i
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %newsk, ptr %tcp_sock.i, align 8
  %conn_finished = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 13
  %54 = ptrtoint ptr %conn_finished to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load12 = load i32, ptr %conn_finished, align 8
  %bf.set = or i32 %bf.load12, 16777216
  store i32 %bf.set, ptr %conn_finished, align 8
  %icsk_af_ops = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %icsk_af_ops, align 8
  %icsk_af_ops14 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 7
  %57 = ptrtoint ptr %icsk_af_ops14 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %icsk_af_ops14, align 8
  %tcp_data_ready = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %tcp_data_ready to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tcp_data_ready, align 4
  %tcp_data_ready15 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %tcp_data_ready15 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %tcp_data_ready15, align 4
  %tcp_state_change = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 9
  %61 = ptrtoint ptr %tcp_state_change to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tcp_state_change, align 8
  %tcp_state_change16 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %tcp_state_change16 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %tcp_state_change16, align 8
  %tcp_write_space = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 10
  %64 = ptrtoint ptr %tcp_write_space to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tcp_write_space, align 4
  %tcp_write_space17 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 10
  %66 = ptrtoint ptr %tcp_write_space17 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %tcp_write_space17, align 4
  %tcp_error_report = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 11
  %67 = ptrtoint ptr %tcp_error_report to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tcp_error_report, align 8
  %tcp_error_report18 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 11
  %69 = ptrtoint ptr %tcp_error_report18 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %tcp_error_report18, align 8
  %rel_write_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 7
  %70 = ptrtoint ptr %rel_write_seq to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %rel_write_seq, align 8
  store ptr %newsk, ptr %tcp_sock.i, align 8
  %71 = ptrtoint ptr %mp_capable to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load20 = load i8, ptr %mp_capable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool23.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set28 = or i32 %bf.load12, 285212672
  %72 = ptrtoint ptr %conn_finished to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %bf.set28, ptr %conn_finished, align 8
  %local_key = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 4
  %73 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %local_key, align 8
  %local_key29 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %75 = ptrtoint ptr %local_key29 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %local_key29, align 8
  %token = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 6
  %76 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %token, align 8
  %token30 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6
  %78 = ptrtoint ptr %token30 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %token30, align 4
  %ssn_offset = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 7
  %79 = ptrtoint ptr %ssn_offset to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ssn_offset, align 4
  %ssn_offset31 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 9
  %81 = ptrtoint ptr %ssn_offset31 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %ssn_offset31, align 8
  %idsn = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 5
  %82 = ptrtoint ptr %idsn to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %idsn, align 8
  %idsn32 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %84 = ptrtoint ptr %idsn32 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %idsn32, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %85 = and i8 %bf.load20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool38.not = icmp eq i8 %85, 0
  br i1 %tobool38.not, label %if.else.cleanup_crit_edge, label %if.then39

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %ssn_offset40 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 7
  %86 = ptrtoint ptr %ssn_offset40 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ssn_offset40, align 4
  %ssn_offset41 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 9
  %88 = ptrtoint ptr %ssn_offset41 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %ssn_offset41, align 8
  %bf.lshr50 = lshr i8 %bf.load20, 5
  %89 = and i8 %bf.lshr50, 1
  %bf.value = zext i8 %89 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 19
  %bf.set48 = and i32 %bf.load12, -218628097
  %bf.clear55 = or i32 %bf.shl, %bf.set48
  %bf.set56 = or i32 %bf.clear55, 218103808
  %90 = ptrtoint ptr %conn_finished to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %bf.set56, ptr %conn_finished, align 8
  %local_id = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 2
  %91 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %local_id, align 1
  %local_id57 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 20
  %93 = ptrtoint ptr %local_id57 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %local_id57, align 4
  %remote_id = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 3
  %94 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %remote_id, align 2
  %remote_id58 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 21
  %96 = ptrtoint ptr %remote_id58 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %remote_id58, align 1
  %token59 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 6
  %97 = ptrtoint ptr %token59 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %token59, align 8
  %token60 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6
  %99 = ptrtoint ptr %token60 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %token60, align 4
  %thmac = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 8
  %100 = ptrtoint ptr %thmac to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %thmac, align 8
  %thmac61 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 16
  %102 = ptrtoint ptr %thmac61 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %thmac61, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.else.cleanup_crit_edge, %if.then24, %if.then10, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subflow_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !221
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %tobool.not.not = icmp eq i8 %3, 10
  br i1 %tobool.not.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %rskq_accept_head.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %rskq_accept_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rskq_accept_head.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 77
  %8 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_data_ready, align 8
  tail call void %9(ptr noundef %5) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.mptcp_sock, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end7.if.end51_crit_edge

if.end7.if.end51_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end7
  %mp_capable = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %13 = ptrtoint ptr %mp_capable to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %mp_capable, align 8
  %14 = and i32 %bf.load, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %tobool17.not = icmp ne i8 %3, 7
  %or.cond92 = select i1 %15, i1 %tobool17.not, i1 false
  br i1 %or.cond92, label %land.rhs22, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.rhs22:                                       ; preds = %land.lhs.true
  %.b88 = load i1, ptr @subflow_data_ready.__already_done, align 1
  br i1 %.b88, label %land.rhs22.if.end51_crit_edge, label %if.then29, !prof !209

land.rhs22.if.end51_crit_edge:                    ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then29:                                        ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @subflow_data_ready.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1298, i32 noundef 9, ptr noundef null) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then29, %land.rhs22.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %if.end7.if.end51_crit_edge
  %16 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %icsk_ulp_data.i, align 8
  %map_valid.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %17, i32 0, i32 1, i32 0, i32 13
  %18 = ptrtoint ptr %map_valid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %map_valid.i, align 8
  %19 = and i32 %bf.load.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end51.mptcp_subflow_data_available.exit_crit_edge, label %land.lhs.true.i

if.end51.mptcp_subflow_data_available.exit_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_subflow_data_available.exit

land.lhs.true.i:                                  ; preds = %if.end51
  %tcp_sock.i.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %tcp_sock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tcp_sock.i.i.i, align 8
  %copied_seq.i.i = getelementptr inbounds %struct.tcp_sock, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %copied_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %copied_seq.i.i, align 4
  %ssn_offset.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %17, i32 0, i32 1, i32 0, i32 9
  %24 = ptrtoint ptr %ssn_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssn_offset.i.i, align 8
  %map_subflow_seq.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %17, i32 0, i32 1, i32 0, i32 8
  %26 = ptrtoint ptr %map_subflow_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %map_subflow_seq.i.i, align 4
  %28 = add i32 %25, %27
  %sub2.i.i = sub i32 %23, %28
  %map_data_len.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %17, i32 0, i32 1, i32 0, i32 10
  %29 = ptrtoint ptr %map_data_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %map_data_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i.i, i32 %30)
  %cmp.not.i = icmp ult i32 %sub2.i.i, %30
  br i1 %cmp.not.i, label %land.lhs.true.i.mptcp_subflow_data_available.exit_crit_edge, label %if.then.i

land.lhs.true.i.mptcp_subflow_data_available.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_subflow_data_available.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear5.i = and i32 %bf.load.i, -8388609
  %31 = ptrtoint ptr %map_valid.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bf.clear5.i, ptr %map_valid.i, align 8
  %data_avail.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %17, i32 0, i32 1, i32 0, i32 14
  %32 = ptrtoint ptr %data_avail.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %data_avail.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_subflow_data_available.__UNIQUE_ID_ddebug738, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_data_ready, %if.then17.i)) #13
          to label %mptcp_subflow_data_available.exit [label %if.then17.i], !srcloc !213

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %map_subflow_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %map_subflow_seq.i.i, align 4
  %35 = ptrtoint ptr %map_data_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %map_data_len.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_subflow_data_available.__UNIQUE_ID_ddebug738, ptr noundef nonnull @.str.4, i32 noundef %34, i32 noundef %36) #13
  br label %mptcp_subflow_data_available.exit

mptcp_subflow_data_available.exit:                ; preds = %if.then17.i, %if.then.i, %land.lhs.true.i.mptcp_subflow_data_available.exit_crit_edge, %if.end51.mptcp_subflow_data_available.exit_crit_edge
  %call22.i = tail call fastcc zeroext i1 @subflow_check_data_avail(ptr noundef %sk) #13
  br i1 %call22.i, label %if.then60, label %if.else

if.then60:                                        ; preds = %mptcp_subflow_data_available.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mptcp_data_ready(ptr noundef %5, ptr noundef %sk) #13
  br label %cleanup

if.else:                                          ; preds = %mptcp_subflow_data_available.exit
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %37 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool61.not = icmp eq i32 %38, 0
  br i1 %tobool61.not, label %if.else.cleanup_crit_edge, label %if.then68, !prof !209

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @subflow_error_report(ptr noundef %sk)
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.else.cleanup_crit_edge, %if.then60, %if.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subflow_write_space(ptr nocapture noundef readonly %ssk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %sk_userlocks.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %sk_userlocks.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %sk_userlocks.i, align 8
  %5 = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.mptcp_propagate_sndbuf.exit_crit_edge

entry.mptcp_propagate_sndbuf.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_propagate_sndbuf.exit

lor.lhs.false.i:                                  ; preds = %entry
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 21
  %6 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_sndbuf1.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %sk_sndbuf1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sk_sndbuf1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i = icmp sgt i32 %7, %9
  br i1 %cmp.not.i, label %do.body6.i, label %lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge

lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_propagate_sndbuf.exit

do.body6.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %sk_sndbuf1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %7, ptr %sk_sndbuf1.i, align 4
  br label %mptcp_propagate_sndbuf.exit

mptcp_propagate_sndbuf.exit:                      ; preds = %do.body6.i, %lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge, %entry.mptcp_propagate_sndbuf.exit_crit_edge
  %sk_sndbuf.i.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 21
  %11 = ptrtoint ptr %sk_sndbuf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_sndbuf.i.i.i.i, align 4
  %sk_wmem_queued.i.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 22
  %13 = ptrtoint ptr %sk_wmem_queued.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_wmem_queued.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %12, %14
  %15 = load volatile i32, ptr %sk_wmem_queued.i.i.i.i, align 8
  %shr.i.i.i.i = ashr i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %shr.i.i.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i.i.i.i, %shr.i.i.i.i
  br i1 %cmp.not.i.i.i, label %mptcp_propagate_sndbuf.exit.mptcp_write_space.exit_crit_edge, label %land.rhs.i.i.i

mptcp_propagate_sndbuf.exit.mptcp_write_space.exit_crit_edge: ; preds = %mptcp_propagate_sndbuf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_write_space.exit

land.rhs.i.i.i:                                   ; preds = %mptcp_propagate_sndbuf.exit
  %16 = ptrtoint ptr %sk_wmem_queued.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_wmem_queued.i.i.i.i, align 8
  %18 = ptrtoint ptr %sk_sndbuf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sk_sndbuf.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not.i.i.i.i = icmp slt i32 %17, %19
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %land.rhs.i.i.i.mptcp_write_space.exit_crit_edge

land.rhs.i.i.i.mptcp_write_space.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_write_space.exit

if.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %stream_memory_free.i.i.i.i = getelementptr inbounds %struct.proto, ptr %21, i32 0, i32 28
  %22 = ptrtoint ptr %stream_memory_free.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream_memory_free.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.do.end.i_crit_edge, label %sk_stream_is_writeable.exit.i

if.end.i.i.i.i.do.end.i_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

sk_stream_is_writeable.exit.i:                    ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = tail call zeroext i1 %23(ptr noundef %3, i32 noundef 0) #13
  br i1 %call.i.i.i.i, label %sk_stream_is_writeable.exit.i.do.end.i_crit_edge, label %sk_stream_is_writeable.exit.i.mptcp_write_space.exit_crit_edge

sk_stream_is_writeable.exit.i.mptcp_write_space.exit_crit_edge: ; preds = %sk_stream_is_writeable.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_write_space.exit

sk_stream_is_writeable.exit.i.do.end.i_crit_edge: ; preds = %sk_stream_is_writeable.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %sk_stream_is_writeable.exit.i.do.end.i_crit_edge, %if.end.i.i.i.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !246
  %flags.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 18
  %call4.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i4 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i4, label %do.end.i.mptcp_write_space.exit_crit_edge, label %if.then5.i

do.end.i.mptcp_write_space.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_write_space.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sk_stream_write_space(ptr noundef %3) #13
  br label %mptcp_write_space.exit

mptcp_write_space.exit:                           ; preds = %if.then5.i, %do.end.i.mptcp_write_space.exit_crit_edge, %sk_stream_is_writeable.exit.i.mptcp_write_space.exit_crit_edge, %land.rhs.i.i.i.mptcp_write_space.exit_crit_edge, %mptcp_propagate_sndbuf.exit.mptcp_write_space.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subflow_state_change(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %8 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @__subflow_state_change.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__subflow_state_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1589, ptr noundef nonnull @.str.28) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool.not.i14.i = icmp eq ptr %10, null
  br i1 %tobool.not.i14.i, label %do.end7.i.if.end11.i_crit_edge, label %skwq_has_sleeper.exit.i

do.end7.i.if.end11.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

skwq_has_sleeper.exit.i:                          ; preds = %do.end7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !247
  %head.i.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %head.i.i.i.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq ptr %12, %head.i.i.i.i
  br i1 %cmp.i.i.i.i.not.i, label %skwq_has_sleeper.exit.i.if.end11.i_crit_edge, label %if.then10.i

skwq_has_sleeper.exit.i.if.end11.i_crit_edge:     ; preds = %skwq_has_sleeper.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then10.i:                                      ; preds = %skwq_has_sleeper.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__wake_up(ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0, ptr noundef null) #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %skwq_has_sleeper.exit.i.if.end11.i_crit_edge, %do.end7.i.if.end11.i_crit_edge
  %call.i15.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i15.i, label %if.end11.i.__subflow_state_change.exit_crit_edge, label %land.lhs.true.i18.i

if.end11.i.__subflow_state_change.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__subflow_state_change.exit

land.lhs.true.i18.i:                              ; preds = %if.end11.i
  %call1.i16.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call1.i16.i, 0
  br i1 %tobool.not.i17.i, label %land.lhs.true.i18.i.__subflow_state_change.exit_crit_edge, label %land.lhs.true2.i20.i

land.lhs.true.i18.i.__subflow_state_change.exit_crit_edge: ; preds = %land.lhs.true.i18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__subflow_state_change.exit

land.lhs.true2.i20.i:                             ; preds = %land.lhs.true.i18.i
  %.b4.i19.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19.i, label %land.lhs.true2.i20.i.__subflow_state_change.exit_crit_edge, label %if.then.i21.i

land.lhs.true2.i20.i.__subflow_state_change.exit_crit_edge: ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__subflow_state_change.exit

if.then.i21.i:                                    ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #13
  br label %__subflow_state_change.exit

__subflow_state_change.exit:                      ; preds = %if.then.i21.i, %land.lhs.true2.i20.i.__subflow_state_change.exit_crit_edge, %land.lhs.true.i18.i.__subflow_state_change.exit_crit_edge, %if.end11.i.__subflow_state_change.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !231
  %13 = tail call i32 @llvm.read_register.i32(metadata !197) #13
  %and.i.i.i.i.i22.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i22.i to ptr
  %preempt_count.i.i.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i23.i, align 4
  %sub.i.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i23.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %17 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conn.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.i = icmp eq i8 %22, 1
  br i1 %cmp.i, label %land.lhs.true.i58, label %__subflow_state_change.exit.if.end9_crit_edge

__subflow_state_change.exit.if.end9_crit_edge:    ; preds = %__subflow_state_change.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true.i58:                                ; preds = %__subflow_state_change.exit
  %server_side.i = getelementptr inbounds %struct.mptcp_sock, ptr %20, i32 0, i32 40, i32 5
  %23 = ptrtoint ptr %server_side.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %server_side.i, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i57 = icmp eq i8 %24, 0
  br i1 %tobool.not.i57, label %subflow_simultaneous_connect.exit, label %land.lhs.true.i58.if.end9_crit_edge

land.lhs.true.i58.if.end9_crit_edge:              ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

subflow_simultaneous_connect.exit:                ; preds = %land.lhs.true.i58
  %conn_finished.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %18, i32 0, i32 1, i32 0, i32 13
  %25 = ptrtoint ptr %conn_finished.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i = load i32, ptr %conn_finished.i, align 8
  %26 = and i32 %bf.load.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.i59 = icmp eq i32 %26, 0
  br i1 %tobool3.not.i59, label %if.then, label %subflow_simultaneous_connect.exit.if.end9_crit_edge

subflow_simultaneous_connect.exit.if.end9_crit_edge: ; preds = %subflow_simultaneous_connect.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then:                                          ; preds = %subflow_simultaneous_connect.exit
  %sk_userlocks.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 43
  %27 = ptrtoint ptr %sk_userlocks.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i60 = load i8, ptr %sk_userlocks.i, align 8
  %28 = and i8 %bf.load.i60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i61 = icmp eq i8 %28, 0
  br i1 %tobool.not.i61, label %lor.lhs.false.i, label %if.then.mptcp_propagate_sndbuf.exit_crit_edge

if.then.mptcp_propagate_sndbuf.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_propagate_sndbuf.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %29 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_sndbuf1.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 21
  %31 = ptrtoint ptr %sk_sndbuf1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %sk_sndbuf1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.not.i = icmp sgt i32 %30, %32
  br i1 %cmp.not.i, label %do.body6.i, label %lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge

lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_propagate_sndbuf.exit

do.body6.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %sk_sndbuf1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %30, ptr %sk_sndbuf1.i, align 4
  br label %mptcp_propagate_sndbuf.exit

mptcp_propagate_sndbuf.exit:                      ; preds = %do.body6.i, %lor.lhs.false.i.mptcp_propagate_sndbuf.exit_crit_edge, %if.then.mptcp_propagate_sndbuf.exit_crit_edge
  %34 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn.i63 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %conn.i63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conn.i63, align 4
  %flags.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags.i.i, align 4
  %40 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i64 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i64, label %if.end6.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %mptcp_propagate_sndbuf.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mptcp_do_fallback.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_state_change, %if.then5.i.i)) #13
          to label %mptcp_do_fallback.exit [label %if.then5.i.i], !srcloc !213

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__mptcp_do_fallback.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.39, ptr noundef %37) #13
  br label %mptcp_do_fallback.exit

if.end6.i.i:                                      ; preds = %mptcp_propagate_sndbuf.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i.i) #13
  br label %mptcp_do_fallback.exit

mptcp_do_fallback.exit:                           ; preds = %if.end6.i.i, %if.then5.i.i, %do.body.i.i
  tail call void @mptcp_rcv_space_init(ptr noundef %3, ptr noundef %sk) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @subflow_state_change.__UNIQUE_ID_ddebug748, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_state_change, %if.then7)) #13
          to label %do.end [label %if.then7], !srcloc !213

if.then7:                                         ; preds = %mptcp_do_fallback.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @subflow_state_change.__UNIQUE_ID_ddebug748, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.83, ptr noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then7, %mptcp_do_fallback.exit
  %conn_finished = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %41 = ptrtoint ptr %conn_finished to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load = load i32, ptr %conn_finished, align 8
  %bf.set = or i32 %bf.load, 16777216
  store i32 %bf.set, ptr %conn_finished, align 8
  tail call fastcc void @mptcp_set_connected(ptr noundef %3)
  br label %if.end9

if.end9:                                          ; preds = %do.end, %subflow_simultaneous_connect.exit.if.end9_crit_edge, %land.lhs.true.i58.if.end9_crit_edge, %__subflow_state_change.exit.if.end9_crit_edge
  %42 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %icsk_ulp_data.i, align 8
  %map_valid.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %43, i32 0, i32 1, i32 0, i32 13
  %44 = ptrtoint ptr %map_valid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load.i66 = load i32, ptr %map_valid.i, align 8
  %45 = and i32 %bf.load.i66, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i67 = icmp eq i32 %45, 0
  br i1 %tobool.not.i67, label %if.end9.mptcp_subflow_data_available.exit_crit_edge, label %land.lhs.true.i69

if.end9.mptcp_subflow_data_available.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_subflow_data_available.exit

land.lhs.true.i69:                                ; preds = %if.end9
  %tcp_sock.i.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %43, i32 0, i32 5
  %46 = ptrtoint ptr %tcp_sock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tcp_sock.i.i.i, align 8
  %copied_seq.i.i = getelementptr inbounds %struct.tcp_sock, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %copied_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %copied_seq.i.i, align 4
  %ssn_offset.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %43, i32 0, i32 1, i32 0, i32 9
  %50 = ptrtoint ptr %ssn_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ssn_offset.i.i, align 8
  %map_subflow_seq.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %43, i32 0, i32 1, i32 0, i32 8
  %52 = ptrtoint ptr %map_subflow_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %map_subflow_seq.i.i, align 4
  %54 = add i32 %51, %53
  %sub2.i.i = sub i32 %49, %54
  %map_data_len.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %43, i32 0, i32 1, i32 0, i32 10
  %55 = ptrtoint ptr %map_data_len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %map_data_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i.i, i32 %56)
  %cmp.not.i68 = icmp ult i32 %sub2.i.i, %56
  br i1 %cmp.not.i68, label %land.lhs.true.i69.mptcp_subflow_data_available.exit_crit_edge, label %if.then.i70

land.lhs.true.i69.mptcp_subflow_data_available.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_subflow_data_available.exit

if.then.i70:                                      ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear5.i = and i32 %bf.load.i66, -8388609
  %57 = ptrtoint ptr %map_valid.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bf.clear5.i, ptr %map_valid.i, align 8
  %data_avail.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %43, i32 0, i32 1, i32 0, i32 14
  %58 = ptrtoint ptr %data_avail.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %data_avail.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_subflow_data_available.__UNIQUE_ID_ddebug738, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@subflow_state_change, %if.then17.i)) #13
          to label %mptcp_subflow_data_available.exit [label %if.then17.i], !srcloc !213

if.then17.i:                                      ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %map_subflow_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %map_subflow_seq.i.i, align 4
  %61 = ptrtoint ptr %map_data_len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %map_data_len.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_subflow_data_available.__UNIQUE_ID_ddebug738, ptr noundef nonnull @.str.4, i32 noundef %60, i32 noundef %62) #13
  br label %mptcp_subflow_data_available.exit

mptcp_subflow_data_available.exit:                ; preds = %if.then17.i, %if.then.i70, %land.lhs.true.i69.mptcp_subflow_data_available.exit_crit_edge, %if.end9.mptcp_subflow_data_available.exit_crit_edge
  %call22.i = tail call fastcc zeroext i1 @subflow_check_data_avail(ptr noundef %sk) #13
  br i1 %call22.i, label %if.then11, label %if.else

if.then11:                                        ; preds = %mptcp_subflow_data_available.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mptcp_data_ready(ptr noundef %3, ptr noundef %sk) #13
  br label %if.end21

if.else:                                          ; preds = %mptcp_subflow_data_available.exit
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %63 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool12.not = icmp eq i32 %64, 0
  br i1 %tobool12.not, label %if.else.if.end21_crit_edge, label %if.then19, !prof !209

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @subflow_error_report(ptr noundef %sk)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else.if.end21_crit_edge, %if.then11
  tail call fastcc void @subflow_sched_work_if_closed(ptr noundef %3, ptr noundef %sk)
  %flags.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 18
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i, align 4
  %67 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i.not = icmp eq i32 %67, 0
  br i1 %tobool.i.not, label %if.end21.if.end35_crit_edge, label %land.lhs.true

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end21
  %rx_eof = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %68 = ptrtoint ptr %rx_eof to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load25 = load i32, ptr %rx_eof, align 8
  %69 = and i32 %bf.load25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool27.not = icmp eq i32 %69, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true28:                                  ; preds = %land.lhs.true
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %70 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sk_shutdown.i, align 2
  %72 = and i8 %71, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i71 = icmp eq i8 %72, 0
  br i1 %tobool.not.i71, label %subflow_is_done.exit, label %land.lhs.true28.if.then30_crit_edge

land.lhs.true28.if.then30_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

subflow_is_done.exit:                             ; preds = %land.lhs.true28
  %73 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %74)
  %cmp.i73 = icmp eq i8 %74, 7
  br i1 %cmp.i73, label %subflow_is_done.exit.if.then30_crit_edge, label %subflow_is_done.exit.if.end35_crit_edge

subflow_is_done.exit.if.end35_crit_edge:          ; preds = %subflow_is_done.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

subflow_is_done.exit.if.then30_crit_edge:         ; preds = %subflow_is_done.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.then30:                                        ; preds = %subflow_is_done.exit.if.then30_crit_edge, %land.lhs.true28.if.then30_crit_edge
  %bf.set34 = or i32 %bf.load25, 32768
  %75 = ptrtoint ptr %rx_eof to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %bf.set34, ptr %rx_eof, align 8
  tail call void @mptcp_subflow_eof(ptr noundef %3) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %subflow_is_done.exit.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end21.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subflow_error_report(ptr nocapture noundef readonly %ssk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_lock) #13
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !209

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 1750, i32 noundef 9, ptr noundef null) #13
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mptcp_error_report(ptr noundef %3)
  br label %if.end

if.else:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %cb_flags = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %cb_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb_flags, align 4
  %or.i = or i32 %8, 8
  store i32 %or.i, ptr %cb_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_data_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stream_write_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_subflow_eof(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !179, !180, !182, !184, !185, !186, !187, !189, !190, !192, !194, !195}
!llvm.named.register.sp = !{!197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__ksymtab_mptcp_subflow_init_cookie_req, !1, !"__ksymtab_mptcp_subflow_init_cookie_req", i1 false, i1 false}
!1 = !{!"../net/mptcp/subflow.c", i32 281, i32 1}
!2 = !{ptr @__ksymtab_mptcp_subflow_request_sock_ops, !3, !"__ksymtab_mptcp_subflow_request_sock_ops", i1 false, i1 false}
!3 = !{!"../net/mptcp/subflow.c", i32 487, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mptcp/subflow.c", i32 1212, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mptcp_subflow_data_available.__UNIQUE_ID_ddebug738, !5, !"__UNIQUE_ID_ddebug738", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/mptcp/subflow.c", i32 1333, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mptcpv6_handle_mapped.__UNIQUE_ID_ddebug739, !12, !"__UNIQUE_ID_ddebug739", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mptcp/subflow.c", i32 1432, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__mptcp_subflow_connect.__UNIQUE_ID_ddebug740, !17, !"__UNIQUE_ID_ddebug740", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/mptcp/subflow.c", i32 1553, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mptcp_subflow_create_socket.__UNIQUE_ID_ddebug741, !22, !"__UNIQUE_ID_ddebug741", i1 false, i1 false}
!25 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mptcp/subflow.c", i32 1786, i32 9}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mptcp/subflow.c", i32 1822, i32 9}
!30 = !{ptr @mptcp_subflow_request_sock_ops, !31, !"mptcp_subflow_request_sock_ops", i1 false, i1 false}
!31 = !{!"../net/mptcp/subflow.c", i32 486, i32 25}
!32 = !{ptr @subflow_request_sock_ipv4_ops, !33, !"subflow_request_sock_ipv4_ops", i1 false, i1 false}
!33 = !{!"../net/mptcp/subflow.c", i32 488, i32 36}
!34 = !{ptr @subflow_request_sock_ipv6_ops, !35, !"subflow_request_sock_ipv6_ops", i1 false, i1 false}
!35 = !{!"../net/mptcp/subflow.c", i32 509, i32 36}
!36 = !{ptr @subflow_v6_specific, !37, !"subflow_v6_specific", i1 false, i1 false}
!37 = !{!"../net/mptcp/subflow.c", i32 510, i32 43}
!38 = !{ptr @subflow_v6m_specific, !39, !"subflow_v6m_specific", i1 false, i1 false}
!39 = !{!"../net/mptcp/subflow.c", i32 511, i32 43}
!40 = !{ptr @tcpv6_prot_override, !41, !"tcpv6_prot_override", i1 false, i1 false}
!41 = !{!"../net/mptcp/subflow.c", i32 512, i32 21}
!42 = !{ptr @subflow_specific, !43, !"subflow_specific", i1 false, i1 false}
!43 = !{!"../net/mptcp/subflow.c", i32 793, i32 43}
!44 = !{ptr @tcp_prot_override, !45, !"tcp_prot_override", i1 false, i1 false}
!45 = !{!"../net/mptcp/subflow.c", i32 794, i32 21}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../net/mptcp/subflow.c", i32 1131, i32 7}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/mptcp/subflow.c", i32 1147, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @subflow_check_data_avail.__UNIQUE_ID_ddebug731, !49, !"__UNIQUE_ID_ddebug731", i1 false, i1 false}
!52 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../net/mptcp/subflow.c", i32 949, i32 5}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/mptcp/subflow.c", i32 975, i32 4}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @get_mapping_status.__UNIQUE_ID_ddebug719, !57, !"__UNIQUE_ID_ddebug719", i1 false, i1 false}
!60 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/mptcp/subflow.c", i32 1000, i32 4}
!63 = !{ptr @get_mapping_status.__UNIQUE_ID_ddebug720, !62, !"__UNIQUE_ID_ddebug720", i1 false, i1 false}
!64 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/mptcp/subflow.c", i32 1047, i32 2}
!67 = !{ptr @get_mapping_status.__UNIQUE_ID_ddebug723, !66, !"__UNIQUE_ID_ddebug723", i1 false, i1 false}
!68 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/trace/events/mptcp.h", i32 118, i32 1}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!73 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../net/mptcp/subflow.c", i32 816, i32 6}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/mptcp/subflow.c", i32 806, i32 2}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dbg_bad_map.__UNIQUE_ID_ddebug715, !80, !"__UNIQUE_ID_ddebug715", i1 false, i1 false}
!83 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/trace/events/mptcp.h", i32 154, i32 1}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/mptcp/subflow.c", i32 1076, i32 2}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mptcp_subflow_discard_data.__UNIQUE_ID_ddebug724, !88, !"__UNIQUE_ID_ddebug724", i1 false, i1 false}
!91 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/mptcp/protocol.h", i32 864, i32 3}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @__mptcp_do_fallback.__UNIQUE_ID_ddebug680, !93, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!97 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!100 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/mptcp/subflow.c", i32 1767, i32 27}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/mptcp/subflow.c", i32 42, i32 2}
!109 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @subflow_req_destructor.__UNIQUE_ID_ddebug690, !108, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!111 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/mptcp/subflow.c", i32 146, i32 2}
!114 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @subflow_check_req.__UNIQUE_ID_ddebug692, !113, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!116 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/mptcp/subflow.c", i32 216, i32 4}
!119 = !{ptr @subflow_check_req.__UNIQUE_ID_ddebug695, !118, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!120 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/mptcp/subflow.c", i32 235, i32 3}
!123 = !{ptr @subflow_check_req.__UNIQUE_ID_ddebug696, !122, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!124 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/mptcp/subflow.c", i32 494, i32 2}
!127 = !{ptr @subflow_v4_conn_request.__UNIQUE_ID_ddebug705, !126, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/net/tcp.h", i32 2208, i32 2}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/mptcp/subflow.c", i32 642, i32 2}
!134 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @subflow_syn_recv_sock.__UNIQUE_ID_ddebug712, !133, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!136 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/mptcp/subflow.c", i32 751, i32 5}
!139 = !{ptr @subflow_syn_recv_sock.__UNIQUE_ID_ddebug714, !138, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!140 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../net/mptcp/subflow.c", i32 777, i32 2}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../net/mptcp/subflow.c", i32 575, i32 3}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/mptcp/subflow.c", i32 411, i32 2}
!147 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @subflow_finish_connect.__UNIQUE_ID_ddebug698, !146, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!149 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/mptcp/subflow.c", i32 419, i32 4}
!152 = !{ptr @subflow_finish_connect.__UNIQUE_ID_ddebug699, !151, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!153 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/mptcp/subflow.c", i32 430, i32 3}
!156 = !{ptr @subflow_finish_connect.__UNIQUE_ID_ddebug702, !155, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!157 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/mptcp/subflow.c", i32 446, i32 3}
!160 = !{ptr @subflow_finish_connect.__UNIQUE_ID_ddebug703, !159, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!161 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/mptcp/subflow.c", i32 469, i32 4}
!164 = !{ptr @subflow_finish_connect.__UNIQUE_ID_ddebug704, !163, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!165 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../include/net/sock.h", i32 1750, i32 2}
!168 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/mptcp/subflow.c", i32 346, i32 2}
!171 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @subflow_thmac_valid.__UNIQUE_ID_ddebug697, !170, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!173 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/mptcp/subflow.c", i32 518, i32 2}
!176 = !{ptr @subflow_v6_conn_request.__UNIQUE_ID_ddebug706, !175, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!179 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @subflow_ulp_ops, !181, !"subflow_ulp_ops", i1 false, i1 false}
!181 = !{!"../net/mptcp/subflow.c", i32 1756, i32 27}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/mptcp/subflow.c", i32 1655, i32 2}
!184 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @subflow_ulp_init.__UNIQUE_ID_ddebug749, !183, !"__UNIQUE_ID_ddebug749", i1 false, i1 false}
!186 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/mptcp/subflow.c", i32 1577, i32 2}
!189 = !{ptr @subflow_create_ctx.__UNIQUE_ID_ddebug745, !188, !"__UNIQUE_ID_ddebug745", i1 false, i1 false}
!190 = distinct !{null, !191, !"__already_done", i1 false, i1 false}
!191 = !{!"../net/mptcp/subflow.c", i32 1297, i32 2}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/mptcp/subflow.c", i32 1611, i32 3}
!194 = !{ptr @subflow_state_change.__UNIQUE_ID_ddebug748, !193, !"__UNIQUE_ID_ddebug748", i1 false, i1 false}
!195 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!196 = !{!"../net/mptcp/subflow.c", i32 1589, i32 7}
!197 = !{!"sp"}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i64 2148259984, i64 2148260016, i64 2148260045, i64 2148260079, i64 2148260110, i64 2148260133}
!208 = !{!"branch_weights", i32 1, i32 2000}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2148347985}
!211 = !{i64 2148262449, i64 2148262481, i64 2148262510, i64 2148262544, i64 2148262575, i64 2148262598}
!212 = !{i64 2149354433}
!213 = !{i64 2148740269, i64 2148740274, i64 2148740287, i64 2148740331, i64 2148740365, i64 2148740386}
!214 = !{!"branch_weights", i32 4000000, i32 4002, i32 4000, i32 4000000}
!215 = !{i8 0, i8 2}
!216 = distinct !{!216, !217}
!217 = !{!"llvm.loop.peeled.count", i32 1}
!218 = !{i64 2156849258}
!219 = !{i64 765222, i64 765239, i64 765263, i64 765289, i64 765307}
!220 = !{i64 2156849601}
!221 = !{i64 2157017175}
!222 = !{i64 2159472443}
!223 = !{!"auto-init"}
!224 = !{i64 2149404923}
!225 = !{i64 650935, i64 650996}
!226 = !{i64 653667}
!227 = !{i64 653952}
!228 = !{i64 2148257873}
!229 = !{i64 742696, i64 742721, i64 742743, i64 742759, i64 742771, i64 742791, i64 742815, i64 742831, i64 742843}
!230 = !{i64 2148258061}
!231 = !{i64 2149405189}
!232 = !{i64 2148258454, i64 2148258480, i64 2148258509, i64 2148258543, i64 2148258574, i64 2148258597}
!233 = !{i64 2149912922}
!234 = !{i64 2149917854}
!235 = !{i64 2149939566}
!236 = !{i64 2149944458}
!237 = !{i64 2150020915}
!238 = !{i64 2150021240}
!239 = !{i64 2159305193}
!240 = !{i64 2159305426}
!241 = !{i64 2149413482}
!242 = !{i64 2149414518}
!243 = !{i64 2159270420}
!244 = !{i64 2159270629}
!245 = !{i64 2159491140}
!246 = !{i64 2159131432}
!247 = !{i64 2149498647}
