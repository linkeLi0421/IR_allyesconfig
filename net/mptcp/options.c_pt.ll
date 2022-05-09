; ModuleID = '/llk/IR_all_yes/net/mptcp/options.c_pt.bc'
source_filename = "../net/mptcp/options.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mptcp_get_reset_option\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_get_reset_option\09\09\09\09"
module asm "\09.long\09__crc_mptcp_get_reset_option\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_get_reset_option:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_get_reset_option\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_get_reset_option:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mptcp_delegated_action = type { %struct.napi_struct, %struct.list_head }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%union.anon.135 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mptcp_options_received = type { i64, i64, i64, i64, i32, i16, i16, i16, i32, i32, i16, i8, i64, [20 x i8], %struct.mptcp_addr_info, %struct.mptcp_rm_list, i64, i64 }
%struct.mptcp_addr_info = type { i8, i16, i16, %union.anon.189 }
%union.anon.189 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.mptcp_rm_list = type { [8 x i8], i8 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.208, %struct.anon.209, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.208 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.209 = type { i32, i32, i32, i32 }
%struct.mptcp_subflow_context = type { %struct.list_head, %union.anon.196, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i24, i32, i32, i64, i32, i32, [20 x i8], i8, i8, i8, i8, i32 }
%struct.mptcp_out_options = type { i16, %struct.mptcp_rm_list, i8, i8, i8, %union.anon.190 }
%union.anon.190 = type { %struct.anon.193 }
%struct.anon.193 = type { %struct.mptcp_ext, i64 }
%struct.mptcp_ext = type { %union.anon.194, i64, i32, i16, i16, i16 }
%union.anon.194 = type { i64 }
%struct.anon.195 = type { i32, i32, i64, [20 x i8] }
%struct.mptcp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i32, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, ptr, %struct.rb_root, %struct.sk_buff_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.mptcp_pm_data, %struct.anon.210, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.mptcp_pm_data = type { %struct.mptcp_addr_info, %struct.mptcp_addr_info, %struct.list_head, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32], %struct.mptcp_rm_list, %struct.mptcp_rm_list }
%struct.anon.210 = type { i32, i32, i64, i64 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.anon.191 = type { i64, i64, i64, i32, i16, i16 }
%struct.mptcp_subflow_request_sock = type { %struct.tcp_request_sock, i8, i8, i8, i64, i64, i32, i32, i64, i32, i32, ptr, %struct.hlist_nulls_node }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.211 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.211 = type { %struct.anon.212 }
%struct.anon.212 = type { ptr, ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.213, %struct.anon.214, %struct.anon.215, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.213 = type { i32, i32, i64 }
%struct.anon.214 = type { i32, i32, i64 }
%struct.anon.215 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.csum_pseudo_header = type { i64, i32, i16, i16 }

@mptcp_syn_options.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mptcp\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mptcp_syn_options\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mptcp/options.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"remote_token=%u, nonce=%u\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MPTCP: remote_token=%u, nonce=%u\00", [63 x i8] zeroinitializer }, align 32
@mptcp_established_options.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_synack_options.__UNIQUE_ID_ddebug651 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mptcp_synack_options\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"subflow_req=%p, local_key=%llu\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MPTCP: subflow_req=%p, local_key=%llu\00", [58 x i8] zeroinitializer }, align 32
@mptcp_synack_options.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"req=%p, bkup=%u, id=%u, thmac=%llu, nonce=%u\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MPTCP: req=%p, bkup=%u, id=%u, thmac=%llu, nonce=%u\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_mptcp_get_reset_option = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_get_reset_option = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_get_reset_option = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_get_reset_option to i32), ptr @__kstrtab_mptcp_get_reset_option, ptr @__kstrtabns_mptcp_get_reset_option }, section "___ksymtab_gpl+mptcp_get_reset_option", align 4
@mptcp_parse_option.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptcp_parse_option\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"MP_CAPABLE version=%x, flags=%x, optlen=%d sndr=%llu, rcvr=%llu len=%d csum=%u\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"MPTCP: MP_CAPABLE version=%x, flags=%x, optlen=%d sndr=%llu, rcvr=%llu len=%d csum=%u\00", [42 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MP_JOIN bkup=%u, id=%u, token=%u, nonce=%u\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MPTCP: MP_JOIN bkup=%u, id=%u, token=%u, nonce=%u\00", [46 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.15, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MP_JOIN bkup=%u, id=%u, thmac=%llu, nonce=%u\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MPTCP: MP_JOIN bkup=%u, id=%u, thmac=%llu, nonce=%u\00", [44 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.17, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MP_JOIN hmac\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MPTCP: MP_JOIN hmac\00", [44 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.19, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DSS\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MPTCP: DSS\00", [21 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.21, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"data_fin=%d dsn64=%d use_map=%d ack64=%d use_ack=%d\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"MPTCP: data_fin=%d dsn64=%d use_map=%d ack64=%d use_ack=%d\00", [37 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.23, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"data_ack=%llu\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MPTCP: data_ack=%llu\00", [43 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.25, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"data_seq=%llu subflow_seq=%u data_len=%u csum=%d:%u\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"MPTCP: data_seq=%llu subflow_seq=%u data_len=%u csum=%d:%u\00", [37 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.27, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ADD_ADDR%s: id=%d, ahmac=%llu, echo=%d, port=%d\00", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"MPTCP: ADD_ADDR%s: id=%d, ahmac=%llu, echo=%d, port=%d\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.31, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RM_ADDR: rm_list_nr=%d\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MPTCP: RM_ADDR: rm_list_nr=%d\00", [34 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.33, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MP_PRIO: prio=%d\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MPTCP: MP_PRIO: prio=%d\00", [40 x i8] zeroinitializer }, align 32
@mptcp_parse_option.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.35, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MP_FAIL: data_seq=%llu\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MPTCP: MP_FAIL: data_seq=%llu\00", [34 x i8] zeroinitializer }, align 32
@mptcp_established_options_fastclose.__UNIQUE_ID_ddebug649 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mptcp_established_options_fastclose\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FASTCLOSE key=%llu\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MPTCP: FASTCLOSE key=%llu\00", [38 x i8] zeroinitializer }, align 32
@mptcp_established_options_mp_fail.__UNIQUE_ID_ddebug650 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mptcp_established_options_mp_fail\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MP_FAIL fail_seq=%llu\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MPTCP: MP_FAIL fail_seq=%llu\00", [35 x i8] zeroinitializer }, align 32
@mptcp_established_options_mp.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mptcp_established_options_mp\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"subflow=%p, local_key=%llu, remote_key=%llu map_len=%d\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"MPTCP: subflow=%p, local_key=%llu, remote_key=%llu map_len=%d\00", [34 x i8] zeroinitializer }, align 32
@mptcp_established_options_mp.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.46, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"subflow=%p\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MPTCP: subflow=%p\00", [46 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@mptcp_subflow_delegate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mptcp/protocol.h\00", [43 x i8] zeroinitializer }, align 32
@mptcp_delegated_actions = external dso_local global %struct.mptcp_delegated_action, section ".data..percpu", align 8
@mptcp_established_options_add_addr.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mptcp_established_options_add_addr\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drop other suboptions\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MPTCP: drop other suboptions\00", [35 x i8] zeroinitializer }, align 32
@mptcp_established_options_add_addr.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"addr_id=%d, ahmac=%llu, echo=%d, port=%d\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MPTCP: addr_id=%d, ahmac=%llu, echo=%d, port=%d\00", [48 x i8] zeroinitializer }, align 32
@mptcp_established_options_rm_addr.__UNIQUE_ID_ddebug647 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mptcp_established_options_rm_addr\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rm_list_ids[%d]=%d\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MPTCP: rm_list_ids[%d]=%d\00", [38 x i8] zeroinitializer }, align 32
@mptcp_established_options_mp_prio.__UNIQUE_ID_ddebug648 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mptcp_established_options_mp_prio\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"prio=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MPTCP: prio=%d\00", [17 x i8] zeroinitializer }, align 32
@check_fully_established.__UNIQUE_ID_ddebug655 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"check_fully_established\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:fallback to TCP (msk=%p)\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MPTCP: %s:fallback to TCP (msk=%p)\00", [61 x i8] zeroinitializer }, align 32
@check_fully_established.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_fully_established._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.2, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014MPTCP: bogus mpc option on established client sk\00", [45 x i8] zeroinitializer }, align 32
@check_fully_established._entry_ptr = internal global ptr @check_fully_established._entry, section ".printk_index", align 4
@__mptcp_do_fallback.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.49, ptr @.str.66, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mptcp_do_fallback\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TCP fallback already done (msk=%p)\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MPTCP: TCP fallback already done (msk=%p)\00", [54 x i8] zeroinitializer }, align 32
@add_addr_hmac_valid.__UNIQUE_ID_ddebug664 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"add_addr_hmac_valid\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"msk=%p, ahmac=%llu, mp_opt->ahmac=%llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MPTCP: msk=%p, ahmac=%llu, mp_opt->ahmac=%llu\0A\00", [49 x i8] zeroinitializer }, align 32
@__tracepoint_ack_update_msk = external dso_local global %struct.tracepoint, align 4
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/mptcp.h\00", [35 x i8] zeroinitializer }, align 32
@trace_ack_update_msk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.mptcp_parse_option = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 10, i16 10], [16 x i8] zeroinitializer }, align 32
@switch.table.mptcp_parse_option.74 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 10, i16 10], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 16, i64 24]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 18]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 22, i64 30]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 412, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 897, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 906, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 114, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 128, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 138, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 144, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 151, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 166, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 204, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 228, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 290, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 306, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 315, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 348, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 789, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 810, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 496, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 505, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1750, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 523, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 674, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 691, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 722, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 748, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 965, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 974, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [24 x i8] c"../net/mptcp/protocol.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 864, i32 3 }
@___asan_gen_.297 = private constant [23 x i8] c"../net/mptcp/options.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1086, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [32 x i8] c"../include/trace/events/mptcp.h\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 122, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 108, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [32 x i8] c"switch.table.mptcp_parse_option\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [35 x i8] c"switch.table.mptcp_parse_option.74\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__ksymtab_mptcp_get_reset_option, ptr @check_fully_established._entry, ptr @check_fully_established._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @switch.table.mptcp_parse_option, ptr @switch.table.mptcp_parse_option.74], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fully_established._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mptcp_parse_option to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mptcp_parse_option.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_get_options(ptr nocapture readnone %sk, ptr nocapture noundef readonly %skb, ptr noundef %mp_opt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %suboptions = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %4 = ptrtoint ptr %suboptions to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %suboptions, align 8
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %doff, align 4
  %6 = lshr i16 %bf.load, 10
  %7 = and i16 %6, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %7)
  %cmp47 = icmp ugt i16 %7, 20
  br i1 %cmp47, label %while.body.preheader, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

while.body.preheader:                             ; preds = %entry
  %add.ptr = getelementptr %struct.tcphdr, ptr %add.ptr.i.i, i32 1
  %mul = zext i16 %7 to i32
  %sub = add nsw i32 %mul, -20
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %length.049 = phi i32 [ %length.1, %cleanup.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %ptr.048 = phi ptr [ %ptr.1, %cleanup.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %ptr.048, i32 1
  %8 = ptrtoint ptr %ptr.048 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ptr.048, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %sw.default [
    i8 0, label %while.body.cleanup24_crit_edge
    i8 1, label %sw.bb3
  ]

while.body.cleanup24_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

sw.bb3:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %length.049, -1
  br label %cleanup

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.049)
  %cmp4 = icmp slt i32 %length.049, 2
  br i1 %cmp4, label %sw.default.cleanup24_crit_edge, label %if.end

sw.default.cleanup24_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.end:                                           ; preds = %sw.default
  %incdec.ptr6 = getelementptr i8, ptr %ptr.048, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr, align 1
  %conv7 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp8 = icmp ult i8 %12, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %length.049, i32 %conv7)
  %cmp12 = icmp ult i32 %length.049, %conv7
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp12
  br i1 %or.cond, label %if.end.cleanup24_crit_edge, label %if.end15

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %9)
  %cmp16 = icmp eq i8 %9, 30
  br i1 %cmp16, label %if.then18, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mptcp_parse_option(ptr noundef %skb, ptr noundef %incdec.ptr6, i32 noundef %conv7, ptr noundef %mp_opt)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %add.ptr21 = getelementptr i8, ptr %ptr.048, i32 %conv7
  %sub22 = sub nsw i32 %length.049, %conv7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %sw.bb3
  %ptr.1 = phi ptr [ %add.ptr21, %if.end19 ], [ %incdec.ptr, %sw.bb3 ]
  %length.1 = phi i32 [ %sub22, %if.end19 ], [ %dec, %sw.bb3 ]
  %cmp = icmp sgt i32 %length.1, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup24_crit_edge

cleanup.cleanup24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup24:                                        ; preds = %cleanup.cleanup24_crit_edge, %if.end.cleanup24_crit_edge, %sw.default.cleanup24_crit_edge, %while.body.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_parse_option(ptr nocapture noundef readonly %skb, ptr noundef readonly %ptr, i32 noundef %opsize, ptr noundef %mp_opt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptr, align 1
  %2 = lshr i8 %1, 4
  %conv2 = zext i8 %2 to i32
  %3 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %conv2, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb123
    i32 2, label %do.body246
    i32 3, label %sw.bb509
    i32 4, label %sw.bb650
    i32 5, label %sw.bb692
    i32 7, label %sw.bb732
    i32 8, label %sw.bb745
    i32 6, label %sw.bb777
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tcp_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tcp_flags, align 4
  %conv3 = zext i8 %5 to i32
  %and = and i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else7

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %doff, align 4
  %13 = lshr i16 %bf.load, 10
  %14 = and i16 %13, 60
  %shl = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl)
  %cmp = icmp ugt i32 %7, %shl
  %.1030 = select i1 %cmp, i32 22, i32 20
  br label %if.end17

if.else7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %and12 = and i32 %conv3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %.1031 = select i1 %tobool13.not, i32 4, i32 12
  br label %if.end17

if.end17:                                         ; preds = %if.else7, %if.then
  %cmp20.not = phi i1 [ %cmp, %if.then ], [ false, %if.else7 ]
  %expected_opsize.0 = phi i32 [ %.1030, %if.then ], [ %.1031, %if.else7 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_opsize.0, i32 %opsize)
  %cmp18.not = icmp eq i32 %expected_opsize.0, %opsize
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %opsize)
  %cmp22.not = icmp eq i32 %opsize, 24
  %or.cond = and i1 %cmp22.not, %cmp20.not
  %or.cond1035 = select i1 %cmp18.not, i1 true, i1 %or.cond
  br i1 %or.cond1035, label %if.end25, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end25:                                         ; preds = %if.end17
  %incdec.ptr = getelementptr i8, ptr %ptr, i32 1
  %15 = and i8 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %opsize)
  %cmp29.not = icmp eq i32 %opsize, 4
  br i1 %cmp29.not, label %if.else37, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp33.not = icmp eq i8 %15, 1
  br i1 %cmp33.not, label %if.then31.if.end43_crit_edge, label %if.then31.sw.epilog_crit_edge

if.then31.sw.epilog_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then31.if.end43_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp39 = icmp eq i8 %15, 0
  br i1 %cmp39, label %if.else37.sw.epilog_crit_edge, label %if.else37.if.end43_crit_edge

if.else37.if.end43_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else37.sw.epilog_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end43:                                         ; preds = %if.else37.if.end43_crit_edge, %if.then31.if.end43_crit_edge
  %incdec.ptr44 = getelementptr i8, ptr %ptr, i32 2
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr, align 1
  %18 = and i8 %17, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp eq i8 %18, 1
  br i1 %cmp.i, label %lor.lhs.false46, label %if.end43.sw.epilog_crit_edge

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false46:                                  ; preds = %if.end43
  %conv47 = zext i8 %17 to i32
  %and48 = and i32 %conv47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end51, label %lor.lhs.false46.sw.epilog_crit_edge

lor.lhs.false46.sw.epilog_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end51:                                         ; preds = %lor.lhs.false46
  %and53 = and i32 %conv47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end58_crit_edge, label %if.then55

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %suboptions = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %19 = ptrtoint ptr %suboptions to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %suboptions, align 8
  %21 = or i16 %20, 8192
  store i16 %21, ptr %suboptions, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end51.if.end58_crit_edge
  %deny_join_id0 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %22 = ptrtoint ptr %deny_join_id0 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load64 = load i16, ptr %deny_join_id0, align 4
  %23 = lshr i8 %17, 3
  %24 = and i8 %23, 4
  %bf.shl = zext i8 %24 to i16
  %bf.clear = and i16 %bf.load64, -5
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %deny_join_id0, align 4
  %suboptions65 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %25 = ptrtoint ptr %suboptions65 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %suboptions65, align 8
  %27 = or i16 %26, 7
  store i16 %27, ptr %suboptions65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %opsize)
  %cmp69 = icmp sgt i32 %opsize, 11
  br i1 %cmp69, label %if.end73, label %if.end58.if.end95_crit_edge

if.end58.if.end95_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.end73:                                         ; preds = %if.end58
  %28 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %incdec.ptr44, align 1
  %30 = ptrtoint ptr %mp_opt to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %mp_opt, align 8
  %add.ptr = getelementptr i8, ptr %ptr, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %opsize)
  %cmp74 = icmp ugt i32 %opsize, 19
  br i1 %cmp74, label %if.end79, label %if.end73.if.end95_crit_edge

if.end73.if.end95_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.end79:                                         ; preds = %if.end73
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %add.ptr, align 1
  %rcvr_key = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 1
  %33 = ptrtoint ptr %rcvr_key to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %rcvr_key, align 8
  %add.ptr78 = getelementptr i8, ptr %ptr, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %opsize)
  %cmp80 = icmp ugt i32 %opsize, 21
  br i1 %cmp80, label %if.then82, label %if.end79.if.end95_crit_edge

if.end79.if.end95_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %34 = or i16 %26, 2055
  %35 = ptrtoint ptr %suboptions65 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %suboptions65, align 8
  %bf.set92 = or i16 %bf.set, -31744
  %36 = ptrtoint ptr %deny_join_id0 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %bf.set92, ptr %deny_join_id0, align 4
  %37 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %add.ptr78, align 1
  %data_len = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 5
  %39 = ptrtoint ptr %data_len to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %data_len, align 4
  %add.ptr94 = getelementptr i8, ptr %ptr, i32 20
  br label %if.end95

if.end95:                                         ; preds = %if.then82, %if.end79.if.end95_crit_edge, %if.end73.if.end95_crit_edge, %if.end58.if.end95_crit_edge
  %ptr.addr.2 = phi ptr [ %add.ptr94, %if.then82 ], [ %add.ptr78, %if.end79.if.end95_crit_edge ], [ %add.ptr, %if.end73.if.end95_crit_edge ], [ %incdec.ptr44, %if.end58.if.end95_crit_edge ]
  br i1 %cmp22.not, label %if.then98, label %if.end95.do.body_crit_edge

if.end95.do.body_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %ptr.addr.2 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %ptr.addr.2, align 1
  %csum = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 6
  %42 = ptrtoint ptr %csum to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %csum, align 2
  %43 = ptrtoint ptr %suboptions65 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %suboptions65, align 8
  %45 = or i16 %44, 8192
  store i16 %45, ptr %suboptions65, align 8
  br label %do.body

do.body:                                          ; preds = %if.then98, %if.end95.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then113)) #12
          to label %sw.epilog [label %if.then113], !srcloc !153

if.then113:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv114 = zext i8 %15 to i32
  %46 = ptrtoint ptr %mp_opt to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %mp_opt, align 8
  %rcvr_key117 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 1
  %48 = ptrtoint ptr %rcvr_key117 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rcvr_key117, align 8
  %data_len118 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 5
  %50 = ptrtoint ptr %data_len118 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %data_len118, align 4
  %conv119 = zext i16 %51 to i32
  %csum120 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 6
  %52 = ptrtoint ptr %csum120 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %csum120, align 2
  %conv121 = zext i16 %53 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.12, i32 noundef %conv114, i32 noundef %conv47, i32 noundef %opsize, i64 noundef %47, i64 noundef %49, i32 noundef %conv119, i32 noundef %conv121) #12
  br label %sw.epilog

sw.bb123:                                         ; preds = %entry
  %suboptions124 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %54 = ptrtoint ptr %suboptions124 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %suboptions124, align 8
  %56 = or i16 %55, 56
  store i16 %56, ptr %suboptions124, align 8
  %57 = zext i32 %opsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %opsize, label %if.else237 [
    i32 12, label %if.then130
    i32 16, label %if.then173
    i32 24, label %if.then219
  ]

if.then130:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr131 = getelementptr i8, ptr %ptr, i32 1
  %58 = ptrtoint ptr %ptr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ptr, align 1
  %backup = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %60 = ptrtoint ptr %backup to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load135 = load i16, ptr %backup, align 4
  %61 = shl i8 %59, 3
  %62 = and i8 %61, 8
  %bf.shl137 = zext i8 %62 to i16
  %bf.clear138 = and i16 %bf.load135, -9
  %bf.set139 = or i16 %bf.clear138, %bf.shl137
  store i16 %bf.set139, ptr %backup, align 4
  %incdec.ptr140 = getelementptr i8, ptr %ptr, i32 2
  %63 = ptrtoint ptr %incdec.ptr131 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %incdec.ptr131, align 1
  %join_id = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 11
  %65 = ptrtoint ptr %join_id to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %join_id, align 2
  %66 = ptrtoint ptr %incdec.ptr140 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %incdec.ptr140, align 1
  %token = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 8
  %68 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %token, align 4
  %add.ptr142 = getelementptr i8, ptr %ptr, i32 6
  %69 = ptrtoint ptr %add.ptr142 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %add.ptr142, align 1
  %nonce = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 9
  %71 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %nonce, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then157)) #12
          to label %sw.epilog [label %if.then157], !srcloc !153

if.then157:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %backup to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load159 = load i16, ptr %backup, align 4
  %bf.lshr160 = lshr i16 %bf.load159, 3
  %bf.clear161 = and i16 %bf.lshr160, 1
  %conv162 = zext i16 %bf.clear161 to i32
  %73 = ptrtoint ptr %join_id to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %join_id, align 2
  %conv164 = zext i8 %74 to i32
  %75 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %token, align 4
  %77 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nonce, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.14, i32 noundef %conv162, i32 noundef %conv164, i32 noundef %76, i32 noundef %78) #12
  br label %sw.epilog

if.then173:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr174 = getelementptr i8, ptr %ptr, i32 1
  %79 = ptrtoint ptr %ptr to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ptr, align 1
  %backup178 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %81 = ptrtoint ptr %backup178 to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load179 = load i16, ptr %backup178, align 4
  %82 = shl i8 %80, 3
  %83 = and i8 %82, 8
  %bf.shl181 = zext i8 %83 to i16
  %bf.clear182 = and i16 %bf.load179, -9
  %bf.set183 = or i16 %bf.clear182, %bf.shl181
  store i16 %bf.set183, ptr %backup178, align 4
  %incdec.ptr184 = getelementptr i8, ptr %ptr, i32 2
  %84 = ptrtoint ptr %incdec.ptr174 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %incdec.ptr174, align 1
  %join_id185 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 11
  %86 = ptrtoint ptr %join_id185 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %join_id185, align 2
  %87 = ptrtoint ptr %incdec.ptr184 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %incdec.ptr184, align 1
  %thmac = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 12
  %89 = ptrtoint ptr %thmac to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %thmac, align 8
  %add.ptr187 = getelementptr i8, ptr %ptr, i32 10
  %90 = ptrtoint ptr %add.ptr187 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %add.ptr187, align 1
  %nonce189 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 9
  %92 = ptrtoint ptr %nonce189 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %nonce189, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then203)) #12
          to label %sw.epilog [label %if.then203], !srcloc !153

if.then203:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %backup178 to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load205 = load i16, ptr %backup178, align 4
  %bf.lshr206 = lshr i16 %bf.load205, 3
  %bf.clear207 = and i16 %bf.lshr206, 1
  %conv208 = zext i16 %bf.clear207 to i32
  %94 = ptrtoint ptr %join_id185 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %join_id185, align 2
  %conv210 = zext i8 %95 to i32
  %96 = ptrtoint ptr %thmac to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %thmac, align 8
  %98 = ptrtoint ptr %nonce189 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nonce189, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.16, i32 noundef %conv208, i32 noundef %conv210, i64 noundef %97, i32 noundef %99) #12
  br label %sw.epilog

if.then219:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr220 = getelementptr i8, ptr %ptr, i32 2
  %hmac = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 13
  %100 = call ptr @memcpy(ptr %hmac, ptr %add.ptr220, i32 20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then233)) #12
          to label %sw.epilog [label %if.then233], !srcloc !153

if.then233:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.18) #12
  br label %sw.epilog

if.else237:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #14
  %101 = and i16 %55, -57
  %102 = ptrtoint ptr %suboptions124 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %suboptions124, align 8
  br label %sw.epilog

do.body246:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then258)) #12
          to label %do.end261 [label %if.then258], !srcloc !153

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.20) #12
  br label %do.end261

do.end261:                                        ; preds = %if.then258, %do.body246
  %incdec.ptr262 = getelementptr i8, ptr %ptr, i32 1
  %mpc_map263 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %103 = ptrtoint ptr %mpc_map263 to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load264 = load i16, ptr %mpc_map263, align 4
  %bf.clear265 = and i16 %bf.load264, -1025
  store i16 %bf.clear265, ptr %mpc_map263, align 4
  %incdec.ptr267 = getelementptr i8, ptr %ptr, i32 2
  %104 = ptrtoint ptr %incdec.ptr262 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %incdec.ptr262, align 1
  %106 = lshr i8 %105, 4
  %107 = and i8 %106, 1
  %bf.value277 = zext i8 %107 to i16
  %bf.shl278 = shl nuw nsw i16 %bf.value277, 13
  %bf.clear279 = and i16 %bf.load264, 1023
  %bf.set280 = or i16 %bf.shl278, %bf.clear279
  %108 = lshr i8 %105, 3
  %109 = and i8 %108, 1
  %bf.value287 = zext i8 %109 to i16
  %bf.shl288 = shl nuw nsw i16 %bf.value287, 14
  %bf.set290 = or i16 %bf.set280, %bf.shl288
  %110 = lshr i8 %105, 2
  %bf.value298 = zext i8 %110 to i16
  %bf.shl299 = shl i16 %bf.value298, 15
  %bf.set301 = or i16 %bf.set290, %bf.shl299
  %111 = lshr i8 %105, 1
  %112 = and i8 %111, 1
  %bf.value308 = zext i8 %112 to i16
  %bf.shl309 = shl nuw nsw i16 %bf.value308, 11
  %bf.set311 = or i16 %bf.set301, %bf.shl309
  %113 = and i8 %105, 1
  %bf.value316 = zext i8 %113 to i16
  %bf.shl317 = shl nuw nsw i16 %bf.value316, 12
  %bf.set319 = or i16 %bf.set311, %bf.shl317
  store i16 %bf.set319, ptr %mpc_map263, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then332)) #12
          to label %do.end359 [label %if.then332], !srcloc !153

if.then332:                                       ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %mpc_map263 to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load334 = load i16, ptr %mpc_map263, align 4
  %bf.lshr335 = lshr i16 %bf.load334, 13
  %bf.clear336 = and i16 %bf.lshr335, 1
  %conv337 = zext i16 %bf.clear336 to i32
  %bf.lshr340 = lshr i16 %bf.load334, 14
  %bf.clear341 = and i16 %bf.lshr340, 1
  %conv342 = zext i16 %bf.clear341 to i32
  %bf.lshr345 = lshr i16 %bf.load334, 15
  %conv346 = zext i16 %bf.lshr345 to i32
  %bf.lshr349 = lshr i16 %bf.load334, 11
  %bf.clear350 = and i16 %bf.lshr349, 1
  %conv351 = zext i16 %bf.clear350 to i32
  %bf.lshr354 = lshr i16 %bf.load334, 12
  %bf.clear355 = and i16 %bf.lshr354, 1
  %conv356 = zext i16 %bf.clear355 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.22, i32 noundef %conv337, i32 noundef %conv342, i32 noundef %conv346, i32 noundef %conv351, i32 noundef %conv356) #12
  br label %do.end359

do.end359:                                        ; preds = %if.then332, %do.end261
  %115 = ptrtoint ptr %mpc_map263 to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load361 = load i16, ptr %mpc_map263, align 4
  %116 = and i16 %bf.load361, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool364.not = icmp eq i16 %116, 0
  %117 = and i16 %bf.load361, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool370.not = icmp eq i16 %117, 0
  %.1032 = select i1 %tobool370.not, i32 8, i32 12
  %expected_opsize.1 = select i1 %tobool364.not, i32 4, i32 %.1032
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load361)
  %tobool379.not = icmp sgt i16 %bf.load361, -1
  br i1 %tobool379.not, label %do.end359.if.end391_crit_edge, label %if.then380

do.end359.if.end391_crit_edge:                    ; preds = %do.end359
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end391

if.then380:                                       ; preds = %do.end359
  %118 = and i16 %bf.load361, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool385.not = icmp eq i16 %118, 0
  br i1 %tobool385.not, label %if.else388, label %if.then386

if.then386:                                       ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #14
  %add387 = add nuw nsw i32 %expected_opsize.1, 14
  br label %if.end391

if.else388:                                       ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #14
  %add389 = add nuw nsw i32 %expected_opsize.1, 10
  br label %if.end391

if.end391:                                        ; preds = %if.else388, %if.then386, %do.end359.if.end391_crit_edge
  %expected_opsize.2 = phi i32 [ %add387, %if.then386 ], [ %add389, %if.else388 ], [ %expected_opsize.1, %do.end359.if.end391_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_opsize.2, i32 %opsize)
  %cmp392.not = icmp eq i32 %expected_opsize.2, %opsize
  %add395 = add nuw nsw i32 %expected_opsize.2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add395, i32 %opsize)
  %cmp396.not = icmp eq i32 %add395, %opsize
  %or.cond1033 = select i1 %cmp392.not, i1 true, i1 %cmp396.not
  br i1 %or.cond1033, label %if.end399, label %if.end391.sw.epilog_crit_edge

if.end391.sw.epilog_crit_edge:                    ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end399:                                        ; preds = %if.end391
  %suboptions400 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %119 = ptrtoint ptr %suboptions400 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %suboptions400, align 8
  %121 = or i16 %120, 2048
  store i16 %121, ptr %suboptions400, align 8
  br i1 %tobool364.not, label %if.end399.if.end441_crit_edge, label %if.then409

if.end399.if.end441_crit_edge:                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end441

if.then409:                                       ; preds = %if.end399
  br i1 %tobool370.not, label %if.else418, label %if.then415

if.then415:                                       ; preds = %if.then409
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %incdec.ptr267 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %123 = load i64, ptr %incdec.ptr267, align 1
  br label %do.body424

if.else418:                                       ; preds = %if.then409
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %incdec.ptr267 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %incdec.ptr267, align 1
  %conv420 = zext i32 %125 to i64
  br label %do.body424

do.body424:                                       ; preds = %if.else418, %if.then415
  %.sink1089 = phi i32 [ 10, %if.then415 ], [ 6, %if.else418 ]
  %.sink = phi i64 [ %123, %if.then415 ], [ %conv420, %if.else418 ]
  %add.ptr417 = getelementptr i8, ptr %ptr, i32 %.sink1089
  %126 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 2
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %.sink, ptr %126, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then436)) #12
          to label %if.end441 [label %if.then436], !srcloc !153

if.then436:                                       ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %126 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %126, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.24, i64 noundef %129) #12
  br label %if.end441

if.end441:                                        ; preds = %if.then436, %do.body424, %if.end399.if.end441_crit_edge
  %ptr.addr.4 = phi ptr [ %add.ptr417, %if.then436 ], [ %incdec.ptr267, %if.end399.if.end441_crit_edge ], [ %add.ptr417, %do.body424 ]
  %130 = ptrtoint ptr %mpc_map263 to i32
  call void @__asan_load2_noabort(i32 %130)
  %bf.load443 = load i16, ptr %mpc_map263, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load443)
  %tobool445.not = icmp sgt i16 %bf.load443, -1
  br i1 %tobool445.not, label %if.end441.sw.epilog_crit_edge, label %if.then446

if.end441.sw.epilog_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then446:                                       ; preds = %if.end441
  %131 = and i16 %bf.load443, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool451.not = icmp eq i16 %131, 0
  br i1 %tobool451.not, label %if.else455, label %if.then452

if.then452:                                       ; preds = %if.then446
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %ptr.addr.4 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 8)
  %133 = load i64, ptr %ptr.addr.4, align 1
  br label %if.end460

if.else455:                                       ; preds = %if.then446
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %ptr.addr.4 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %ptr.addr.4, align 1
  %conv457 = zext i32 %135 to i64
  br label %if.end460

if.end460:                                        ; preds = %if.else455, %if.then452
  %.sink1090 = phi i32 [ 4, %if.else455 ], [ 8, %if.then452 ]
  %.sink1088 = phi i64 [ %conv457, %if.else455 ], [ %133, %if.then452 ]
  %add.ptr459 = getelementptr i8, ptr %ptr.addr.4, i32 %.sink1090
  %136 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 3
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %.sink1088, ptr %136, align 8
  %138 = ptrtoint ptr %add.ptr459 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %add.ptr459, align 1
  %subflow_seq = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 4
  %140 = ptrtoint ptr %subflow_seq to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %subflow_seq, align 8
  %add.ptr462 = getelementptr i8, ptr %add.ptr459, i32 4
  %141 = ptrtoint ptr %add.ptr462 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %add.ptr462, align 1
  %data_len464 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 5
  %143 = ptrtoint ptr %data_len464 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %data_len464, align 4
  br i1 %cmp396.not, label %if.then469, label %if.end460.do.body478_crit_edge

if.end460.do.body478_crit_edge:                   ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body478

if.then469:                                       ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr465 = getelementptr i8, ptr %add.ptr459, i32 6
  %144 = ptrtoint ptr %suboptions400 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %suboptions400, align 8
  %146 = or i16 %145, 8192
  store i16 %146, ptr %suboptions400, align 8
  %147 = ptrtoint ptr %add.ptr465 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %add.ptr465, align 1
  %csum475 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 6
  %149 = ptrtoint ptr %csum475 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %csum475, align 2
  br label %do.body478

do.body478:                                       ; preds = %if.then469, %if.end460.do.body478_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then490)) #12
          to label %sw.epilog [label %if.then490], !srcloc !153

if.then490:                                       ; preds = %do.body478
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %136 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %136, align 8
  %152 = ptrtoint ptr %subflow_seq to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %subflow_seq, align 8
  %154 = ptrtoint ptr %data_len464 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %data_len464, align 4
  %conv494 = zext i16 %155 to i32
  %156 = ptrtoint ptr %suboptions400 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %suboptions400, align 8
  %158 = lshr i16 %157, 13
  %.lobit = and i16 %158, 1
  %159 = zext i16 %.lobit to i32
  %csum503 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 6
  %160 = ptrtoint ptr %csum503 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %csum503, align 2
  %conv504 = zext i16 %161 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.26, i64 noundef %151, i32 noundef %153, i32 noundef %conv494, i32 noundef %159, i32 noundef %conv504) #12
  br label %sw.epilog

sw.bb509:                                         ; preds = %entry
  %incdec.ptr510 = getelementptr i8, ptr %ptr, i32 1
  %echo = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %162 = ptrtoint ptr %echo to i32
  call void @__asan_load2_noabort(i32 %162)
  %bf.load514 = load i16, ptr %echo, align 4
  %163 = shl i8 %1, 4
  %164 = and i8 %163, 16
  %bf.shl516 = zext i8 %164 to i16
  %bf.clear517 = and i16 %bf.load514, -17
  %bf.set518 = or i16 %bf.clear517, %bf.shl516
  store i16 %bf.set518, ptr %echo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool523.not = icmp eq i8 %164, 0
  br i1 %tobool523.not, label %if.then524, label %if.else543

if.then524:                                       ; preds = %sw.bb509
  %165 = add i32 %opsize, -16
  %166 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %166)
  %167 = icmp ult i32 %166, 8
  br i1 %167, label %switch.hole_check, label %if.then524.sw.epilog_crit_edge

if.then524.sw.epilog_crit_edge:                   ; preds = %if.then524
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.else543:                                       ; preds = %sw.bb509
  %168 = add i32 %opsize, -8
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %169)
  %170 = icmp ult i32 %169, 8
  br i1 %170, label %switch.hole_check1095, label %if.else543.sw.epilog_crit_edge

if.else543.sw.epilog_crit_edge:                   ; preds = %if.else543
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.then524
  %switch.maskindex = trunc i32 %166 to i8
  %switch.shifted = lshr i8 -61, %switch.maskindex
  %171 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %switch.lobit.not = icmp eq i8 %171, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.mptcp_parse_option, i32 0, i32 %166
  br label %if.end564

switch.hole_check1095:                            ; preds = %if.else543
  %switch.maskindex1097 = trunc i32 %169 to i8
  %switch.shifted1098 = lshr i8 -61, %switch.maskindex1097
  %172 = and i8 %switch.shifted1098, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %switch.lobit1099.not = icmp eq i8 %172, 0
  br i1 %switch.lobit1099.not, label %switch.hole_check1095.sw.epilog_crit_edge, label %switch.lookup1096

switch.hole_check1095.sw.epilog_crit_edge:        ; preds = %switch.hole_check1095
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup1096:                                ; preds = %switch.hole_check1095
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep1100 = getelementptr inbounds [8 x i16], ptr @switch.table.mptcp_parse_option.74, i32 0, i32 %169
  br label %if.end564

if.end564:                                        ; preds = %switch.lookup1096, %switch.lookup
  %switch.gep1100.sink = phi ptr [ %switch.gep1100, %switch.lookup1096 ], [ %switch.gep, %switch.lookup ]
  %173 = ptrtoint ptr %switch.gep1100.sink to i32
  call void @__asan_load2_noabort(i32 %173)
  %switch.load1101 = load i16, ptr %switch.gep1100.sink, align 2
  %family551 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 1
  %174 = ptrtoint ptr %family551 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %switch.load1101, ptr %family551, align 2
  %suboptions565 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %175 = ptrtoint ptr %suboptions565 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %suboptions565, align 8
  %177 = or i16 %176, 64
  store i16 %177, ptr %suboptions565, align 8
  %incdec.ptr569 = getelementptr i8, ptr %ptr, i32 2
  %178 = ptrtoint ptr %incdec.ptr510 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %incdec.ptr510, align 1
  %addr570 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14
  %180 = ptrtoint ptr %addr570 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %addr570, align 4
  %port = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 2
  %181 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %port, align 4
  %ahmac = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 16
  %182 = ptrtoint ptr %ahmac to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 0, ptr %ahmac, align 8
  %family573 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 1
  %183 = ptrtoint ptr %family573 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %family573, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %184)
  %cmp575 = icmp eq i16 %184, 2
  %185 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 3
  br i1 %cmp575, label %if.then577, label %if.else591

if.then577:                                       ; preds = %if.end564
  %186 = ptrtoint ptr %incdec.ptr569 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %incdec.ptr569, align 1
  %188 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %185, align 4
  %add.ptr579 = getelementptr i8, ptr %ptr, i32 6
  %189 = zext i32 %opsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %opsize, label %if.then577.if.end606_crit_edge [
    i32 18, label %if.then577.if.end606.sink.split_crit_edge
    i32 10, label %if.then577.if.end606.sink.split_crit_edge1102
  ]

if.then577.if.end606.sink.split_crit_edge1102:    ; preds = %if.then577
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end606.sink.split

if.then577.if.end606.sink.split_crit_edge:        ; preds = %if.then577
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end606.sink.split

if.then577.if.end606_crit_edge:                   ; preds = %if.then577
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end606

if.else591:                                       ; preds = %if.end564
  %190 = call ptr @memcpy(ptr %185, ptr %incdec.ptr569, i32 16)
  %add.ptr594 = getelementptr i8, ptr %ptr, i32 18
  %191 = zext i32 %opsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %opsize, label %if.else591.if.end606_crit_edge [
    i32 30, label %if.else591.if.end606.sink.split_crit_edge
    i32 22, label %if.else591.if.end606.sink.split_crit_edge1103
  ]

if.else591.if.end606.sink.split_crit_edge1103:    ; preds = %if.else591
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end606.sink.split

if.else591.if.end606.sink.split_crit_edge:        ; preds = %if.else591
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end606.sink.split

if.else591.if.end606_crit_edge:                   ; preds = %if.else591
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end606

if.end606.sink.split:                             ; preds = %if.else591.if.end606.sink.split_crit_edge, %if.else591.if.end606.sink.split_crit_edge1103, %if.then577.if.end606.sink.split_crit_edge, %if.then577.if.end606.sink.split_crit_edge1102
  %add.ptr594.sink = phi ptr [ %add.ptr579, %if.then577.if.end606.sink.split_crit_edge ], [ %add.ptr579, %if.then577.if.end606.sink.split_crit_edge1102 ], [ %add.ptr594, %if.else591.if.end606.sink.split_crit_edge ], [ %add.ptr594, %if.else591.if.end606.sink.split_crit_edge1103 ]
  %.sink1092 = phi i32 [ 8, %if.then577.if.end606.sink.split_crit_edge ], [ 8, %if.then577.if.end606.sink.split_crit_edge1102 ], [ 20, %if.else591.if.end606.sink.split_crit_edge ], [ 20, %if.else591.if.end606.sink.split_crit_edge1103 ]
  %192 = ptrtoint ptr %add.ptr594.sink to i32
  call void @__asan_loadN_noabort(i32 %192, i32 2)
  %193 = load i16, ptr %add.ptr594.sink, align 1
  %194 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %port, align 4
  %add.ptr604 = getelementptr i8, ptr %ptr, i32 %.sink1092
  br label %if.end606

if.end606:                                        ; preds = %if.end606.sink.split, %if.else591.if.end606_crit_edge, %if.then577.if.end606_crit_edge
  %ptr.addr.6 = phi ptr [ %add.ptr579, %if.then577.if.end606_crit_edge ], [ %add.ptr594, %if.else591.if.end606_crit_edge ], [ %add.ptr604, %if.end606.sink.split ]
  br i1 %tobool523.not, label %if.then612, label %if.end606.do.body617_crit_edge

if.end606.do.body617_crit_edge:                   ; preds = %if.end606
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body617

if.then612:                                       ; preds = %if.end606
  call void @__sanitizer_cov_trace_pc() #14
  %195 = ptrtoint ptr %ptr.addr.6 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 8)
  %196 = load i64, ptr %ptr.addr.6, align 1
  %197 = ptrtoint ptr %ahmac to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %ahmac, align 8
  br label %do.body617

do.body617:                                       ; preds = %if.then612, %if.end606.do.body617_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then629)) #12
          to label %sw.epilog [label %if.then629], !srcloc !153

if.then629:                                       ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #14
  %198 = ptrtoint ptr %family573 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %family573, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %199)
  %cmp633 = icmp eq i16 %199, 10
  %cond = select i1 %cmp633, ptr @.str.29, ptr @.str.30
  %200 = ptrtoint ptr %addr570 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %addr570, align 4
  %conv637 = zext i8 %201 to i32
  %202 = ptrtoint ptr %ahmac to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %ahmac, align 8
  %204 = ptrtoint ptr %echo to i32
  call void @__asan_load2_noabort(i32 %204)
  %bf.load640 = load i16, ptr %echo, align 4
  %bf.lshr641 = lshr i16 %bf.load640, 4
  %bf.clear642 = and i16 %bf.lshr641, 1
  %conv643 = zext i16 %bf.clear642 to i32
  %205 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %port, align 4
  %conv646 = zext i16 %206 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug631, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond, i32 noundef %conv637, i64 noundef %203, i32 noundef %conv643, i32 noundef %conv646) #12
  br label %sw.epilog

sw.bb650:                                         ; preds = %entry
  %207 = add i32 %opsize, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %207)
  %208 = icmp ult i32 %207, -8
  br i1 %208, label %sw.bb650.sw.epilog_crit_edge, label %if.end657

sw.bb650.sw.epilog_crit_edge:                     ; preds = %sw.bb650
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end657:                                        ; preds = %sw.bb650
  %suboptions659 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %209 = ptrtoint ptr %suboptions659 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %suboptions659, align 8
  %211 = or i16 %210, 128
  store i16 %211, ptr %suboptions659, align 8
  %212 = trunc i32 %opsize to i8
  %conv663 = add nsw i8 %212, -3
  %rm_list = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 15
  %nr = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 15, i32 1
  %213 = ptrtoint ptr %nr to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv663, ptr %nr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end657
  %indvars.iv = phi i32 [ 0, %if.end657 ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %ptr.pn1087 = phi ptr [ %ptr, %if.end657 ], [ %ptr.addr.7, %for.body.for.body_crit_edge ]
  %ptr.addr.7 = getelementptr i8, ptr %ptr.pn1087, i32 1
  %214 = ptrtoint ptr %ptr.addr.7 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %ptr.addr.7, align 1
  %arrayidx672 = getelementptr [8 x i8], ptr %rm_list, i32 0, i32 %indvars.iv
  %216 = ptrtoint ptr %arrayidx672 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %arrayidx672, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %217 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %nr, align 4
  %219 = zext i8 %218 to i32
  %cmp668 = icmp ult i32 %indvars.iv.next, %219
  br i1 %cmp668, label %for.body.for.body_crit_edge, label %do.body673

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body673:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then685)) #12
          to label %sw.epilog [label %if.then685], !srcloc !153

if.then685:                                       ; preds = %do.body673
  call void @__sanitizer_cov_trace_pc() #14
  %220 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %nr, align 4
  %conv688 = zext i8 %221 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug632, ptr noundef nonnull @.str.32, i32 noundef %conv688) #12
  br label %sw.epilog

sw.bb692:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %opsize)
  %cmp693.not = icmp eq i32 %opsize, 3
  br i1 %cmp693.not, label %if.end696, label %sw.bb692.sw.epilog_crit_edge

sw.bb692.sw.epilog_crit_edge:                     ; preds = %sw.bb692
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end696:                                        ; preds = %sw.bb692
  call void @__sanitizer_cov_trace_pc() #14
  %suboptions697 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %222 = ptrtoint ptr %suboptions697 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %suboptions697, align 8
  %224 = or i16 %223, 512
  store i16 %224, ptr %suboptions697, align 8
  %225 = ptrtoint ptr %ptr to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %ptr, align 1
  %backup705 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %227 = ptrtoint ptr %backup705 to i32
  call void @__asan_load2_noabort(i32 %227)
  %bf.load706 = load i16, ptr %backup705, align 4
  %228 = shl i8 %226, 3
  %229 = and i8 %228, 8
  %bf.shl708 = zext i8 %229 to i16
  %bf.clear709 = and i16 %bf.load706, -9
  %bf.set710 = or i16 %bf.clear709, %bf.shl708
  store i16 %bf.set710, ptr %backup705, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then723)) #12
          to label %sw.epilog [label %if.then723], !srcloc !153

if.then723:                                       ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #14
  %230 = ptrtoint ptr %backup705 to i32
  call void @__asan_load2_noabort(i32 %230)
  %bf.load725 = load i16, ptr %backup705, align 4
  %bf.lshr726 = lshr i16 %bf.load725, 3
  %bf.clear727 = and i16 %bf.lshr726, 1
  %conv728 = zext i16 %bf.clear727 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug633, ptr noundef nonnull @.str.34, i32 noundef %conv728) #12
  br label %sw.epilog

sw.bb732:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %opsize)
  %cmp733.not = icmp eq i32 %opsize, 12
  br i1 %cmp733.not, label %if.end736, label %sw.bb732.sw.epilog_crit_edge

sw.bb732.sw.epilog_crit_edge:                     ; preds = %sw.bb732
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end736:                                        ; preds = %sw.bb732
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr737 = getelementptr i8, ptr %ptr, i32 2
  %231 = ptrtoint ptr %add.ptr737 to i32
  call void @__asan_loadN_noabort(i32 %231, i32 8)
  %232 = load i64, ptr %add.ptr737, align 1
  %rcvr_key739 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 1
  %233 = ptrtoint ptr %rcvr_key739 to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 %232, ptr %rcvr_key739, align 8
  %suboptions741 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %234 = ptrtoint ptr %suboptions741 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %suboptions741, align 8
  %236 = or i16 %235, 256
  store i16 %236, ptr %suboptions741, align 8
  br label %sw.epilog

sw.bb745:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %opsize)
  %cmp746.not = icmp eq i32 %opsize, 4
  br i1 %cmp746.not, label %if.end749, label %sw.bb745.sw.epilog_crit_edge

sw.bb745.sw.epilog_crit_edge:                     ; preds = %sw.bb745
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end749:                                        ; preds = %sw.bb745
  %tcp_flags752 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %237 = ptrtoint ptr %tcp_flags752 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %tcp_flags752, align 4
  %239 = and i8 %238, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool755.not = icmp eq i8 %239, 0
  br i1 %tobool755.not, label %if.end749.sw.epilog_crit_edge, label %if.end757

if.end749.sw.epilog_crit_edge:                    ; preds = %if.end749
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end757:                                        ; preds = %if.end749
  call void @__sanitizer_cov_trace_pc() #14
  %suboptions758 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %240 = ptrtoint ptr %suboptions758 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %suboptions758, align 8
  %242 = or i16 %241, 1024
  store i16 %242, ptr %suboptions758, align 8
  %incdec.ptr762 = getelementptr i8, ptr %ptr, i32 1
  %243 = ptrtoint ptr %ptr to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %ptr, align 1
  %reset_transient = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %245 = ptrtoint ptr %reset_transient to i32
  call void @__asan_load2_noabort(i32 %245)
  %bf.load766 = load i16, ptr %reset_transient, align 4
  %246 = shl i8 %244, 5
  %247 = and i8 %246, 32
  %bf.shl768 = zext i8 %247 to i16
  %bf.clear769 = and i16 %bf.load766, -33
  %bf.set770 = or i16 %bf.clear769, %bf.shl768
  store i16 %bf.set770, ptr %reset_transient, align 4
  %248 = ptrtoint ptr %incdec.ptr762 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %incdec.ptr762, align 1
  %250 = and i8 %249, 15
  %bf.value773 = zext i8 %250 to i16
  %bf.shl774 = shl nuw nsw i16 %bf.value773, 6
  %bf.clear775 = and i16 %bf.set770, -961
  %bf.set776 = or i16 %bf.shl774, %bf.clear775
  store i16 %bf.set776, ptr %reset_transient, align 4
  br label %sw.epilog

sw.bb777:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %opsize)
  %cmp778.not = icmp eq i32 %opsize, 12
  br i1 %cmp778.not, label %if.end781, label %sw.bb777.sw.epilog_crit_edge

sw.bb777.sw.epilog_crit_edge:                     ; preds = %sw.bb777
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end781:                                        ; preds = %sw.bb777
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr782 = getelementptr i8, ptr %ptr, i32 2
  %suboptions783 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %251 = ptrtoint ptr %suboptions783 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %suboptions783, align 8
  %253 = or i16 %252, 4096
  store i16 %253, ptr %suboptions783, align 8
  %254 = ptrtoint ptr %add.ptr782 to i32
  call void @__asan_loadN_noabort(i32 %254, i32 8)
  %255 = load i64, ptr %add.ptr782, align 1
  %fail_seq = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 17
  %256 = ptrtoint ptr %fail_seq to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %255, ptr %fail_seq, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_parse_option.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_parse_option, %if.then800)) #12
          to label %sw.epilog [label %if.then800], !srcloc !153

if.then800:                                       ; preds = %if.end781
  call void @__sanitizer_cov_trace_pc() #14
  %257 = ptrtoint ptr %fail_seq to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %fail_seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_parse_option.__UNIQUE_ID_ddebug634, ptr noundef nonnull @.str.36, i64 noundef %258) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then800, %if.end781, %sw.bb777.sw.epilog_crit_edge, %if.end757, %if.end749.sw.epilog_crit_edge, %sw.bb745.sw.epilog_crit_edge, %if.end736, %sw.bb732.sw.epilog_crit_edge, %if.then723, %if.end696, %sw.bb692.sw.epilog_crit_edge, %if.then685, %do.body673, %sw.bb650.sw.epilog_crit_edge, %if.then629, %do.body617, %switch.hole_check1095.sw.epilog_crit_edge, %switch.hole_check.sw.epilog_crit_edge, %if.else543.sw.epilog_crit_edge, %if.then524.sw.epilog_crit_edge, %if.then490, %do.body478, %if.end441.sw.epilog_crit_edge, %if.end391.sw.epilog_crit_edge, %if.else237, %if.then233, %if.then219, %if.then203, %if.then173, %if.then157, %if.then130, %if.then113, %do.body, %lor.lhs.false46.sw.epilog_crit_edge, %if.end43.sw.epilog_crit_edge, %if.else37.sw.epilog_crit_edge, %if.then31.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_syn_options(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %size, ptr nocapture noundef %opts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end_seq, align 4
  %snd_isn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %snd_isn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %snd_isn, align 8
  %request_mptcp = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %5 = ptrtoint ptr %request_mptcp to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %request_mptcp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %opts, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call i32 @mptcp_is_checksum_enabled(ptr noundef %8) #12
  %conv = trunc i32 %call2 to i8
  %csum_reqd = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %9 = ptrtoint ptr %csum_reqd to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load3 = load i8, ptr %csum_reqd, align 1
  %bf.value = shl i8 %conv, 2
  %bf.shl = and i8 %bf.value, 4
  %bf.clear = and i8 %bf.load3, -5
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %csum_reqd, align 1
  %10 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i, align 4
  %call5 = tail call i32 @mptcp_allow_join_id0(ptr noundef %11) #12
  %conv6 = trunc i32 %call5 to i8
  %12 = ptrtoint ptr %csum_reqd to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load7 = load i8, ptr %csum_reqd, align 1
  %bf.value8 = shl i8 %conv6, 1
  %bf.shl9 = and i8 %bf.value8, 2
  %bf.clear10 = and i8 %bf.load7, -3
  %bf.set11 = or i8 %bf.shl9, %bf.clear10
  store i8 %bf.set11, ptr %csum_reqd, align 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %13 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %do.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_syn_options.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_syn_options, %if.then21)) #12
          to label %do.end [label %if.then21], !srcloc !153

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %remote_token = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 18
  %14 = ptrtoint ptr %remote_token to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %remote_token, align 4
  %local_nonce = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 17
  %16 = ptrtoint ptr %local_nonce to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %local_nonce, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_syn_options.__UNIQUE_ID_ddebug635, ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef %17) #12
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body
  %18 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8, ptr %opts, align 8
  %local_id = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 20
  %19 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %local_id, align 4
  %join_id = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 2
  %21 = ptrtoint ptr %join_id to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %join_id, align 1
  %remote_token23 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 18
  %22 = ptrtoint ptr %remote_token23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %remote_token23, align 4
  %24 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %token = getelementptr inbounds %struct.anon.195, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %token, align 4
  %local_nonce24 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 17
  %26 = ptrtoint ptr %local_nonce24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %local_nonce24, align 8
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %24, align 8
  %29 = ptrtoint ptr %request_mptcp to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load25 = load i32, ptr %request_mptcp, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 29
  %30 = trunc i32 %bf.lshr26 to i8
  %conv28 = and i8 %30, 1
  %backup = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 3
  %31 = ptrtoint ptr %backup to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv28, ptr %backup, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.then
  %.sink = phi i32 [ 12, %do.end ], [ 4, %if.then ]
  %32 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.else.cleanup_crit_edge ], [ true, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_is_checksum_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_allow_join_id0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_established_options(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef %size, i32 noundef %remaining, ptr noundef %opts) local_unnamed_addr #0 align 64 {
entry:
  %rm_list.i = alloca %struct.mptcp_rm_list, align 1
  %opt_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt_size) #12
  %4 = ptrtoint ptr %opt_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %opt_size, align 4
  %5 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %opts, align 8
  %flags.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup113_crit_edge, !prof !154

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %skb, null
  br i1 %tobool4.not, label %if.end.if.end24_crit_edge, label %land.rhs

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.rhs:                                         ; preds = %if.end
  %tcp_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tcp_flags, align 4
  %11 = and i8 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %land.rhs.if.end24_crit_edge, label %if.then12, !prof !154

land.rhs.if.end24_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then12:                                        ; preds = %land.rhs
  %call13 = call fastcc zeroext i1 @mptcp_established_options_fastclose(ptr noundef %sk, ptr noundef nonnull %opt_size, i32 noundef %remaining, ptr noundef %opts)
  br i1 %call13, label %if.then12.if.then17_crit_edge, label %lor.lhs.false

if.then12.if.then17_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.then12
  %call15 = call fastcc zeroext i1 @mptcp_established_options_mp_fail(ptr noundef %sk, ptr noundef nonnull %opt_size, i32 noundef %remaining, ptr noundef %opts)
  br i1 %call15, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.then12.if.then17_crit_edge
  %12 = ptrtoint ptr %opt_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opt_size, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %size, align 4
  %sub = sub i32 %remaining, %13
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %lor.lhs.false.if.end18_crit_edge
  %remaining.addr.0 = phi i32 [ %sub, %if.then17 ], [ %remaining, %lor.lhs.false.if.end18_crit_edge ]
  %call19 = call fastcc zeroext i1 @mptcp_established_options_rst(ptr noundef %sk, ptr noundef nonnull %opt_size, i32 noundef %remaining.addr.0, ptr noundef %opts)
  br i1 %call19, label %if.then20, label %if.end18.cleanup113_crit_edge

if.end18.cleanup113_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %opt_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opt_size, align 4
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %add21 = add i32 %19, %17
  store i32 %add21, ptr %size, align 4
  br label %cleanup113

if.end24:                                         ; preds = %land.rhs.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %snd_data_fin_enable.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 25
  %20 = ptrtoint ptr %snd_data_fin_enable.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %snd_data_fin_enable.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end24.mptcp_data_fin_enabled.exit_crit_edge, label %do.end3.i

if.end24.mptcp_data_fin_enabled.exit_crit_edge:   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_data_fin_enabled.exit

do.end3.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %write_seq.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %write_seq.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load volatile i64, ptr %write_seq.i, align 8
  %snd_nxt.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load volatile i64, ptr %snd_nxt.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp.i = icmp eq i64 %23, %25
  br label %mptcp_data_fin_enabled.exit

mptcp_data_fin_enabled.exit:                      ; preds = %do.end3.i, %if.end24.mptcp_data_fin_enabled.exit_crit_edge
  %26 = phi i1 [ false, %if.end24.mptcp_data_fin_enabled.exit_crit_edge ], [ %cmp.i, %do.end3.i ]
  %call27 = call fastcc zeroext i1 @mptcp_established_options_mp(ptr noundef %sk, ptr noundef %skb, i1 noundef zeroext %26, ptr noundef nonnull %opt_size, ptr noundef %opts)
  br i1 %call27, label %mptcp_data_fin_enabled.exit.if.end41_crit_edge, label %if.else

mptcp_data_fin_enabled.exit.if.end41_crit_edge:   ; preds = %mptcp_data_fin_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.else:                                          ; preds = %mptcp_data_fin_enabled.exit
  %27 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conn.i, align 4
  %csum_enabled.i = getelementptr inbounds %struct.mptcp_sock, ptr %30, i32 0, i32 28
  %31 = ptrtoint ptr %csum_enabled.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %csum_enabled.i, align 1, !range !155
  %csum_reqd.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %33 = ptrtoint ptr %csum_reqd.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %csum_reqd.i, align 1
  %bf.shl.i = shl nuw nsw i8 %32, 2
  %bf.clear.i = and i8 %bf.load.i, -5
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %csum_reqd.i, align 1
  br i1 %tobool4.not, label %if.else.if.end29.i_crit_edge, label %cond.true.i

if.else.if.end29.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

cond.true.i:                                      ; preds = %if.else
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %34 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %36 = and i8 %35, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i.not.i.i.i = icmp eq i8 %36, 0
  br i1 %tobool.i.not.i.i.i, label %cond.true.i.lor.lhs.false11.i_crit_edge, label %lor.lhs.false.i

cond.true.i.lor.lhs.false11.i_crit_edge:          ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false11.i

lor.lhs.false.i:                                  ; preds = %cond.true.i
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %37 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %38, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %40 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %shl.i.i.i
  %tobool7.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.lor.lhs.false11.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.lhs.false11.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false11.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %use_map.i = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %use_map.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load8.i = load i16, ptr %use_map.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load8.i)
  %tobool10.not.i = icmp slt i16 %bf.load8.i, 0
  %brmerge.i = or i1 %26, %tobool10.not.i
  br i1 %brmerge.i, label %if.end22.i, label %land.lhs.true.i.if.end30.i_crit_edge

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i.lor.lhs.false11.i_crit_edge, %cond.true.i.lor.lhs.false11.i_crit_edge
  br i1 %26, label %lor.lhs.false11.i.if.then27.i_crit_edge, label %lor.lhs.false11.i.if.end30.i_crit_edge

lor.lhs.false11.i.if.end30.i_crit_edge:           ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

lor.lhs.false11.i.if.then27.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.end22.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool20.not.i = icmp eq i8 %32, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 18, i32 20
  %42 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %43 = call ptr @memcpy(ptr %42, ptr %add.ptr.i.i.i, i32 32)
  br i1 %26, label %if.end22.i.if.then27.i_crit_edge, label %if.end22.i.if.end29.i_crit_edge

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.end22.i.if.then27.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.end22.i.if.then27.i_crit_edge, %lor.lhs.false11.i.if.then27.i_crit_edge
  %map_size.118.i = phi i32 [ %spec.select.i, %if.end22.i.if.then27.i_crit_edge ], [ 18, %lor.lhs.false11.i.if.then27.i_crit_edge ]
  %44 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %conn.i, align 4
  %write_seq.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %write_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load volatile i64, ptr %write_seq.i.i, align 8
  %sub.i.i = add i64 %47, -1
  %use_map.i.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %48 = ptrtoint ptr %use_map.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i = load i16, ptr %use_map.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then27.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.then27.i.if.then.i.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then27.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %49 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool1.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then27.i.if.then.i.i_crit_edge
  %bf.set9.i.i = or i16 %bf.load.i.i, -8192
  %51 = ptrtoint ptr %use_map.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %bf.set9.i.i, ptr %use_map.i.i, align 8
  %data_seq.i.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %data_seq.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %sub.i.i, ptr %data_seq.i.i, align 8
  %subflow_seq.i.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %subflow_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %subflow_seq.i.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 3
  %54 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %data_len.i.i, align 4
  br label %if.end29.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %data_seq10.i.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %data_seq10.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %data_seq10.i.i, align 8
  %data_len11.i.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 3
  %57 = ptrtoint ptr %data_len11.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data_len11.i.i, align 4
  %conv.i.i = zext i16 %58 to i64
  %add.i.i = add i64 %56, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %sub.i.i)
  %cmp.i.i = icmp eq i64 %add.i.i, %sub.i.i
  br i1 %cmp.i.i, label %if.then13.i.i, label %if.else.i.i.if.end29.i_crit_edge

if.else.i.i.if.end29.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then13.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set17.i.i = or i16 %bf.load.i.i, 8192
  %59 = ptrtoint ptr %use_map.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %bf.set17.i.i, ptr %use_map.i.i, align 8
  %inc.i.i = add i16 %58, 1
  %60 = ptrtoint ptr %data_len11.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %inc.i.i, ptr %data_len11.i.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then13.i.i, %if.else.i.i.if.end29.i_crit_edge, %if.then.i.i, %if.end22.i.if.end29.i_crit_edge, %if.else.if.end29.i_crit_edge
  %map_size.116.i = phi i32 [ %map_size.118.i, %if.then13.i.i ], [ %map_size.118.i, %if.else.i.i.if.end29.i_crit_edge ], [ %map_size.118.i, %if.then.i.i ], [ %spec.select.i, %if.end22.i.if.end29.i_crit_edge ], [ 18, %if.else.if.end29.i_crit_edge ]
  %61 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 2048, ptr %opts, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end29.i, %lor.lhs.false11.i.if.end30.i_crit_edge, %land.lhs.true.i.if.end30.i_crit_edge
  %dss_size.0.i = phi i32 [ %map_size.116.i, %if.end29.i ], [ 0, %lor.lhs.false11.i.if.end30.i_crit_edge ], [ 0, %land.lhs.true.i.if.end30.i_crit_edge ]
  %ret.0.off0.i = phi i1 [ true, %if.end29.i ], [ false, %lor.lhs.false11.i.if.end30.i_crit_edge ], [ false, %land.lhs.true.i.if.end30.i_crit_edge ]
  %62 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %use_ack.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %63 = ptrtoint ptr %use_ack.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load32.i = load i16, ptr %use_ack.i, align 8
  %bf.clear33.i = and i16 %bf.load32.i, -4097
  store i16 %bf.clear33.i, ptr %use_ack.i, align 8
  %can_ack.i = getelementptr inbounds %struct.mptcp_sock, ptr %30, i32 0, i32 22
  %64 = ptrtoint ptr %can_ack.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load volatile i8, ptr %can_ack.i, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool39.not.i = icmp eq i8 %65, 0
  br i1 %tobool39.not.i, label %mptcp_established_options_dss.exit, label %do.end48.i

do.end48.i:                                       ; preds = %if.end30.i
  %ack_seq50.i = getelementptr inbounds %struct.mptcp_sock, ptr %30, i32 0, i32 5
  %66 = ptrtoint ptr %ack_seq50.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load volatile i64, ptr %ack_seq50.i, align 8
  %use_64bit_ack.i = getelementptr inbounds %struct.mptcp_sock, ptr %30, i32 0, i32 27
  %68 = ptrtoint ptr %use_64bit_ack.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load volatile i8, ptr %use_64bit_ack.i, align 2, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool55.not.i = icmp eq i8 %69, 0
  br i1 %tobool55.not.i, label %if.else.i, label %if.then58.i

if.then58.i:                                      ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %62 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %67, ptr %62, align 8
  %bf.set63.i = or i16 %bf.clear33.i, 2048
  br label %mptcp_established_options_dss.exit.thread

if.else.i:                                        ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv64.i = trunc i64 %67 to i32
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv64.i, ptr %62, align 8
  %bf.clear69.i = and i16 %bf.load32.i, -6145
  br label %mptcp_established_options_dss.exit.thread

mptcp_established_options_dss.exit.thread:        ; preds = %if.else.i, %if.then58.i
  %storemerge1.i = phi i16 [ %bf.clear69.i, %if.else.i ], [ %bf.set63.i, %if.then58.i ]
  %ack_size.0.i = phi i32 [ 4, %if.else.i ], [ 8, %if.then58.i ]
  %bf.set76.i = or i16 %storemerge1.i, 4096
  %72 = ptrtoint ptr %use_ack.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %bf.set76.i, ptr %use_ack.i, align 8
  %73 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 2048, ptr %opts, align 8
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 15
  %74 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %sk_rcvbuf.i.i, align 8
  %sk_backlog.i.i.i = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i.i, i32 noundef 4) #12
  %76 = ptrtoint ptr %sk_backlog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %sk_backlog.i.i.i, align 4
  %rmem_released.i.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %30, i32 0, i32 17
  %78 = ptrtoint ptr %rmem_released.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %rmem_released.i.i.i, align 8
  %sub.i.neg.i.i = sub i32 %79, %77
  %sub.i4.i = add i32 %sub.i.neg.i.i, %75
  %skc_net.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %30, i32 0, i32 9
  %80 = ptrtoint ptr %skc_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skc_net.i.i.i.i, align 4
  %sysctl_tcp_adv_win_scale.i.i.i = getelementptr inbounds %struct.net, ptr %81, i32 0, i32 35, i32 85
  %82 = ptrtoint ptr %sysctl_tcp_adv_win_scale.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sysctl_tcp_adv_win_scale.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i.i.i = icmp slt i32 %83, 1
  %sub.i4.i.i = sub i32 0, %83
  %shr.i.i.i = ashr i32 %sub.i4.i, %sub.i4.i.i
  %shr1.i.i.i = ashr i32 %sub.i4.i, %83
  %sub2.i.i.i = sub i32 %sub.i4.i, %shr1.i.i.i
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 %shr.i.i.i, i32 %sub2.i.i.i
  %old_wspace.i = getelementptr inbounds %struct.mptcp_sock, ptr %30, i32 0, i32 11
  %84 = ptrtoint ptr %old_wspace.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 %cond.i.i.i, ptr %old_wspace.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dss_size.0.i)
  %cmp.i170 = icmp eq i32 %dss_size.0.i, 0
  %add90.i = add nuw nsw i32 %ack_size.0.i, 4
  %spec.select3.i = select i1 %cmp.i170, i32 %add90.i, i32 %ack_size.0.i
  %add92.i = add nuw nsw i32 %dss_size.0.i, 3
  %storemerge.in.i193 = add nuw nsw i32 %add92.i, %spec.select3.i
  %storemerge.i194 = and i32 %storemerge.in.i193, -4
  %85 = ptrtoint ptr %opt_size to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %storemerge.i194, ptr %opt_size, align 4
  br label %if.then31

mptcp_established_options_dss.exit:               ; preds = %if.end30.i
  %storemerge.in.i = add nuw nsw i32 %dss_size.0.i, 3
  %storemerge.i = and i32 %storemerge.in.i, -4
  %86 = ptrtoint ptr %opt_size to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %storemerge.i, ptr %opt_size, align 4
  br i1 %ret.0.off0.i, label %mptcp_established_options_dss.exit.if.then31_crit_edge, label %mptcp_established_options_dss.exit.if.end41_crit_edge

mptcp_established_options_dss.exit.if.end41_crit_edge: ; preds = %mptcp_established_options_dss.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

mptcp_established_options_dss.exit.if.then31_crit_edge: ; preds = %mptcp_established_options_dss.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.then31:                                        ; preds = %mptcp_established_options_dss.exit.if.then31_crit_edge, %mptcp_established_options_dss.exit.thread
  %storemerge.i195 = phi i32 [ %storemerge.i194, %mptcp_established_options_dss.exit.thread ], [ %storemerge.i, %mptcp_established_options_dss.exit.if.then31_crit_edge ]
  %87 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %icsk_ulp_data.i, align 8
  %send_mp_fail.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %88, i32 0, i32 1, i32 0, i32 13
  %89 = ptrtoint ptr %send_mp_fail.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load.i172 = load i32, ptr %send_mp_fail.i, align 8
  %90 = and i32 %bf.load.i172, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i173 = icmp eq i32 %90, 0
  br i1 %tobool.not.i173, label %if.then31.if.end41_crit_edge, label %if.end.i, !prof !154

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end.i:                                         ; preds = %if.then31
  %sub32 = sub i32 %remaining, %storemerge.i195
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub32)
  %cmp.i174 = icmp ult i32 %sub32, 12
  br i1 %cmp.i174, label %if.end.i.if.end41_crit_edge, label %if.end5.i

if.end.i.if.end41_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end5.i:                                        ; preds = %if.end.i
  %91 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %opts, align 8
  %93 = or i16 %92, 4096
  store i16 %93, ptr %opts, align 8
  %map_seq.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %88, i32 0, i32 1, i32 0, i32 4
  %94 = ptrtoint ptr %map_seq.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %map_seq.i, align 8
  %fail_seq.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 1
  %96 = ptrtoint ptr %fail_seq.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %fail_seq.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_mp_fail.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options, %if.then15.i)) #12
          to label %cleanup.thread [label %if.then15.i], !srcloc !153

if.then15.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %fail_seq.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %fail_seq.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_mp_fail.__UNIQUE_ID_ddebug650, ptr noundef nonnull @.str.42, i64 noundef %98) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then15.i, %if.end5.i
  %add35 = add nuw nsw i32 %storemerge.i195, 12
  %99 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size, align 4
  %add36 = add i32 %add35, %100
  store i32 %add36, ptr %size, align 4
  br label %cleanup113

if.end41:                                         ; preds = %if.end.i.if.end41_crit_edge, %if.then31.if.end41_crit_edge, %mptcp_established_options_dss.exit.if.end41_crit_edge, %mptcp_data_fin_enabled.exit.if.end41_crit_edge
  %ret.0.off0 = phi i1 [ false, %mptcp_established_options_dss.exit.if.end41_crit_edge ], [ true, %mptcp_data_fin_enabled.exit.if.end41_crit_edge ], [ true, %if.then31.if.end41_crit_edge ], [ true, %if.end.i.if.end41_crit_edge ]
  %101 = ptrtoint ptr %opt_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %opt_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %remaining)
  %cmp = icmp ugt i32 %102, %remaining
  br i1 %cmp, label %land.rhs50, label %if.end93

land.rhs50:                                       ; preds = %if.end41
  %.b168 = load i1, ptr @mptcp_established_options.__already_done, align 1
  br i1 %.b168, label %land.rhs50.cleanup113_crit_edge, label %if.then61, !prof !154

land.rhs50.cleanup113_crit_edge:                  ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.then61:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mptcp_established_options.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 862, i32 noundef 9, ptr noundef null) #12
  br label %cleanup113

if.end93:                                         ; preds = %if.end41
  %103 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size, align 4
  %add94 = add i32 %104, %102
  store i32 %add94, ptr %size, align 4
  %sub95 = sub i32 %remaining, %102
  %call96 = call fastcc zeroext i1 @mptcp_established_options_add_addr(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %opt_size, i32 noundef %sub95, ptr noundef %opts)
  br i1 %call96, label %if.then97, label %if.else100

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %opt_size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %opt_size, align 4
  %107 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size, align 4
  %add98 = add i32 %108, %106
  store i32 %add98, ptr %size, align 4
  %sub99 = sub i32 %sub95, %106
  br label %if.end106

if.else100:                                       ; preds = %if.end93
  %109 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn.i177 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %conn.i177 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %conn.i177, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %rm_list.i) #12
  %113 = getelementptr inbounds %struct.mptcp_rm_list, ptr %rm_list.i, i32 0, i32 1
  %addr_signal.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %112, i32 0, i32 40, i32 4
  %114 = call ptr @memset(ptr %rm_list.i, i32 255, i32 9)
  %115 = ptrtoint ptr %addr_signal.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load volatile i8, ptr %addr_signal.i.i, align 4
  %117 = and i8 %116, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.i.not.i = icmp eq i8 %117, 0
  br i1 %tobool.i.not.i, label %if.else100.mptcp_established_options_rm_addr.exit.thread_crit_edge, label %lor.lhs.false.i178

if.else100.mptcp_established_options_rm_addr.exit.thread_crit_edge: ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_established_options_rm_addr.exit.thread

lor.lhs.false.i178:                               ; preds = %if.else100
  %call3.i = call zeroext i1 @mptcp_pm_rm_addr_signal(ptr noundef %112, i32 noundef %sub95, ptr noundef nonnull %rm_list.i) #12
  br i1 %call3.i, label %if.end.i181, label %lor.lhs.false.i178.mptcp_established_options_rm_addr.exit.thread_crit_edge

lor.lhs.false.i178.mptcp_established_options_rm_addr.exit.thread_crit_edge: ; preds = %lor.lhs.false.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_established_options_rm_addr.exit.thread

if.end.i181:                                      ; preds = %lor.lhs.false.i178
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %113, align 1
  %conv.i.i179 = zext i8 %119 to i32
  %120 = add i8 %119, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %120)
  %121 = icmp ult i8 %120, -8
  %add.i.i180 = add nuw nsw i32 %conv.i.i179, 2
  %add9.i.i = or i32 %add.i.i180, 3
  %add10.i.i = add nuw nsw i32 %add9.i.i, 1
  %retval.0.i37.i = select i1 %121, i32 -22, i32 %add10.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i37.i, i32 %sub95)
  %cmp7.i = icmp ugt i32 %retval.0.i37.i, %sub95
  %or.cond.i = or i1 %121, %cmp7.i
  br i1 %or.cond.i, label %if.end.i181.mptcp_established_options_rm_addr.exit.thread_crit_edge, label %if.end9.i

if.end.i181.mptcp_established_options_rm_addr.exit.thread_crit_edge: ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_established_options_rm_addr.exit.thread

if.end9.i:                                        ; preds = %if.end.i181
  %122 = ptrtoint ptr %opt_size to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %retval.0.i37.i, ptr %opt_size, align 4
  %123 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %opts, align 8
  %125 = or i16 %124, 128
  store i16 %125, ptr %opts, align 8
  %rm_list11.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 1
  %126 = call ptr @memcpy(ptr %rm_list11.i, ptr %rm_list.i, i32 9)
  %nr.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %nr.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %nr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp1440.not.i = icmp eq i8 %128, 0
  br i1 %cmp1440.not.i, label %if.end9.i.if.then102_crit_edge, label %if.end9.i.do.body.i_crit_edge

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  br label %do.body.i

if.end9.i.if.then102_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.end9.i.do.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.inc.i.do.body.i_crit_edge ], [ 0, %if.end9.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_rm_addr.__UNIQUE_ID_ddebug647, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options, %if.then19.i)) #12
          to label %for.inc.i [label %if.then19.i], !srcloc !153

if.then19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr [8 x i8], ptr %rm_list11.i, i32 0, i32 %i.041.i
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i, align 1
  %conv21.i = zext i8 %130 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_rm_addr.__UNIQUE_ID_ddebug647, ptr noundef nonnull @.str.57, i32 noundef %i.041.i, i32 noundef %conv21.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %do.body.i
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %131 = ptrtoint ptr %nr.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nr.i, align 2
  %conv13.i = zext i8 %132 to i32
  %cmp14.i = icmp ult i32 %inc.i, %conv13.i
  br i1 %cmp14.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.if.then102_crit_edge

for.inc.i.if.then102_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

mptcp_established_options_rm_addr.exit.thread:    ; preds = %if.end.i181.mptcp_established_options_rm_addr.exit.thread_crit_edge, %lor.lhs.false.i178.mptcp_established_options_rm_addr.exit.thread_crit_edge, %if.else100.mptcp_established_options_rm_addr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %rm_list.i) #12
  br label %if.end106

if.then102:                                       ; preds = %for.inc.i.if.then102_crit_edge, %if.end9.i.if.then102_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %rm_list.i) #12
  %133 = ptrtoint ptr %opt_size to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %opt_size, align 4
  %135 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %size, align 4
  %add103 = add i32 %136, %134
  store i32 %add103, ptr %size, align 4
  %sub104 = sub i32 %sub95, %134
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %mptcp_established_options_rm_addr.exit.thread, %if.then97
  %ret.1.off0 = phi i1 [ true, %if.then97 ], [ true, %if.then102 ], [ %ret.0.off0, %mptcp_established_options_rm_addr.exit.thread ]
  %remaining.addr.3 = phi i32 [ %sub99, %if.then97 ], [ %sub104, %if.then102 ], [ %sub95, %mptcp_established_options_rm_addr.exit.thread ]
  %137 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %icsk_ulp_data.i, align 8
  %send_mp_prio.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %138, i32 0, i32 1, i32 0, i32 13
  %139 = ptrtoint ptr %send_mp_prio.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %bf.load.i184 = load i32, ptr %send_mp_prio.i, align 8
  %140 = and i32 %bf.load.i184, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i185 = icmp eq i32 %140, 0
  br i1 %tobool.not.i185, label %if.end106.cleanup113_crit_edge, label %lor.lhs.false.i188

if.end106.cleanup113_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

lor.lhs.false.i188:                               ; preds = %if.end106
  %141 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %opts, align 8
  %143 = and i16 %142, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool1.not.i = icmp ne i16 %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remaining.addr.3)
  %cmp.i186 = icmp ult i32 %remaining.addr.3, 4
  %or.cond.i187 = or i1 %cmp.i186, %tobool1.not.i
  br i1 %or.cond.i187, label %lor.lhs.false.i188.cleanup113_crit_edge, label %if.end4.i

lor.lhs.false.i188.cleanup113_crit_edge:          ; preds = %lor.lhs.false.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.end4.i:                                        ; preds = %lor.lhs.false.i188
  %144 = ptrtoint ptr %opt_size to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 4, ptr %opt_size, align 4
  %145 = or i16 %142, 512
  %146 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %opts, align 8
  %147 = ptrtoint ptr %send_mp_prio.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %bf.load8.i189 = load i32, ptr %send_mp_prio.i, align 8
  %bf.lshr9.i = lshr i32 %bf.load8.i189, 29
  %148 = trunc i32 %bf.lshr9.i to i8
  %conv11.i = and i8 %148, 1
  %backup.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 3
  %149 = ptrtoint ptr %backup.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv11.i, ptr %backup.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_mp_prio.__UNIQUE_ID_ddebug648, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options, %if.then16.i)) #12
          to label %if.then108 [label %if.then16.i], !srcloc !153

if.then16.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %backup.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %backup.i, align 4
  %conv18.i = zext i8 %151 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_mp_prio.__UNIQUE_ID_ddebug648, ptr noundef nonnull @.str.60, i32 noundef %conv18.i) #12
  br label %if.then108

if.then108:                                       ; preds = %if.then16.i, %if.end4.i
  %152 = ptrtoint ptr %opt_size to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %opt_size, align 4
  %154 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %size, align 4
  %add109 = add i32 %155, %153
  store i32 %add109, ptr %size, align 4
  br label %cleanup113

cleanup113:                                       ; preds = %if.then108, %lor.lhs.false.i188.cleanup113_crit_edge, %if.end106.cleanup113_crit_edge, %if.then61, %land.rhs50.cleanup113_crit_edge, %cleanup.thread, %if.then20, %if.end18.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  %retval.1 = phi i1 [ false, %entry.cleanup113_crit_edge ], [ true, %if.then20 ], [ true, %if.end18.cleanup113_crit_edge ], [ false, %if.then61 ], [ true, %if.then108 ], [ false, %land.rhs50.cleanup113_crit_edge ], [ true, %cleanup.thread ], [ %ret.1.off0, %lor.lhs.false.i188.cleanup113_crit_edge ], [ %ret.1.off0, %if.end106.cleanup113_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt_size) #12
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mptcp_established_options_fastclose(ptr nocapture noundef readonly %sk, ptr nocapture noundef writeonly %size, i32 noundef %remaining, ptr nocapture noundef %opts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %send_fastclose = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %4 = ptrtoint ptr %send_fastclose to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %send_fastclose, align 8
  %5 = and i32 %bf.load, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !154

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %remaining)
  %cmp = icmp ult i32 %remaining, 12
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %size, align 4
  %7 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %opts, align 8
  %9 = or i16 %8, 256
  store i16 %9, ptr %opts, align 8
  %remote_key = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %remote_key, align 8
  %rcvr_key = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %rcvr_key to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %rcvr_key, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_fastclose.__UNIQUE_ID_ddebug649, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options_fastclose, %if.then16)) #12
          to label %cleanup [label %if.then16], !srcloc !153

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %rcvr_key to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rcvr_key, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_fastclose.__UNIQUE_ID_ddebug649, ptr noundef nonnull @.str.39, i64 noundef %14) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then16 ], [ true, %if.end6 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mptcp_established_options_mp_fail(ptr nocapture noundef readonly %sk, ptr nocapture noundef writeonly %size, i32 noundef %remaining, ptr nocapture noundef %opts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %send_mp_fail = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %2 = ptrtoint ptr %send_mp_fail to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %send_mp_fail, align 8
  %3 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !154

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %remaining)
  %cmp = icmp ult i32 %remaining, 12
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %size, align 4
  %5 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %opts, align 8
  %7 = or i16 %6, 4096
  store i16 %7, ptr %opts, align 8
  %map_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %map_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %map_seq, align 8
  %fail_seq = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %fail_seq to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %fail_seq, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_mp_fail.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options_mp_fail, %if.then15)) #12
          to label %cleanup [label %if.then15], !srcloc !153

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %fail_seq to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fail_seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_mp_fail.__UNIQUE_ID_ddebug650, ptr noundef nonnull @.str.42, i64 noundef %12) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then15 ], [ true, %if.end5 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @mptcp_established_options_rst(ptr nocapture noundef readonly %sk, ptr nocapture noundef writeonly %size, i32 noundef %remaining, ptr nocapture noundef %opts) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remaining)
  %cmp = icmp ult i32 %remaining, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %size, align 4
  %3 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %opts, align 8
  %5 = or i16 %4, 1024
  store i16 %5, ptr %opts, align 8
  %reset_transient = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 22
  %6 = ptrtoint ptr %reset_transient to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reset_transient, align 2
  %reset_transient2 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %7 = ptrtoint ptr %reset_transient2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load3 = load i8, ptr %reset_transient2, align 1
  %8 = lshr i8 %bf.load, 3
  %bf.shl = and i8 %8, 8
  %bf.clear4 = and i8 %bf.load3, -9
  %bf.set = or i8 %bf.clear4, %bf.shl
  store i8 %bf.set, ptr %reset_transient2, align 1
  %bf.load5 = load i8, ptr %reset_transient, align 2
  %9 = shl i8 %bf.load5, 2
  %bf.shl11 = and i8 %9, -16
  %bf.clear12 = and i8 %bf.set, 15
  %bf.set13 = or i8 %bf.shl11, %bf.clear12
  store i8 %bf.set13, ptr %reset_transient2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %10 = xor i1 %cmp, true
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mptcp_established_options_mp(ptr noundef %sk, ptr noundef readonly %skb, i1 noundef zeroext %snd_data_fin_enable, ptr nocapture noundef writeonly %size, ptr nocapture noundef %opts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fully_established = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %4 = ptrtoint ptr %fully_established to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %fully_established, align 8
  %5 = and i32 %bf.load, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp ne i32 %5, 0
  %brmerge = or i1 %tobool2.not, %snd_data_fin_enable
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %snd_isn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %snd_isn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snd_isn, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %lor.lhs.false5, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp6.not = icmp eq i8 %11, 1
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false5
  %12 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.else66, label %if.then14

if.then14:                                        ; preds = %if.end9
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %13 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active_extensions.i.i.i, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.i.not.i.i, label %if.then14.cond.end_crit_edge, label %mptcp_get_ext.exit

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

mptcp_get_ext.exit:                               ; preds = %if.then14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %16 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %17, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %shl.i.i
  %tobool16.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool16.not, label %mptcp_get_ext.exit.cond.end_crit_edge, label %cond.true

mptcp_get_ext.exit.cond.end_crit_edge:            ; preds = %mptcp_get_ext.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %mptcp_get_ext.exit
  call void @__sanitizer_cov_trace_pc() #14
  %data_len17 = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %data_len17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data_len17, align 4
  %conv18 = zext i16 %21 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mptcp_get_ext.exit.cond.end_crit_edge, %if.then14.cond.end_crit_edge
  %retval.0.i.i6 = phi ptr [ %add.ptr.i.i, %cond.true ], [ null, %mptcp_get_ext.exit.cond.end_crit_edge ], [ null, %if.then14.cond.end_crit_edge ]
  %cond = phi i32 [ %conv18, %cond.true ], [ 0, %mptcp_get_ext.exit.cond.end_crit_edge ], [ 0, %if.then14.cond.end_crit_edge ]
  %conv19 = trunc i32 %cond to i16
  %22 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %data_len20 = getelementptr inbounds %struct.anon.191, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %data_len20 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv19, ptr %data_len20, align 4
  %24 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4, ptr %opts, align 8
  %local_key = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %local_key, align 8
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %22, align 8
  %remote_key = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %remote_key, align 8
  %rcvr_key = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %rcvr_key to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rcvr_key, align 8
  %csum_enabled = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 28
  %31 = ptrtoint ptr %csum_enabled to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %csum_enabled, align 1, !range !155
  %csum_reqd = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %33 = ptrtoint ptr %csum_reqd to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load25 = load i8, ptr %csum_reqd, align 1
  %bf.shl = shl nuw nsw i8 %32, 2
  %bf.clear26 = and i8 %bf.load25, -5
  %bf.set = or i8 %bf.clear26, %bf.shl
  store i8 %bf.set, ptr %csum_reqd, align 1
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %34 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skc_net.i, align 4
  %call28 = tail call i32 @mptcp_allow_join_id0(ptr noundef %35) #12
  %conv29 = trunc i32 %call28 to i8
  %36 = ptrtoint ptr %csum_reqd to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load30 = load i8, ptr %csum_reqd, align 1
  %bf.value31 = shl i8 %conv29, 1
  %bf.shl32 = and i8 %bf.value31, 2
  %bf.clear33 = and i8 %bf.load30, -3
  %bf.set34 = or i8 %bf.shl32, %bf.clear33
  store i8 %bf.set34, ptr %csum_reqd, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp35.not = icmp eq i32 %cond, 0
  br i1 %cmp35.not, label %cond.end.do.body53_crit_edge, label %if.then37

cond.end.do.body53_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then37:                                        ; preds = %cond.end
  %37 = and i8 %bf.load30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool42.not = icmp eq i8 %37, 0
  br i1 %tobool42.not, label %if.then37.do.body53_crit_edge, label %if.then43

if.then37.do.body53_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %data_seq = getelementptr inbounds %struct.mptcp_ext, ptr %retval.0.i.i6, i32 0, i32 1
  %38 = ptrtoint ptr %data_seq to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %data_seq, align 8
  %data_seq44 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %data_seq44 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %data_seq44, align 8
  %subflow_seq = getelementptr inbounds %struct.mptcp_ext, ptr %retval.0.i.i6, i32 0, i32 2
  %41 = ptrtoint ptr %subflow_seq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subflow_seq, align 8
  %subflow_seq45 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %43 = ptrtoint ptr %subflow_seq45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %subflow_seq45, align 8
  %csum = getelementptr inbounds %struct.mptcp_ext, ptr %retval.0.i.i6, i32 0, i32 4
  %44 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %csum, align 2
  %csum46 = getelementptr inbounds %struct.anon.191, ptr %22, i32 0, i32 5
  %46 = ptrtoint ptr %csum46 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %csum46, align 2
  br label %do.body53

do.body53:                                        ; preds = %if.then43, %if.then37.do.body53_crit_edge, %cond.end.do.body53_crit_edge
  %storemerge = phi i32 [ 24, %if.then43 ], [ 24, %if.then37.do.body53_crit_edge ], [ 20, %cond.end.do.body53_crit_edge ]
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_mp.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options_mp, %if.then60)) #12
          to label %cleanup [label %if.then60], !srcloc !153

if.then60:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %local_key, align 8
  %50 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %remote_key, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_mp.__UNIQUE_ID_ddebug637, ptr noundef nonnull @.str.45, ptr noundef %1, i64 noundef %49, i64 noundef %51, i32 noundef %cond) #12
  br label %cleanup

if.else66:                                        ; preds = %if.end9
  %52 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool70.not = icmp eq i32 %52, 0
  br i1 %tobool70.not, label %if.else66.cleanup_crit_edge, label %if.then71

if.else66.cleanup_crit_edge:                      ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then71:                                        ; preds = %if.else66
  %53 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 32, ptr %opts, align 8
  %hmac = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 2
  %hmac73 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 19
  %54 = call ptr @memcpy(ptr %hmac, ptr %hmac73, i32 20)
  %55 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 24, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_mp.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options_mp, %if.then87)) #12
          to label %do.end90 [label %if.then87], !srcloc !153

if.then87:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_mp.__UNIQUE_ID_ddebug638, ptr noundef nonnull @.str.47, ptr noundef %1) #12
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %if.then71
  %call91 = tail call fastcc zeroext i1 @sock_owned_by_user(ptr noundef %sk)
  br i1 %call91, label %if.then92, label %if.else93

if.then92:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  %delegated_status = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 1, ptr noundef %delegated_status) #12
  br label %cleanup

if.else93:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mptcp_subflow_delegate(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else93, %if.then92, %if.else66.cleanup_crit_edge, %if.then60, %do.body53, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %lor.lhs.false5.cleanup_crit_edge ], [ false, %lor.lhs.false4.cleanup_crit_edge ], [ true, %if.then60 ], [ true, %if.else93 ], [ true, %if.then92 ], [ false, %if.else66.cleanup_crit_edge ], [ true, %do.body53 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mptcp_established_options_add_addr(ptr nocapture noundef readonly %sk, ptr noundef %skb, ptr nocapture noundef %size, i32 noundef %remaining, ptr noundef %opts) unnamed_addr #0 align 64 {
entry:
  %drop_other_suboptions = alloca i8, align 1
  %echo = alloca i8, align 1
  %port = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %drop_other_suboptions) #12
  %4 = ptrtoint ptr %drop_other_suboptions to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %drop_other_suboptions, align 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %echo) #12
  %7 = ptrtoint ptr %echo to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %echo, align 1, !annotation !156
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port) #12
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %port, align 1, !annotation !156
  %addr_signal.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 40, i32 4
  %9 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %addr_signal.i, align 4
  %11 = and i8 %10, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not = icmp eq i8 %11, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %opts, align 8
  %14 = and i16 %13, 36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %15 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %call4 = call zeroext i1 @mptcp_pm_add_addr_signal(ptr noundef %3, ptr noundef %skb, i32 noundef %6, i32 noundef %remaining, ptr noundef %15, ptr noundef nonnull %echo, ptr noundef nonnull %port, ptr noundef nonnull %drop_other_suboptions) #12
  br i1 %call4, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %16 = ptrtoint ptr %drop_other_suboptions to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %drop_other_suboptions, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  %add = select i1 %tobool5.not, i32 0, i32 %6
  %spec.select = add i32 %add, %remaining
  %family = getelementptr inbounds %struct.mptcp_addr_info, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %family, align 2
  %20 = ptrtoint ptr %echo to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %echo, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not = icmp eq i8 %21, 0
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %19)
  %cmp.i = icmp eq i16 %19, 10
  %spec.store.select.i = select i1 %cmp.i, i8 20, i8 8
  %narrow.i = add nuw nsw i8 %spec.store.select.i, 8
  %spec.select.i = select i1 %tobool10.not, i8 %narrow.i, i8 %spec.store.select.i
  %add8.i = add nuw nsw i8 %spec.select.i, 4
  %len.1.i = select i1 %tobool11.not, i8 %spec.select.i, i8 %add8.i
  %conv11.i = zext i8 %len.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv11.i)
  %cmp = icmp ult i32 %spec.select, %conv11.i
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %24 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv11.i, ptr %size, align 4
  br i1 %tobool5.not, label %if.end15.if.end25_crit_edge, label %do.body

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.body:                                          ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_add_addr.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options_add_addr, %if.then22)) #12
          to label %do.end [label %if.then22], !srcloc !153

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_add_addr.__UNIQUE_ID_ddebug645, ptr noundef nonnull @.str.52) #12
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %25 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %opts, align 8
  %ahmac = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %26 = ptrtoint ptr %ahmac to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %ahmac, align 8
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %sub = sub i32 %28, %6
  store i32 %sub, ptr %size, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end15.if.end25_crit_edge
  %29 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %opts, align 8
  %31 = or i16 %30, 64
  store i16 %31, ptr %opts, align 8
  %32 = ptrtoint ptr %echo to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %echo, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool29.not = icmp eq i8 %33, 0
  br i1 %tobool29.not, label %if.then30, label %if.end25.do.body35_crit_edge

if.end25.do.body35_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %local_key = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %local_key, align 8
  %remote_key = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %remote_key, align 8
  %call32 = call fastcc i64 @add_addr_generate_hmac(i64 noundef %35, i64 noundef %37, ptr noundef %15)
  %ahmac33 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %38 = ptrtoint ptr %ahmac33 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call32, ptr %ahmac33, align 8
  br label %do.body35

do.body35:                                        ; preds = %if.then30, %if.end25.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_established_options_add_addr.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_established_options_add_addr, %if.then47)) #12
          to label %cleanup [label %if.then47], !srcloc !153

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %15, align 8
  %conv49 = zext i8 %40 to i32
  %ahmac50 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %41 = ptrtoint ptr %ahmac50 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ahmac50, align 8
  %43 = ptrtoint ptr %echo to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %echo, align 1, !range !155
  %45 = zext i8 %44 to i32
  %port54 = getelementptr inbounds %struct.mptcp_addr_info, ptr %15, i32 0, i32 2
  %46 = ptrtoint ptr %port54 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %port54, align 4
  %conv55 = zext i16 %47 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_established_options_add_addr.__UNIQUE_ID_ddebug646, ptr noundef nonnull @.str.54, i32 noundef %conv49, i64 noundef %42, i32 noundef %45, i32 noundef %conv55) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.body35, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false3.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then47 ], [ true, %do.body35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %echo) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %drop_other_suboptions) #12
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_synack_options(ptr noundef %req, ptr nocapture noundef writeonly %size, ptr nocapture noundef %opts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mp_capable = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %mp_capable to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %mp_capable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 2, ptr %opts, align 8
  %local_key = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %local_key, align 8
  %4 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %3, ptr %4, align 8
  %6 = ptrtoint ptr %mp_capable to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1 = load i8, ptr %mp_capable, align 8
  %csum_reqd4 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %7 = ptrtoint ptr %csum_reqd4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load5 = load i8, ptr %csum_reqd4, align 1
  %8 = lshr i8 %bf.load1, 2
  %bf.shl = and i8 %8, 4
  %bf.clear6 = and i8 %bf.load5, -5
  %bf.set = or i8 %bf.clear6, %bf.shl
  store i8 %bf.set, ptr %csum_reqd4, align 1
  %bf.load7 = load i8, ptr %mp_capable, align 8
  %9 = lshr i8 %bf.load7, 2
  %bf.shl15 = and i8 %9, 2
  %bf.clear16 = and i8 %bf.set, -3
  %bf.set17 = or i8 %bf.shl15, %bf.clear16
  store i8 %bf.set17, ptr %csum_reqd4, align 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_synack_options.__UNIQUE_ID_ddebug651, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_synack_options, %if.then22)) #12
          to label %cleanup [label %if.then22], !srcloc !153

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %local_key, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_synack_options.__UNIQUE_ID_ddebug651, ptr noundef nonnull @.str.7, ptr noundef %req, i64 noundef %12) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  br i1 %tobool28.not, label %if.else.cleanup_crit_edge, label %if.then29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then29:                                        ; preds = %if.else
  %14 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16, ptr %opts, align 8
  %15 = ptrtoint ptr %mp_capable to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load31 = load i8, ptr %mp_capable, align 8
  %bf.lshr32 = lshr i8 %bf.load31, 5
  %bf.clear33 = and i8 %bf.lshr32, 1
  %backup36 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 3
  %16 = ptrtoint ptr %backup36 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.clear33, ptr %backup36, align 4
  %local_id = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %local_id, align 1
  %join_id = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 2
  %19 = ptrtoint ptr %join_id to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %join_id, align 1
  %thmac = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 8
  %20 = ptrtoint ptr %thmac to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %thmac, align 8
  %22 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %thmac37 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %thmac37 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %21, ptr %thmac37, align 8
  %local_nonce = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 9
  %24 = ptrtoint ptr %local_nonce to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %local_nonce, align 8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %22, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_synack_options.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_synack_options, %if.then50)) #12
          to label %do.end59 [label %if.then50], !srcloc !153

if.then50:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %backup36 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %backup36, align 4
  %conv52 = zext i8 %28 to i32
  %29 = ptrtoint ptr %join_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %join_id, align 1
  %conv54 = zext i8 %30 to i32
  %31 = ptrtoint ptr %thmac37 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %thmac37, align 8
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %22, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_synack_options.__UNIQUE_ID_ddebug652, ptr noundef nonnull @.str.9, ptr noundef %req, i32 noundef %conv52, i32 noundef %conv54, i64 noundef %32, i32 noundef %34) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then50, %if.then29
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.else.cleanup_crit_edge, %if.then22, %if.then
  %retval.0 = phi i1 [ true, %do.end59 ], [ true, %if.then22 ], [ false, %if.else.cleanup_crit_edge ], [ true, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @__mptcp_expand_seq(i64 noundef %old_seq, i64 noundef %cur_seq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %old_seq to i32
  %conv1 = trunc i64 %cur_seq to i32
  %and = and i64 %old_seq, -4294967296
  %conv2 = and i64 %cur_seq, 4294967295
  %add = or i64 %conv2, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %conv)
  %cmp = icmp ult i32 %conv1, %conv
  %sub.i = sub i32 %conv, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %or.cond = and i1 %cmp, %cmp.i
  br i1 %or.cond, label %if.then, label %if.end, !prof !157

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add6 = add i64 %add, 4294967296
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %conv)
  %cmp7 = icmp ugt i32 %conv1, %conv
  %sub.i33 = sub i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i33)
  %cmp.i34 = icmp slt i32 %sub.i33, 0
  %or.cond35 = and i1 %cmp7, %cmp.i34
  br i1 %or.cond35, label %if.then19, label %if.end.cleanup_crit_edge, !prof !157

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i64 %add, -4294967296
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i64 [ %add6, %if.then ], [ %sub, %if.then19 ], [ %add, %if.end.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_update_rcv_data_fin(ptr noundef %msk, i64 noundef %data_fin_seq, i1 noundef zeroext %use_64bit) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_data_fin = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 24
  %0 = ptrtoint ptr %rcv_data_fin to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %rcv_data_fin, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end8, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end8:                                          ; preds = %entry
  %ack_seq = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 5
  %2 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load volatile i64, ptr %ack_seq, align 8
  br i1 %use_64bit, label %do.end8.mptcp_expand_seq.exit_crit_edge, label %if.end.i

do.end8.mptcp_expand_seq.exit_crit_edge:          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_expand_seq.exit

if.end.i:                                         ; preds = %do.end8
  %conv.i.i = trunc i64 %3 to i32
  %conv1.i.i = trunc i64 %data_fin_seq to i32
  %and.i.i = and i64 %3, -4294967296
  %conv2.i.i = and i64 %data_fin_seq, 4294967295
  %add.i.i = or i64 %and.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv.i.i)
  %cmp.i.i = icmp ult i32 %conv1.i.i, %conv.i.i
  %sub.i.i.i = sub i32 %conv.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  %or.cond.i.i = and i1 %cmp.i.i, %cmp.i.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.i.i, !prof !157

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add6.i.i = add i64 %add.i.i, 4294967296
  br label %mptcp_expand_seq.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv.i.i)
  %cmp7.i.i = icmp ugt i32 %conv1.i.i, %conv.i.i
  %sub.i33.i.i = sub i32 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i33.i.i)
  %cmp.i34.i.i = icmp slt i32 %sub.i33.i.i, 0
  %or.cond35.i.i = and i1 %cmp7.i.i, %cmp.i34.i.i
  br i1 %or.cond35.i.i, label %if.then19.i.i, label %if.end.i.i.mptcp_expand_seq.exit_crit_edge, !prof !157

if.end.i.i.mptcp_expand_seq.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_expand_seq.exit

if.then19.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i64 %add.i.i, -4294967296
  br label %mptcp_expand_seq.exit

mptcp_expand_seq.exit:                            ; preds = %if.then19.i.i, %if.end.i.i.mptcp_expand_seq.exit_crit_edge, %if.then.i.i, %do.end8.mptcp_expand_seq.exit_crit_edge
  %retval.0.i = phi i64 [ %data_fin_seq, %do.end8.mptcp_expand_seq.exit_crit_edge ], [ %add6.i.i, %if.then.i.i ], [ %sub.i.i, %if.then19.i.i ], [ %add.i.i, %if.end.i.i.mptcp_expand_seq.exit_crit_edge ]
  %rcv_data_fin_seq = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 7
  %4 = ptrtoint ptr %rcv_data_fin_seq to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %retval.0.i, ptr %rcv_data_fin_seq, align 8
  %5 = ptrtoint ptr %rcv_data_fin to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 1, ptr %rcv_data_fin, align 1
  br label %return

return:                                           ; preds = %mptcp_expand_seq.exit, %entry.return_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_incoming_options(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %mp_opt = alloca %struct.mptcp_options_received, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %mp_opt) #12
  %4 = call ptr @memset(ptr %mp_opt, i32 255, i32 136)
  %flags.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 18
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %sk_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_lock) #12
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %8 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %10 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i.i = icmp slt i32 %9, %11
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %12 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_prot.i.i, align 8
  %stream_memory_free.i.i = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 28
  %14 = ptrtoint ptr %stream_memory_free.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream_memory_free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then5_crit_edge, label %sk_stream_memory_free.exit

if.end.i.i.if.then5_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

sk_stream_memory_free.exit:                       ; preds = %if.end.i.i
  %call.i.i = tail call zeroext i1 %15(ptr noundef %sk, i32 noundef 0) #12
  br i1 %call.i.i, label %sk_stream_memory_free.exit.if.then5_crit_edge, label %sk_stream_memory_free.exit.if.end_crit_edge

sk_stream_memory_free.exit.if.end_crit_edge:      ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sk_stream_memory_free.exit.if.then5_crit_edge:    ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %sk_stream_memory_free.exit.if.then5_crit_edge, %if.end.i.i.if.then5_crit_edge
  %16 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn, align 4
  tail call void @__mptcp_check_push(ptr noundef %17, ptr noundef %sk) #12
  br label %if.end

if.end:                                           ; preds = %if.then5, %sk_stream_memory_free.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %18 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn, align 4
  tail call void @__mptcp_data_acked(ptr noundef %19) #12
  %20 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn, align 4
  %sk_lock9 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock9) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %24 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %25 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %conv.i.i.i
  %suboptions.i = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %26 = ptrtoint ptr %suboptions.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %suboptions.i, align 8
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %28 = lshr i16 %bf.load.i, 10
  %29 = and i16 %28, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %29)
  %cmp47.i = icmp ugt i16 %29, 20
  br i1 %cmp47.i, label %while.body.preheader.i, label %if.end11.mptcp_get_options.exit_crit_edge

if.end11.mptcp_get_options.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_get_options.exit

while.body.preheader.i:                           ; preds = %if.end11
  %add.ptr.i = getelementptr %struct.tcphdr, ptr %add.ptr.i.i.i, i32 1
  %mul.i = zext i16 %29 to i32
  %sub.i = add nsw i32 %mul.i, -20
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %length.049.i = phi i32 [ %length.1.i, %cleanup.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %ptr.048.i = phi ptr [ %ptr.1.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %incdec.ptr.i = getelementptr i8, ptr %ptr.048.i, i32 1
  %30 = ptrtoint ptr %ptr.048.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ptr.048.i, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %31, label %sw.default.i [
    i8 0, label %while.body.i.mptcp_get_options.exit_crit_edge
    i8 1, label %sw.bb3.i
  ]

while.body.i.mptcp_get_options.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_get_options.exit

sw.bb3.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i = add i32 %length.049.i, -1
  br label %cleanup.i

sw.default.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.049.i)
  %cmp4.i = icmp slt i32 %length.049.i, 2
  br i1 %cmp4.i, label %sw.default.i.mptcp_get_options.exit_crit_edge, label %if.end.i

sw.default.i.mptcp_get_options.exit_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_get_options.exit

if.end.i:                                         ; preds = %sw.default.i
  %incdec.ptr6.i = getelementptr i8, ptr %ptr.048.i, i32 2
  %33 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.i, align 1
  %conv7.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp8.i = icmp ult i8 %34, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %length.049.i, i32 %conv7.i)
  %cmp12.i = icmp ult i32 %length.049.i, %conv7.i
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp12.i
  br i1 %or.cond.i, label %if.end.i.mptcp_get_options.exit_crit_edge, label %if.end15.i

if.end.i.mptcp_get_options.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_get_options.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %31)
  %cmp16.i = icmp eq i8 %31, 30
  br i1 %cmp16.i, label %if.then18.i, label %if.end15.i.if.end19.i_crit_edge

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @mptcp_parse_option(ptr noundef %skb, ptr noundef %incdec.ptr6.i, i32 noundef %conv7.i, ptr noundef nonnull %mp_opt) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end19.i_crit_edge
  %add.ptr21.i = getelementptr i8, ptr %ptr.048.i, i32 %conv7.i
  %sub22.i = sub nsw i32 %length.049.i, %conv7.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end19.i, %sw.bb3.i
  %ptr.1.i = phi ptr [ %add.ptr21.i, %if.end19.i ], [ %incdec.ptr.i, %sw.bb3.i ]
  %length.1.i = phi i32 [ %sub22.i, %if.end19.i ], [ %dec.i, %sw.bb3.i ]
  %cmp.i = icmp sgt i32 %length.1.i, 0
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.mptcp_get_options.exit_crit_edge

cleanup.i.mptcp_get_options.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_get_options.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

mptcp_get_options.exit:                           ; preds = %cleanup.i.mptcp_get_options.exit_crit_edge, %if.end.i.mptcp_get_options.exit_crit_edge, %sw.default.i.mptcp_get_options.exit_crit_edge, %while.body.i.mptcp_get_options.exit_crit_edge, %if.end11.mptcp_get_options.exit_crit_edge
  %call12 = call fastcc zeroext i1 @check_fully_established(ptr noundef %3, ptr noundef %sk, ptr noundef %1, ptr noundef %skb, ptr noundef nonnull %mp_opt)
  br i1 %call12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %mptcp_get_options.exit
  call void @__sanitizer_cov_trace_pc() #14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %35 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %36)
  %cmp = icmp ne i8 %36, 7
  br label %cleanup

if.end15:                                         ; preds = %mptcp_get_options.exit
  %37 = ptrtoint ptr %suboptions.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %suboptions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %38)
  %cmp17.not = icmp eq i16 %38, 2048
  br i1 %cmp17.not, label %if.end15.if.end113_crit_edge, label %if.then20, !prof !154

if.end15.if.end113_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.then20:                                        ; preds = %if.end15
  %39 = and i16 %38, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool23.not = icmp eq i16 %39, 0
  br i1 %tobool23.not, label %if.then20.if.end34_crit_edge, label %land.lhs.true

if.then20.if.end34_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true:                                    ; preds = %if.then20
  %local_key = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %local_key, align 8
  %rcvr_key = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 1
  %42 = ptrtoint ptr %rcvr_key to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rcvr_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp24 = icmp eq i64 %41, %43
  br i1 %cmp24, label %do.body28, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.body28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %rcv_fastclose = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 26
  %44 = ptrtoint ptr %rcv_fastclose to i32
  call void @__asan_store1_noabort(i32 %44)
  store volatile i8 1, ptr %rcv_fastclose, align 1
  %call33 = call zeroext i1 @mptcp_schedule_work(ptr noundef %3) #12
  br label %if.end34

if.end34:                                         ; preds = %do.body28, %land.lhs.true.if.end34_crit_edge, %if.then20.if.end34_crit_edge
  %45 = ptrtoint ptr %suboptions.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %suboptions.i, align 8
  %47 = and i16 %46, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool38.not = icmp eq i16 %47, 0
  br i1 %tobool38.not, label %if.end34.if.end56_crit_edge, label %land.lhs.true39

if.end34.if.end56_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true39:                                  ; preds = %if.end34
  %call40 = call fastcc zeroext i1 @add_addr_hmac_valid(ptr noundef %3, ptr noundef nonnull %mp_opt)
  br i1 %call40, label %if.then42, label %land.lhs.true39.if.end56_crit_edge

land.lhs.true39.if.end56_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then42:                                        ; preds = %land.lhs.true39
  %echo = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %48 = ptrtoint ptr %echo to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load = load i16, ptr %echo, align 4
  %49 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool43.not = icmp eq i16 %49, 0
  %addr = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14
  br i1 %tobool43.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  call void @mptcp_pm_add_addr_received(ptr noundef %3, ptr noundef %addr) #12
  br label %if.end50

if.else:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  call void @mptcp_pm_add_addr_echoed(ptr noundef %3, ptr noundef %addr) #12
  %call48 = call ptr @mptcp_pm_del_add_timer(ptr noundef %3, ptr noundef %addr, i1 noundef zeroext true) #12
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then44
  %.sink333 = phi i32 [ 25, %if.else ], [ 24, %if.then44 ]
  %skc_net.i298 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %50 = ptrtoint ptr %skc_net.i298 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skc_net.i298, align 4
  call fastcc void @MPTCP_INC_STATS(ptr noundef %51, i32 noundef %.sink333)
  %port = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 2
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool52.not = icmp eq i16 %53, 0
  br i1 %tobool52.not, label %if.end50.if.end56_crit_edge, label %if.then53

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %skc_net.i299 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %54 = ptrtoint ptr %skc_net.i299 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skc_net.i299, align 4
  call fastcc void @MPTCP_INC_STATS(ptr noundef %55, i32 noundef 26)
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge, %land.lhs.true39.if.end56_crit_edge, %if.end34.if.end56_crit_edge
  %56 = ptrtoint ptr %suboptions.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %suboptions.i, align 8
  %58 = and i16 %57, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool60.not = icmp eq i16 %58, 0
  br i1 %tobool60.not, label %if.end56.if.end62_crit_edge, label %if.then61

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %rm_list = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 15
  call void @mptcp_pm_rm_addr_received(ptr noundef %3, ptr noundef %rm_list) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end56.if.end62_crit_edge
  %59 = ptrtoint ptr %suboptions.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %suboptions.i, align 8
  %61 = and i16 %60, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool66.not = icmp eq i16 %61, 0
  br i1 %tobool66.not, label %if.end62.if.end73_crit_edge, label %if.then67

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %backup = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %62 = ptrtoint ptr %backup to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load68 = load i16, ptr %backup, align 4
  %63 = trunc i16 %bf.load68 to i8
  %64 = lshr i8 %63, 3
  %conv71 = and i8 %64, 1
  call void @mptcp_pm_mp_prio_received(ptr noundef %sk, i8 noundef zeroext %conv71) #12
  %skc_net.i300 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %65 = ptrtoint ptr %skc_net.i300 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skc_net.i300, align 4
  call fastcc void @MPTCP_INC_STATS(ptr noundef %66, i32 noundef 37)
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.end62.if.end73_crit_edge
  %67 = ptrtoint ptr %suboptions.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %suboptions.i, align 8
  %69 = and i16 %68, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool77.not = icmp eq i16 %69, 0
  br i1 %tobool77.not, label %if.end73.if.end80_crit_edge, label %if.then78

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %fail_seq = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 17
  %70 = ptrtoint ptr %fail_seq to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %fail_seq, align 8
  call void @mptcp_pm_mp_fail_received(ptr noundef %sk, i64 noundef %71) #12
  %skc_net.i301 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %72 = ptrtoint ptr %skc_net.i301 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skc_net.i301, align 4
  call fastcc void @MPTCP_INC_STATS(ptr noundef %73, i32 noundef 39)
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end73.if.end80_crit_edge
  %74 = ptrtoint ptr %suboptions.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %suboptions.i, align 8
  %76 = and i16 %75, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool84.not = icmp eq i16 %76, 0
  br i1 %tobool84.not, label %if.end80.if.end106_crit_edge, label %if.then85

if.end80.if.end106_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %reset_seen = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 22
  %77 = ptrtoint ptr %reset_seen to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load86 = load i8, ptr %reset_seen, align 2
  %reset_reason = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %78 = ptrtoint ptr %reset_reason to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load88 = load i16, ptr %reset_reason, align 4
  %sh.diff = lshr i16 %bf.load88, 4
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 60
  %bf.set = and i8 %bf.load86, 3
  %bf.clear94 = or i8 %bf.set, -128
  %bf.set95 = or i8 %bf.shl, %bf.clear94
  %79 = trunc i16 %bf.load88 to i8
  %80 = shl i8 %79, 1
  %bf.shl103 = and i8 %80, 64
  %bf.set105 = or i8 %bf.set95, %bf.shl103
  store i8 %bf.set105, ptr %reset_seen, align 2
  br label %if.end106

if.end106:                                        ; preds = %if.then85, %if.end80.if.end106_crit_edge
  %81 = and i16 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool110.not = icmp eq i16 %81, 0
  br i1 %tobool110.not, label %if.end106.cleanup_crit_edge, label %if.end106.if.end113_crit_edge

if.end106.if.end113_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end113:                                        ; preds = %if.end106.if.end113_crit_edge, %if.end15.if.end113_crit_edge
  %use_ack = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %82 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load114 = load i16, ptr %use_ack, align 4
  %83 = and i16 %bf.load114, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool117.not = icmp eq i16 %83, 0
  br i1 %tobool117.not, label %if.end113.if.end119_crit_edge, label %if.then118

if.end113.if.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then118:                                       ; preds = %if.end113
  %snd_nxt1.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 4
  %84 = ptrtoint ptr %snd_nxt1.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load volatile i64, ptr %snd_nxt1.i, align 8
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %sk_lock.i) #12
  %snd_una.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 13
  %86 = ptrtoint ptr %snd_una.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %snd_una.i, align 8
  %data_ack.i = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 2
  %88 = ptrtoint ptr %data_ack.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %data_ack.i, align 8
  %90 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load.i302 = load i16, ptr %use_ack, align 4
  %91 = and i16 %bf.load.i302, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool.not.i = icmp eq i16 %91, 0
  br i1 %tobool.not.i, label %if.end.i.i304, label %if.then118.mptcp_expand_seq.exit.i_crit_edge

if.then118.mptcp_expand_seq.exit.i_crit_edge:     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_expand_seq.exit.i

if.end.i.i304:                                    ; preds = %if.then118
  %conv.i.i.i303 = trunc i64 %87 to i32
  %conv1.i.i.i = trunc i64 %89 to i32
  %and.i.i.i = and i64 %87, -4294967296
  %conv2.i.i.i = and i64 %89, 4294967295
  %add.i.i.i = or i64 %conv2.i.i.i, %and.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.i, i32 %conv.i.i.i303)
  %cmp.i.i.i = icmp ult i32 %conv1.i.i.i, %conv.i.i.i303
  %sub.i.i.i.i = sub i32 %conv.i.i.i303, %conv1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  %or.cond.i.i.i = and i1 %cmp.i.i.i, %cmp.i.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !prof !157

if.then.i.i.i:                                    ; preds = %if.end.i.i304
  call void @__sanitizer_cov_trace_pc() #14
  %add6.i.i.i = add i64 %add.i.i.i, 4294967296
  br label %mptcp_expand_seq.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i304
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.i, i32 %conv.i.i.i303)
  %cmp7.i.i.i = icmp ugt i32 %conv1.i.i.i, %conv.i.i.i303
  %sub.i33.i.i.i = sub i32 %conv1.i.i.i, %conv.i.i.i303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i33.i.i.i)
  %cmp.i34.i.i.i = icmp slt i32 %sub.i33.i.i.i, 0
  %or.cond35.i.i.i = and i1 %cmp7.i.i.i, %cmp.i34.i.i.i
  br i1 %or.cond35.i.i.i, label %if.then19.i.i.i, label %if.end.i.i.i.mptcp_expand_seq.exit.i_crit_edge, !prof !157

if.end.i.i.i.mptcp_expand_seq.exit.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mptcp_expand_seq.exit.i

if.then19.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i64 %add.i.i.i, -4294967296
  br label %mptcp_expand_seq.exit.i

mptcp_expand_seq.exit.i:                          ; preds = %if.then19.i.i.i, %if.end.i.i.i.mptcp_expand_seq.exit.i_crit_edge, %if.then.i.i.i, %if.then118.mptcp_expand_seq.exit.i_crit_edge
  %retval.0.i.i305 = phi i64 [ %89, %if.then118.mptcp_expand_seq.exit.i_crit_edge ], [ %add6.i.i.i, %if.then.i.i.i ], [ %sub.i.i.i, %if.then19.i.i.i ], [ %add.i.i.i, %if.end.i.i.i.mptcp_expand_seq.exit.i_crit_edge ]
  %sub.i.i = sub i64 %85, %retval.0.i.i305
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %mptcp_expand_seq.exit.i.if.end.i306_crit_edge, !prof !158

mptcp_expand_seq.exit.i.if.end.i306_crit_edge:    ; preds = %mptcp_expand_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i306

if.then.i:                                        ; preds = %mptcp_expand_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i306

if.end.i306:                                      ; preds = %if.then.i, %mptcp_expand_seq.exit.i.if.end.i306_crit_edge
  %new_snd_una.0.i = phi i64 [ %87, %if.then.i ], [ %retval.0.i.i305, %mptcp_expand_seq.exit.i.if.end.i306_crit_edge ]
  %snd_wnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 26
  %92 = ptrtoint ptr %snd_wnd.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %snd_wnd.i, align 4
  %conv.i = zext i32 %93 to i64
  %add.i = add i64 %new_snd_una.0.i, %conv.i
  %wnd_end.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 14
  %94 = ptrtoint ptr %wnd_end.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %wnd_end.i, align 8
  %sub.i50.i = sub i64 %95, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i50.i)
  %cmp.i51.i = icmp slt i64 %sub.i50.i, 0
  br i1 %cmp.i51.i, label %if.then7.i, label %if.end.i306.do.end12.i_crit_edge

if.end.i306.do.end12.i_crit_edge:                 ; preds = %if.end.i306
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then7.i:                                       ; preds = %if.end.i306
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %wnd_end.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add.i, ptr %wnd_end.i, align 8
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i, %if.end.i306.do.end12.i_crit_edge
  %97 = ptrtoint ptr %snd_nxt1.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load volatile i64, ptr %snd_nxt1.i, align 8
  %99 = ptrtoint ptr %wnd_end.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %wnd_end.i, align 8
  %sub.i52.i = sub i64 %98, %100
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i52.i)
  %cmp.i53.i = icmp slt i64 %sub.i52.i, 0
  br i1 %cmp.i53.i, label %if.then17.i, label %do.end12.i.if.end18.i_crit_edge

do.end12.i.if.end18.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then17.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mptcp_check_push(ptr noundef %3, ptr noundef %sk) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %do.end12.i.if.end18.i_crit_edge
  %sub.i54.i = sub i64 %87, %new_snd_una.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i54.i)
  %cmp.i55.i = icmp slt i64 %sub.i54.i, 0
  br i1 %cmp.i55.i, label %if.then20.i, label %if.end18.i.ack_update_msk.exit_crit_edge

if.end18.i.ack_update_msk.exit_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ack_update_msk.exit

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %snd_una.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %new_snd_una.0.i, ptr %snd_una.i, align 8
  call void @__mptcp_data_acked(ptr noundef %3) #12
  br label %ack_update_msk.exit

ack_update_msk.exit:                              ; preds = %if.then20.i, %if.end18.i.ack_update_msk.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i) #12
  %102 = ptrtoint ptr %data_ack.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %data_ack.i, align 8
  %104 = ptrtoint ptr %wnd_end.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %wnd_end.i, align 8
  call fastcc void @trace_ack_update_msk(i64 noundef %103, i64 noundef %87, i64 noundef %new_snd_una.0.i, i64 noundef %add.i, i64 noundef %105) #12
  br label %if.end119

if.end119:                                        ; preds = %ack_update_msk.exit, %if.end113.if.end119_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %106 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cb, align 8
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %108 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %end_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp122 = icmp eq i32 %107, %109
  br i1 %cmp122, label %if.then124, label %if.end147

if.then124:                                       ; preds = %if.end119
  %110 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load125 = load i16, ptr %use_ack, align 4
  %111 = and i16 %bf.load125, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool129.not = icmp eq i16 %111, 0
  br i1 %tobool129.not, label %if.then124.cleanup_crit_edge, label %land.lhs.true130

if.then124.cleanup_crit_edge:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true130:                                 ; preds = %if.then124
  %data_len = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 5
  %112 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %113)
  %cmp132 = icmp eq i16 %113, 1
  br i1 %cmp132, label %land.lhs.true134, label %land.lhs.true130.cleanup_crit_edge

land.lhs.true130.cleanup_crit_edge:               ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true134:                                 ; preds = %land.lhs.true130
  %data_seq = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 3
  %114 = ptrtoint ptr %data_seq to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %data_seq, align 8
  %rcv_data_fin.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 24
  %116 = ptrtoint ptr %rcv_data_fin.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load volatile i8, ptr %rcv_data_fin.i, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i307 = icmp eq i8 %117, 0
  br i1 %tobool.not.i307, label %do.end8.i, label %land.lhs.true134.cleanup_crit_edge

land.lhs.true134.cleanup_crit_edge:               ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end8.i:                                        ; preds = %land.lhs.true134
  %118 = and i16 %bf.load125, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool138.not = icmp eq i16 %118, 0
  %ack_seq.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 5
  %119 = ptrtoint ptr %ack_seq.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load volatile i64, ptr %ack_seq.i, align 8
  br i1 %tobool138.not, label %if.end.i.i317, label %do.end8.i.land.lhs.true141_crit_edge

do.end8.i.land.lhs.true141_crit_edge:             ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true141

if.end.i.i317:                                    ; preds = %do.end8.i
  %conv.i.i.i308 = trunc i64 %120 to i32
  %conv1.i.i.i309 = trunc i64 %115 to i32
  %and.i.i.i310 = and i64 %120, -4294967296
  %conv2.i.i.i311 = and i64 %115, 4294967295
  %add.i.i.i312 = or i64 %and.i.i.i310, %conv2.i.i.i311
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.i309, i32 %conv.i.i.i308)
  %cmp.i.i.i313 = icmp ult i32 %conv1.i.i.i309, %conv.i.i.i308
  %sub.i.i.i.i314 = sub i32 %conv.i.i.i308, %conv1.i.i.i309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i314)
  %cmp.i.i.i.i315 = icmp slt i32 %sub.i.i.i.i314, 0
  %or.cond.i.i.i316 = and i1 %cmp.i.i.i313, %cmp.i.i.i.i315
  br i1 %or.cond.i.i.i316, label %if.then.i.i.i319, label %if.end.i.i.i324, !prof !157

if.then.i.i.i319:                                 ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_pc() #14
  %add6.i.i.i318 = add i64 %add.i.i.i312, 4294967296
  br label %land.lhs.true141

if.end.i.i.i324:                                  ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.i309, i32 %conv.i.i.i308)
  %cmp7.i.i.i320 = icmp ugt i32 %conv1.i.i.i309, %conv.i.i.i308
  %sub.i33.i.i.i321 = sub i32 %conv1.i.i.i309, %conv.i.i.i308
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i33.i.i.i321)
  %cmp.i34.i.i.i322 = icmp slt i32 %sub.i33.i.i.i321, 0
  %or.cond35.i.i.i323 = and i1 %cmp7.i.i.i320, %cmp.i34.i.i.i322
  br i1 %or.cond35.i.i.i323, label %if.then19.i.i.i326, label %if.end.i.i.i324.land.lhs.true141_crit_edge, !prof !157

if.end.i.i.i324.land.lhs.true141_crit_edge:       ; preds = %if.end.i.i.i324
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true141

if.then19.i.i.i326:                               ; preds = %if.end.i.i.i324
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i325 = add i64 %add.i.i.i312, -4294967296
  br label %land.lhs.true141

land.lhs.true141:                                 ; preds = %if.then19.i.i.i326, %if.end.i.i.i324.land.lhs.true141_crit_edge, %if.then.i.i.i319, %do.end8.i.land.lhs.true141_crit_edge
  %retval.0.i.i327 = phi i64 [ %115, %do.end8.i.land.lhs.true141_crit_edge ], [ %add6.i.i.i318, %if.then.i.i.i319 ], [ %sub.i.i.i325, %if.then19.i.i.i326 ], [ %add.i.i.i312, %if.end.i.i.i324.land.lhs.true141_crit_edge ]
  %rcv_data_fin_seq.i = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 7
  %121 = ptrtoint ptr %rcv_data_fin_seq.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store volatile i64 %retval.0.i.i327, ptr %rcv_data_fin_seq.i, align 8
  %122 = ptrtoint ptr %rcv_data_fin.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store volatile i8 1, ptr %rcv_data_fin.i, align 1
  %work = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %123 = load ptr, ptr @system_wq, align 4
  %call.i.i329 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %123, ptr noundef %work) #12
  br i1 %call.i.i329, label %if.then144, label %land.lhs.true141.cleanup_crit_edge

land.lhs.true141.cleanup_crit_edge:               ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then144:                                       ; preds = %land.lhs.true141
  %124 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %conn, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %125, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #12
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #12, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then144.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !158

if.then144.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then144
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %127 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %.not.i.i.i.i = icmp sgt i32 %127, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !154

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then144.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then144.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %cleanup

if.end147:                                        ; preds = %if.end119
  %call148 = call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 3) #12
  %tobool149.not = icmp eq ptr %call148, null
  br i1 %tobool149.not, label %if.end147.cleanup_crit_edge, label %if.end151

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end151:                                        ; preds = %if.end147
  %128 = call ptr @memset(ptr %call148, i32 0, i32 32)
  %129 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %129)
  %bf.load152 = load i16, ptr %use_ack, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load152)
  %tobool154.not = icmp sgt i16 %bf.load152, -1
  br i1 %tobool154.not, label %if.end151.cleanup_crit_edge, label %if.then161, !prof !158

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then161:                                       ; preds = %if.end151
  %130 = and i16 %bf.load152, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool165.not = icmp eq i16 %130, 0
  br i1 %tobool165.not, label %if.else181, label %if.then166

if.then166:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  %remote_key = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 2
  %131 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %remote_key, align 8
  %data_seq167 = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 1
  call void @mptcp_crypto_key_sha(i64 noundef %132, ptr noundef null, ptr noundef %data_seq167) #12
  %133 = ptrtoint ptr %data_seq167 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %data_seq167, align 8
  %inc = add i64 %134, 1
  store i64 %inc, ptr %data_seq167, align 8
  %subflow_seq = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 2
  %135 = ptrtoint ptr %subflow_seq to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1, ptr %subflow_seq, align 8
  %dsn64169 = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 5
  %136 = ptrtoint ptr %dsn64169 to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load170 = load i16, ptr %dsn64169, align 8
  %bf.set176 = and i16 %bf.load170, -25601
  %bf.clear179 = or i16 %bf.set176, 17408
  store i16 %bf.clear179, ptr %dsn64169, align 8
  br label %if.end209

if.else181:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  %data_seq182 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 3
  %137 = ptrtoint ptr %data_seq182 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %data_seq182, align 8
  %data_seq183 = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 1
  %139 = ptrtoint ptr %data_seq183 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %data_seq183, align 8
  %subflow_seq184 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 4
  %140 = ptrtoint ptr %subflow_seq184 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %subflow_seq184, align 8
  %subflow_seq185 = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 2
  %142 = ptrtoint ptr %subflow_seq185 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %subflow_seq185, align 8
  %143 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %143)
  %bf.load187 = load i16, ptr %use_ack, align 4
  %dsn64191 = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 5
  %144 = and i16 %bf.load187, 16384
  %145 = ptrtoint ptr %dsn64191 to i32
  call void @__asan_load2_noabort(i32 %145)
  %bf.load192 = load i16, ptr %dsn64191, align 8
  %bf.clear195 = and i16 %bf.load192, -16385
  %bf.set196 = or i16 %bf.clear195, %144
  store i16 %bf.set196, ptr %dsn64191, align 8
  %bf.load198 = load i16, ptr %use_ack, align 4
  %146 = and i16 %bf.load198, 8192
  %bf.clear206 = and i16 %bf.set196, -8193
  %bf.set207 = or i16 %bf.clear206, %146
  store i16 %bf.set207, ptr %dsn64191, align 8
  br label %if.end209

if.end209:                                        ; preds = %if.else181, %if.then166
  %data_len210 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 5
  %147 = ptrtoint ptr %data_len210 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %data_len210, align 4
  %data_len211 = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 3
  %149 = ptrtoint ptr %data_len211 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %data_len211, align 4
  %use_map212 = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 5
  %150 = ptrtoint ptr %use_map212 to i32
  call void @__asan_load2_noabort(i32 %150)
  %bf.load213 = load i16, ptr %use_map212, align 8
  %bf.set215 = or i16 %bf.load213, -32768
  store i16 %bf.set215, ptr %use_map212, align 8
  %151 = ptrtoint ptr %suboptions.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %suboptions.i, align 8
  %153 = lshr i16 %152, 10
  %bf.shl227 = and i16 %153, 8
  %bf.clear228 = and i16 %bf.set215, -9
  %bf.set229 = or i16 %bf.shl227, %bf.clear228
  store i16 %bf.set229, ptr %use_map212, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.shl227)
  %tobool235.not = icmp eq i16 %bf.shl227, 0
  br i1 %tobool235.not, label %if.end209.cleanup_crit_edge, label %if.then236

if.end209.cleanup_crit_edge:                      ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then236:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #14
  %csum = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 6
  %154 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %csum, align 2
  %csum237 = getelementptr inbounds %struct.mptcp_ext, ptr %call148, i32 0, i32 4
  %156 = ptrtoint ptr %csum237 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %csum237, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then236, %if.end209.cleanup_crit_edge, %if.end151.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %land.lhs.true141.cleanup_crit_edge, %land.lhs.true134.cleanup_crit_edge, %land.lhs.true130.cleanup_crit_edge, %if.then124.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.then13, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ %cmp, %if.then13 ], [ true, %if.end106.cleanup_crit_edge ], [ true, %land.lhs.true141.cleanup_crit_edge ], [ true, %land.lhs.true130.cleanup_crit_edge ], [ true, %if.then124.cleanup_crit_edge ], [ true, %if.end147.cleanup_crit_edge ], [ true, %if.end209.cleanup_crit_edge ], [ true, %if.then236 ], [ true, %if.end151.cleanup_crit_edge ], [ true, %land.lhs.true134.cleanup_crit_edge ], [ true, %if.else.i.i.i.i.cleanup_crit_edge ], [ true, %if.end15.sink.split.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %mp_opt) #12
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mptcp_check_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mptcp_data_acked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_fully_established(ptr noundef %msk, ptr noundef %ssk, ptr noundef %subflow, ptr nocapture noundef readonly %skb, ptr noundef %mp_opt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fully_established = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 1, i32 0, i32 13
  %0 = ptrtoint ptr %fully_established to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %fully_established, align 8
  %1 = and i32 %bf.load, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cb22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb22, align 8
  %ssn_offset25 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 1, i32 0, i32 9
  %4 = ptrtoint ptr %ssn_offset25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssn_offset25, align 8
  %add26 = add i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add26)
  %cmp27.not = icmp eq i32 %3, %add26
  br i1 %tobool.not, label %if.end21, label %if.then, !prof !158

if.then:                                          ; preds = %entry
  br i1 %cmp27.not, label %land.lhs.true, label %if.then.fully_established158_crit_edge

if.then.fully_established158_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %fully_established158

land.lhs.true:                                    ; preds = %if.then
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp8 = icmp ne i32 %7, %3
  %8 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  %or.cond = select i1 %cmp8, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %land.lhs.true.fully_established158_crit_edge, label %land.lhs.true14

land.lhs.true.fully_established158_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %fully_established158

land.lhs.true14:                                  ; preds = %land.lhs.true
  %suboptions = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %9 = ptrtoint ptr %suboptions to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %suboptions, align 8
  %11 = and i16 %10, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool15.not = icmp eq i16 %11, 0
  br i1 %tobool15.not, label %land.lhs.true14.fully_established158_crit_edge, label %do.end

land.lhs.true14.fully_established158_crit_edge:   ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %fully_established158

do.end:                                           ; preds = %land.lhs.true14
  %server_side = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 5
  %12 = ptrtoint ptr %server_side to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %server_side, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  br i1 %tobool17.not, label %do.end.fully_established158_crit_edge, label %if.then20

do.end.fully_established158_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fully_established158

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tcp_send_ack(ptr noundef %ssk) #12
  br label %fully_established158

if.end21:                                         ; preds = %entry
  br i1 %cmp27.not, label %if.end41, label %if.then29

if.then29:                                        ; preds = %if.end21
  %14 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool34.not = icmp eq i32 %14, 0
  br i1 %tobool34.not, label %if.end36, label %if.then29.reset_crit_edge

if.then29.reset_crit_edge:                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset

if.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %15 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool40 = icmp ne i32 %15, 0
  br label %return

if.end41:                                         ; preds = %if.end21
  %suboptions42 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 7
  %16 = ptrtoint ptr %suboptions42 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %suboptions42, align 8
  %18 = and i16 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool45.not = icmp eq i16 %18, 0
  br i1 %tobool45.not, label %if.end41.lor.lhs.false_crit_edge, label %land.lhs.true46

if.end41.lor.lhs.false_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true46:                                  ; preds = %if.end41
  %use_ack = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %19 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load47 = load i16, ptr %use_ack, align 4
  %20 = and i16 %bf.load47, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool51.not = icmp eq i16 %20, 0
  br i1 %tobool51.not, label %land.lhs.true46.lor.lhs.false_crit_edge, label %land.lhs.true46.if.then61_crit_edge

land.lhs.true46.if.then61_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true46.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true46.lor.lhs.false_crit_edge, %if.end41.lor.lhs.false_crit_edge
  %21 = and i16 %17, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool55.not = icmp eq i16 %21, 0
  br i1 %tobool55.not, label %lor.lhs.false.if.end72_crit_edge, label %land.lhs.true56

lor.lhs.false.if.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true56:                                  ; preds = %lor.lhs.false
  %echo = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %22 = ptrtoint ptr %echo to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load57 = load i16, ptr %echo, align 4
  %23 = and i16 %bf.load57, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool60.not = icmp eq i16 %23, 0
  br i1 %tobool60.not, label %land.lhs.true56.if.then61_crit_edge, label %land.lhs.true56.if.end72_crit_edge

land.lhs.true56.if.end72_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true56.if.then61_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

if.then61:                                        ; preds = %land.lhs.true56.if.then61_crit_edge, %land.lhs.true46.if.then61_crit_edge
  %bf.set = or i32 %bf.load, 67108864
  %24 = ptrtoint ptr %fully_established to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.set, ptr %fully_established, align 8
  %fully_established69 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 23
  %25 = ptrtoint ptr %fully_established69 to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 1, ptr %fully_established69, align 2
  br label %fully_established158

if.end72:                                         ; preds = %land.lhs.true56.if.end72_crit_edge, %lor.lhs.false.if.end72_crit_edge
  %26 = and i16 %17, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool76.not = icmp eq i16 %26, 0
  br i1 %tobool76.not, label %if.then77, label %if.end102

if.then77:                                        ; preds = %if.end72
  %27 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool82.not = icmp eq i32 %27, 0
  br i1 %tobool82.not, label %if.end84, label %if.then77.reset_crit_edge

if.then77.reset_crit_edge:                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset

if.end84:                                         ; preds = %if.then77
  %bf.clear87 = and i32 %bf.load, -268435457
  %28 = ptrtoint ptr %fully_established to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.clear87, ptr %fully_established, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_fully_established.__UNIQUE_ID_ddebug655, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_fully_established, %if.then99)) #12
          to label %do.end101 [label %if.then99], !srcloc !153

if.then99:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_fully_established.__UNIQUE_ID_ddebug655, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, ptr noundef %msk) #12
  br label %do.end101

do.end101:                                        ; preds = %if.then99, %if.end84
  tail call fastcc void @__mptcp_do_fallback(ptr noundef %msk)
  br label %return

if.end102:                                        ; preds = %if.end72
  %deny_join_id0 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %29 = ptrtoint ptr %deny_join_id0 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load103 = load i16, ptr %deny_join_id0, align 4
  %30 = and i16 %bf.load103, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool106.not = icmp eq i16 %30, 0
  br i1 %tobool106.not, label %if.end102.do.end117_crit_edge, label %do.body111

if.end102.do.end117_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end117

do.body111:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %remote_deny_join_id0 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 9
  %31 = ptrtoint ptr %remote_deny_join_id0 to i32
  call void @__asan_store1_noabort(i32 %31)
  store volatile i8 1, ptr %remote_deny_join_id0, align 1
  br label %do.end117

do.end117:                                        ; preds = %do.body111, %if.end102.do.end117_crit_edge
  %server_side120 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 5
  %32 = ptrtoint ptr %server_side120 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %server_side120, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool121.not = icmp eq i8 %33, 0
  br i1 %tobool121.not, label %land.end, label %do.end117.if.end157_crit_edge, !prof !158

do.end117.if.end157_crit_edge:                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

land.end:                                         ; preds = %do.end117
  %.b219 = load i1, ptr @check_fully_established.__already_done, align 1
  br i1 %.b219, label %land.end.if.end157_crit_edge, label %if.then144, !prof !154

land.end.if.end157_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then144:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_fully_established.__already_done, align 1
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #15
  br label %if.end157

if.end157:                                        ; preds = %if.then144, %land.end.if.end157_crit_edge, %do.end117.if.end157_crit_edge
  tail call void @mptcp_subflow_fully_established(ptr noundef %subflow, ptr noundef %mp_opt) #12
  br label %fully_established158

fully_established158:                             ; preds = %if.end157, %if.then61, %if.then20, %do.end.fully_established158_crit_edge, %land.lhs.true14.fully_established158_crit_edge, %land.lhs.true.fully_established158_crit_edge, %if.then.fully_established158_crit_edge
  %34 = ptrtoint ptr %fully_established to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load159 = load i32, ptr %fully_established, align 8
  %35 = and i32 %bf.load159, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool162.not = icmp eq i32 %35, 0
  br i1 %tobool162.not, label %lor.lhs.false169, label %fully_established158.return_crit_edge, !prof !158

fully_established158.return_crit_edge:            ; preds = %fully_established158
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false169:                                 ; preds = %fully_established158
  %36 = ptrtoint ptr %subflow to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %subflow, align 4
  %cmp.i.not = icmp eq ptr %37, %subflow
  br i1 %cmp.i.not, label %lor.lhs.false169.return_crit_edge, label %if.end173

lor.lhs.false169.return_crit_edge:                ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end173:                                        ; preds = %lor.lhs.false169
  %bf.set177 = or i32 %bf.load159, 33554432
  %38 = ptrtoint ptr %fully_established to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %bf.set177, ptr %fully_established, align 8
  %39 = and i32 %bf.load159, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool182.not = icmp eq i32 %39, 0
  br i1 %tobool182.not, label %if.else, label %if.then183

if.then183:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %icsk_delack_timer.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 5
  tail call void @sk_stop_timer(ptr noundef %ssk, ptr noundef %icsk_delack_timer.i) #12
  %icsk_ack.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 24
  %timeout.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 24, i32 5
  %40 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %timeout.i, align 4
  %ato.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 24, i32 4
  %41 = ptrtoint ptr %ato.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ato.i, align 4
  %42 = ptrtoint ptr %icsk_ack.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %icsk_ack.i, align 4
  %44 = and i8 %43, -4
  store i8 %44, ptr %icsk_ack.i, align 4
  tail call void @mptcp_pm_subflow_established(ptr noundef %msk) #12
  br label %return

if.else:                                          ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mptcp_pm_fully_established(ptr noundef %msk, ptr noundef %ssk, i32 noundef 2592) #12
  br label %return

reset:                                            ; preds = %if.then77.reset_crit_edge, %if.then29.reset_crit_edge
  tail call void @mptcp_subflow_reset(ptr noundef %ssk) #12
  br label %return

return:                                           ; preds = %reset, %if.else, %if.then183, %lor.lhs.false169.return_crit_edge, %fully_established158.return_crit_edge, %do.end101, %if.end36
  %retval.0 = phi i1 [ false, %reset ], [ %tobool40, %if.end36 ], [ false, %do.end101 ], [ true, %lor.lhs.false169.return_crit_edge ], [ true, %fully_established158.return_crit_edge ], [ true, %if.else ], [ true, %if.then183 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_schedule_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @add_addr_hmac_valid(ptr noundef %msk, ptr nocapture noundef readonly %mp_opt) unnamed_addr #0 align 64 {
entry:
  %hmac.i = alloca [32 x i8], align 1
  %msg.i = alloca [19 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %echo = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 10
  %0 = ptrtoint ptr %echo to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %echo, align 4
  %1 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %remote_key = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 2
  %2 = ptrtoint ptr %remote_key to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %remote_key, align 8
  %local_key = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 1
  %4 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %local_key, align 8
  %addr = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14
  %port1.i = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %port1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hmac.i) #12
  %8 = call ptr @memset(ptr %hmac.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %msg.i) #12
  %9 = getelementptr inbounds [19 x i8], ptr %msg.i, i32 0, i32 1
  %10 = call ptr @memset(ptr %9, i32 255, i32 18)
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 4
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %msg.i, align 1
  %family.i = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %family.i, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %15, label %if.end.add_addr_generate_hmac.exit_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then8.i
  ]

if.end.add_addr_generate_hmac.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_addr_generate_hmac.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %9, align 1
  br label %add_addr_generate_hmac.exit

if.then8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 14, i32 3
  %22 = call ptr @memcpy(ptr %9, ptr %21, i32 16)
  br label %add_addr_generate_hmac.exit

add_addr_generate_hmac.exit:                      ; preds = %if.then8.i, %if.then.i, %if.end.add_addr_generate_hmac.exit_crit_edge
  %i.0.i = phi i32 [ 5, %if.then.i ], [ 17, %if.then8.i ], [ 1, %if.end.add_addr_generate_hmac.exit_crit_edge ]
  %23 = getelementptr inbounds [32 x i8], ptr %hmac.i, i32 0, i32 24
  %24 = lshr i16 %7, 8
  %conv13.i = trunc i16 %24 to i8
  %inc14.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx15.i = getelementptr [19 x i8], ptr %msg.i, i32 0, i32 %i.0.i
  %25 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv13.i, ptr %arrayidx15.i, align 1
  %conv17.i = trunc i16 %7 to i8
  %inc18.i = or i32 %i.0.i, 2
  %arrayidx19.i = getelementptr [19 x i8], ptr %msg.i, i32 0, i32 %inc14.i
  %26 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv17.i, ptr %arrayidx19.i, align 1
  call void @mptcp_crypto_hmac_sha(i64 noundef %3, i64 noundef %5, ptr noundef nonnull %msg.i, i32 noundef %inc18.i, ptr noundef nonnull %hmac.i) #12
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %23, align 1
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_addr_hmac_valid.__UNIQUE_ID_ddebug664, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_addr_hmac_valid, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !153

if.then5:                                         ; preds = %add_addr_generate_hmac.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ahmac = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 16
  %29 = ptrtoint ptr %ahmac to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ahmac, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_addr_hmac_valid.__UNIQUE_ID_ddebug664, ptr noundef nonnull @.str.70, ptr noundef %msk, i64 noundef %28, i64 noundef %30) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %add_addr_generate_hmac.exit
  %ahmac7 = getelementptr inbounds %struct.mptcp_options_received, ptr %mp_opt, i32 0, i32 16
  %31 = ptrtoint ptr %ahmac7 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ahmac7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %32)
  %cmp = icmp eq i64 %28, %32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %do.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_add_addr_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @MPTCP_INC_STATS(ptr nocapture noundef readonly %net, i32 noundef %field) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %mptcp_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 8
  %0 = ptrtoint ptr %mptcp_statistics to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mptcp_statistics, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end47_crit_edge, label %do.body3, !prof !158

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.body3:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !160
  %3 = ptrtoint ptr %mptcp_statistics to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mptcp_statistics, align 4
  %arrayidx = getelementptr [43 x i32], ptr %4, i32 0, i32 %field
  %5 = ptrtoint ptr %arrayidx to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !143) #12
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
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !161
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool29.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool29.not, label %if.then38, label %do.body3.do.end40_crit_edge, !prof !158

do.body3.do.end40_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

if.then38:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end40

do.end40:                                         ; preds = %if.then38, %do.body3.do.end40_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !162
  br label %if.end47

if.end47:                                         ; preds = %do.end40, %entry.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_add_addr_echoed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptcp_pm_del_add_timer(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_rm_addr_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_mp_prio_received(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_mp_fail_received(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_crypto_key_sha(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @__mptcp_make_csum(i64 noundef %data_seq, i32 noundef %subflow_seq, i16 noundef zeroext %data_len, i32 noundef %sum) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.csum_pseudo_header, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header) #12
  %0 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header, i32 0, i32 1
  %1 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header, i32 0, i32 2
  %2 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header, i32 0, i32 3
  %3 = ptrtoint ptr %header to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %data_seq, ptr %header, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %subflow_seq, ptr %0, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %data_len, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %2, align 2
  %call = call i32 @csum_partial(ptr noundef nonnull %header, i32 noundef 16, i32 noundef %sum) #12
  %7 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call) #16, !srcloc !163
  %neg.i = xor i32 %7, -1
  %shr.i = lshr i32 %neg.i, 16
  %conv.i = trunc i32 %shr.i to i16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header) #12
  ret i16 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_write_options(ptr noundef writeonly %ptr, ptr noundef readonly %tp, ptr noundef readonly %opts) local_unnamed_addr #0 align 64 {
entry:
  %header.i = alloca %struct.csum_pseudo_header, align 8
  %header.i.i = alloca %struct.csum_pseudo_header, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opts, align 8
  %2 = and i16 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !154

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %tp, i32 0, i32 13
  %3 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %icsk_ulp_data.i, align 8
  %send_mp_fail = getelementptr inbounds %struct.mptcp_subflow_context, ptr %4, i32 0, i32 1, i32 0, i32 13
  %5 = ptrtoint ptr %send_mp_fail to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %send_mp_fail, align 8
  %bf.clear = and i32 %bf.load, -131073
  store i32 %bf.clear, ptr %send_mp_fail, align 8
  %incdec.ptr = getelementptr i32, ptr %ptr, i32 1
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 504127488, ptr %ptr, align 4
  %fail_seq = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %fail_seq to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fail_seq, align 8
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %incdec.ptr, align 1
  %add.ptr = getelementptr i32, ptr %ptr, i32 3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptr.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %ptr, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opts, align 8
  %conv5 = zext i16 %11 to i32
  %and6 = and i32 %conv5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else113, label %if.then14, !prof !158

if.then14:                                        ; preds = %if.end
  %12 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %use_ack = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %13 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load15 = load i16, ptr %use_ack, align 8
  %14 = and i16 %bf.load15, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not = icmp eq i16 %14, 0
  %15 = and i16 %bf.load15, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool23.not = icmp eq i16 %15, 0
  %. = select i1 %tobool23.not, i8 1, i8 3
  %.645 = select i1 %tobool23.not, i8 8, i8 12
  %flags.0 = select i1 %tobool17.not, i8 0, i8 %.
  %len.0 = select i1 %tobool17.not, i8 4, i8 %.645
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load15)
  %tobool37.not = icmp sgt i16 %bf.load15, -1
  br i1 %tobool37.not, label %if.then14.if.end64_crit_edge, label %if.then38

if.then14.if.end64_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then38:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %narrow = add nuw nsw i8 %len.0, 14
  %16 = and i16 %bf.load15, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool49.not = icmp eq i16 %16, 0
  %spec.select.v = select i1 %tobool49.not, i8 12, i8 28
  %spec.select = or i8 %flags.0, %spec.select.v
  %csum_reqd = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %17 = ptrtoint ptr %csum_reqd to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load55 = load i8, ptr %csum_reqd, align 1
  %18 = and i8 %bf.load55, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool58.not = icmp eq i8 %18, 0
  %19 = or i8 %len.0, 16
  %spec.select649 = select i1 %tobool58.not, i8 %narrow, i8 %19
  br label %if.end64

if.end64:                                         ; preds = %if.then38, %if.then14.if.end64_crit_edge
  %flags.2 = phi i8 [ %flags.0, %if.then14.if.end64_crit_edge ], [ %spec.select, %if.then38 ]
  %len.1 = phi i8 [ %len.0, %if.then14.if.end64_crit_edge ], [ %spec.select649, %if.then38 ]
  %conv.i650 = zext i8 %len.1 to i32
  %shl.i = shl nuw nsw i32 %conv.i650, 16
  %conv7.i = zext i8 %flags.2 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %or8.i = or i32 %or.i, 503324672
  %incdec.ptr66 = getelementptr i32, ptr %ptr.addr.0, i32 1
  %20 = ptrtoint ptr %ptr.addr.0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or8.i, ptr %ptr.addr.0, align 4
  %21 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load68 = load i16, ptr %use_ack, align 8
  %22 = and i16 %bf.load68, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool72.not = icmp eq i16 %22, 0
  br i1 %tobool72.not, label %if.end64.if.end85_crit_edge, label %if.then73

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then73:                                        ; preds = %if.end64
  %23 = and i16 %bf.load68, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool79.not = icmp eq i16 %23, 0
  br i1 %tobool79.not, label %if.else82, label %if.then80

if.then80:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %12, align 8
  %26 = ptrtoint ptr %incdec.ptr66 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %incdec.ptr66, align 1
  br label %if.end85thread-pre-split

if.else82:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %12, align 8
  %29 = ptrtoint ptr %incdec.ptr66 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %incdec.ptr66, align 1
  br label %if.end85thread-pre-split

if.end85thread-pre-split:                         ; preds = %if.else82, %if.then80
  %.sink = phi i32 [ 2, %if.else82 ], [ 3, %if.then80 ]
  %add.ptr83 = getelementptr i32, ptr %ptr.addr.0, i32 %.sink
  %30 = ptrtoint ptr %use_ack to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load87.pr = load i16, ptr %use_ack, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.end85thread-pre-split, %if.end64.if.end85_crit_edge
  %bf.load87 = phi i16 [ %bf.load87.pr, %if.end85thread-pre-split ], [ %bf.load68, %if.end64.if.end85_crit_edge ]
  %ptr.addr.1 = phi ptr [ %add.ptr83, %if.end85thread-pre-split ], [ %incdec.ptr66, %if.end64.if.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load87)
  %tobool90.not = icmp sgt i16 %bf.load87, -1
  br i1 %tobool90.not, label %if.end85.if.end369_crit_edge, label %if.then91

if.end85.if.end369_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end369

if.then91:                                        ; preds = %if.end85
  %data_seq = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %data_seq to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %data_seq, align 8
  %33 = ptrtoint ptr %ptr.addr.1 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %ptr.addr.1, align 1
  %add.ptr92 = getelementptr i32, ptr %ptr.addr.1, i32 2
  %subflow_seq = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %subflow_seq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %subflow_seq, align 8
  %36 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %add.ptr92, align 1
  %add.ptr93 = getelementptr i32, ptr %ptr.addr.1, i32 3
  %csum_reqd94 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %37 = ptrtoint ptr %csum_reqd94 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load95 = load i8, ptr %csum_reqd94, align 1
  %38 = and i8 %bf.load95, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool98.not = icmp eq i8 %38, 0
  %data_len105 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 3
  %39 = ptrtoint ptr %data_len105 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data_len105, align 4
  %conv106 = zext i16 %40 to i32
  br i1 %tobool98.not, label %if.else104, label %if.then99

if.then99:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %data_seq to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %data_seq, align 8
  %43 = ptrtoint ptr %subflow_seq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %subflow_seq, align 8
  %csum.i = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 4
  %45 = ptrtoint ptr %csum.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %csum.i, align 2
  %conv.i.i = zext i16 %46 to i32
  %neg.i = xor i32 %conv.i.i, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header.i.i) #12
  %47 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header.i.i, i32 0, i32 1
  %48 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header.i.i, i32 0, i32 2
  %49 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %42, ptr %header.i.i, align 8
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %44, ptr %47, align 8
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %40, ptr %48, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %49, align 2
  %call.i.i = call i32 @csum_partial(ptr noundef nonnull %header.i.i, i32 noundef 16, i32 noundef %neg.i) #12
  %54 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #16, !srcloc !163
  %neg.i.i.i = xor i32 %54, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i.i) #12
  %or103 = call i32 @llvm.fshl.i32(i32 %conv106, i32 %neg.i.i.i, i32 16)
  br label %if.end110

if.else104:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  %shl107 = shl nuw i32 %conv106, 16
  %or109 = or i32 %shl107, 257
  br label %if.end110

if.end110:                                        ; preds = %if.else104, %if.then99
  %storemerge = phi i32 [ %or103, %if.then99 ], [ %or109, %if.else104 ]
  %55 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %storemerge, ptr %add.ptr93, align 1
  %add.ptr111 = getelementptr i32, ptr %ptr.addr.1, i32 4
  br label %if.end369

if.else113:                                       ; preds = %if.end
  %and116 = and i32 %conv5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else213, label %if.then118

if.then118:                                       ; preds = %if.else113
  %and122 = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else125, label %if.then118.if.end148_crit_edge

if.then118.if.end148_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.else125:                                       ; preds = %if.then118
  %and128 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.else131, label %if.else125.if.end148_crit_edge

if.else125.if.end148_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.else131:                                       ; preds = %if.else125
  %56 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %data_len132 = getelementptr inbounds %struct.anon.191, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %data_len132 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data_len132, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool133.not = icmp eq i16 %58, 0
  br i1 %tobool133.not, label %if.else131.if.end148_crit_edge, label %if.then134

if.else131.if.end148_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then134:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #14
  %csum_reqd135 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %59 = ptrtoint ptr %csum_reqd135 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load136 = load i8, ptr %csum_reqd135, align 1
  %60 = and i8 %bf.load136, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool139.not = icmp eq i8 %60, 0
  %phi.bo702 = select i1 %tobool139.not, i32 504758528, i32 504889600
  br label %if.end148

if.end148:                                        ; preds = %if.then134, %if.else131.if.end148_crit_edge, %if.else125.if.end148_crit_edge, %if.then118.if.end148_crit_edge
  %len119.0 = phi i32 [ 503578880, %if.then118.if.end148_crit_edge ], [ 504103168, %if.else125.if.end148_crit_edge ], [ %phi.bo702, %if.then134 ], [ 504627456, %if.else131.if.end148_crit_edge ]
  %csum_reqd149 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %61 = ptrtoint ptr %csum_reqd149 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load150 = load i8, ptr %csum_reqd149, align 1
  %62 = and i8 %bf.load150, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool153.not = icmp eq i8 %62, 0
  %spec.select647 = select i1 %tobool153.not, i8 1, i8 -127
  %63 = shl i8 %bf.load150, 4
  %64 = and i8 %63, 32
  %65 = or i8 %spec.select647, %64
  %66 = xor i8 %65, 32
  %conv7.i653 = zext i8 %66 to i32
  %or8.i655 = or i32 %len119.0, %conv7.i653
  %incdec.ptr169 = getelementptr i32, ptr %ptr.addr.0, i32 1
  %67 = ptrtoint ptr %ptr.addr.0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or8.i655, ptr %ptr.addr.0, align 4
  %68 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %opts, align 8
  %70 = and i16 %69, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool173.not = icmp eq i16 %70, 0
  br i1 %tobool173.not, label %if.end148.mp_capable_done_crit_edge, label %if.end175

if.end148.mp_capable_done_crit_edge:              ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %mp_capable_done

if.end175:                                        ; preds = %if.end148
  %71 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %71, align 8
  %74 = ptrtoint ptr %incdec.ptr169 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %73, ptr %incdec.ptr169, align 1
  %add.ptr176 = getelementptr i32, ptr %ptr.addr.0, i32 3
  %75 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %opts, align 8
  %77 = and i16 %76, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool180.not = icmp eq i16 %77, 0
  br i1 %tobool180.not, label %if.end175.mp_capable_done_crit_edge, label %if.end182

if.end175.mp_capable_done_crit_edge:              ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  br label %mp_capable_done

if.end182:                                        ; preds = %if.end175
  %rcvr_key = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %rcvr_key to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rcvr_key, align 8
  %80 = ptrtoint ptr %add.ptr176 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %79, ptr %add.ptr176, align 1
  %add.ptr183 = getelementptr i32, ptr %ptr.addr.0, i32 5
  %data_len184 = getelementptr inbounds %struct.anon.191, ptr %71, i32 0, i32 4
  %81 = ptrtoint ptr %data_len184 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %data_len184, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool185.not = icmp eq i16 %82, 0
  br i1 %tobool185.not, label %if.end182.mp_capable_done_crit_edge, label %if.end187

if.end182.mp_capable_done_crit_edge:              ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  br label %mp_capable_done

if.end187:                                        ; preds = %if.end182
  %83 = ptrtoint ptr %csum_reqd149 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load189 = load i8, ptr %csum_reqd149, align 1
  %84 = and i8 %bf.load189, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool192.not = icmp eq i8 %84, 0
  %conv206 = zext i16 %82 to i32
  br i1 %tobool192.not, label %if.else204, label %if.then193

if.then193:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #14
  %data_seq197 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 2
  %85 = ptrtoint ptr %data_seq197 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %data_seq197, align 8
  %subflow_seq198 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %87 = ptrtoint ptr %subflow_seq198 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %subflow_seq198, align 8
  %csum = getelementptr inbounds %struct.anon.191, ptr %71, i32 0, i32 5
  %89 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %csum, align 2
  %conv.i = zext i16 %90 to i32
  %neg = xor i32 %conv.i, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header.i) #12
  %91 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header.i, i32 0, i32 1
  %92 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header.i, i32 0, i32 2
  %93 = getelementptr inbounds %struct.csum_pseudo_header, ptr %header.i, i32 0, i32 3
  %94 = ptrtoint ptr %header.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %86, ptr %header.i, align 8
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %88, ptr %91, align 8
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %82, ptr %92, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %93, align 2
  %call.i = call i32 @csum_partial(ptr noundef nonnull %header.i, i32 noundef 16, i32 noundef %neg) #12
  %98 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #16, !srcloc !163
  %neg.i.i = xor i32 %98, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i) #12
  %or203 = call i32 @llvm.fshl.i32(i32 %conv206, i32 %neg.i.i, i32 16)
  br label %if.end210

if.else204:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #14
  %shl207 = shl nuw i32 %conv206, 16
  %or209 = or i32 %shl207, 257
  br label %if.end210

if.end210:                                        ; preds = %if.else204, %if.then193
  %storemerge695 = phi i32 [ %or203, %if.then193 ], [ %or209, %if.else204 ]
  %99 = ptrtoint ptr %add.ptr183 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %storemerge695, ptr %add.ptr183, align 1
  %add.ptr211 = getelementptr i32, ptr %ptr.addr.0, i32 6
  br label %mp_capable_done

if.else213:                                       ; preds = %if.else113
  %and216 = and i32 %conv5, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.else247, label %if.then218

if.then218:                                       ; preds = %if.else213
  %and221 = and i32 %conv5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.else228, label %if.then223

if.then223:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #14
  %backup = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 3
  %100 = ptrtoint ptr %backup to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %backup, align 4
  %join_id = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 2
  %102 = ptrtoint ptr %join_id to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %join_id, align 1
  %104 = and i8 %101, 15
  %and.i = zext i8 %104 to i32
  %shl5.i = shl nuw nsw i32 %and.i, 8
  %conv7.i658 = zext i8 %103 to i32
  %or3.i657 = or i32 %shl5.i, %conv7.i658
  %or8.i660 = or i32 %or3.i657, 504107008
  %incdec.ptr225 = getelementptr i32, ptr %ptr.addr.0, i32 1
  %105 = ptrtoint ptr %ptr.addr.0 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or8.i660, ptr %ptr.addr.0, align 4
  %106 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %token = getelementptr inbounds %struct.anon.195, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %token, align 4
  %109 = ptrtoint ptr %incdec.ptr225 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %incdec.ptr225, align 1
  %add.ptr226 = getelementptr i32, ptr %ptr.addr.0, i32 2
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %106, align 8
  %112 = ptrtoint ptr %add.ptr226 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %111, ptr %add.ptr226, align 1
  %add.ptr227 = getelementptr i32, ptr %ptr.addr.0, i32 3
  br label %if.end369

if.else228:                                       ; preds = %if.then218
  %and231 = and i32 %conv5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.else241, label %if.then233

if.then233:                                       ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #14
  %backup234 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 3
  %113 = ptrtoint ptr %backup234 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %backup234, align 4
  %join_id235 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 2
  %115 = ptrtoint ptr %join_id235 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %join_id235, align 1
  %117 = and i8 %114, 15
  %and.i661 = zext i8 %117 to i32
  %shl5.i662 = shl nuw nsw i32 %and.i661, 8
  %conv7.i664 = zext i8 %116 to i32
  %or3.i663 = or i32 %shl5.i662, %conv7.i664
  %or8.i666 = or i32 %or3.i663, 504369152
  %incdec.ptr237 = getelementptr i32, ptr %ptr.addr.0, i32 1
  %118 = ptrtoint ptr %ptr.addr.0 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or8.i666, ptr %ptr.addr.0, align 4
  %119 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %thmac = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %thmac to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %thmac, align 8
  %122 = ptrtoint ptr %incdec.ptr237 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 8)
  store i64 %121, ptr %incdec.ptr237, align 1
  %add.ptr238 = getelementptr i32, ptr %ptr.addr.0, i32 3
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %119, align 8
  %125 = ptrtoint ptr %add.ptr238 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %add.ptr238, align 1
  %add.ptr240 = getelementptr i32, ptr %ptr.addr.0, i32 4
  br label %if.end369

if.else241:                                       ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr243 = getelementptr i32, ptr %ptr.addr.0, i32 1
  %126 = ptrtoint ptr %ptr.addr.0 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 504893440, ptr %ptr.addr.0, align 4
  %hmac = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 2
  %127 = call ptr @memcpy(ptr %incdec.ptr243, ptr %hmac, i32 20)
  %add.ptr244 = getelementptr i32, ptr %ptr.addr.0, i32 6
  br label %if.end369

if.else247:                                       ; preds = %if.else213
  %and250 = and i32 %conv5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.else323, label %if.then252

if.then252:                                       ; preds = %if.else247
  %128 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5
  %family = getelementptr inbounds %struct.mptcp_addr_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %130)
  %cmp = icmp eq i16 %130, 10
  %spec.select648 = select i1 %cmp, i8 20, i8 8
  %port = getelementptr inbounds %struct.mptcp_addr_info, ptr %128, i32 0, i32 2
  %131 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool259.not = icmp eq i16 %132, 0
  %133 = or i8 %spec.select648, 2
  %len253.1 = select i1 %tobool259.not, i8 %spec.select648, i8 %133
  %ahmac = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 5
  %134 = ptrtoint ptr %ahmac to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %ahmac, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %135)
  %tobool265.not = icmp eq i64 %135, 0
  %add268 = add nuw nsw i8 %len253.1, 8
  %len253.2 = select i1 %tobool265.not, i8 %len253.1, i8 %add268
  %136 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %128, align 8
  %conv.i667 = zext i8 %len253.2 to i32
  %shl.i668 = shl nuw nsw i32 %conv.i667, 16
  %shl5.i671 = select i1 %tobool265.not, i32 256, i32 0
  %or.i669 = or i32 %shl.i668, %shl5.i671
  %conv7.i673 = zext i8 %137 to i32
  %or3.i672 = or i32 %or.i669, %conv7.i673
  %or8.i675 = or i32 %or3.i672, 503328768
  %incdec.ptr273 = getelementptr i32, ptr %ptr.addr.0, i32 1
  %138 = ptrtoint ptr %ptr.addr.0 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or8.i675, ptr %ptr.addr.0, align 4
  %139 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %family, align 2
  %141 = zext i16 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %140, label %if.then252.if.end293_crit_edge [
    i16 2, label %if.then279
    i16 10, label %if.then288
  ]

if.then252.if.end293_crit_edge:                   ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end293

if.then279:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #14
  %142 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 8
  %145 = ptrtoint ptr %incdec.ptr273 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %144, ptr %incdec.ptr273, align 1
  %add.ptr281 = getelementptr i32, ptr %ptr.addr.0, i32 2
  br label %if.end293

if.then288:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #14
  %146 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %147 = call ptr @memcpy(ptr %incdec.ptr273, ptr %146, i32 16)
  %add.ptr291 = getelementptr i32, ptr %ptr.addr.0, i32 5
  br label %if.end293

if.end293:                                        ; preds = %if.then288, %if.then279, %if.then252.if.end293_crit_edge
  %ptr.addr.4 = phi ptr [ %add.ptr281, %if.then279 ], [ %add.ptr291, %if.then288 ], [ %incdec.ptr273, %if.then252.if.end293_crit_edge ]
  %148 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool296.not = icmp eq i16 %149, 0
  %150 = ptrtoint ptr %ahmac to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %ahmac, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %151)
  %tobool299.not = icmp eq i64 %151, 0
  br i1 %tobool296.not, label %if.then297, label %if.else304

if.then297:                                       ; preds = %if.end293
  br i1 %tobool299.not, label %if.then297.if.end369_crit_edge, label %if.then300

if.then297.if.end369_crit_edge:                   ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end369

if.then300:                                       ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #14
  %152 = ptrtoint ptr %ptr.addr.4 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 %151, ptr %ptr.addr.4, align 1
  %add.ptr302 = getelementptr i32, ptr %ptr.addr.4, i32 2
  br label %if.end369

if.else304:                                       ; preds = %if.end293
  br i1 %tobool299.not, label %if.else315, label %if.then310

if.then310:                                       ; preds = %if.else304
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %ptr.addr.4 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %149, ptr %ptr.addr.4, align 1
  %add.ptr311 = getelementptr i8, ptr %ptr.addr.4, i32 2
  %154 = ptrtoint ptr %ahmac to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %ahmac, align 8
  %156 = ptrtoint ptr %add.ptr311 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 8)
  store i64 %155, ptr %add.ptr311, align 1
  %add.ptr313 = getelementptr i8, ptr %ptr.addr.4, i32 10
  %157 = ptrtoint ptr %add.ptr313 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 2)
  store i16 257, ptr %add.ptr313, align 1
  %add.ptr314 = getelementptr i32, ptr %ptr.addr.4, i32 3
  br label %if.end369

if.else315:                                       ; preds = %if.else304
  call void @__sanitizer_cov_trace_pc() #14
  %conv316 = zext i16 %149 to i32
  %shl317 = shl nuw i32 %conv316, 16
  %or319 = or i32 %shl317, 257
  %158 = ptrtoint ptr %ptr.addr.4 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %or319, ptr %ptr.addr.4, align 1
  %add.ptr320 = getelementptr i32, ptr %ptr.addr.4, i32 1
  br label %if.end369

if.else323:                                       ; preds = %if.else247
  %and326 = and i32 %conv5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326)
  %tobool327.not = icmp eq i32 %and326, 0
  br i1 %tobool327.not, label %if.else345, label %if.then334, !prof !154

if.then334:                                       ; preds = %if.else323
  %incdec.ptr336 = getelementptr i32, ptr %ptr.addr.0, i32 1
  %159 = ptrtoint ptr %ptr.addr.0 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 504131584, ptr %ptr.addr.0, align 4
  %rcvr_key337 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 5, i32 0, i32 0, i32 1
  %160 = ptrtoint ptr %rcvr_key337 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %rcvr_key337, align 8
  %162 = ptrtoint ptr %incdec.ptr336 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 8)
  store i64 %161, ptr %incdec.ptr336, align 1
  %add.ptr338 = getelementptr i32, ptr %ptr.addr.0, i32 3
  %163 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %opts, align 8
  %165 = and i16 %164, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool342.not = icmp eq i16 %165, 0
  br i1 %tobool342.not, label %if.then334.if.end472_crit_edge, label %if.then334.mp_rst_crit_edge

if.then334.mp_rst_crit_edge:                      ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #14
  br label %mp_rst

if.then334.if.end472_crit_edge:                   ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end472

if.else345:                                       ; preds = %if.else323
  %and348 = and i32 %conv5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and348)
  %tobool349.not = icmp eq i32 %and348, 0
  br i1 %tobool349.not, label %if.else345.if.end369_crit_edge, label %if.else345.mp_rst_crit_edge, !prof !154

if.else345.mp_rst_crit_edge:                      ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #14
  br label %mp_rst

if.else345.if.end369_crit_edge:                   ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end369

mp_rst:                                           ; preds = %if.else345.mp_rst_crit_edge, %if.then334.mp_rst_crit_edge
  %ptr.addr.7 = phi ptr [ %add.ptr338, %if.then334.mp_rst_crit_edge ], [ %ptr.addr.0, %if.else345.mp_rst_crit_edge ]
  %reset_transient = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 4
  %166 = ptrtoint ptr %reset_transient to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load357 = load i8, ptr %reset_transient, align 1
  %bf.lshr358 = lshr i8 %bf.load357, 3
  %bf.clear359 = and i8 %bf.lshr358, 1
  %bf.lshr361 = lshr i8 %bf.load357, 4
  %and.i676 = zext i8 %bf.clear359 to i32
  %shl5.i677 = shl nuw nsw i32 %and.i676, 8
  %conv7.i679 = zext i8 %bf.lshr361 to i32
  %or3.i678 = or i32 %shl5.i677, %conv7.i679
  %or8.i681 = or i32 %or3.i678, 503611392
  %167 = ptrtoint ptr %ptr.addr.7 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or8.i681, ptr %ptr.addr.7, align 4
  br label %if.end472

if.end369:                                        ; preds = %if.else345.if.end369_crit_edge, %if.else315, %if.then310, %if.then300, %if.then297.if.end369_crit_edge, %if.else241, %if.then233, %if.then223, %if.end110, %if.end85.if.end369_crit_edge
  %ptr.addr.8 = phi ptr [ %add.ptr227, %if.then223 ], [ %add.ptr240, %if.then233 ], [ %add.ptr244, %if.else241 ], [ %ptr.addr.0, %if.else345.if.end369_crit_edge ], [ %add.ptr111, %if.end110 ], [ %ptr.addr.1, %if.end85.if.end369_crit_edge ], [ %add.ptr302, %if.then300 ], [ %ptr.addr.4, %if.then297.if.end369_crit_edge ], [ %add.ptr314, %if.then310 ], [ %add.ptr320, %if.else315 ]
  %168 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %opts, align 8
  %170 = and i16 %169, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %170)
  %tobool373.not = icmp eq i16 %170, 0
  br i1 %tobool373.not, label %if.end369.mp_capable_done_crit_edge, label %if.then374

if.end369.mp_capable_done_crit_edge:              ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #14
  br label %mp_capable_done

if.then374:                                       ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #14
  %icsk_ulp_data.i682 = getelementptr inbounds %struct.inet_connection_sock, ptr %tp, i32 0, i32 13
  %171 = ptrtoint ptr %icsk_ulp_data.i682 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %icsk_ulp_data.i682, align 8
  %send_mp_prio = getelementptr inbounds %struct.mptcp_subflow_context, ptr %172, i32 0, i32 1, i32 0, i32 13
  %173 = ptrtoint ptr %send_mp_prio to i32
  call void @__asan_load4_noabort(i32 %173)
  %bf.load378 = load i32, ptr %send_mp_prio, align 8
  %bf.clear379 = and i32 %bf.load378, -262145
  store i32 %bf.clear379, ptr %send_mp_prio, align 8
  %backup381 = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 3
  %174 = ptrtoint ptr %backup381 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %backup381, align 4
  %176 = and i8 %175, 15
  %and.i683 = zext i8 %176 to i32
  %shl5.i684 = shl nuw nsw i32 %and.i683, 8
  %or8.i687 = or i32 %shl5.i684, 503533569
  %incdec.ptr383 = getelementptr i32, ptr %ptr.addr.8, i32 1
  %177 = ptrtoint ptr %ptr.addr.8 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %or8.i687, ptr %ptr.addr.8, align 4
  br label %mp_capable_done

mp_capable_done:                                  ; preds = %if.then374, %if.end369.mp_capable_done_crit_edge, %if.end210, %if.end182.mp_capable_done_crit_edge, %if.end175.mp_capable_done_crit_edge, %if.end148.mp_capable_done_crit_edge
  %ptr.addr.9 = phi ptr [ %incdec.ptr383, %if.then374 ], [ %ptr.addr.8, %if.end369.mp_capable_done_crit_edge ], [ %add.ptr211, %if.end210 ], [ %incdec.ptr169, %if.end148.mp_capable_done_crit_edge ], [ %add.ptr176, %if.end175.mp_capable_done_crit_edge ], [ %add.ptr183, %if.end182.mp_capable_done_crit_edge ]
  %178 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %opts, align 8
  %180 = and i16 %179, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %tobool388.not = icmp eq i16 %180, 0
  br i1 %tobool388.not, label %mp_capable_done.if.end469_crit_edge, label %if.then389

mp_capable_done.if.end469_crit_edge:              ; preds = %mp_capable_done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end469

if.then389:                                       ; preds = %mp_capable_done
  %rm_list = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 1
  %nr = getelementptr inbounds %struct.mptcp_out_options, ptr %opts, i32 0, i32 1, i32 1
  %181 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %nr, align 2
  %add391 = add i8 %182, 3
  %183 = ptrtoint ptr %rm_list to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %rm_list, align 2
  %conv.i688 = zext i8 %add391 to i32
  %shl.i689 = shl nuw nsw i32 %conv.i688, 16
  %conv7.i691 = zext i8 %184 to i32
  %or.i690 = or i32 %shl.i689, %conv7.i691
  %or8.i693 = or i32 %or.i690, 503332864
  %185 = ptrtoint ptr %ptr.addr.9 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or8.i693, ptr %ptr.addr.9, align 4
  %186 = load i8, ptr %nr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %186)
  %cmp400698 = icmp ugt i8 %186, 1
  br i1 %cmp400698, label %while.body.preheader, label %if.then389.if.end469_crit_edge

if.then389.if.end469_crit_edge:                   ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end469

while.body.preheader:                             ; preds = %if.then389
  %conv399697 = zext i8 %186 to i32
  br label %while.body

while.body:                                       ; preds = %cond.end452.while.body_crit_edge, %while.body.preheader
  %conv399701 = phi i32 [ %conv399, %cond.end452.while.body_crit_edge ], [ %conv399697, %while.body.preheader ]
  %conv396700 = phi i32 [ %conv396, %cond.end452.while.body_crit_edge ], [ 1, %while.body.preheader ]
  %ptr.addr.10699.pn = phi ptr [ %ptr.addr.10699, %cond.end452.while.body_crit_edge ], [ %ptr.addr.9, %while.body.preheader ]
  %ptr.addr.10699 = getelementptr i32, ptr %ptr.addr.10699.pn, i32 1
  %arrayidx404 = getelementptr [8 x i8], ptr %rm_list, i32 0, i32 %conv396700
  %187 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx404, align 1
  %add406 = add nuw nsw i32 %conv396700, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add406, i32 %conv399701)
  %cmp410 = icmp ult i32 %add406, %conv399701
  br i1 %cmp410, label %cond.true, label %while.body.cond.end_crit_edge

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx416 = getelementptr [8 x i8], ptr %rm_list, i32 0, i32 %add406
  %189 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx416, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.body.cond.end_crit_edge
  %cond = phi i8 [ %190, %cond.true ], [ 1, %while.body.cond.end_crit_edge ]
  %add420 = add nuw nsw i32 %conv396700, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add420, i32 %conv399701)
  %cmp424 = icmp ult i32 %add420, %conv399701
  br i1 %cmp424, label %cond.true426, label %cond.end.cond.end434_crit_edge

cond.end.cond.end434_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end434

cond.true426:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx431 = getelementptr [8 x i8], ptr %rm_list, i32 0, i32 %add420
  %191 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx431, align 1
  br label %cond.end434

cond.end434:                                      ; preds = %cond.true426, %cond.end.cond.end434_crit_edge
  %cond435 = phi i8 [ %192, %cond.true426 ], [ 1, %cond.end.cond.end434_crit_edge ]
  %add438 = add nuw nsw i32 %conv396700, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add438, i32 %conv399701)
  %cmp442 = icmp ult i32 %add438, %conv399701
  br i1 %cmp442, label %cond.true444, label %cond.end434.cond.end452_crit_edge

cond.end434.cond.end452_crit_edge:                ; preds = %cond.end434
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end452

cond.true444:                                     ; preds = %cond.end434
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx449 = getelementptr [8 x i8], ptr %rm_list, i32 0, i32 %add438
  %193 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx449, align 1
  br label %cond.end452

cond.end452:                                      ; preds = %cond.true444, %cond.end434.cond.end452_crit_edge
  %cond453 = phi i8 [ %194, %cond.true444 ], [ 1, %cond.end434.cond.end452_crit_edge ]
  %conv455 = zext i8 %188 to i32
  %shl456 = shl nuw i32 %conv455, 24
  %conv457 = zext i8 %cond to i32
  %shl458 = shl nuw nsw i32 %conv457, 16
  %or459 = or i32 %shl458, %shl456
  %conv460 = zext i8 %cond435 to i32
  %shl461 = shl nuw nsw i32 %conv460, 8
  %or462 = or i32 %shl461, %or459
  %conv463 = zext i8 %cond453 to i32
  %or464 = or i32 %or462, %conv463
  %195 = ptrtoint ptr %ptr.addr.10699 to i32
  call void @__asan_storeN_noabort(i32 %195, i32 4)
  store i32 %or464, ptr %ptr.addr.10699, align 1
  %add467 = add nuw nsw i32 %conv396700, 4
  %conv396 = and i32 %add467, 255
  %196 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %nr, align 2
  %conv399 = zext i8 %197 to i32
  %cmp400 = icmp ult i32 %conv396, %conv399
  br i1 %cmp400, label %cond.end452.while.body_crit_edge, label %cond.end452.if.end469_crit_edge

cond.end452.if.end469_crit_edge:                  ; preds = %cond.end452
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end469

cond.end452.while.body_crit_edge:                 ; preds = %cond.end452
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end469:                                        ; preds = %cond.end452.if.end469_crit_edge, %if.then389.if.end469_crit_edge, %mp_capable_done.if.end469_crit_edge
  %tobool470.not = icmp eq ptr %tp, null
  br i1 %tobool470.not, label %if.end469.if.end472_crit_edge, label %if.then471

if.end469.if.end472_crit_edge:                    ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end472

if.then471:                                       ; preds = %if.end469
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %tp, i32 0, i32 13
  %198 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %conn.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %199, i32 0, i32 6
  %200 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %conn.i, align 4
  %ack_seq2.i = getelementptr inbounds %struct.mptcp_sock, ptr %201, i32 0, i32 5
  %202 = ptrtoint ptr %ack_seq2.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load volatile i64, ptr %ack_seq2.i, align 8
  %rcv_wnd.i = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 79
  %204 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %rcv_wnd.i, align 8
  %conv.i694 = zext i32 %205 to i64
  %add.i = add i64 %203, %conv.i694
  %rcv_wnd_sent.i = getelementptr inbounds %struct.mptcp_sock, ptr %201, i32 0, i32 6
  %206 = ptrtoint ptr %rcv_wnd_sent.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load volatile i64, ptr %rcv_wnd_sent.i, align 8
  %sub.i.i = sub i64 %207, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body12.i, label %if.then471.if.end472_crit_edge

if.then471.if.end472_crit_edge:                   ; preds = %if.then471
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end472

do.body12.i:                                      ; preds = %if.then471
  call void @__sanitizer_cov_trace_pc() #14
  %208 = ptrtoint ptr %rcv_wnd_sent.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store volatile i64 %add.i, ptr %rcv_wnd_sent.i, align 8
  br label %if.end472

if.end472:                                        ; preds = %do.body12.i, %if.then471.if.end472_crit_edge, %if.end469.if.end472_crit_edge, %mp_rst, %if.then334.if.end472_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mptcp_get_reset_option(ptr nocapture noundef readonly %skb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.cleanup_crit_edge, label %mptcp_get_ext.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mptcp_get_ext.exit:                               ; preds = %entry
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %mptcp_get_ext.exit.cleanup_crit_edge, label %if.then

mptcp_get_ext.exit.cleanup_crit_edge:             ; preds = %mptcp_get_ext.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %mptcp_get_ext.exit
  call void @__sanitizer_cov_trace_pc() #14
  %reset_transient = getelementptr inbounds %struct.mptcp_ext, ptr %add.ptr.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %reset_transient to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %reset_transient, align 8
  %8 = and i16 %bf.load, 256
  %9 = lshr i16 %bf.load, 4
  %10 = and i16 %9, 15
  %or3.i12 = or i16 %10, %8
  %or3.i = zext i16 %or3.i12 to i32
  %or8.i = or i32 %or3.i, 503611392
  br label %cleanup

cleanup:                                          ; preds = %if.then, %mptcp_get_ext.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or8.i, %if.then ], [ 0, %mptcp_get_ext.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sock_owned_by_user(ptr noundef %sk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.sock_owned_by_me.exit_crit_edge

entry.sock_owned_by_me.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_me.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_me.exit

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i.sock_owned_by_me.exit_crit_edge, label %land.rhs3.i

land.rhs.i.sock_owned_by_me.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_me.exit

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.sock_owned_by_me.exit_crit_edge, label %if.then.i, !prof !154

land.rhs3.i.sock_owned_by_me.exit_crit_edge:      ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_me.exit

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 1750, i32 noundef 9, ptr noundef null) #12
  br label %sock_owned_by_me.exit

sock_owned_by_me.exit:                            ; preds = %if.then.i, %land.rhs3.i.sock_owned_by_me.exit_crit_edge, %land.rhs.i.sock_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge, %entry.sock_owned_by_me.exit_crit_edge
  %owned = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %owned to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_subflow_delegate(ptr noundef %subflow) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end62_crit_edge, label %land.lhs.true

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %5 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !165
  %14 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i.i.i6 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i6 to ptr
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i7, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %21, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.rhs.land.rhs31_crit_edge, label %lor.lhs.false

land.rhs.land.rhs31_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs31

lor.lhs.false:                                    ; preds = %land.rhs
  %22 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i.i8 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i8 to ptr
  %preempt_count.i9 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i9, align 4
  %and24 = and i32 %25, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.rhs, label %lor.lhs.false.land.rhs31_crit_edge

lor.lhs.false.land.rhs31_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs31

lor.rhs:                                          ; preds = %lor.lhs.false
  %26 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i.i10 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i10 to ptr
  %preempt_count.i11 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i11, align 4
  %and27 = and i32 %29, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %lor.rhs.if.end62_crit_edge, label %lor.rhs.land.rhs31_crit_edge

lor.rhs.land.rhs31_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs31

lor.rhs.if.end62_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.rhs31:                                       ; preds = %lor.rhs.land.rhs31_crit_edge, %lor.lhs.false.land.rhs31_crit_edge, %land.rhs.land.rhs31_crit_edge
  %.b1 = load i1, ptr @mptcp_subflow_delegate.__already_done, align 1
  br i1 %.b1, label %land.rhs31.if.end62_crit_edge, label %if.then, !prof !154

land.rhs31.if.end62_crit_edge:                    ; preds = %land.rhs31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then:                                          ; preds = %land.rhs31
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mptcp_subflow_delegate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 523, i32 noundef 9, ptr noundef null) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then, %land.rhs31.if.end62_crit_edge, %lor.rhs.if.end62_crit_edge, %land.lhs.true.if.end62_crit_edge, %entry.if.end62_crit_edge
  %delegated_status = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 1, i32 0, i32 24
  %call72 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %delegated_status) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then74:                                        ; preds = %if.end62
  %delegated_node = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 2
  %30 = ptrtoint ptr %delegated_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %delegated_node, align 4
  %cmp.i.not = icmp eq ptr %31, %delegated_node
  br i1 %cmp.i.not, label %do.body79, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body79:                                        ; preds = %if.then74
  %32 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i12 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i12 to ptr
  %cpu87 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu87 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu87, align 4
  %arrayidx88 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %37, ptrtoint (ptr @mptcp_delegated_actions to i32)
  %38 = inttoptr i32 %add89 to ptr
  %head = getelementptr inbounds %struct.mptcp_delegated_action, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %head, align 4
  %cmp.i13.not = icmp eq ptr %40, %head
  %prev.i = getelementptr inbounds %struct.mptcp_delegated_action, ptr %38, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %delegated_node, ptr noundef %42, ptr noundef %head) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body79.list_add_tail.exit_crit_edge

do.body79.list_add_tail.exit_crit_edge:           ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %delegated_node, ptr %prev.i, align 4
  %44 = ptrtoint ptr %delegated_node to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head, ptr %delegated_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %delegated_node, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body79.list_add_tail.exit_crit_edge
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 5
  %47 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tcp_sock.i, align 8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %48, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #12
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #12, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !158

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %50 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !154

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  br i1 %cmp.i13.not, label %if.then97, label %sock_hold.exit.cleanup_crit_edge

sock_hold.exit.cleanup_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then97:                                        ; preds = %sock_hold.exit
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %38) #12
  br i1 %call.i, label %if.then.i, label %if.then97.cleanup_crit_edge

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule(ptr noundef %38) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then97.cleanup_crit_edge, %sock_hold.exit.cleanup_crit_edge, %if.then74.cleanup_crit_edge, %if.end62.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_pm_add_addr_signal(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @add_addr_generate_hmac(i64 noundef %key1, i64 noundef %key2, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  %hmac = alloca [32 x i8], align 1
  %msg = alloca [19 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hmac) #12
  %2 = call ptr @memset(ptr %hmac, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %msg) #12
  %3 = getelementptr inbounds [19 x i8], ptr %msg, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %msg, i32 1
  %5 = call ptr @memset(ptr %4, i32 255, i32 18)
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr, align 4
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %msg, align 1
  %family = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 1
  %9 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %family, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %10, label %entry.if.end11_crit_edge [
    i16 2, label %if.then
    i16 10, label %if.then8
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %3, align 1
  br label %if.end11

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %16 = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %3, ptr %16, i32 16)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then, %entry.if.end11_crit_edge
  %i.0 = phi i32 [ 5, %if.then ], [ 17, %if.then8 ], [ 1, %entry.if.end11_crit_edge ]
  %18 = getelementptr inbounds [32 x i8], ptr %hmac, i32 0, i32 24
  %19 = lshr i16 %1, 8
  %conv13 = trunc i16 %19 to i8
  %inc14 = add nuw nsw i32 %i.0, 1
  %arrayidx15 = getelementptr [19 x i8], ptr %msg, i32 0, i32 %i.0
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %arrayidx15, align 1
  %conv17 = trunc i16 %1 to i8
  %inc18 = or i32 %i.0, 2
  %arrayidx19 = getelementptr [19 x i8], ptr %msg, i32 0, i32 %inc14
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17, ptr %arrayidx19, align 1
  call void @mptcp_crypto_hmac_sha(i64 noundef %key1, i64 noundef %key2, ptr noundef nonnull %msg, i32 noundef %inc18, ptr noundef nonnull %hmac) #12
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %18, align 1
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %msg) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac) #12
  ret i64 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_crypto_hmac_sha(i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_pm_rm_addr_signal(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mptcp_do_fallback(ptr noundef %msk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mptcp_do_fallback.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mptcp_do_fallback, %if.then5)) #12
          to label %return [label %if.then5], !srcloc !153

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__mptcp_do_fallback.__UNIQUE_ID_ddebug613, ptr noundef nonnull @.str.67, ptr noundef %msk) #12
  br label %return

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #12
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %do.body
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_subflow_fully_established(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_subflow_established(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_fully_established(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_subflow_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stop_timer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ack_update_msk(i64 noundef %data_ack, i64 noundef %old_snd_una, i64 noundef %new_snd_una, i64 noundef %new_wnd_end, i64 noundef %msk_wnd_end) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ack_update_msk, i32 0, i32 1), ptr blockaddress(@trace_ack_update_msk, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !153

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !143) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !166
  %call42 = tail call i32 @__traceiter_ack_update_msk(ptr noundef null, i64 noundef %data_ack, i64 noundef %old_snd_una, i64 noundef %new_snd_una, i64 noundef %new_wnd_end, i64 noundef %msk_wnd_end) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !167
  %13 = tail call i32 @llvm.read_register.i32(metadata !143) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !143) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !143) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ack_update_msk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ack_update_msk, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ack_update_msk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ack_update_msk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.71, i32 noundef 152, ptr noundef nonnull @.str.72) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %31 = tail call i32 @llvm.read_register.i32(metadata !143) #12
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
declare dso_local i32 @__traceiter_ack_update_msk(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mptcp/options.c", i32 412, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mptcp_syn_options.__UNIQUE_ID_ddebug635, !1, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../net/mptcp/options.c", i32 862, i32 6}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/mptcp/options.c", i32 897, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mptcp_synack_options.__UNIQUE_ID_ddebug651, !10, !"__UNIQUE_ID_ddebug651", i1 false, i1 false}
!13 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/mptcp/options.c", i32 906, i32 3}
!16 = !{ptr @mptcp_synack_options.__UNIQUE_ID_ddebug652, !15, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ksymtab_mptcp_get_reset_option, !19, !"__ksymtab_mptcp_get_reset_option", i1 false, i1 false}
!19 = !{!"../net/mptcp/options.c", i32 1543, i32 1}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/mptcp/options.c", i32 114, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug623, !21, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!24 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/mptcp/options.c", i32 128, i32 4}
!27 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug624, !26, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!28 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/mptcp/options.c", i32 138, i32 4}
!31 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug625, !30, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!32 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/mptcp/options.c", i32 144, i32 4}
!35 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug626, !34, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!36 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/mptcp/options.c", i32 151, i32 3}
!39 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug627, !38, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!40 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/mptcp/options.c", i32 166, i32 3}
!43 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug628, !42, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!44 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/mptcp/options.c", i32 204, i32 4}
!47 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug629, !46, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!48 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/mptcp/options.c", i32 228, i32 4}
!51 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug630, !50, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!52 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/mptcp/options.c", i32 290, i32 3}
!55 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug631, !54, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!56 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/mptcp/options.c", i32 306, i32 3}
!61 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug632, !60, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!62 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/mptcp/options.c", i32 315, i32 3}
!65 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug633, !64, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!66 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/mptcp/options.c", i32 348, i32 3}
!69 = !{ptr @mptcp_parse_option.__UNIQUE_ID_ddebug634, !68, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!70 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/mptcp/options.c", i32 789, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mptcp_established_options_fastclose.__UNIQUE_ID_ddebug649, !72, !"__UNIQUE_ID_ddebug649", i1 false, i1 false}
!75 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/mptcp/options.c", i32 810, i32 2}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mptcp_established_options_mp_fail.__UNIQUE_ID_ddebug650, !77, !"__UNIQUE_ID_ddebug650", i1 false, i1 false}
!80 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/mptcp/options.c", i32 496, i32 3}
!83 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mptcp_established_options_mp.__UNIQUE_ID_ddebug637, !82, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!85 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/mptcp/options.c", i32 505, i32 3}
!88 = !{ptr @mptcp_established_options_mp.__UNIQUE_ID_ddebug638, !87, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!89 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/net/sock.h", i32 1750, i32 2}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../net/mptcp/protocol.h", i32 523, i32 2}
!95 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/mptcp/options.c", i32 674, i32 3}
!98 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mptcp_established_options_add_addr.__UNIQUE_ID_ddebug645, !97, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!100 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/mptcp/options.c", i32 691, i32 2}
!103 = !{ptr @mptcp_established_options_add_addr.__UNIQUE_ID_ddebug646, !102, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!104 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/mptcp/options.c", i32 722, i32 3}
!107 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mptcp_established_options_rm_addr.__UNIQUE_ID_ddebug647, !106, !"__UNIQUE_ID_ddebug647", i1 false, i1 false}
!109 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/mptcp/options.c", i32 748, i32 2}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mptcp_established_options_mp_prio.__UNIQUE_ID_ddebug648, !111, !"__UNIQUE_ID_ddebug648", i1 false, i1 false}
!114 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/mptcp/options.c", i32 965, i32 3}
!117 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @check_fully_established.__UNIQUE_ID_ddebug655, !116, !"__UNIQUE_ID_ddebug655", i1 false, i1 false}
!119 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../net/mptcp/options.c", i32 974, i32 3}
!122 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @check_fully_established._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @check_fully_established._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/mptcp/protocol.h", i32 864, i32 3}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__mptcp_do_fallback.__UNIQUE_ID_ddebug613, !126, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!129 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/mptcp/options.c", i32 1086, i32 2}
!132 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @add_addr_hmac_valid.__UNIQUE_ID_ddebug664, !131, !"__UNIQUE_ID_ddebug664", i1 false, i1 false}
!134 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../include/trace/events/mptcp.h", i32 122, i32 1}
!137 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!139 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!142 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148733271, i64 2148733276, i64 2148733289, i64 2148733333, i64 2148733367, i64 2148733388}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i8 0, i8 2}
!156 = !{!"auto-init"}
!157 = !{!"branch_weights", i32 1, i32 4001}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{i64 2148252986, i64 2148253018, i64 2148253047, i64 2148253081, i64 2148253112, i64 2148253135}
!160 = !{i64 643937, i64 643998}
!161 = !{i64 646669}
!162 = !{i64 646954}
!163 = !{i64 6588322}
!164 = !{i64 2158802379}
!165 = !{i64 2158807313}
!166 = !{i64 2159002846}
!167 = !{i64 2159003165}
!168 = !{i64 2149792467}
!169 = !{i64 2149793503}
