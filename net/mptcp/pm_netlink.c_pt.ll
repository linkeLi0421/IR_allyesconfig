; ModuleID = '/llk/IR_all_yes/net/mptcp/pm_netlink.c_pt.bc'
source_filename = "../net/mptcp/pm_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mptcp_pm_get_add_addr_signal_max\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_pm_get_add_addr_signal_max\09\09\09\09"
module asm "\09.long\09__crc_mptcp_pm_get_add_addr_signal_max\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_pm_get_add_addr_signal_max:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_pm_get_add_addr_signal_max\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_pm_get_add_addr_signal_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mptcp_pm_get_add_addr_accept_max\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_pm_get_add_addr_accept_max\09\09\09\09"
module asm "\09.long\09__crc_mptcp_pm_get_add_addr_accept_max\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_pm_get_add_addr_accept_max:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_pm_get_add_addr_accept_max\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_pm_get_add_addr_accept_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mptcp_pm_get_subflows_max\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_pm_get_subflows_max\09\09\09\09"
module asm "\09.long\09__crc_mptcp_pm_get_subflows_max\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_pm_get_subflows_max:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_pm_get_subflows_max\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_pm_get_subflows_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mptcp_pm_get_local_addr_max\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_pm_get_local_addr_max\09\09\09\09"
module asm "\09.long\09__crc_mptcp_pm_get_local_addr_max\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_pm_get_local_addr_max:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_pm_get_local_addr_max\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_pm_get_local_addr_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.65 }
%union.anon.65 = type { i32 }
%struct.anon.66 = type { i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.157, [0 x i32], %union.anon.158, i16, i16, %union.anon.159, %struct.refcount_struct, [0 x i32], %union.anon.160 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { %struct.hlist_node }
%union.anon.159 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.160 = type { i32 }
%struct.pm_nl_pernet = type { %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.mptcp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i32, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, ptr, %struct.rb_root, %struct.sk_buff_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.mptcp_pm_data, %struct.anon.192, i32, [16 x i8] }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.189, %struct.anon.190, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.161, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.162, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.163, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.161 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
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
%struct.anon.189 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.190 = type { i32, i32, i32, i32 }
%struct.mptcp_pm_data = type { %struct.mptcp_addr_info, %struct.mptcp_addr_info, %struct.list_head, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32], %struct.mptcp_rm_list, %struct.mptcp_rm_list }
%struct.mptcp_addr_info = type { i8, i16, i16, %union.anon.191 }
%union.anon.191 = type { %struct.in6_addr }
%struct.mptcp_rm_list = type { [8 x i8], i8 }
%struct.anon.192 = type { i32, i32, i64, i64 }
%struct.mptcp_pm_add_entry = type { %struct.list_head, %struct.mptcp_addr_info, %struct.timer_list, ptr, i8 }
%struct.anon.2 = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.mptcp_subflow_context = type { %struct.list_head, %union.anon.199, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i24, i32, i32, i64, i32, i32, [20 x i8], i8, i8, i8, i8, i32 }
%struct.mptcp_pm_addr_entry = type { %struct.list_head, %struct.mptcp_addr_info, i8, i32, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.202, %struct.anon.203, %struct.anon.204, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.202 = type { i32, i32, i64 }
%struct.anon.203 = type { i32, i32, i64 }
%struct.anon.204 = type { i32, i32 }
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
%struct.__kernel_sockaddr_storage = type { %union.anon.208 }
%union.anon.208 = type { ptr, [124 x i8] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.171 }
%union.anon.171 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@pm_nl_pernet_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_mptcp_pm_get_add_addr_signal_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_pm_get_add_addr_signal_max = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_pm_get_add_addr_signal_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_pm_get_add_addr_signal_max to i32), ptr @__kstrtab_mptcp_pm_get_add_addr_signal_max, ptr @__kstrtabns_mptcp_pm_get_add_addr_signal_max }, section "___ksymtab_gpl+mptcp_pm_get_add_addr_signal_max", align 4
@__kstrtab_mptcp_pm_get_add_addr_accept_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_pm_get_add_addr_accept_max = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_pm_get_add_addr_accept_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_pm_get_add_addr_accept_max to i32), ptr @__kstrtab_mptcp_pm_get_add_addr_accept_max, ptr @__kstrtabns_mptcp_pm_get_add_addr_accept_max }, section "___ksymtab_gpl+mptcp_pm_get_add_addr_accept_max", align 4
@__kstrtab_mptcp_pm_get_subflows_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_pm_get_subflows_max = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_pm_get_subflows_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_pm_get_subflows_max to i32), ptr @__kstrtab_mptcp_pm_get_subflows_max, ptr @__kstrtabns_mptcp_pm_get_subflows_max }, section "___ksymtab_gpl+mptcp_pm_get_subflows_max", align 4
@__kstrtab_mptcp_pm_get_local_addr_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_pm_get_local_addr_max = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_pm_get_local_addr_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_pm_get_local_addr_max to i32), ptr @__kstrtab_mptcp_pm_get_local_addr_max, ptr @__kstrtabns_mptcp_pm_get_local_addr_max }, section "___ksymtab_gpl+mptcp_pm_get_local_addr_max", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/mptcp/pm_netlink.c\00", [41 x i8] zeroinitializer }, align 32
@mptcp_pm_free_anno_list.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mptcp\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mptcp_pm_free_anno_list\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msk=%p\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MPTCP: msk=%p\00", [18 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_addr_send_ack.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mptcp_pm_nl_addr_send_ack\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"send ack for %s\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MPTCP: send ack for %s\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rm_addr\00", [24 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_work.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mptcp_pm_nl_work\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msk=%p status=%x\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MPTCP: msk=%p status=%x\00", [40 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_get_local_id.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_pm_nl_get_local_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@mptcp_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"mptcp_pm\00\00\00\00\00\00\00\00", i32 1, i32 3, i32 0, i8 -128, i8 0, i8 7, i8 2, ptr @mptcp_pm_policy, ptr null, ptr null, ptr null, ptr @mptcp_pm_ops, ptr @mptcp_pm_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@mptcp_event_addr_announced.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_event.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_pm_pernet_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @pm_nl_init_net, ptr null, ptr null, ptr @pm_nl_exit_net, ptr @pm_nl_pernet_id, i32 112 }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to register MPTCP PM pernet subsystem.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to register MPTCP PM netlink family\0A\00", [52 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_rm_addr_or_subflow.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.21, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mptcp_pm_nl_rm_addr_or_subflow\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s rm_list_nr %d\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MPTCP: %s rm_list_nr %d\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"subflow\00", [24 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_rm_addr_or_subflow.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.25, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c" -> %s rm_list_ids[%d]=%u local_id=%u remote_id=%u\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"MPTCP:  -> %s rm_list_ids[%d]=%u local_id=%u remote_id=%u\00", [38 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mptcp_pm_nl_add_addr_received.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str, ptr @.str.29, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mptcp_pm_nl_add_addr_received\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"accepted %d:%d remote family %d\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MPTCP: accepted %d:%d remote family %d\00", [57 x i8] zeroinitializer }, align 32
@fill_local_addresses_vec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mptcp_pm_create_subflow_or_signal_addr.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.32, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mptcp_pm_create_subflow_or_signal_addr\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"local %d:%d signal %d:%d subflows %d:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MPTCP: local %d:%d signal %d:%d subflows %d:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@select_signal_address.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mptcp_pm_alloc_anno_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&add_entry->add_timer)\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mptcp_pm_add_timer.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str, ptr @.str.3, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptcp_pm_add_timer\00", [45 x i8] zeroinitializer }, align 32
@mptcp_pm_add_timer.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str, ptr @.str.36, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"retransmit ADD_ADDR id=%d\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MPTCP: retransmit ADD_ADDR id=%d\00", [63 x i8] zeroinitializer }, align 32
@select_local_address.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@genl_has_listeners.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_event_add_subflow.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_event_add_subflow.__already_done.42 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_event_put_token_and_ssk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_pm_ops = internal constant { [7 x %struct.genl_small_ops], [44 x i8] } { [7 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @mptcp_nl_cmd_add_addr, ptr null, i8 1, i8 0, i8 1, i8 0 }, %struct.genl_small_ops { ptr @mptcp_nl_cmd_del_addr, ptr null, i8 2, i8 0, i8 1, i8 0 }, %struct.genl_small_ops { ptr @mptcp_nl_cmd_flush_addrs, ptr null, i8 4, i8 0, i8 1, i8 0 }, %struct.genl_small_ops { ptr @mptcp_nl_cmd_get_addr, ptr @mptcp_nl_cmd_dump_addrs, i8 3, i8 0, i8 0, i8 0 }, %struct.genl_small_ops { ptr @mptcp_nl_cmd_set_limits, ptr null, i8 5, i8 0, i8 1, i8 0 }, %struct.genl_small_ops { ptr @mptcp_nl_cmd_get_limits, ptr null, i8 6, i8 0, i8 0, i8 0 }, %struct.genl_small_ops { ptr @mptcp_nl_cmd_set_flags, ptr null, i8 7, i8 0, i8 1, i8 0 }], [44 x i8] zeroinitializer }, align 32
@mptcp_pm_mcgrps = internal constant { [2 x %struct.genl_multicast_group], [62 x i8] } { [2 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"mptcp_pm_cmds\00\00\00", i8 0 }, %struct.genl_multicast_group { [16 x i8] c"mptcp_pm_events\00", i8 16 }], [62 x i8] zeroinitializer }, align 32
@mptcp_pm_policy = internal constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 7, { ptr } { ptr @mptcp_pm_addr_policy } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.65 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.65 zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@mptcp_pm_addr_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.66 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.66 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.65 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.65 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.65 zeroinitializer }, { i8, i8, i16, { %struct.anon.66 } } { i8 11, i8 1, i16 0, { %struct.anon.66 } { %struct.anon.66 { i16 16, i16 16 } } }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.65 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.65 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.65 zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@mptcp_nl_cmd_add_addr.__msg = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't allocate addr\00", [44 x i8] zeroinitializer }, align 32
@mptcp_nl_cmd_add_addr.__msg.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"create listen socket error\00", [37 x i8] zeroinitializer }, align 32
@mptcp_nl_cmd_add_addr.__msg.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"too many addresses or duplicate one\00", [60 x i8] zeroinitializer }, align 32
@mptcp_pm_parse_addr.__msg = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing address info\00", [43 x i8] zeroinitializer }, align 32
@mptcp_pm_parse_addr.__msg.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missing family\00", [17 x i8] zeroinitializer }, align 32
@mptcp_pm_parse_addr.__msg.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown address family\00", [41 x i8] zeroinitializer }, align 32
@mptcp_pm_parse_addr.__msg.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing address data\00", [43 x i8] zeroinitializer }, align 32
@mptcp_pm_parse_addr.__msg.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"flags must have signal when using port\00", [57 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_create_listen_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014MPTCP: kernel_bind error, err=%d\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mptcp_pm_nl_create_listen_socket\00", [63 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_create_listen_socket._entry_ptr = internal global ptr @mptcp_pm_nl_create_listen_socket._entry, section ".printk_index", align 4
@mptcp_pm_nl_create_listen_socket._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014MPTCP: kernel_listen error, err=%d\00", [59 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_create_listen_socket._entry_ptr.55 = internal global ptr @mptcp_pm_nl_create_listen_socket._entry.53, section ".printk_index", align 4
@mptcp_nl_cmd_del_addr.__msg = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"address not found\00", [46 x i8] zeroinitializer }, align 32
@mptcp_nl_remove_subflow_and_signal_addr.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str, ptr @.str.57, i8 1, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mptcp_nl_remove_subflow_and_signal_addr\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remove_id=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MPTCP: remove_id=%d\00", [44 x i8] zeroinitializer }, align 32
@mptcp_nl_cmd_get_addr.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not enough space in Netlink message\00", [60 x i8] zeroinitializer }, align 32
@mptcp_nl_cmd_get_addr.__msg.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"address not found\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@parse_limit.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"limit greater than maximum\00", [37 x i8] zeroinitializer }, align 32
@mptcp_nl_cmd_get_limits.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not enough space in Netlink message\00", [60 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_mp_prio_send_ack.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str, ptr @.str.62, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mptcp_pm_nl_mp_prio_send_ack\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bkup=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MPTCP: bkup=%d\00", [17 x i8] zeroinitializer }, align 32
@mptcp_pm_nl_mp_prio_send_ack.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str, ptr @.str.64, i8 0, i8 -68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"send ack for mp_prio\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MPTCP: send ack for mp_prio\00", [36 x i8] zeroinitializer }, align 32
@pm_nl_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pernet->lock\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 33, i64 35]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.72 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"pm_nl_pernet_id\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 23, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 272, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 401, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 723, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 848, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1020, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"mptcp_pm_pernet_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 2172, i32 33 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 2182, i32 9 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 2185, i32 9 }
@___asan_gen_.139 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 45, i32 7 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1750, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 772, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 800, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 669, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 540, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 388, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 309, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 328, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 695, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 723, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 437, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"mptcp_pm_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 2088, i32 36 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"mptcp_pm_mcgrps\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1063, i32 42 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"mptcp_pm_policy\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1082, i32 32 }
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"mptcp_pm_addr_policy\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1071, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1255, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1263, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1270, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1143, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1158, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1169, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1175, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1202, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 978, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 984, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1437, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1343, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1607, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1615, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 991, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1689, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1749, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 737, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 754, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private constant [26 x i8] c"../net/mptcp/pm_netlink.c\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 2148, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__ksymtab_mptcp_pm_get_add_addr_accept_max, ptr @__ksymtab_mptcp_pm_get_add_addr_signal_max, ptr @__ksymtab_mptcp_pm_get_local_addr_max, ptr @__ksymtab_mptcp_pm_get_subflows_max, ptr @mptcp_pm_nl_create_listen_socket._entry, ptr @mptcp_pm_nl_create_listen_socket._entry.53, ptr @mptcp_pm_nl_create_listen_socket._entry_ptr, ptr @mptcp_pm_nl_create_listen_socket._entry_ptr.55, ptr @pm_nl_pernet_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mptcp_pm_pernet_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @mptcp_pm_alloc_anno_list.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @mptcp_pm_ops, ptr @mptcp_pm_mcgrps, ptr @mptcp_pm_policy, ptr @mptcp_pm_addr_policy, ptr @mptcp_nl_cmd_add_addr.__msg, ptr @mptcp_nl_cmd_add_addr.__msg.45, ptr @mptcp_nl_cmd_add_addr.__msg.46, ptr @mptcp_pm_parse_addr.__msg, ptr @mptcp_pm_parse_addr.__msg.47, ptr @mptcp_pm_parse_addr.__msg.48, ptr @mptcp_pm_parse_addr.__msg.49, ptr @mptcp_pm_parse_addr.__msg.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @mptcp_nl_cmd_del_addr.__msg, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @mptcp_nl_cmd_get_addr.__msg, ptr @mptcp_nl_cmd_get_addr.__msg.59, ptr @.str.60, ptr @parse_limit.__msg, ptr @mptcp_nl_cmd_get_limits.__msg, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @pm_nl_init_net.__key, ptr @.str.66], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_nl_pernet_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_pernet_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_alloc_anno_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_mcgrps to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_addr_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_nl_cmd_add_addr.__msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_nl_cmd_add_addr.__msg.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_nl_cmd_add_addr.__msg.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_parse_addr.__msg to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_parse_addr.__msg.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_parse_addr.__msg.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_parse_addr.__msg.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_parse_addr.__msg.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_nl_create_listen_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_nl_create_listen_socket._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_nl_cmd_del_addr.__msg to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_nl_cmd_get_addr.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_nl_cmd_get_addr.__msg.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_limit.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_nl_cmd_get_limits.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_nl_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_get_add_addr_signal_max(ptr nocapture noundef readonly %msk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %add_addr_signal_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %add_addr_signal_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %add_addr_signal_max, align 4
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 45, ptr noundef nonnull @.str.18) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %8 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_get_add_addr_accept_max(ptr nocapture noundef readonly %msk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %add_addr_accept_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %add_addr_accept_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %add_addr_accept_max, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_get_subflows_max(ptr nocapture noundef readonly %msk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %subflows_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1, i32 0, i32 7
  %3 = ptrtoint ptr %subflows_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %subflows_max, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_get_local_addr_max(ptr nocapture noundef readonly %msk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %local_addr_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %local_addr_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %local_addr_max, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_pm_nl_check_work_pending(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %subflows = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %3 = ptrtoint ptr %subflows to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %subflows, align 1
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %7 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7) #14
  %subflows_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 7
  %8 = ptrtoint ptr %subflows_max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %subflows_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp eq i32 %9, %conv
  br i1 %cmp, label %entry.do.body10_crit_edge, label %lor.lhs.false

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

lor.lhs.false:                                    ; preds = %entry
  %id_bitmap = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1, i32 0, i32 9
  %id_avail_bitmap = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  %call13.i = tail call i32 @_find_next_bit(ptr noundef %id_bitmap, ptr noundef %id_avail_bitmap, i32 noundef 256, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call13.i)
  %cmp7 = icmp eq i32 %call13.i, 256
  br i1 %cmp7, label %lor.lhs.false.do.body10_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.do.body10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

do.body10:                                        ; preds = %lor.lhs.false.do.body10_crit_edge, %entry.do.body10_crit_edge
  %work_pending = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %10 = ptrtoint ptr %work_pending to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 0, ptr %work_pending, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.body10 ], [ true, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mptcp_lookup_anno_list_by_saddr(ptr noundef %msk, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !187

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 272, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %anno_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 2
  %1 = ptrtoint ptr %anno_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %entry1.047 = load ptr, ptr %anno_list, align 4
  %cmp29.not48 = icmp eq ptr %entry1.047, %anno_list
  br i1 %cmp29.not48, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %family1.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %family1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %family1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp30.i = icmp eq i16 %3, 2
  %4 = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3
  %arrayidx2.i.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %port52.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %entry1.049 = phi ptr [ %entry1.047, %for.body.lr.ph ], [ %entry1.0, %for.cond.backedge.for.body_crit_edge ]
  %family.i = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.049, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %3)
  %cmp.i = icmp eq i16 %6, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp6.i = icmp eq i16 %6, 2
  br i1 %cmp.i, label %if.then.i, label %if.else14.i

if.then.i:                                        ; preds = %for.body
  %7 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.049, i32 0, i32 1, i32 3
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10.i = icmp eq i32 %9, %11
  br i1 %cmp10.i, label %if.then8.i.if.end50.i_crit_edge, label %if.then8.i.for.cond.backedge_crit_edge

if.then8.i.for.cond.backedge_crit_edge:           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then8.i.if.end50.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.else.i:                                        ; preds = %if.then.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %7, ptr noundef dereferenceable(16) %4, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end50.i_crit_edge, label %if.else.i.for.cond.backedge_crit_edge

if.else.i.for.cond.backedge_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.else14.i:                                      ; preds = %for.body
  br i1 %cmp6.i, label %if.then19.i, label %if.else27.i

if.then19.i:                                      ; preds = %if.else14.i
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %15, %13
  %16 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %17, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then21.i, label %if.then19.i.for.cond.backedge_crit_edge

if.then19.i.for.cond.backedge_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then21.i:                                      ; preds = %if.then19.i
  %18 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.049, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp23.i = icmp eq i32 %20, %22
  br i1 %cmp23.i, label %if.then21.i.if.end50.i_crit_edge, label %if.then21.i.for.cond.backedge_crit_edge

if.then21.i.for.cond.backedge_crit_edge:          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then21.i.if.end50.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.else27.i:                                      ; preds = %if.else14.i
  br i1 %cmp30.i, label %if.then32.i, label %if.else27.i.for.cond.backedge_crit_edge

if.else27.i.for.cond.backedge_crit_edge:          ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then32.i:                                      ; preds = %if.else27.i
  %23 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.049, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %arrayidx2.i73.i = getelementptr %struct.mptcp_pm_add_entry, ptr %entry1.049, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx2.i73.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i73.i, align 4
  %or.i74.i = or i32 %27, %25
  %arrayidx4.i75.i = getelementptr %struct.mptcp_pm_add_entry, ptr %entry1.049, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx4.i75.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i75.i, align 4
  %xor.i76.i = xor i32 %29, 65535
  %or5.i77.i = or i32 %or.i74.i, %xor.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i)
  %cmp.i78.i = icmp eq i32 %or5.i77.i, 0
  br i1 %cmp.i78.i, label %if.end44.i, label %if.then32.i.for.cond.backedge_crit_edge

if.then32.i.for.cond.backedge_crit_edge:          ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end44.i:                                       ; preds = %if.then32.i
  %arrayidx36.i = getelementptr %struct.mptcp_pm_add_entry, ptr %entry1.049, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36.i, align 4
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp38.i = icmp eq i32 %31, %33
  br i1 %cmp38.i, label %if.end44.i.if.end50.i_crit_edge, label %if.end44.i.for.cond.backedge_crit_edge

if.end44.i.for.cond.backedge_crit_edge:           ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end44.i.if.end50.i_crit_edge, %if.then21.i.if.end50.i_crit_edge, %if.else.i.if.end50.i_crit_edge, %if.then8.i.if.end50.i_crit_edge
  %port.i = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.049, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %port.i, align 4
  %36 = ptrtoint ptr %port52.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %port52.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp54.i = icmp eq i16 %35, %37
  br i1 %cmp54.i, label %if.end50.i.cleanup_crit_edge, label %if.end50.i.for.cond.backedge_crit_edge

if.end50.i.for.cond.backedge_crit_edge:           ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end50.i.cleanup_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.backedge:                                ; preds = %if.end50.i.for.cond.backedge_crit_edge, %if.end44.i.for.cond.backedge_crit_edge, %if.then32.i.for.cond.backedge_crit_edge, %if.else27.i.for.cond.backedge_crit_edge, %if.then21.i.for.cond.backedge_crit_edge, %if.then19.i.for.cond.backedge_crit_edge, %if.else.i.for.cond.backedge_crit_edge, %if.then8.i.for.cond.backedge_crit_edge
  %38 = ptrtoint ptr %entry1.049 to i32
  call void @__asan_load4_noabort(i32 %38)
  %entry1.0 = load ptr, ptr %entry1.049, align 4
  %cmp29.not = icmp eq ptr %entry1.0, %anno_list
  br i1 %cmp29.not, label %for.cond.backedge.cleanup_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.backedge.cleanup_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.cond.backedge.cleanup_crit_edge, %if.end50.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %entry1.049, %if.end50.i.cleanup_crit_edge ], [ null, %for.cond.backedge.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_pm_sport_in_anno_list(ptr noundef %msk, ptr nocapture noundef readonly %sk) local_unnamed_addr #0 align 64 {
entry:
  %saddr = alloca %struct.mptcp_addr_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %saddr) #14
  %0 = call ptr @memset(ptr %saddr, i32 255, i32 24)
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %1 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_family.i, align 8
  %family.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 1
  %3 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %family.i, align 2
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.2, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skc_num.i, align 2
  %port.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 2
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %port.i, align 4
  %8 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %entry.local_address.exit_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then7.i
  ]

entry.local_address.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %local_address.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %9 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %skc_rcv_saddr.i, align 4
  %11 = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %11, align 4
  br label %local_address.exit

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %14 = call ptr @memcpy(ptr %13, ptr %skc_v6_rcv_saddr.i, i32 16)
  br label %local_address.exit

local_address.exit:                               ; preds = %if.then7.i, %if.then.i, %entry.local_address.exit_crit_edge
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %anno_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 2
  %15 = ptrtoint ptr %anno_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %entry1.020 = load ptr, ptr %anno_list, align 4
  %cmp.not21 = icmp eq ptr %entry1.020, %anno_list
  br i1 %cmp.not21, label %local_address.exit.out_crit_edge, label %for.body.lr.ph

local_address.exit.out_crit_edge:                 ; preds = %local_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %local_address.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %2)
  %cmp30.i = icmp eq i16 %2, 2
  %16 = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3
  %arrayidx2.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %entry1.022 = phi ptr [ %entry1.020, %for.body.lr.ph ], [ %entry1.0, %for.cond.backedge.for.body_crit_edge ]
  %family.i17 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.022, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %family.i17 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %family.i17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %2)
  %cmp.i = icmp eq i16 %18, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %18)
  %cmp6.i = icmp eq i16 %18, 2
  br i1 %cmp.i, label %if.then.i18, label %if.else14.i

if.then.i18:                                      ; preds = %for.body
  %19 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.022, i32 0, i32 1, i32 3
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i18
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp10.i = icmp eq i32 %21, %23
  br i1 %cmp10.i, label %if.then8.i.if.end50.i_crit_edge, label %if.then8.i.for.cond.backedge_crit_edge

if.then8.i.for.cond.backedge_crit_edge:           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then8.i.if.end50.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.else.i:                                        ; preds = %if.then.i18
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %19, ptr noundef dereferenceable(16) %16, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end50.i_crit_edge, label %if.else.i.for.cond.backedge_crit_edge

if.else.i.for.cond.backedge_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.else14.i:                                      ; preds = %for.body
  br i1 %cmp6.i, label %if.then19.i, label %if.else27.i

if.then19.i:                                      ; preds = %if.else14.i
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %16, align 4
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %27, %25
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %29, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then21.i, label %if.then19.i.for.cond.backedge_crit_edge

if.then19.i.for.cond.backedge_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then21.i:                                      ; preds = %if.then19.i
  %30 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.022, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp23.i = icmp eq i32 %32, %34
  br i1 %cmp23.i, label %if.then21.i.if.end50.i_crit_edge, label %if.then21.i.for.cond.backedge_crit_edge

if.then21.i.for.cond.backedge_crit_edge:          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then21.i.if.end50.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.else27.i:                                      ; preds = %if.else14.i
  br i1 %cmp30.i, label %if.then32.i, label %if.else27.i.for.cond.backedge_crit_edge

if.else27.i.for.cond.backedge_crit_edge:          ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then32.i:                                      ; preds = %if.else27.i
  %35 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.022, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %arrayidx2.i73.i = getelementptr %struct.mptcp_pm_add_entry, ptr %entry1.022, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx2.i73.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.i73.i, align 4
  %or.i74.i = or i32 %39, %37
  %arrayidx4.i75.i = getelementptr %struct.mptcp_pm_add_entry, ptr %entry1.022, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx4.i75.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4.i75.i, align 4
  %xor.i76.i = xor i32 %41, 65535
  %or5.i77.i = or i32 %or.i74.i, %xor.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i)
  %cmp.i78.i = icmp eq i32 %or5.i77.i, 0
  br i1 %cmp.i78.i, label %if.end44.i, label %if.then32.i.for.cond.backedge_crit_edge

if.then32.i.for.cond.backedge_crit_edge:          ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end44.i:                                       ; preds = %if.then32.i
  %arrayidx36.i = getelementptr %struct.mptcp_pm_add_entry, ptr %entry1.022, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx36.i, align 4
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp38.i = icmp eq i32 %43, %45
  br i1 %cmp38.i, label %if.end44.i.if.end50.i_crit_edge, label %if.end44.i.for.cond.backedge_crit_edge

if.end44.i.for.cond.backedge_crit_edge:           ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end44.i.if.end50.i_crit_edge, %if.then21.i.if.end50.i_crit_edge, %if.else.i.if.end50.i_crit_edge, %if.then8.i.if.end50.i_crit_edge
  %port.i19 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.022, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %port.i19 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %port.i19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %6)
  %cmp54.i = icmp eq i16 %47, %6
  br i1 %cmp54.i, label %if.end50.i.out_crit_edge, label %if.end50.i.for.cond.backedge_crit_edge

if.end50.i.for.cond.backedge_crit_edge:           ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end50.i.out_crit_edge:                         ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.cond.backedge:                                ; preds = %if.end50.i.for.cond.backedge_crit_edge, %if.end44.i.for.cond.backedge_crit_edge, %if.then32.i.for.cond.backedge_crit_edge, %if.else27.i.for.cond.backedge_crit_edge, %if.then21.i.for.cond.backedge_crit_edge, %if.then19.i.for.cond.backedge_crit_edge, %if.else.i.for.cond.backedge_crit_edge, %if.then8.i.for.cond.backedge_crit_edge
  %48 = ptrtoint ptr %entry1.022 to i32
  call void @__asan_load4_noabort(i32 %48)
  %entry1.0 = load ptr, ptr %entry1.022, align 4
  %cmp.not = icmp eq ptr %entry1.0, %anno_list
  br i1 %cmp.not, label %for.cond.backedge.out_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.backedge.out_crit_edge:                  ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %for.cond.backedge.out_crit_edge, %if.end50.i.out_crit_edge, %local_address.exit.out_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %local_address.exit.out_crit_edge ], [ true, %if.end50.i.out_crit_edge ], [ false, %for.cond.backedge.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %saddr) #14
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mptcp_pm_del_add_timer(ptr noundef %msk, ptr nocapture noundef readonly %addr, i1 noundef zeroext %check_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %call = tail call ptr @mptcp_lookup_anno_list_by_saddr(ptr noundef %msk, ptr noundef %addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end21.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %check_id, label %lor.lhs.false, label %if.then20.critedge

lor.lhs.false:                                    ; preds = %land.lhs.true
  %addr3 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %addr3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr3, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %lor.lhs.false12.critedge, label %lor.lhs.false.lor.lhs.false12_crit_edge

lor.lhs.false.lor.lhs.false12_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false12

lor.lhs.false12.critedge:                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %retrans_times.c = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %retrans_times.c to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %retrans_times.c, align 4
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false12.critedge, %lor.lhs.false.lor.lhs.false12_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %5 = ptrtoint ptr %addr3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr3, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp18 = icmp eq i8 %6, %8
  br i1 %cmp18, label %lor.lhs.false12.if.then20_crit_edge, label %lor.lhs.false12.if.end21_crit_edge

lor.lhs.false12.if.end21_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

lor.lhs.false12.if.then20_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then20.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %retrans_times.c35 = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %retrans_times.c35 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %retrans_times.c35, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %if.then20

if.then20:                                        ; preds = %if.then20.critedge, %lor.lhs.false12.if.then20_crit_edge
  %add_timer = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call, i32 0, i32 2
  tail call void @sk_stop_timer_sync(ptr noundef %msk, ptr noundef %add_timer) #14
  br label %if.end21

if.end21.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %if.end21

if.end21:                                         ; preds = %if.end21.critedge, %if.then20, %lor.lhs.false12.if.end21_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stop_timer_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_free_anno_list(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  %free_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free_list) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %free_list, i32 0, i32 1
  %1 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_list, ptr %free_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free_list, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_free_anno_list.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_free_anno_list, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !188

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_free_anno_list.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.4, ptr noundef %msk) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %anno_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 2
  %3 = ptrtoint ptr %anno_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %anno_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %anno_list
  br i1 %cmp.i.not.i, label %do.end.list_splice_init.exit_crit_edge, label %if.then.i

do.end.list_splice_init.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 2, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %free_list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %free_list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %anno_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %anno_list, ptr %anno_list, align 4
  store ptr %anno_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %do.end.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %13 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free_list, align 4
  %cmp.not31 = icmp eq ptr %14, %free_list
  br i1 %cmp.not31, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %entry1.032 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %14, %list_splice_init.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %entry1.032 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0 = load ptr, ptr %entry1.032, align 4
  %add_timer = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %entry1.032, i32 0, i32 2
  call void @sk_stop_timer_sync(ptr noundef %msk, ptr noundef %add_timer) #14
  call void @kfree(ptr noundef %entry1.032) #14
  %cmp.not = icmp eq ptr %tmp.0, %free_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free_list) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_nl_addr_send_ack(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.msk_owned_by_me.exit_crit_edge

entry.msk_owned_by_me.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.if.end_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.land.rhs_crit_edge, label %if.then.i.i, !prof !189

land.rhs3.i.i.land.rhs_crit_edge:                 ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1750, i32 noundef 9, ptr noundef null) #14
  br label %msk_owned_by_me.exit

msk_owned_by_me.exit:                             ; preds = %if.then.i.i, %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge, %entry.msk_owned_by_me.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %msk_owned_by_me.exit.if.end_crit_edge, label %msk_owned_by_me.exit.land.rhs_crit_edge

msk_owned_by_me.exit.land.rhs_crit_edge:          ; preds = %msk_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

msk_owned_by_me.exit.if.end_crit_edge:            ; preds = %msk_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %msk_owned_by_me.exit.land.rhs_crit_edge, %land.rhs3.i.i.land.rhs_crit_edge
  %dep_map = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !187

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 712, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %msk_owned_by_me.exit.if.end_crit_edge, %land.rhs.i.i.if.end_crit_edge
  %addr_signal.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %1 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %addr_signal.i, align 4
  %3 = and i8 %2, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %addr_signal.i, align 4
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i71.not = icmp eq i8 %6, 0
  br i1 %tobool.i71.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 34
  %7 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %conn_list, align 4
  %cmp33.not = icmp eq ptr %8, %conn_list
  %tobool35.not78 = icmp eq ptr %8, null
  %tobool35.not = or i1 %cmp33.not, %tobool35.not78
  br i1 %tobool35.not, label %if.end27.cleanup_crit_edge, label %if.then36

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36:                                        ; preds = %if.end27
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcp_sock.i, align 8
  %lock39 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock39) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_nl_addr_send_ack.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_nl_addr_send_ack, %if.then50)) #14
          to label %do.end55 [label %if.then50], !srcloc !188

if.then50:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %addr_signal.i, align 4
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i73.not = icmp eq i8 %13, 0
  %cond52 = select i1 %tobool.i73.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_nl_addr_send_ack.__UNIQUE_ID_ddebug635, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond52) #14
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %if.then36
  tail call void @mptcp_subflow_send_ack(ptr noundef %10) #14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock39) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_subflow_send_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_nl_rm_subflow_received(ptr noundef %msk, ptr nocapture noundef readonly %rm_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mptcp_pm_nl_rm_addr_or_subflow(ptr noundef %msk, ptr noundef %rm_list, i32 noundef 35)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_pm_nl_rm_addr_or_subflow(ptr noundef %msk, ptr nocapture noundef readonly %rm_list, i32 noundef %rm_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_nl_rm_addr_or_subflow.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_nl_rm_addr_or_subflow, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !188

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %rm_type)
  %cmp = icmp eq i32 %rm_type, 33
  %cond = select i1 %cmp, ptr @.str.23, ptr @.str.24
  %nr = getelementptr inbounds %struct.mptcp_rm_list, ptr %rm_list, i32 0, i32 1
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_nl_rm_addr_or_subflow.__UNIQUE_ID_ddebug638, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %do.end.msk_owned_by_me.exit_crit_edge

do.end.msk_owned_by_me.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %do.end
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.msk_owned_by_me.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.msk_owned_by_me.exit_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.msk_owned_by_me.exit_crit_edge, label %if.then.i.i, !prof !189

land.rhs3.i.i.msk_owned_by_me.exit_crit_edge:     ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1750, i32 noundef 9, ptr noundef null) #14
  br label %msk_owned_by_me.exit

msk_owned_by_me.exit:                             ; preds = %if.then.i.i, %land.rhs3.i.i.msk_owned_by_me.exit_crit_edge, %land.rhs.i.i.msk_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge, %do.end.msk_owned_by_me.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp5 = icmp eq i8 %4, 10
  br i1 %cmp5, label %msk_owned_by_me.exit.cleanup119_crit_edge, label %if.end8

msk_owned_by_me.exit.cleanup119_crit_edge:        ; preds = %msk_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup119

if.end8:                                          ; preds = %msk_owned_by_me.exit
  %nr9 = getelementptr inbounds %struct.mptcp_rm_list, ptr %rm_list, i32 0, i32 1
  %5 = ptrtoint ptr %nr9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nr9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.end8.cleanup119_crit_edge, label %if.end12

if.end8.cleanup119_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup119

if.end12:                                         ; preds = %if.end8
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 34
  %7 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %conn_list, align 4
  %cmp.i.not = icmp eq ptr %8, %conn_list
  br i1 %cmp.i.not, label %if.end12.cleanup119_crit_edge, label %for.cond.preheader

if.end12.cleanup119_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup119

for.cond.preheader:                               ; preds = %if.end12
  %9 = ptrtoint ptr %nr9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp20173.not = icmp eq i8 %10, 0
  br i1 %cmp20173.not, label %for.cond.preheader.cleanup119_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup119_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup119

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %rm_type)
  %cmp37 = icmp eq i32 %rm_type, 33
  %cond62 = select i1 %cmp37, ptr @.str.23, ptr @.str.24
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %id_avail_bitmap = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  %local_addr_used = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 12
  %add_addr_accepted = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 11
  %accept_addr = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup114.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup114.for.body_crit_edge ]
  %11 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn_list, align 8
  %cmp31.not169 = icmp eq ptr %12, %conn_list
  %arrayidx87.c = getelementptr [8 x i8], ptr %rm_list, i32 0, i32 %indvars.iv
  br i1 %cmp31.not169, label %cleanup114.critedge, label %for.body.for.body35_crit_edge

for.body.for.body35_crit_edge:                    ; preds = %for.body
  br label %for.body35

for.body35:                                       ; preds = %cleanup.for.body35_crit_edge, %for.body.for.body35_crit_edge
  %subflow.0171 = phi ptr [ %tmp.0172, %cleanup.for.body35_crit_edge ], [ %12, %for.body.for.body35_crit_edge ]
  %removed.0.off0170 = phi i1 [ %removed.1.off0, %cleanup.for.body35_crit_edge ], [ false, %for.body.for.body35_crit_edge ]
  %13 = ptrtoint ptr %subflow.0171 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0172 = load ptr, ptr %subflow.0171, align 8
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.0171, i32 0, i32 5
  %14 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcp_sock.i, align 8
  %local_id = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.0171, i32 0, i32 1, i32 0, i32 20
  %remote_id = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.0171, i32 0, i32 1, i32 0, i32 21
  %spec.select = select i1 %cmp37, ptr %remote_id, ptr %local_id
  %16 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %16)
  %id.0 = load i8, ptr %spec.select, align 1
  %17 = ptrtoint ptr %arrayidx87.c to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx87.c, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %id.0)
  %cmp43.not = icmp eq i8 %18, %id.0
  br i1 %cmp43.not, label %do.body47, label %for.body35.cleanup_crit_edge

for.body35.cleanup_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body47:                                        ; preds = %for.body35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_nl_rm_addr_or_subflow.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_nl_rm_addr_or_subflow, %if.then59)) #14
          to label %do.end74 [label %if.then59], !srcloc !188

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %arrayidx87.c to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx87.c, align 1
  %conv67 = zext i8 %20 to i32
  %21 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %local_id, align 4
  %conv69 = zext i8 %22 to i32
  %23 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %remote_id, align 1
  %conv71 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_nl_rm_addr_or_subflow.__UNIQUE_ID_ddebug639, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond62, i32 noundef %indvars.iv, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %conv71) #14
  br label %do.end74

do.end74:                                         ; preds = %if.then59, %do.body47
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  tail call void @mptcp_subflow_shutdown(ptr noundef %msk, ptr noundef %15, i32 noundef 3) #14
  tail call void @mptcp_close_ssk(ptr noundef %msk, ptr noundef %15, ptr noundef %subflow.0171) #14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %25 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30, i32 8
  %27 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.end74.cleanup_crit_edge, label %if.then.i, !prof !187

do.end74.cleanup_crit_edge:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr [43 x i32], ptr %28, i32 0, i32 %rm_type
  %29 = ptrtoint ptr %arrayidx.i to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add12.i = add i32 %38, 1
  store i32 %add12.i, ptr %36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end74.cleanup_crit_edge, %for.body35.cleanup_crit_edge
  %removed.1.off0 = phi i1 [ %removed.0.off0170, %for.body35.cleanup_crit_edge ], [ true, %do.end74.cleanup_crit_edge ], [ true, %if.then.i ]
  %cmp31.not = icmp eq ptr %tmp.0172, %conn_list
  br i1 %cmp31.not, label %for.end, label %cleanup.for.body35_crit_edge

cleanup.for.body35_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body35

for.end:                                          ; preds = %cleanup
  %39 = ptrtoint ptr %arrayidx87.c to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx87.c, align 1
  %conv88 = zext i8 %40 to i32
  %rem.i = and i32 %conv88, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv88, 5
  %add.ptr.i = getelementptr i32, ptr %id_avail_bitmap, i32 %div2.i
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %42
  store i32 %or.i, ptr %add.ptr.i, align 4
  br i1 %removed.1.off0, label %if.end92, label %for.end.cleanup114_crit_edge

for.end.cleanup114_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup114

if.end92:                                         ; preds = %for.end
  %43 = zext i32 %rm_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %rm_type, label %if.end92.cleanup114_crit_edge [
    i32 33, label %if.then95
    i32 35, label %if.then109
  ]

if.end92.cleanup114_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup114

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %add_addr_accepted to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add_addr_accepted, align 1
  %dec = add i8 %45, -1
  store i8 %dec, ptr %add_addr_accepted, align 1
  %46 = ptrtoint ptr %accept_addr to i32
  call void @__asan_store1_noabort(i32 %46)
  store volatile i8 1, ptr %accept_addr, align 1
  br label %cleanup114

if.then109:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %local_addr_used to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %local_addr_used, align 4
  %dec111 = add i8 %48, -1
  store i8 %dec111, ptr %local_addr_used, align 4
  br label %cleanup114

cleanup114.critedge:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %arrayidx87.c to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx87.c, align 1
  %conv88.c = zext i8 %50 to i32
  %rem.i.c = and i32 %conv88.c, 31
  %shl.i.c = shl nuw i32 1, %rem.i.c
  %div2.i.c = lshr i32 %conv88.c, 5
  %add.ptr.i.c = getelementptr i32, ptr %id_avail_bitmap, i32 %div2.i.c
  %51 = ptrtoint ptr %add.ptr.i.c to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.c, align 4
  %or.i.c = or i32 %shl.i.c, %52
  store i32 %or.i.c, ptr %add.ptr.i.c, align 4
  br label %cleanup114

cleanup114:                                       ; preds = %cleanup114.critedge, %if.then109, %if.then95, %if.end92.cleanup114_crit_edge, %for.end.cleanup114_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %53 = ptrtoint ptr %nr9 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nr9, align 1
  %55 = zext i8 %54 to i32
  %cmp20 = icmp ult i32 %indvars.iv.next, %55
  br i1 %cmp20, label %cleanup114.for.body_crit_edge, label %cleanup114.cleanup119_crit_edge

cleanup114.cleanup119_crit_edge:                  ; preds = %cleanup114
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup119

cleanup114.for.body_crit_edge:                    ; preds = %cleanup114
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup119:                                       ; preds = %cleanup114.cleanup119_crit_edge, %for.cond.preheader.cleanup119_crit_edge, %if.end12.cleanup119_crit_edge, %if.end8.cleanup119_crit_edge, %msk_owned_by_me.exit.cleanup119_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_nl_work(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.msk_owned_by_me.exit_crit_edge

entry.msk_owned_by_me.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.msk_owned_by_me.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.msk_owned_by_me.exit_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.msk_owned_by_me.exit_crit_edge, label %if.then.i.i, !prof !189

land.rhs3.i.i.msk_owned_by_me.exit_crit_edge:     ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1750, i32 noundef 9, ptr noundef null) #14
  br label %msk_owned_by_me.exit

msk_owned_by_me.exit:                             ; preds = %if.then.i.i, %land.rhs3.i.i.msk_owned_by_me.exit_crit_edge, %land.rhs.i.i.msk_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge, %entry.msk_owned_by_me.exit_crit_edge
  %status = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %status, align 2
  %3 = and i8 %2, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %msk_owned_by_me.exit.cleanup_crit_edge, label %if.end

msk_owned_by_me.exit.cleanup_crit_edge:           ; preds = %msk_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %msk_owned_by_me.exit
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_nl_work.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_nl_work, %if.then6)) #14
          to label %do.end [label %if.then6], !srcloc !188

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 2
  %conv8 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_nl_work.__UNIQUE_ID_ddebug641, ptr noundef nonnull @.str.12, ptr noundef %msk, i32 noundef %conv8) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %do.end.if.end19_crit_edge, label %if.then14

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %and17 = and i8 %7, -2
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and17, ptr %status, align 2
  tail call fastcc void @mptcp_pm_nl_add_addr_received(ptr noundef %msk)
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %do.end.if.end19_crit_edge
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 2
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %if.end19.if.end29_crit_edge, label %if.then24

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %and27 = and i8 %11, -3
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and27, ptr %status, align 2
  tail call void @mptcp_pm_nl_addr_send_ack(ptr noundef %msk)
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end19.if.end29_crit_edge
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status, align 2
  %16 = and i8 %15, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool33.not = icmp eq i8 %16, 0
  br i1 %tobool33.not, label %if.end29.if.end39_crit_edge, label %if.then34

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %and37 = and i8 %15, -5
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %and37, ptr %status, align 2
  %rm_list_rx.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 17
  tail call fastcc void @mptcp_pm_nl_rm_addr_or_subflow(ptr noundef %msk, ptr noundef %rm_list_rx.i, i32 noundef 33) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end29.if.end39_crit_edge
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 2
  %20 = and i8 %19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool43.not = icmp eq i8 %20, 0
  br i1 %tobool43.not, label %if.end39.if.end49_crit_edge, label %if.then44

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %and47 = and i8 %19, -9
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %and47, ptr %status, align 2
  tail call fastcc void @mptcp_pm_create_subflow_or_signal_addr(ptr noundef %msk) #14
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end39.if.end49_crit_edge
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status, align 2
  %24 = and i8 %23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool53.not = icmp eq i8 %24, 0
  br i1 %tobool53.not, label %if.end49.if.end59_crit_edge, label %if.then54

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %and57 = and i8 %23, -17
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %and57, ptr %status, align 2
  tail call fastcc void @mptcp_pm_create_subflow_or_signal_addr(ptr noundef %msk) #14
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end49.if.end59_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %msk_owned_by_me.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_pm_nl_add_addr_received(ptr noundef %msk) unnamed_addr #0 align 64 {
entry:
  %cur.i = alloca %struct.mptcp_addr_info, align 4
  %addrs = alloca [8 x %struct.mptcp_addr_info], align 4
  %remote = alloca %struct.mptcp_addr_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %addrs) #14
  %0 = call ptr @memset(ptr %addrs, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %remote) #14
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %1 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_net.i.i, align 4
  %3 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %2, i32 noundef %3) #14
  %add_addr_accept_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 5
  %4 = ptrtoint ptr %add_addr_accept_max.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add_addr_accept_max.i, align 4
  %6 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i.i, align 4
  %8 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i72 = tail call fastcc ptr @net_generic(ptr noundef %7, i32 noundef %8) #14
  %subflows_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i72, i32 0, i32 7
  %9 = ptrtoint ptr %subflows_max.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %subflows_max.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_nl_add_addr_received.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_nl_add_addr_received, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !188

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add_addr_accepted = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 11
  %11 = ptrtoint ptr %add_addr_accepted to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add_addr_accepted, align 1
  %conv = zext i8 %12 to i32
  %family = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 1, i32 1
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %family, align 2
  %conv7 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_nl_add_addr_received.__UNIQUE_ID_ddebug632, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %5, i32 noundef %conv7) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %remote9 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 1
  %15 = call ptr @memcpy(ptr %remote, ptr %remote9, i32 24)
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cur.i) #14
  %16 = call ptr @memset(ptr %cur.i, i32 255, i32 24)
  %17 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %subflow.018.i = load ptr, ptr %conn_list, align 4
  %cmp.not19.i = icmp eq ptr %subflow.018.i, %conn_list
  br i1 %cmp.not19.i, label %do.end.if.end12_crit_edge, label %for.body.lr.ph.i

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %do.end
  %18 = getelementptr inbounds %struct.mptcp_addr_info, ptr %cur.i, i32 0, i32 3
  %port.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 2
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.i = icmp ne i16 %20, 0
  %family1.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 1
  %21 = ptrtoint ptr %family1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %family1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp30.i.i = icmp eq i16 %22, 2
  %arrayidx2.i73.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %cur.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i75.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %cur.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx36.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %cur.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %23 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3
  %arrayidx2.i.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %subflow.020.i = phi ptr [ %subflow.018.i, %for.body.lr.ph.i ], [ %subflow.0.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  %tcp_sock.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.020.i, i32 0, i32 5
  %24 = ptrtoint ptr %tcp_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tcp_sock.i.i, align 8
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %skc_family.i.i, align 8
  %28 = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 4
  %31 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %27, label %for.body.i.remote_address.exit.i_crit_edge [
    i16 2, label %if.then.i.i
    i16 10, label %if.then7.i.i
  ]

for.body.i.remote_address.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %remote_address.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %25, align 8
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %18, align 4
  br label %remote_address.exit.i

if.then7.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %skc_v6_daddr.i.i = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 10
  %35 = call ptr @memcpy(ptr %18, ptr %skc_v6_daddr.i.i, i32 16)
  br label %remote_address.exit.i

remote_address.exit.i:                            ; preds = %if.then7.i.i, %if.then.i.i, %for.body.i.remote_address.exit.i_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %22)
  %cmp.i.i = icmp eq i16 %27, %22
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %27)
  %cmp6.i.i = icmp eq i16 %27, 2
  br i1 %cmp.i.i, label %if.then.i14.i, label %if.else14.i.i

if.then.i14.i:                                    ; preds = %remote_address.exit.i
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %18, align 4
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp10.i.i = icmp eq i32 %37, %39
  br label %if.end44.i.i

if.else.i.i:                                      ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %18, ptr noundef dereferenceable(16) %23, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br label %if.end44.i.i

if.else14.i.i:                                    ; preds = %remote_address.exit.i
  br i1 %cmp6.i.i, label %if.then19.i.i, label %if.else27.i.i

if.then19.i.i:                                    ; preds = %if.else14.i.i
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %23, align 4
  %42 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %43, %41
  %44 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %45, 65535
  %or5.i.i.i = or i32 %or.i.i.i, %xor.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then21.i.i, label %if.then19.i.i.for.cond.backedge.i_crit_edge

if.then19.i.i.for.cond.backedge.i_crit_edge:      ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %18, align 4
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp23.i.i = icmp eq i32 %47, %49
  br label %if.end44.i.i

if.else27.i.i:                                    ; preds = %if.else14.i.i
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.else27.i.i.for.cond.backedge.i_crit_edge

if.else27.i.i.for.cond.backedge.i_crit_edge:      ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge.i

if.then32.i.i:                                    ; preds = %if.else27.i.i
  %50 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %18, align 4
  %52 = ptrtoint ptr %arrayidx2.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.i73.i.i, align 4
  %or.i74.i.i = or i32 %53, %51
  %54 = ptrtoint ptr %arrayidx4.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx4.i75.i.i, align 4
  %xor.i76.i.i = xor i32 %55, 65535
  %or5.i77.i.i = or i32 %or.i74.i.i, %xor.i76.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i.i)
  %cmp.i78.i.i = icmp eq i32 %or5.i77.i.i, 0
  br i1 %cmp.i78.i.i, label %if.then34.i.i, label %if.then32.i.i.for.cond.backedge.i_crit_edge

if.then32.i.i.for.cond.backedge.i_crit_edge:      ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge.i

if.then34.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx36.i.i, align 4
  %58 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp38.i.i = icmp eq i32 %57, %59
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then34.i.i, %if.then21.i.i, %if.else.i.i, %if.then8.i.i
  %addr_equals.0.shrunk.i.i = phi i1 [ %cmp10.i.i, %if.then8.i.i ], [ %tobool.not.i.i, %if.else.i.i ], [ %cmp23.i.i, %if.then21.i.i ], [ %cmp38.i.i, %if.then34.i.i ]
  %60 = and i1 %tobool.i, %addr_equals.0.shrunk.i.i
  br i1 %60, label %if.end50.i.i, label %addresses_equal.exit.i

if.end50.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %20)
  %cmp54.i.i = icmp eq i16 %30, %20
  br i1 %cmp54.i.i, label %if.end50.i.i.lookup_subflow_by_daddr.exit.thread_crit_edge, label %if.end50.i.i.for.cond.backedge.i_crit_edge

if.end50.i.i.for.cond.backedge.i_crit_edge:       ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge.i

if.end50.i.i.lookup_subflow_by_daddr.exit.thread_crit_edge: ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_subflow_by_daddr.exit.thread

addresses_equal.exit.i:                           ; preds = %if.end44.i.i
  br i1 %addr_equals.0.shrunk.i.i, label %addresses_equal.exit.i.lookup_subflow_by_daddr.exit.thread_crit_edge, label %addresses_equal.exit.i.for.cond.backedge.i_crit_edge

addresses_equal.exit.i.for.cond.backedge.i_crit_edge: ; preds = %addresses_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge.i

addresses_equal.exit.i.lookup_subflow_by_daddr.exit.thread_crit_edge: ; preds = %addresses_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_subflow_by_daddr.exit.thread

for.cond.backedge.i:                              ; preds = %addresses_equal.exit.i.for.cond.backedge.i_crit_edge, %if.end50.i.i.for.cond.backedge.i_crit_edge, %if.then32.i.i.for.cond.backedge.i_crit_edge, %if.else27.i.i.for.cond.backedge.i_crit_edge, %if.then19.i.i.for.cond.backedge.i_crit_edge
  %61 = ptrtoint ptr %subflow.020.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %subflow.0.i = load ptr, ptr %subflow.020.i, align 4
  %cmp.not.i = icmp eq ptr %subflow.0.i, %conn_list
  br i1 %cmp.not.i, label %for.cond.backedge.i.if.end12_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.backedge.i.if.end12_crit_edge:           ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

lookup_subflow_by_daddr.exit.thread:              ; preds = %addresses_equal.exit.i.lookup_subflow_by_daddr.exit.thread_crit_edge, %if.end50.i.i.lookup_subflow_by_daddr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cur.i) #14
  br label %add_addr_echo

if.end12:                                         ; preds = %for.cond.backedge.i.if.end12_crit_edge, %do.end.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cur.i) #14
  %port = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote, i32 0, i32 2
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool13.not = icmp eq i16 %63, 0
  br i1 %tobool13.not, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %64 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 4
  %67 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %port, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %68 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %skc_net.i.i, align 4
  %70 = load i32, ptr @pm_nl_pernet_id, align 4
  %call2.i = tail call fastcc ptr @net_generic(ptr noundef %69, i32 noundef %70) #14
  %71 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %skc_net.i.i, align 4
  %73 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i91.i = tail call fastcc ptr @net_generic(ptr noundef %72, i32 noundef %73) #14
  %subflows_max.i.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i91.i, i32 0, i32 7
  %74 = ptrtoint ptr %subflows_max.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %subflows_max.i.i, align 4
  %76 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %79, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %if.end16.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end16.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end16
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i74 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i74, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i75

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i75:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i75, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end16.rcu_read_lock.exit.i_crit_edge
  %call4.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b90.i = load i1, ptr @fill_local_addresses_vec.__warned, align 1
  br i1 %.b90.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @fill_local_addresses_vec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 621, ptr noundef nonnull @.str.13) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %local_addr_list.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call2.i, i32 0, i32 1
  %80 = ptrtoint ptr %local_addr_list.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %entry1.0107.i = load volatile ptr, ptr %local_addr_list.i, align 4
  %cmp.not108.i = icmp eq ptr %entry1.0107.i, %local_addr_list.i
  br i1 %cmp.not108.i, label %do.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i76

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i76:                               ; preds = %do.end.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 3
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 10
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %msk, i32 0, i32 10, i32 0, i32 0, i32 1
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %msk, i32 0, i32 10, i32 0, i32 0, i32 2
  %subflows.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  br label %for.body.i77

for.body.i77:                                     ; preds = %for.inc.i.for.body.i77_crit_edge, %for.body.lr.ph.i76
  %entry1.0112.i = phi ptr [ %entry1.0107.i, %for.body.lr.ph.i76 ], [ %entry1.0.i, %for.inc.i.for.body.i77_crit_edge ]
  %i.0109.i = phi i32 [ 0, %for.body.lr.ph.i76 ], [ %i.1.i, %for.inc.i.for.body.i77_crit_edge ]
  %flags.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0112.i, i32 0, i32 2
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags.i, align 4
  %83 = and i8 %82, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool14.not.i = icmp eq i8 %83, 0
  br i1 %tobool14.not.i, label %for.body.i77.for.inc.i_crit_edge, label %if.end16.i

for.body.i77.for.inc.i_crit_edge:                 ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i77
  %addr.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0112.i, i32 0, i32 1
  %family.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0112.i, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %family.i, align 2
  %86 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %87)
  %cmp19.not.i = icmp eq i16 %85, %87
  br i1 %cmp19.not.i, label %if.end16.i.if.end40.i_crit_edge, label %if.then21.i

if.end16.i.if.end40.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %85)
  %cmp25.i = icmp eq i16 %85, 2
  br i1 %cmp25.i, label %land.lhs.true27.i, label %if.then21.i.lor.lhs.false.i_crit_edge

if.then21.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

land.lhs.true27.i:                                ; preds = %if.then21.i
  %88 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %skc_v6_daddr.i, align 4
  %90 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %91, %89
  %92 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %93, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i78 = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i78, label %land.lhs.true27.i.lor.lhs.false.i_crit_edge, label %land.lhs.true27.i.for.inc.i_crit_edge

land.lhs.true27.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true27.i.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true27.i.lor.lhs.false.i_crit_edge, %if.then21.i.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %87)
  %cmp33.i = icmp eq i16 %87, 2
  br i1 %cmp33.i, label %land.lhs.true35.i, label %lor.lhs.false.i.if.end40.i_crit_edge

lor.lhs.false.i.if.end40.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

land.lhs.true35.i:                                ; preds = %lor.lhs.false.i
  %94 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0112.i, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %arrayidx2.i92.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.0112.i, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx2.i92.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx2.i92.i, align 4
  %or.i93.i = or i32 %98, %96
  %arrayidx4.i94.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.0112.i, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx4.i94.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx4.i94.i, align 4
  %xor.i95.i = xor i32 %100, 65535
  %or5.i96.i = or i32 %or.i93.i, %xor.i95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i96.i)
  %cmp.i97.i = icmp eq i32 %or5.i96.i, 0
  br i1 %cmp.i97.i, label %land.lhs.true35.i.if.end40.i_crit_edge, label %land.lhs.true35.i.for.inc.i_crit_edge

land.lhs.true35.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true35.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

if.end40.i:                                       ; preds = %land.lhs.true35.i.if.end40.i_crit_edge, %lor.lhs.false.i.if.end40.i_crit_edge, %if.end16.i.if.end40.i_crit_edge
  %101 = ptrtoint ptr %subflows.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %subflows.i, align 1
  %conv41.i = zext i8 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %conv41.i)
  %cmp42.i = icmp ugt i32 %75, %conv41.i
  br i1 %cmp42.i, label %if.then44.i, label %if.end40.i.for.inc.i_crit_edge

if.end40.i.for.inc.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then44.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add i8 %102, 1
  %103 = ptrtoint ptr %subflows.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %inc.i, ptr %subflows.i, align 1
  %inc47.i = add i32 %i.0109.i, 1
  %arrayidx.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.0109.i
  %104 = call ptr @memcpy(ptr %arrayidx.i, ptr %addr.i, i32 24)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then44.i, %if.end40.i.for.inc.i_crit_edge, %land.lhs.true35.i.for.inc.i_crit_edge, %land.lhs.true27.i.for.inc.i_crit_edge, %for.body.i77.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc47.i, %if.then44.i ], [ %i.0109.i, %if.end40.i.for.inc.i_crit_edge ], [ %i.0109.i, %land.lhs.true35.i.for.inc.i_crit_edge ], [ %i.0109.i, %land.lhs.true27.i.for.inc.i_crit_edge ], [ %i.0109.i, %for.body.i77.for.inc.i_crit_edge ]
  %105 = ptrtoint ptr %entry1.0112.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %entry1.0.i = load volatile ptr, ptr %entry1.0112.i, align 4
  %cmp.not.i79 = icmp eq ptr %entry1.0.i, %local_addr_list.i
  br i1 %cmp.not.i79, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i77_crit_edge

for.inc.i.for.body.i77_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i77

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %do.end.i.for.end.i_crit_edge ], [ %i.1.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i98.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i98.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i101.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i101.i:                             ; preds = %for.end.i
  %call1.i99.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call1.i99.i, 0
  br i1 %tobool.not.i100.i, label %land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i103.i

land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i103.i:                            ; preds = %land.lhs.true.i101.i
  %.b4.i102.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i102.i, label %land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i104.i

land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i104.i:                                   ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i104.i, %land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %106 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i105.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i105.i to ptr
  %preempt_count.i.i.i.i106.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i.i106.i, align 4
  %sub.i.i.i.i = add i32 %109, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i106.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %tobool59.not.i = icmp eq i32 %i.0.lcssa.i, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %rcu_read_unlock.exit.i.fill_local_addresses_vec.exit_crit_edge

rcu_read_unlock.exit.i.fill_local_addresses_vec.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_local_addresses_vec.exit

if.then60.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %family62.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 1, i32 1
  %110 = ptrtoint ptr %family62.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %family62.i, align 2
  %subflows65.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %112 = ptrtoint ptr %subflows65.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %subflows65.i, align 1
  %inc66.i = add i8 %113, 1
  store i8 %inc66.i, ptr %subflows65.i, align 1
  %114 = ptrtoint ptr %addrs to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %addrs, align 4
  %local.sroa.5.0.arrayidx68.sroa_idx.i = getelementptr inbounds i8, ptr %addrs, i32 2
  %115 = ptrtoint ptr %local.sroa.5.0.arrayidx68.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %111, ptr %local.sroa.5.0.arrayidx68.sroa_idx.i, align 2
  %local.sroa.6.0.arrayidx68.sroa_idx.i = getelementptr inbounds i8, ptr %addrs, i32 4
  %116 = call ptr @memset(ptr %local.sroa.6.0.arrayidx68.sroa_idx.i, i32 0, i32 20)
  br label %fill_local_addresses_vec.exit

fill_local_addresses_vec.exit:                    ; preds = %if.then60.i, %rcu_read_unlock.exit.i.fill_local_addresses_vec.exit_crit_edge
  %i.2.i = phi i32 [ %i.0.lcssa.i, %rcu_read_unlock.exit.i.fill_local_addresses_vec.exit_crit_edge ], [ 1, %if.then60.i ]
  %add_addr_accepted19 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 11
  %117 = ptrtoint ptr %add_addr_accepted19 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %add_addr_accepted19, align 1
  %inc = add i8 %118, 1
  store i8 %inc, ptr %add_addr_accepted19, align 1
  %conv22 = zext i8 %inc to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv22)
  %cmp.not = icmp ugt i32 %5, %conv22
  br i1 %cmp.not, label %lor.lhs.false, label %fill_local_addresses_vec.exit.do.body33_crit_edge

fill_local_addresses_vec.exit.do.body33_crit_edge: ; preds = %fill_local_addresses_vec.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body33

lor.lhs.false:                                    ; preds = %fill_local_addresses_vec.exit
  %subflows = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %119 = ptrtoint ptr %subflows to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %subflows, align 1
  %conv25 = zext i8 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv25)
  %cmp26.not = icmp ugt i32 %10, %conv25
  br i1 %cmp26.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.do.body33_crit_edge

lor.lhs.false.do.body33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body33

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

do.body33:                                        ; preds = %lor.lhs.false.do.body33_crit_edge, %fill_local_addresses_vec.exit.do.body33_crit_edge
  %accept_addr = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 7
  %121 = ptrtoint ptr %accept_addr to i32
  call void @__asan_store1_noabort(i32 %121)
  store volatile i8 0, ptr %accept_addr, align 1
  br label %if.end39

if.end39:                                         ; preds = %do.body33, %lor.lhs.false.if.end39_crit_edge
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2.i)
  %cmp4182 = icmp sgt i32 %i.2.i, 0
  br i1 %cmp4182, label %if.end39.for.body_crit_edge, label %if.end39.for.end_crit_edge

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end39.for.body_crit_edge
  %i.083 = phi i32 [ %inc44, %for.body.for.body_crit_edge ], [ 0, %if.end39.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.mptcp_addr_info], ptr %addrs, i32 0, i32 %i.083
  %call43 = call i32 @__mptcp_subflow_connect(ptr noundef %msk, ptr noundef %arrayidx, ptr noundef nonnull %remote) #14
  %inc44 = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc44, %i.2.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end39.for.end_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  br i1 %tobool13.not, label %if.then48, label %for.end.add_addr_echo_crit_edge

for.end.add_addr_echo_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %add_addr_echo

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %port, align 4
  br label %add_addr_echo

add_addr_echo:                                    ; preds = %if.then48, %for.end.add_addr_echo_crit_edge, %lookup_subflow_by_daddr.exit.thread
  %call51 = call i32 @mptcp_pm_announce_addr(ptr noundef %msk, ptr noundef nonnull %remote, i1 noundef zeroext true) #14
  call void @mptcp_pm_nl_addr_send_ack(ptr noundef %msk)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %remote) #14
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %addrs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_nl_get_local_id(ptr noundef readonly %msk, ptr nocapture noundef readonly %skc) local_unnamed_addr #0 align 64 {
entry:
  %zero.i = alloca %struct.mptcp_addr_info, align 4
  %skc_local = alloca %struct.mptcp_addr_info, align 4
  %msk_local = alloca %struct.mptcp_addr_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %skc_local) #14
  %0 = call ptr @memset(ptr %skc_local, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msk_local) #14
  %1 = call ptr @memset(ptr %msk_local, i32 255, i32 24)
  %tobool.not = icmp eq ptr %msk, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b126 = load i1, ptr @mptcp_pm_nl_get_local_id.__already_done, align 1
  br i1 %.b126, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !189

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mptcp_pm_nl_get_local_id.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1003, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end40:                                         ; preds = %entry
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family.i, align 8
  %family.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 1
  %4 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %family.i, align 2
  %5 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skc_num.i, align 2
  %port.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 2
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %port.i, align 4
  %9 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %3, label %if.end40.local_address.exit_crit_edge [
    i16 2, label %if.then.i128
    i16 10, label %if.then7.i
  ]

if.end40.local_address.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %local_address.exit

if.then.i128:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %msk, i32 0, i32 1
  %10 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skc_rcv_saddr.i, align 4
  %12 = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %12, align 4
  br label %local_address.exit

if.then7.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %14 = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 3
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 11
  %15 = call ptr @memcpy(ptr %14, ptr %skc_v6_rcv_saddr.i, i32 16)
  br label %local_address.exit

local_address.exit:                               ; preds = %if.then7.i, %if.then.i128, %if.end40.local_address.exit_crit_edge
  %skc_family.i129 = getelementptr inbounds %struct.sock_common, ptr %skc, i32 0, i32 3
  %16 = ptrtoint ptr %skc_family.i129 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %skc_family.i129, align 8
  %family.i130 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 1
  %18 = ptrtoint ptr %family.i130 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %family.i130, align 2
  %19 = getelementptr inbounds %struct.sock_common, ptr %skc, i32 0, i32 2
  %skc_num.i131 = getelementptr inbounds %struct.anon.2, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %skc_num.i131 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %skc_num.i131, align 2
  %port.i132 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 2
  %22 = ptrtoint ptr %port.i132 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %port.i132, align 4
  %23 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %17, label %local_address.exit.local_address.exit137_crit_edge [
    i16 2, label %if.then.i134
    i16 10, label %if.then7.i136
  ]

local_address.exit.local_address.exit137_crit_edge: ; preds = %local_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %local_address.exit137

if.then.i134:                                     ; preds = %local_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  %skc_rcv_saddr.i133 = getelementptr inbounds %struct.anon, ptr %skc, i32 0, i32 1
  %24 = ptrtoint ptr %skc_rcv_saddr.i133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %skc_rcv_saddr.i133, align 4
  %26 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %26, align 4
  br label %local_address.exit137

if.then7.i136:                                    ; preds = %local_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  %28 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  %skc_v6_rcv_saddr.i135 = getelementptr inbounds %struct.sock_common, ptr %skc, i32 0, i32 11
  %29 = call ptr @memcpy(ptr %28, ptr %skc_v6_rcv_saddr.i135, i32 16)
  br label %local_address.exit137

local_address.exit137:                            ; preds = %if.then7.i136, %if.then.i134, %local_address.exit.local_address.exit137_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %17)
  %cmp.i = icmp eq i16 %3, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp6.i = icmp eq i16 %3, 2
  br i1 %cmp.i, label %if.then.i139, label %if.else14.i

if.then.i139:                                     ; preds = %local_address.exit137
  %30 = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 3
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i139
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %35)
  %cmp10.i = icmp eq i32 %32, %35
  br i1 %cmp10.i, label %if.then8.i.cleanup_crit_edge, label %if.then8.i.if.end42_crit_edge

if.then8.i.if.end42_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i139
  %36 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %30, ptr noundef dereferenceable(16) %36, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i140 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i140, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end42_crit_edge

if.else.i.if.end42_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else14.i:                                      ; preds = %local_address.exit137
  br i1 %cmp6.i, label %if.then19.i, label %if.else27.i

if.then19.i:                                      ; preds = %if.else14.i
  %37 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %arrayidx2.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %41, %39
  %arrayidx4.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %43, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then21.i, label %if.then19.i.if.end42_crit_edge

if.then19.i.if.end42_crit_edge:                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then21.i:                                      ; preds = %if.then19.i
  %44 = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %arrayidx.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp23.i = icmp eq i32 %46, %48
  br i1 %cmp23.i, label %if.then21.i.cleanup_crit_edge, label %if.then21.i.if.end42_crit_edge

if.then21.i.if.end42_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else27.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp30.i = icmp eq i16 %17, 2
  br i1 %cmp30.i, label %if.then32.i, label %if.end42.thread194

if.end42.thread194:                               ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %zero.i) #14
  %49 = call ptr @memset(ptr %zero.i, i32 0, i32 24)
  %50 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  br label %if.end44.i.i

if.then32.i:                                      ; preds = %if.else27.i
  %51 = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 3
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %arrayidx2.i73.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx2.i73.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx2.i73.i, align 4
  %or.i74.i = or i32 %55, %53
  %arrayidx4.i75.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx4.i75.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx4.i75.i, align 4
  %xor.i76.i = xor i32 %57, 65535
  %or5.i77.i = or i32 %or.i74.i, %xor.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i)
  %cmp.i78.i = icmp eq i32 %or5.i77.i, 0
  br i1 %cmp.i78.i, label %addresses_equal.exit, label %if.end42.thread192

if.end42.thread192:                               ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %zero.i) #14
  %58 = call ptr @memset(ptr %zero.i, i32 0, i32 24)
  %59 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  br label %if.then8.i.i

addresses_equal.exit:                             ; preds = %if.then32.i
  %arrayidx36.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx36.i, align 4
  %62 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %64)
  %cmp38.i = icmp eq i32 %61, %64
  br i1 %cmp38.i, label %addresses_equal.exit.cleanup_crit_edge, label %if.end42.thread

addresses_equal.exit.cleanup_crit_edge:           ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42.thread:                                  ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %zero.i) #14
  %65 = call ptr @memset(ptr %zero.i, i32 0, i32 24)
  br label %if.then8.i.i

if.end42:                                         ; preds = %if.then21.i.if.end42_crit_edge, %if.then19.i.if.end42_crit_edge, %if.else.i.if.end42_crit_edge, %if.then8.i.if.end42_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %zero.i) #14
  %66 = call ptr @memset(ptr %zero.i, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp6.i.i = icmp eq i16 %17, 2
  %67 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3
  br i1 %cmp6.i.i, label %if.end42.if.then8.i.i_crit_edge, label %if.end42.if.end44.i.i_crit_edge

if.end42.if.end44.i.i_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i.i

if.end42.if.then8.i.i_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end42.if.then8.i.i_crit_edge, %if.end42.thread, %if.end42.thread192
  %68 = phi ptr [ %62, %if.end42.thread ], [ %67, %if.end42.if.then8.i.i_crit_edge ], [ %59, %if.end42.thread192 ]
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = getelementptr inbounds %struct.mptcp_addr_info, ptr %zero.i, i32 0, i32 3
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %73)
  %cmp10.i.i = icmp eq i32 %70, %73
  br i1 %cmp10.i.i, label %if.then8.i.i.address_zero.exit_crit_edge, label %if.then8.i.i.address_zero.exit.thread_crit_edge

if.then8.i.i.address_zero.exit.thread_crit_edge:  ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %address_zero.exit.thread

if.then8.i.i.address_zero.exit_crit_edge:         ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %address_zero.exit

if.end44.i.i:                                     ; preds = %if.end42.if.end44.i.i_crit_edge, %if.end42.thread194
  %74 = phi ptr [ %50, %if.end42.thread194 ], [ %67, %if.end42.if.end44.i.i_crit_edge ]
  %75 = getelementptr inbounds %struct.mptcp_addr_info, ptr %zero.i, i32 0, i32 3
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %74, ptr noundef dereferenceable(16) %75, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.end44.i.i.address_zero.exit_crit_edge, label %if.end44.i.i.address_zero.exit.thread_crit_edge

if.end44.i.i.address_zero.exit.thread_crit_edge:  ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %address_zero.exit.thread

if.end44.i.i.address_zero.exit_crit_edge:         ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %address_zero.exit

address_zero.exit.thread:                         ; preds = %if.end44.i.i.address_zero.exit.thread_crit_edge, %if.then8.i.i.address_zero.exit.thread_crit_edge
  %.ph = phi ptr [ %68, %if.then8.i.i.address_zero.exit.thread_crit_edge ], [ %74, %if.end44.i.i.address_zero.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %zero.i) #14
  br label %if.end45

address_zero.exit:                                ; preds = %if.end44.i.i.address_zero.exit_crit_edge, %if.then8.i.i.address_zero.exit_crit_edge
  %76 = phi ptr [ %74, %if.end44.i.i.address_zero.exit_crit_edge ], [ %68, %if.then8.i.i.address_zero.exit_crit_edge ]
  %port52.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %zero.i, i32 0, i32 2
  %77 = ptrtoint ptr %port52.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %port52.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %78)
  %cmp54.i.i = icmp eq i16 %21, %78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %zero.i) #14
  br i1 %cmp54.i.i, label %address_zero.exit.cleanup_crit_edge, label %address_zero.exit.if.end45_crit_edge

address_zero.exit.if.end45_crit_edge:             ; preds = %address_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

address_zero.exit.cleanup_crit_edge:              ; preds = %address_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end45:                                         ; preds = %address_zero.exit.if.end45_crit_edge, %address_zero.exit.thread
  %79 = phi ptr [ %.ph, %address_zero.exit.thread ], [ %76, %address_zero.exit.if.end45_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %80 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skc_net.i, align 4
  %82 = load i32, ptr @pm_nl_pernet_id, align 4
  %call47 = tail call fastcc ptr @net_generic(ptr noundef %81, i32 noundef %82)
  %83 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %86, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end45.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end45.rcu_read_lock.exit_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end45
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end45.rcu_read_lock.exit_crit_edge
  %call49 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end58_crit_edge

rcu_read_lock.exit.do.end58_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true.do.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true
  %.b124125 = load i1, ptr @mptcp_pm_nl_get_local_id.__warned, align 1
  br i1 %.b124125, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mptcp_pm_nl_get_local_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1020, ptr noundef nonnull @.str.13) #14
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true.do.end58_crit_edge, %rcu_read_lock.exit.do.end58_crit_edge
  %local_addr_list = getelementptr inbounds %struct.pm_nl_pernet, ptr %call47, i32 0, i32 1
  %87 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %87)
  %entry1.0198 = load volatile ptr, ptr %local_addr_list, align 4
  %cmp.not199 = icmp eq ptr %entry1.0198, %local_addr_list
  br i1 %cmp.not199, label %do.end58.for.end_crit_edge, label %for.body.lr.ph

do.end58.for.end_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end58
  %88 = ptrtoint ptr %family.i130 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %family.i130, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %89)
  %cmp30.i163 = icmp eq i16 %89, 2
  %arrayidx2.i.i153 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i155 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i160 = getelementptr inbounds %struct.mptcp_addr_info, ptr %skc_local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %entry1.0200 = phi ptr [ %entry1.0198, %for.body.lr.ph ], [ %entry1.0, %for.cond.backedge.for.body_crit_edge ]
  %port = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1, i32 2
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool66 = icmp ne i16 %91, 0
  %family.i142 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %family.i142 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %family.i142, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %89)
  %cmp.i144 = icmp eq i16 %93, %89
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %93)
  %cmp6.i145 = icmp eq i16 %93, 2
  br i1 %cmp.i144, label %if.then.i146, label %if.else14.i152

if.then.i146:                                     ; preds = %for.body
  %94 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1, i32 3
  br i1 %cmp6.i145, label %if.then8.i148, label %if.else.i151

if.then8.i148:                                    ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %97 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp10.i147 = icmp eq i32 %96, %98
  br label %if.end44.i176

if.else.i151:                                     ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i149 = call i32 @bcmp(ptr noundef dereferenceable(16) %94, ptr noundef dereferenceable(16) %79, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i149)
  %tobool.not.i150 = icmp eq i32 %bcmp.i149, 0
  br label %if.end44.i176

if.else14.i152:                                   ; preds = %for.body
  br i1 %cmp6.i145, label %if.then19.i159, label %if.else27.i164

if.then19.i159:                                   ; preds = %if.else14.i152
  %99 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %79, align 4
  %101 = ptrtoint ptr %arrayidx2.i.i153 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx2.i.i153, align 4
  %or.i.i154 = or i32 %102, %100
  %103 = ptrtoint ptr %arrayidx4.i.i155 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx4.i.i155, align 4
  %xor.i.i156 = xor i32 %104, 65535
  %or5.i.i157 = or i32 %or.i.i154, %xor.i.i156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i157)
  %cmp.i.i158 = icmp eq i32 %or5.i.i157, 0
  br i1 %cmp.i.i158, label %if.then21.i162, label %if.then19.i159.for.cond.backedge_crit_edge

if.then19.i159.for.cond.backedge_crit_edge:       ; preds = %if.then19.i159
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then21.i162:                                   ; preds = %if.then19.i159
  call void @__sanitizer_cov_trace_pc() #16
  %105 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1, i32 3
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %108 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i160, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp23.i161 = icmp eq i32 %107, %109
  br label %if.end44.i176

if.else27.i164:                                   ; preds = %if.else14.i152
  br i1 %cmp30.i163, label %if.then32.i171, label %if.else27.i164.for.cond.backedge_crit_edge

if.else27.i164.for.cond.backedge_crit_edge:       ; preds = %if.else27.i164
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then32.i171:                                   ; preds = %if.else27.i164
  %110 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1, i32 3
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %arrayidx2.i73.i165 = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx2.i73.i165 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx2.i73.i165, align 4
  %or.i74.i166 = or i32 %114, %112
  %arrayidx4.i75.i167 = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %115 = ptrtoint ptr %arrayidx4.i75.i167 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx4.i75.i167, align 4
  %xor.i76.i168 = xor i32 %116, 65535
  %or5.i77.i169 = or i32 %or.i74.i166, %xor.i76.i168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i169)
  %cmp.i78.i170 = icmp eq i32 %or5.i77.i169, 0
  br i1 %cmp.i78.i170, label %if.then34.i174, label %if.then32.i171.for.cond.backedge_crit_edge

if.then32.i171.for.cond.backedge_crit_edge:       ; preds = %if.then32.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then34.i174:                                   ; preds = %if.then32.i171
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx36.i172 = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  %117 = ptrtoint ptr %arrayidx36.i172 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx36.i172, align 4
  %119 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp38.i173 = icmp eq i32 %118, %120
  br label %if.end44.i176

if.end44.i176:                                    ; preds = %if.then34.i174, %if.then21.i162, %if.else.i151, %if.then8.i148
  %addr_equals.0.shrunk.i175 = phi i1 [ %cmp10.i147, %if.then8.i148 ], [ %tobool.not.i150, %if.else.i151 ], [ %cmp23.i161, %if.then21.i162 ], [ %cmp38.i173, %if.then34.i174 ]
  %121 = and i1 %tobool66, %addr_equals.0.shrunk.i175
  br i1 %121, label %if.end50.i, label %addresses_equal.exit179

if.end50.i:                                       ; preds = %if.end44.i176
  %122 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %port, align 4
  %124 = ptrtoint ptr %port.i132 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %port.i132, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %123, i16 %125)
  %cmp54.i = icmp eq i16 %123, %125
  br i1 %cmp54.i, label %if.end50.i.if.then68_crit_edge, label %if.end50.i.for.cond.backedge_crit_edge

if.end50.i.for.cond.backedge_crit_edge:           ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end50.i.if.then68_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then68

addresses_equal.exit179:                          ; preds = %if.end44.i176
  br i1 %addr_equals.0.shrunk.i175, label %addresses_equal.exit179.if.then68_crit_edge, label %addresses_equal.exit179.for.cond.backedge_crit_edge

addresses_equal.exit179.for.cond.backedge_crit_edge: ; preds = %addresses_equal.exit179
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

addresses_equal.exit179.if.then68_crit_edge:      ; preds = %addresses_equal.exit179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then68

for.cond.backedge:                                ; preds = %addresses_equal.exit179.for.cond.backedge_crit_edge, %if.end50.i.for.cond.backedge_crit_edge, %if.then32.i171.for.cond.backedge_crit_edge, %if.else27.i164.for.cond.backedge_crit_edge, %if.then19.i159.for.cond.backedge_crit_edge
  %126 = ptrtoint ptr %entry1.0200 to i32
  call void @__asan_load4_noabort(i32 %126)
  %entry1.0 = load volatile ptr, ptr %entry1.0200, align 4
  %cmp.not = icmp eq ptr %entry1.0, %local_addr_list
  br i1 %cmp.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then68:                                        ; preds = %addresses_equal.exit179.if.then68_crit_edge, %if.end50.i.if.then68_crit_edge
  %addr.le = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0200, i32 0, i32 1
  %127 = ptrtoint ptr %addr.le to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %addr.le, align 4
  %conv = zext i8 %128 to i32
  br label %for.end

for.end:                                          ; preds = %if.then68, %for.cond.backedge.for.end_crit_edge, %do.end58.for.end_crit_edge
  %ret.0 = phi i32 [ %conv, %if.then68 ], [ -1, %do.end58.for.end_crit_edge ], [ -1, %for.cond.backedge.for.end_crit_edge ]
  %call.i180 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i180, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i183

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i183:                               ; preds = %for.end
  %call1.i181 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i181)
  %tobool.not.i182 = icmp eq i32 %call1.i181, 0
  br i1 %tobool.not.i182, label %land.lhs.true.i183.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i185

land.lhs.true.i183.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i185:                              ; preds = %land.lhs.true.i183
  %.b4.i184 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i184, label %land.lhs.true2.i185.rcu_read_unlock.exit_crit_edge, label %if.then.i186

land.lhs.true2.i185.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i185
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i186:                                     ; preds = %land.lhs.true2.i185
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i186, %land.lhs.true2.i185.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i183.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %129 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i187 = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i.i.i.i187 to ptr
  %preempt_count.i.i.i.i188 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %preempt_count.i.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %preempt_count.i.i.i.i188, align 4
  %sub.i.i.i = add i32 %132, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i188, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp80 = icmp sgt i32 %ret.0, -1
  br i1 %cmp80, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end83

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end83:                                         ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %133 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %133, i32 noundef 2592, i32 noundef 44) #18
  %tobool85.not = icmp eq ptr %call7.i, null
  br i1 %tobool85.not, label %if.end83.cleanup_crit_edge, label %if.end87

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end87:                                         ; preds = %if.end83
  %addr88 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 1
  %134 = call ptr @memcpy(ptr %addr88, ptr %skc_local, i32 24)
  %135 = ptrtoint ptr %addr88 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %addr88, align 8
  %port92 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 1, i32 2
  %136 = ptrtoint ptr %port92 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %port92, align 4
  %ifindex = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 3
  %137 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %ifindex, align 4
  %flags = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 2
  %138 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %flags, align 8
  %lsk = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 4
  %139 = ptrtoint ptr %lsk to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %lsk, align 8
  %call93 = tail call fastcc i32 @mptcp_pm_nl_append_new_local_addr(ptr noundef %call47, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then96:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.end87.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge, %address_zero.exit.cleanup_crit_edge, %addresses_equal.exit.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %addresses_equal.exit.cleanup_crit_edge ], [ 0, %address_zero.exit.cleanup_crit_edge ], [ %ret.0, %rcu_read_unlock.exit.cleanup_crit_edge ], [ -12, %if.end83.cleanup_crit_edge ], [ %call93, %if.then96 ], [ %call93, %if.end87.cleanup_crit_edge ], [ -1, %land.rhs.cleanup_crit_edge ], [ 0, %if.then8.i.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.then21.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msk_local) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %skc_local) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_pm_nl_append_new_local_addr(ptr noundef %pernet, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %pernet) #14
  %next_id = getelementptr inbounds %struct.pm_nl_pernet, ptr %pernet, i32 0, i32 8
  %0 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp eq i32 %1, 255
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %next_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %addrs = getelementptr inbounds %struct.pm_nl_pernet, ptr %pernet, i32 0, i32 2
  %3 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp3 = icmp ugt i32 %4, 7
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 4
  %conv = zext i8 %6 to i32
  %id_bitmap = getelementptr inbounds %struct.pm_nl_pernet, ptr %pernet, i32 0, i32 9
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %id_bitmap, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end7, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end7:                                          ; preds = %if.end5
  %local_addr_list = getelementptr inbounds %struct.pm_nl_pernet, ptr %pernet, i32 0, i32 1
  %11 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %cur.0151 = load ptr, ptr %local_addr_list, align 4
  %cmp9.not152 = icmp eq ptr %cur.0151, %local_addr_list
  br i1 %cmp9.not152, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %flags.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 4
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp eq i8 %14, 1
  %family1.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %family1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %family1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %cmp30.i = icmp eq i16 %16, 2
  %17 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 3
  %arrayidx2.i.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i143 = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  %port52.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %cur.0153 = phi ptr [ %cur.0151, %for.body.lr.ph ], [ %cur.0, %for.cond.backedge.for.body_crit_edge ]
  br i1 %cmp.i, label %land.rhs, label %for.body.land.end_crit_edge

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i140 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 2
  %18 = ptrtoint ptr %flags.i140 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags.i140, align 4
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i141 = icmp eq i8 %20, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.land.end_crit_edge
  %21 = phi i1 [ false, %for.body.land.end_crit_edge ], [ %cmp.i141, %land.rhs ]
  %family.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %16)
  %cmp.i142 = icmp eq i16 %23, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp6.i = icmp eq i16 %23, 2
  br i1 %cmp.i142, label %if.then.i, label %if.else14.i

if.then.i:                                        ; preds = %land.end
  %24 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 1, i32 3
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp10.i = icmp eq i32 %26, %28
  br label %if.end44.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %24, ptr noundef dereferenceable(16) %17, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br label %if.end44.i

if.else14.i:                                      ; preds = %land.end
  br i1 %cmp6.i, label %if.then19.i, label %if.else27.i

if.then19.i:                                      ; preds = %if.else14.i
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %17, align 4
  %31 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %32, %30
  %33 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %34, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then21.i, label %if.then19.i.for.cond.backedge_crit_edge

if.then19.i.for.cond.backedge_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp23.i = icmp eq i32 %37, %39
  br label %if.end44.i

if.else27.i:                                      ; preds = %if.else14.i
  br i1 %cmp30.i, label %if.then32.i, label %if.else27.i.for.cond.backedge_crit_edge

if.else27.i.for.cond.backedge_crit_edge:          ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then32.i:                                      ; preds = %if.else27.i
  %40 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %arrayidx2.i73.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx2.i73.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx2.i73.i, align 4
  %or.i74.i = or i32 %44, %42
  %arrayidx4.i75.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx4.i75.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx4.i75.i, align 4
  %xor.i76.i = xor i32 %46, 65535
  %or5.i77.i = or i32 %or.i74.i, %xor.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i)
  %cmp.i78.i = icmp eq i32 %or5.i77.i, 0
  br i1 %cmp.i78.i, label %if.then34.i, label %if.then32.i.for.cond.backedge_crit_edge

if.then32.i.for.cond.backedge_crit_edge:          ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then34.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx36.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx36.i, align 4
  %49 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp38.i = icmp eq i32 %48, %50
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then34.i, %if.then21.i, %if.else.i, %if.then8.i
  %addr_equals.0.shrunk.i = phi i1 [ %cmp10.i, %if.then8.i ], [ %tobool.not.i, %if.else.i ], [ %cmp23.i, %if.then21.i ], [ %cmp38.i, %if.then34.i ]
  %51 = and i1 %21, %addr_equals.0.shrunk.i
  br i1 %51, label %if.end50.i, label %addresses_equal.exit

if.end50.i:                                       ; preds = %if.end44.i
  %port.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %cur.0153, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %port.i, align 4
  %54 = ptrtoint ptr %port52.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %port52.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp54.i = icmp eq i16 %53, %55
  br i1 %cmp54.i, label %if.end50.i.out_crit_edge, label %if.end50.i.for.cond.backedge_crit_edge

if.end50.i.for.cond.backedge_crit_edge:           ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end50.i.out_crit_edge:                         ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

addresses_equal.exit:                             ; preds = %if.end44.i
  br i1 %addr_equals.0.shrunk.i, label %addresses_equal.exit.out_crit_edge, label %addresses_equal.exit.for.cond.backedge_crit_edge

addresses_equal.exit.for.cond.backedge_crit_edge: ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

addresses_equal.exit.out_crit_edge:               ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.cond.backedge:                                ; preds = %addresses_equal.exit.for.cond.backedge_crit_edge, %if.end50.i.for.cond.backedge_crit_edge, %if.then32.i.for.cond.backedge_crit_edge, %if.else27.i.for.cond.backedge_crit_edge, %if.then19.i.for.cond.backedge_crit_edge
  %56 = ptrtoint ptr %cur.0153 to i32
  call void @__asan_load4_noabort(i32 %56)
  %cur.0 = load ptr, ptr %cur.0153, align 4
  %cmp9.not = icmp eq ptr %cur.0, %local_addr_list
  br i1 %cmp9.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %if.end7.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool27.not = icmp eq i8 %6, 0
  br i1 %tobool27.not, label %find_next.preheader, label %if.end45

find_next.preheader:                              ; preds = %for.end
  %57 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %next_id, align 4
  %call32154 = tail call i32 @_find_next_zero_bit_be(ptr noundef %id_bitmap, i32 noundef 256, i32 noundef %58) #14
  %conv33155 = trunc i32 %call32154 to i8
  %59 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv33155, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv33155)
  %tobool38.not156 = icmp eq i8 %conv33155, 0
  br i1 %tobool38.not156, label %find_next.preheader.land.lhs.true_crit_edge, label %find_next.preheader.if.end50_crit_edge

find_next.preheader.if.end50_crit_edge:           ; preds = %find_next.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

find_next.preheader.land.lhs.true_crit_edge:      ; preds = %find_next.preheader
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then42.land.lhs.true_crit_edge, %find_next.preheader.land.lhs.true_crit_edge
  %60 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %next_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp40.not = icmp eq i32 %61, 1
  br i1 %cmp40.not, label %land.lhs.true.out_crit_edge, label %if.then42

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then42:                                        ; preds = %land.lhs.true
  %62 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %next_id, align 4
  %call32 = tail call i32 @_find_next_zero_bit_be(ptr noundef %id_bitmap, i32 noundef 256, i32 noundef 1) #14
  %conv33 = trunc i32 %call32 to i8
  %63 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv33, ptr %addr, align 4
  %tobool38.not = icmp eq i8 %conv33, 0
  br i1 %tobool38.not, label %if.then42.land.lhs.true_crit_edge, label %if.end50.loopexit

if.then42.land.lhs.true_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end45:                                         ; preds = %for.end
  %64 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %64)
  %.pr = load i8, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool48.not = icmp eq i8 %.pr, 0
  br i1 %tobool48.not, label %if.end45.out_crit_edge, label %if.end45.if.end50_crit_edge

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end50.loopexit:                                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %conv33.le = trunc i32 %call32 to i8
  br label %if.end50

if.end50:                                         ; preds = %if.end50.loopexit, %if.end45.if.end50_crit_edge, %find_next.preheader.if.end50_crit_edge
  %65 = phi i8 [ %.pr, %if.end45.if.end50_crit_edge ], [ %conv33155, %find_next.preheader.if.end50_crit_edge ], [ %conv33.le, %if.end50.loopexit ]
  %conv53 = zext i8 %65 to i32
  %rem.i = and i32 %conv53, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv53, 5
  %add.ptr.i = getelementptr i32, ptr %id_bitmap, i32 %div2.i
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %67
  store i32 %or.i, ptr %add.ptr.i, align 4
  %68 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %addr, align 4
  %conv58 = zext i8 %69 to i32
  %70 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %next_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv58)
  %cmp60 = icmp ult i32 %71, %conv58
  br i1 %cmp60, label %if.then62, label %if.end50.if.end67_crit_edge

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then62:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv58, ptr %next_id, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end50.if.end67_crit_edge
  %flags = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 2
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %flags, align 4
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool69.not = icmp eq i8 %75, 0
  br i1 %tobool69.not, label %if.end67.if.end78_crit_edge, label %if.then70

if.end67.if.end78_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %add_addr_signal_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %pernet, i32 0, i32 4
  %76 = ptrtoint ptr %add_addr_signal_max to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add_addr_signal_max, align 4
  %add = add i32 %77, 1
  store volatile i32 %add, ptr %add_addr_signal_max, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %if.end67.if.end78_crit_edge
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %flags, align 4
  %80 = and i8 %79, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool82.not = icmp eq i8 %80, 0
  br i1 %tobool82.not, label %if.end78.if.end95_crit_edge, label %if.then83

if.end78.if.end95_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  %local_addr_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %pernet, i32 0, i32 6
  %81 = ptrtoint ptr %local_addr_max to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %local_addr_max, align 4
  %add89 = add i32 %82, 1
  store volatile i32 %add89, ptr %local_addr_max, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then83, %if.end78.if.end95_crit_edge
  %83 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addrs, align 4
  %inc = add i32 %84, 1
  store i32 %inc, ptr %addrs, align 4
  %prev.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %pernet, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %86, ptr noundef %local_addr_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end95.list_add_tail_rcu.exit_crit_edge

if.end95.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %local_addr_list, ptr %entry1, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %88 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !190
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %entry1, ptr %86, align 4
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %entry1, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end95.list_add_tail_rcu.exit_crit_edge
  %91 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %addr, align 4
  %conv101 = zext i8 %92 to i32
  br label %out

out:                                              ; preds = %list_add_tail_rcu.exit, %if.end45.out_crit_edge, %land.lhs.true.out_crit_edge, %addresses_equal.exit.out_crit_edge, %if.end50.i.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.out_crit_edge ], [ -22, %if.end5.out_crit_edge ], [ %conv101, %list_add_tail_rcu.exit ], [ -22, %if.end45.out_crit_edge ], [ -22, %land.lhs.true.out_crit_edge ], [ -22, %addresses_equal.exit.out_crit_edge ], [ -22, %if.end50.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %pernet) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_nl_data_init(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2) #14
  %subflows_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 7
  %3 = ptrtoint ptr %subflows_max.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %subflows_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %5 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i.i, align 4
  %7 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i50 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7) #14
  %local_addr_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i50, i32 0, i32 6
  %8 = ptrtoint ptr %local_addr_max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %local_addr_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = select i1 %tobool6.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i.i, align 4
  %12 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i52 = tail call fastcc ptr @net_generic(ptr noundef %11, i32 noundef %12) #14
  %add_addr_signal_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i52, i32 0, i32 4
  %13 = ptrtoint ptr %add_addr_signal_max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add_addr_signal_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9 = icmp ne i32 %14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %15 = phi i1 [ %tobool9, %lor.rhs ], [ true, %entry.lor.end_crit_edge ]
  %work_pending = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %frombool12 = zext i1 %15 to i8
  %16 = ptrtoint ptr %work_pending to i32
  call void @__asan_store1_noabort(i32 %16)
  store volatile i8 %frombool12, ptr %work_pending, align 2
  %17 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i.i, align 4
  %19 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i54 = tail call fastcc ptr @net_generic(ptr noundef %18, i32 noundef %19) #14
  %add_addr_accept_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i54, i32 0, i32 5
  %20 = ptrtoint ptr %add_addr_accept_max.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %add_addr_accept_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not = icmp ne i32 %21, 0
  %spec.select = select i1 %tobool23.not, i1 %tobool, i1 false
  %frombool = zext i1 %tobool to i8
  %accept_addr = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 7
  %frombool25 = zext i1 %spec.select to i8
  %22 = ptrtoint ptr %accept_addr to i32
  call void @__asan_store1_noabort(i32 %22)
  store volatile i8 %frombool25, ptr %accept_addr, align 1
  %accept_subflow = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 8
  %23 = ptrtoint ptr %accept_subflow to i32
  call void @__asan_store1_noabort(i32 %23)
  store volatile i8 %frombool, ptr %accept_subflow, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_nl_subflow_chk_stale(ptr noundef %msk, ptr noundef %ssk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call i32 @mptcp_stale_loss_cnt(ptr noundef %3) #14
  %stale = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %4 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %stale, align 8
  %5 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false4:                                   ; preds = %entry
  %stale_count = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 23
  %6 = ptrtoint ptr %stale_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stale_count, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %conv)
  %cmp.not = icmp ult i32 %call2, %conv
  br i1 %cmp.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %sub = add i32 %call2, -1
  %8 = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 34
  %9 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %iter.065 = load ptr, ptr %conn_list, align 8
  %cmp10.not66 = icmp eq ptr %iter.065, %conn_list
  br i1 %cmp10.not66, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %iter.067 = phi ptr [ %iter.0, %for.inc.for.body_crit_edge ], [ %iter.065, %if.end.for.body_crit_edge ]
  %cmp12.not = icmp eq ptr %iter.067, %1
  br i1 %cmp12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call14 = tail call zeroext i1 @mptcp_subflow_active(ptr noundef %iter.067) #14
  br i1 %call14, label %land.lhs.true16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true
  %stale_count17 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %iter.067, i32 0, i32 1, i32 0, i32 23
  %10 = ptrtoint ptr %stale_count17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stale_count17, align 1
  %conv18 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv18)
  %cmp19 = icmp ugt i32 %8, %conv18
  br i1 %cmp19, label %if.then21, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true16
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 4, i32 3
  %12 = tail call ptr @llvm.returnaddress(i32 0) #14
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %13) #14
  %call.i = tail call zeroext i1 @__lock_sock_fast(ptr noundef %ssk) #14
  %14 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 25
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 4
  %cmp.i.i = icmp eq ptr %16, null
  br i1 %cmp.i.i, label %tcp_rtx_and_write_queues_empty.exit, label %if.then21.if.then24_crit_edge

if.then21.if.then24_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

tcp_rtx_and_write_queues_empty.exit:              ; preds = %if.then21
  %write_seq.i.i = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 80
  %17 = ptrtoint ptr %write_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %write_seq.i.i, align 4
  %snd_nxt.i.i = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 10
  %19 = ptrtoint ptr %snd_nxt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %snd_nxt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i3.i = icmp eq i32 %18, %20
  br i1 %cmp.i3.i, label %tcp_rtx_and_write_queues_empty.exit.if.end30_crit_edge, label %tcp_rtx_and_write_queues_empty.exit.if.then24_crit_edge

tcp_rtx_and_write_queues_empty.exit.if.then24_crit_edge: ; preds = %tcp_rtx_and_write_queues_empty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

tcp_rtx_and_write_queues_empty.exit.if.end30_crit_edge: ; preds = %tcp_rtx_and_write_queues_empty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then24:                                        ; preds = %tcp_rtx_and_write_queues_empty.exit.if.then24_crit_edge, %if.then21.if.then24_crit_edge
  %21 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load26 = load i32, ptr %stale, align 8
  %bf.set = or i32 %bf.load26, 4096
  store i32 %bf.set, ptr %stale, align 8
  %call28 = tail call zeroext i1 @__mptcp_retransmit_pending_data(ptr noundef %msk) #14
  %22 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 30, i32 8
  %24 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then24.if.end30_crit_edge, label %do.body3.i, !prof !187

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

do.body3.i:                                       ; preds = %if.then24
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !191
  %27 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mptcp_statistics.i, align 4
  %arrayidx.i = getelementptr [43 x i32], ptr %28, i32 0, i32 41
  %29 = ptrtoint ptr %arrayidx.i to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17.i, align 4
  %add.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add18.i = add i32 %38, 1
  store i32 %add18.i, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !192
  %and.i.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool29.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool29.not.i, label %if.then38.i, label %do.body3.i.do.end40.i_crit_edge, !prof !187

do.body3.i.do.end40.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end40.i

if.then38.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then38.i, %do.body3.i.do.end40.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #14, !srcloc !193
  br label %if.end30

if.end30:                                         ; preds = %do.end40.i, %if.then24.if.end30_crit_edge, %tcp_rtx_and_write_queues_empty.exit.if.end30_crit_edge
  br i1 %call.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @release_sock(ptr noundef %ssk) #14
  br label %unlock_sock_fast.exit

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 4
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %13) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i) #14
  br label %unlock_sock_fast.exit

unlock_sock_fast.exit:                            ; preds = %if.else.i, %if.then.i
  tail call void @__mptcp_push_pending(ptr noundef %msk, i32 noundef 0) #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %40 = ptrtoint ptr %iter.067 to i32
  call void @__asan_load4_noabort(i32 %40)
  %iter.0 = load ptr, ptr %iter.067, align 8
  %cmp10.not = icmp eq ptr %iter.0, %conn_list
  br i1 %cmp10.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %unlock_sock_fast.exit, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_stale_loss_cnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_subflow_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mptcp_retransmit_pending_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mptcp_push_pending(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_get_flags_and_ifindex_by_id(ptr noundef %net, i32 noundef %id, ptr nocapture noundef writeonly %flags, ptr nocapture noundef writeonly %ifindex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %flags, align 1
  %1 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not = icmp eq i32 %id, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %6 = load i32, ptr @pm_nl_pernet_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %6)
  %local_addr_list.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %rcu_read_lock.exit
  %entry1.0.in.i = phi ptr [ %local_addr_list.i, %rcu_read_lock.exit ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %local_addr_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %addr.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr.i, align 4
  %conv.i = zext i8 %9 to i32
  %cmp4.i = icmp eq i32 %conv.i, %id
  br i1 %cmp4.i, label %__lookup_addr_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__lookup_addr_by_id.exit:                         ; preds = %for.body.i
  %tobool3.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool3.not, label %__lookup_addr_by_id.exit.if.end_crit_edge, label %if.then4

__lookup_addr_by_id.exit.if.end_crit_edge:        ; preds = %__lookup_addr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then4:                                         ; preds = %__lookup_addr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  %flags5 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags5, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %flags, align 1
  %ifindex6 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %ifindex6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex6, align 4
  %15 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ifindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %__lookup_addr_by_id.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i13, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %if.end
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %16 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i20 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end7

if.end7:                                          ; preds = %rcu_read_unlock.exit, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_event_addr_removed(ptr nocapture noundef readonly %msk, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i30 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp.i = icmp ult i8 %2, 2
  br i1 %cmp.i, label %land.rhs.i, label %genl_has_listeners.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @genl_has_listeners.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !189

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @genl_has_listeners.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 437, i32 noundef 9, ptr noundef null) #14
  br label %if.end

genl_has_listeners.exit:                          ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 5), align 4
  %add.i = add i32 %3, 1
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genl_sock.i, align 4
  %call.i = tail call i32 @netlink_has_listeners(ptr noundef %5, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %genl_has_listeners.exit.cleanup_crit_edge, label %genl_has_listeners.exit.if.end_crit_edge

genl_has_listeners.exit.if.end_crit_edge:         ; preds = %genl_has_listeners.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

genl_has_listeners.exit.cleanup_crit_edge:        ; preds = %genl_has_listeners.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %genl_has_listeners.exit.if.end_crit_edge, %if.then.i, %land.rhs.i.if.end_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @mptcp_genl_family, i32 noundef 0, i8 noundef zeroext 7) #14
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.nla_put_failure_crit_edge, label %if.end9

if.end5.nla_put_failure_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end9:                                          ; preds = %if.end5
  %token = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 16
  %6 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %token, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i29 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool11.not = icmp eq i32 %call.i29, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.nla_put_failure_crit_edge

if.end9.nla_put_failure_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i30) #14
  %9 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %id, ptr %tmp.i30, align 1
  %call.i31 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i30) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool15.not = icmp eq i32 %call.i31, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.nla_put_failure_crit_edge

if.end13.nla_put_failure_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end17:                                         ; preds = %if.end13
  %add.ptr1.i = getelementptr i8, ptr %call6, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %13 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i.i = icmp ult i8 %13, 2
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end17
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !189

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 308, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %14 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 5), align 4
  %add.i.i = add i32 %14, 1
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %genl_sock.i.i, align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %17 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i.i, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %16, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %add.i.i, i32 noundef 2592) #14
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end13.nla_put_failure_crit_edge, %if.end9.nla_put_failure_crit_edge, %if.end5.nla_put_failure_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %genl_has_listeners.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_nl_mcast_send(ptr nocapture noundef readonly %net, ptr noundef %nlskb, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %0)
  %cmp.i = icmp ult i8 %0, 2
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge, label %if.then.i, !prof !189

land.rhs.i.genlmsg_multicast_netns.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %genlmsg_multicast_netns.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 308, i32 noundef 9, ptr noundef null) #14
  br label %genlmsg_multicast_netns.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 5), align 4
  %add.i = add i32 %1, 1
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 21
  %2 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 3, i32 16
  %4 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %dst_group.i.i, align 8
  %call.i.i = tail call i32 @netlink_broadcast(ptr noundef %3, ptr noundef %nlskb, i32 noundef 0, i32 noundef %add.i, i32 noundef %gfp) #14
  br label %genlmsg_multicast_netns.exit

genlmsg_multicast_netns.exit:                     ; preds = %if.end39.i, %if.then.i, %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_event_addr_announced(ptr nocapture noundef readonly %msk, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %tmp.i91 = alloca i16, align 2
  %tmp.i89 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp.i = icmp ult i8 %2, 2
  br i1 %cmp.i, label %land.rhs.i, label %genl_has_listeners.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @genl_has_listeners.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !189

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @genl_has_listeners.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 437, i32 noundef 9, ptr noundef null) #14
  br label %if.end

genl_has_listeners.exit:                          ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 5), align 4
  %add.i = add i32 %3, 1
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genl_sock.i, align 4
  %call.i = tail call i32 @netlink_has_listeners(ptr noundef %5, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %genl_has_listeners.exit.cleanup_crit_edge, label %genl_has_listeners.exit.if.end_crit_edge

genl_has_listeners.exit.if.end_crit_edge:         ; preds = %genl_has_listeners.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

genl_has_listeners.exit.cleanup_crit_edge:        ; preds = %genl_has_listeners.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %genl_has_listeners.exit.if.end_crit_edge, %if.then.i, %land.rhs.i.if.end_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @mptcp_genl_family, i32 noundef 0, i8 noundef zeroext 6) #14
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.nla_put_failure_crit_edge, label %if.end9

if.end5.nla_put_failure_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end9:                                          ; preds = %if.end5
  %token = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 16
  %6 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %token, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i88 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool11.not = icmp eq i32 %call.i88, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.nla_put_failure_crit_edge

if.end9.nla_put_failure_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end13:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i89) #14
  %11 = ptrtoint ptr %tmp.i89 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i89, align 1
  %call.i90 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i89) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i89) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool15.not = icmp eq i32 %call.i90, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.nla_put_failure_crit_edge

if.end13.nla_put_failure_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end17:                                         ; preds = %if.end13
  %port = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i91) #14
  %14 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tmp.i91, align 2
  %call.i92 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %tmp.i91) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i91) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool19.not = icmp eq i32 %call.i92, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.nla_put_failure_crit_edge

if.end17.nla_put_failure_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end21:                                         ; preds = %if.end17
  %family = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %family, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %16, label %land.end [
    i16 2, label %sw.bb
    i16 10, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end21
  %18 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %21 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp.i.i, align 4
  %call.i.i93 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool23.not = icmp eq i32 %call.i.i93, 0
  br i1 %tobool23.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.nla_put_failure_crit_edge

sw.bb.nla_put_failure_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end21
  %22 = getelementptr inbounds %struct.mptcp_addr_info, ptr %info, i32 0, i32 3
  %call.i94 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 8, i32 noundef 16, ptr noundef %22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool28.not = icmp eq i32 %call.i94, 0
  br i1 %tobool28.not, label %sw.bb26.sw.epilog_crit_edge, label %sw.bb26.nla_put_failure_crit_edge

sw.bb26.nla_put_failure_crit_edge:                ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.end:                                         ; preds = %if.end21
  %.b87 = load i1, ptr @mptcp_event_addr_announced.__already_done, align 1
  br i1 %.b87, label %land.end.nla_put_failure_crit_edge, label %if.then37, !prof !189

land.end.nla_put_failure_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.then37:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mptcp_event_addr_announced.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2021, i32 noundef 9, ptr noundef null) #14
  br label %nla_put_failure

sw.epilog:                                        ; preds = %sw.bb26.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call6, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  call fastcc void @mptcp_nl_mcast_send(ptr noundef %1, ptr noundef nonnull %call.i.i, i32 noundef 2592)
  br label %cleanup

nla_put_failure:                                  ; preds = %if.then37, %land.end.nla_put_failure_crit_edge, %sw.bb26.nla_put_failure_crit_edge, %sw.bb.nla_put_failure_crit_edge, %if.end17.nla_put_failure_crit_edge, %if.end13.nla_put_failure_crit_edge, %if.end9.nla_put_failure_crit_edge, %if.end5.nla_put_failure_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %sw.epilog, %if.end.cleanup_crit_edge, %genl_has_listeners.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_event(i32 noundef %type, ptr noundef %msk, ptr noundef %ssk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i24.i = alloca i32, align 4
  %tmp.i.i150 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp.i = icmp ult i8 %2, 2
  br i1 %cmp.i, label %land.rhs.i, label %genl_has_listeners.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @genl_has_listeners.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !189

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @genl_has_listeners.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 437, i32 noundef 9, ptr noundef null) #14
  br label %if.end

genl_has_listeners.exit:                          ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 5), align 4
  %add.i = add i32 %3, 1
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genl_sock.i, align 4
  %call.i = tail call i32 @netlink_has_listeners(ptr noundef %5, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %genl_has_listeners.exit.cleanup_crit_edge, label %genl_has_listeners.exit.if.end_crit_edge

genl_has_listeners.exit.if.end_crit_edge:         ; preds = %genl_has_listeners.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

genl_has_listeners.exit.cleanup_crit_edge:        ; preds = %genl_has_listeners.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %genl_has_listeners.exit.if.end_crit_edge, %if.then.i, %land.rhs.i.if.end_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = trunc i32 %type to i8
  %call6 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @mptcp_genl_family, i32 noundef 0, i8 noundef zeroext %conv) #14
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.nla_put_failure_crit_edge, label %if.end9

if.end5.nla_put_failure_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end9:                                          ; preds = %if.end5
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %type, label %if.end9.sw.epilog_crit_edge [
    i32 0, label %land.end
    i32 1, label %if.end9.sw.bb46_crit_edge
    i32 2, label %if.end9.sw.bb46_crit_edge160
    i32 3, label %sw.bb51
    i32 6, label %if.end9.land.end65_crit_edge
    i32 7, label %if.end9.land.end65_crit_edge161
    i32 10, label %if.end9.sw.bb107_crit_edge
    i32 13, label %if.end9.sw.bb107_crit_edge162
    i32 11, label %sw.bb113
  ]

if.end9.sw.bb107_crit_edge162:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb107

if.end9.sw.bb107_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb107

if.end9.land.end65_crit_edge161:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end65

if.end9.land.end65_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end65

if.end9.sw.bb46_crit_edge160:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb46

if.end9.sw.bb46_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb46

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.end:                                         ; preds = %if.end9
  %.b145 = load i1, ptr @mptcp_event.__already_done, align 1
  br i1 %.b145, label %land.end.sw.epilog_crit_edge, label %land.end.sw.epilog.sink.split_crit_edge, !prof !189

land.end.sw.epilog.sink.split_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end9.sw.bb46_crit_edge, %if.end9.sw.bb46_crit_edge160
  %token.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 16
  %7 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %token.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %9 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i.i, align 4
  %call.i.i146 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146)
  %tobool.not.i = icmp eq i32 %call.i.i146, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb46.mptcp_event_created.exit_crit_edge

sw.bb46.mptcp_event_created.exit_crit_edge:       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_event_created.exit

if.end.i:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call fastcc i32 @mptcp_event_add_subflow(ptr noundef nonnull %call.i.i, ptr noundef %ssk) #14
  br label %mptcp_event_created.exit

mptcp_event_created.exit:                         ; preds = %if.end.i, %sw.bb46.mptcp_event_created.exit_crit_edge
  %retval.0.i147 = phi i32 [ %call1.i, %if.end.i ], [ %call.i.i146, %sw.bb46.mptcp_event_created.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i147)
  %cmp = icmp slt i32 %retval.0.i147, 0
  br i1 %cmp, label %mptcp_event_created.exit.nla_put_failure_crit_edge, label %mptcp_event_created.exit.sw.epilog_crit_edge

mptcp_event_created.exit.sw.epilog_crit_edge:     ; preds = %mptcp_event_created.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

mptcp_event_created.exit.nla_put_failure_crit_edge: ; preds = %mptcp_event_created.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

sw.bb51:                                          ; preds = %if.end9
  %token = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 16
  %10 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %token, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i, align 4
  %call.i148 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp53 = icmp slt i32 %call.i148, 0
  br i1 %cmp53, label %sw.bb51.nla_put_failure_crit_edge, label %sw.bb51.sw.epilog_crit_edge

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb51.nla_put_failure_crit_edge:                ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

land.end65:                                       ; preds = %if.end9.land.end65_crit_edge, %if.end9.land.end65_crit_edge161
  %.b143144 = load i1, ptr @mptcp_event.__already_done.14, align 1
  br i1 %.b143144, label %land.end65.sw.epilog_crit_edge, label %land.end65.sw.epilog.sink.split_crit_edge, !prof !189

land.end65.sw.epilog.sink.split_crit_edge:        ; preds = %land.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

land.end65.sw.epilog_crit_edge:                   ; preds = %land.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.end9.sw.bb107_crit_edge, %if.end9.sw.bb107_crit_edge162
  %call.i149 = tail call fastcc i32 @mptcp_event_put_token_and_ssk(ptr noundef nonnull %call.i.i, ptr noundef %msk, ptr noundef %ssk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp109 = icmp slt i32 %call.i149, 0
  br i1 %cmp109, label %sw.bb107.nla_put_failure_crit_edge, label %sw.bb107.sw.epilog_crit_edge

sw.bb107.sw.epilog_crit_edge:                     ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb107.nla_put_failure_crit_edge:               ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

sw.bb113:                                         ; preds = %if.end9
  %call.i151 = tail call fastcc i32 @mptcp_event_put_token_and_ssk(ptr noundef nonnull %call.i.i, ptr noundef %msk, ptr noundef %ssk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end.i153, label %sw.bb113.nla_put_failure_crit_edge

sw.bb113.nla_put_failure_crit_edge:               ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end.i153:                                      ; preds = %sw.bb113
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %13 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %reset_seen.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %14, i32 0, i32 1, i32 0, i32 22
  %15 = ptrtoint ptr %reset_seen.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %reset_seen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %if.end.i153.sw.epilog_crit_edge, label %if.end4.i

if.end.i153.sw.epilog_crit_edge:                  ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i153
  %bf.lshr6.i = lshr i8 %bf.load.i, 2
  %bf.clear.i = and i8 %bf.lshr6.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i150) #14
  %16 = ptrtoint ptr %tmp.i.i150 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %tmp.i.i150, align 4
  %call.i.i154 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i.i150) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i150) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %tobool8.not.i = icmp eq i32 %call.i.i154, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end4.i.nla_put_failure_crit_edge

if.end4.i.nla_put_failure_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end10.i:                                       ; preds = %if.end4.i
  %17 = ptrtoint ptr %reset_seen.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load11.i = load i8, ptr %reset_seen.i, align 2
  %bf.lshr12.i = lshr i8 %bf.load11.i, 6
  %bf.clear13.i = and i8 %bf.lshr12.i, 1
  %conv14.i = zext i8 %bf.clear13.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24.i) #14
  %18 = ptrtoint ptr %tmp.i24.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv14.i, ptr %tmp.i24.i, align 4
  %call.i25.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %tmp.i24.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool16.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool16.not.i, label %if.end10.i.sw.epilog_crit_edge, label %if.end10.i.nla_put_failure_crit_edge

if.end10.i.nla_put_failure_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end10.i.sw.epilog_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %land.end65.sw.epilog.sink.split_crit_edge, %land.end.sw.epilog.sink.split_crit_edge
  %mptcp_event.__already_done.14.sink = phi ptr [ @mptcp_event.__already_done, %land.end.sw.epilog.sink.split_crit_edge ], [ @mptcp_event.__already_done.14, %land.end65.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 2053, %land.end.sw.epilog.sink.split_crit_edge ], [ 2067, %land.end65.sw.epilog.sink.split_crit_edge ]
  %19 = ptrtoint ptr %mptcp_event.__already_done.14.sink to i32
  call void @__asan_store1_noabort(i32 %19)
  store i1 true, ptr %mptcp_event.__already_done.14.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end10.i.sw.epilog_crit_edge, %if.end.i153.sw.epilog_crit_edge, %sw.bb107.sw.epilog_crit_edge, %land.end65.sw.epilog_crit_edge, %sw.bb51.sw.epilog_crit_edge, %mptcp_event_created.exit.sw.epilog_crit_edge, %land.end.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call6, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %23 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp.i.i = icmp ult i8 %23, 2
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %sw.epilog
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !189

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 308, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end39.i.i:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %24 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @mptcp_genl_family, i32 0, i32 5), align 4
  %add.i.i = add i32 %24, 1
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 21
  %25 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %genl_sock.i.i, align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %27 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i.i, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %26, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %add.i.i, i32 noundef %gfp) #14
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end10.i.nla_put_failure_crit_edge, %if.end4.i.nla_put_failure_crit_edge, %sw.bb113.nla_put_failure_crit_edge, %sw.bb107.nla_put_failure_crit_edge, %sw.bb51.nla_put_failure_crit_edge, %mptcp_event_created.exit.nla_put_failure_crit_edge, %if.end5.nla_put_failure_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %genl_has_listeners.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_nl_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @mptcp_pm_pernet_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.15) #19
  unreachable

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @mptcp_genl_family) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16) #19
  unreachable

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_subflow_shutdown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_close_ssk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mptcp_subflow_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_announce_addr(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_pm_create_subflow_or_signal_addr(ptr noundef %msk) unnamed_addr #0 align 64 {
entry:
  %remote.i = alloca %struct.mptcp_addr_info, align 4
  %mpc_addr = alloca %struct.mptcp_addr_info, align 4
  %addrs = alloca [8 x %struct.mptcp_addr_info], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5) #14
  %add_addr_signal_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 4
  %6 = ptrtoint ptr %add_addr_signal_max.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add_addr_signal_max.i, align 4
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %10 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i178 = tail call fastcc ptr @net_generic(ptr noundef %9, i32 noundef %10) #14
  %local_addr_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i178, i32 0, i32 6
  %11 = ptrtoint ptr %local_addr_max.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %local_addr_max.i, align 4
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  %15 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i180 = tail call fastcc ptr @net_generic(ptr noundef %14, i32 noundef %15) #14
  %subflows_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i180, i32 0, i32 7
  %16 = ptrtoint ptr %subflows_max.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %subflows_max.i, align 4
  %status = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 2
  %20 = and i8 %19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body_crit_edge, !prof !187

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %first = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 39
  %21 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %first, align 8
  %tobool8.not = icmp eq ptr %22, null
  br i1 %tobool8.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpc_addr) #14
  %23 = call ptr @memset(ptr %mpc_addr, i32 255, i32 24)
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %skc_family.i, align 8
  %family.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %mpc_addr, i32 0, i32 1
  %26 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %family.i, align 2
  %27 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.2, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %skc_num.i, align 2
  %port.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %mpc_addr, i32 0, i32 2
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %port.i, align 4
  %31 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %25, label %if.then.local_address.exit_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then7.i
  ]

if.then.local_address.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %local_address.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 1
  %32 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skc_rcv_saddr.i, align 4
  %34 = getelementptr inbounds %struct.mptcp_addr_info, ptr %mpc_addr, i32 0, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %34, align 4
  br label %local_address.exit

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %36 = getelementptr inbounds %struct.mptcp_addr_info, ptr %mpc_addr, i32 0, i32 3
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 11
  %37 = call ptr @memcpy(ptr %36, ptr %skc_v6_rcv_saddr.i, i32 16)
  br label %local_address.exit

local_address.exit:                               ; preds = %if.then7.i, %if.then.i, %if.then.local_address.exit_crit_edge
  %call10 = call fastcc i32 @lookup_id_by_addr(ptr noundef %call1, ptr noundef nonnull %mpc_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp = icmp sgt i32 %call10, -1
  br i1 %cmp, label %if.then12, label %local_address.exit.if.end_crit_edge

local_address.exit.if.end_crit_edge:              ; preds = %local_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then12:                                        ; preds = %local_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  %id_avail_bitmap = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  %rem.i = and i32 %call10, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call10, 5
  %add.ptr.i = getelementptr i32, ptr %id_avail_bitmap, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %39, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %local_address.exit.if.end_crit_edge
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %status, align 2
  %42 = or i8 %41, 64
  store i8 %42, ptr %status, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpc_addr) #14
  br label %do.body

do.body:                                          ; preds = %if.end, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_create_subflow_or_signal_addr.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_create_subflow_or_signal_addr, %if.then27)) #14
          to label %do.end [label %if.then27], !srcloc !188

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %local_addr_used = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 12
  %43 = ptrtoint ptr %local_addr_used to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %local_addr_used, align 4
  %conv29 = zext i8 %44 to i32
  %add_addr_signaled = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 10
  %45 = ptrtoint ptr %add_addr_signaled to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add_addr_signaled, align 2
  %conv31 = zext i8 %46 to i32
  %subflows = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %47 = ptrtoint ptr %subflows to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %subflows, align 1
  %conv33 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_create_subflow_or_signal_addr.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.33, i32 noundef %conv29, i32 noundef %12, i32 noundef %conv31, i32 noundef %7, i32 noundef %conv33, i32 noundef %17) #14
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %add_addr_signaled36 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 10
  %49 = ptrtoint ptr %add_addr_signaled36 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add_addr_signaled36, align 2
  %conv37 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv37)
  %cmp38 = icmp ugt i32 %7, %conv37
  br i1 %cmp38, label %if.then40, label %do.end.if.end62_crit_edge

do.end.if.end62_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then40:                                        ; preds = %do.end
  %51 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %54, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %if.then40.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then40.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then40
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then40.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b33.i = load i1, ptr @select_signal_address.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i181

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i181:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @select_signal_address.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 203, ptr noundef nonnull @.str.13) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i181, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %local_addr_list.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1, i32 0, i32 1
  %55 = ptrtoint ptr %local_addr_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %entry1.043.i = load volatile ptr, ptr %local_addr_list.i, align 4
  %cmp.not44.i = icmp eq ptr %entry1.043.i, %local_addr_list.i
  br i1 %cmp.not44.i, label %do.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %id_avail_bitmap.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.045.i = phi ptr [ %entry1.043.i, %for.body.lr.ph.i ], [ %entry1.0.i, %for.inc.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.045.i, i32 0, i32 1
  %56 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %addr.i, align 4
  %conv.i = zext i8 %57 to i32
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %id_avail_bitmap.i, i32 %div3.i.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %60 = shl nuw i32 1, %and.i.i
  %61 = and i32 %60, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool12.not.i = icmp eq i32 %61, 0
  br i1 %tobool12.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end14.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.045.i, i32 0, i32 2
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %flags.i, align 4
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool16.not.i = icmp eq i8 %64, 0
  br i1 %tobool16.not.i, label %if.end14.i.for.inc.i_crit_edge, label %if.end14.i.for.end.i_crit_edge

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %65 = ptrtoint ptr %entry1.045.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %entry1.0.i = load volatile ptr, ptr %entry1.045.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %local_addr_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %ret.0.i = phi ptr [ null, %do.end.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ], [ %entry1.045.i, %if.end14.i.for.end.i_crit_edge ]
  %call.i34.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i34.i, label %for.end.i.select_signal_address.exit_crit_edge, label %land.lhs.true.i37.i

for.end.i.select_signal_address.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %select_signal_address.exit

land.lhs.true.i37.i:                              ; preds = %for.end.i
  %call1.i35.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.i)
  %tobool.not.i36.i = icmp eq i32 %call1.i35.i, 0
  br i1 %tobool.not.i36.i, label %land.lhs.true.i37.i.select_signal_address.exit_crit_edge, label %land.lhs.true2.i39.i

land.lhs.true.i37.i.select_signal_address.exit_crit_edge: ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %select_signal_address.exit

land.lhs.true2.i39.i:                             ; preds = %land.lhs.true.i37.i
  %.b4.i38.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38.i, label %land.lhs.true2.i39.i.select_signal_address.exit_crit_edge, label %if.then.i40.i

land.lhs.true2.i39.i.select_signal_address.exit_crit_edge: ; preds = %land.lhs.true2.i39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %select_signal_address.exit

if.then.i40.i:                                    ; preds = %land.lhs.true2.i39.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #14
  br label %select_signal_address.exit

select_signal_address.exit:                       ; preds = %if.then.i40.i, %land.lhs.true2.i39.i.select_signal_address.exit_crit_edge, %land.lhs.true.i37.i.select_signal_address.exit_crit_edge, %for.end.i.select_signal_address.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %66 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i41.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i41.i to ptr
  %preempt_count.i.i.i.i42.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i42.i, align 4
  %sub.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i42.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %addr_signal = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %70 = ptrtoint ptr %addr_signal to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %addr_signal, align 4
  %72 = and i8 %71, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool45.not = icmp eq i8 %72, 0
  br i1 %tobool45.not, label %if.end47, label %select_signal_address.exit.cleanup112_crit_edge

select_signal_address.exit.cleanup112_crit_edge:  ; preds = %select_signal_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup112

if.end47:                                         ; preds = %select_signal_address.exit
  %tobool48.not = icmp eq ptr %ret.0.i, null
  br i1 %tobool48.not, label %if.end47.if.end62_crit_edge, label %if.then49

if.end47.if.end62_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then49:                                        ; preds = %if.end47
  %73 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %75 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i183 = icmp eq i32 %75, 0
  br i1 %tobool.not.i183, label %if.then49.if.end.i_crit_edge, label %land.rhs.i

if.then49.if.end.i_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then49
  %dep_map.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3, i32 0, i32 0, i32 4
  %call.i.i184 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %cmp.not.i185 = icmp eq i32 %call.i.i184, 0
  br i1 %cmp.not.i185, label %do.end.i186, label %land.rhs.i.if.end.i_crit_edge, !prof !187

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i186:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 373, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i186, %land.rhs.i.if.end.i_crit_edge, %if.then49.if.end.i_crit_edge
  %addr.i187 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %ret.0.i, i32 0, i32 1
  %call26.i = tail call ptr @mptcp_lookup_anno_list_by_saddr(ptr noundef %msk, ptr noundef %addr.i187) #14
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end.i.if.end62_crit_edge

if.end.i.if.end62_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.end29.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 2592, i32 noundef 88) #18
  %tobool31.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not.i, label %if.end29.i.if.end62_crit_edge, label %if.end33.i

if.end29.i.if.end62_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.end33.i:                                       ; preds = %if.end29.i
  %anno_list.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 2
  %77 = ptrtoint ptr %anno_list.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %anno_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %anno_list.i, ptr noundef %78) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end33.i.if.then51_crit_edge

if.end33.i.if.then51_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51

if.end.i.i.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %anno_list.i, ptr %prev3.i.i.i, align 4
  %82 = ptrtoint ptr %anno_list.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %call7.i.i, ptr %anno_list.i, align 4
  br label %if.then51

if.then51:                                        ; preds = %if.end.i.i.i, %if.end33.i.if.then51_crit_edge
  %addr35.i = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call7.i.i, i32 0, i32 1
  %83 = call ptr @memcpy(ptr %addr35.i, ptr %addr.i187, i32 24)
  %sock.i = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call7.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %sock.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msk, ptr %sock.i, align 8
  %retrans_times.i = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call7.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %retrans_times.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %retrans_times.i, align 4
  %add_timer.i = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %add_timer.i, ptr noundef nonnull @mptcp_pm_add_timer, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @mptcp_pm_alloc_anno_list.__key) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %call41.i = tail call i32 @mptcp_get_add_addr_timeout(ptr noundef %74) #14
  %add.i = add i32 %call41.i, %86
  tail call void @sk_reset_timer(ptr noundef %msk, ptr noundef %add_timer.i, i32 noundef %add.i) #14
  %87 = ptrtoint ptr %addr.i187 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %addr.i187, align 4
  %conv52 = zext i8 %88 to i32
  %id_avail_bitmap54 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  %rem.i165 = and i32 %conv52, 31
  %shl.i166 = shl nuw i32 1, %rem.i165
  %div2.i167 = lshr i32 %conv52, 5
  %add.ptr.i168 = getelementptr i32, ptr %id_avail_bitmap54, i32 %div2.i167
  %neg.i169 = xor i32 %shl.i166, -1
  %89 = ptrtoint ptr %add.ptr.i168 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i168, align 4
  %and.i170 = and i32 %90, %neg.i169
  store i32 %and.i170, ptr %add.ptr.i168, align 4
  %91 = ptrtoint ptr %add_addr_signaled36 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add_addr_signaled36, align 2
  %inc = add i8 %92, 1
  store i8 %inc, ptr %add_addr_signaled36, align 2
  %call59 = tail call i32 @mptcp_pm_announce_addr(ptr noundef %msk, ptr noundef %addr.i187, i1 noundef zeroext false) #14
  tail call void @mptcp_pm_nl_addr_send_ack(ptr noundef %msk)
  br label %if.end62

if.end62:                                         ; preds = %if.then51, %if.end29.i.if.end62_crit_edge, %if.end.i.if.end62_crit_edge, %if.end47.if.end62_crit_edge, %do.end.if.end62_crit_edge
  %local_addr_used64 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 12
  %93 = ptrtoint ptr %local_addr_used64 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %local_addr_used64, align 4
  %conv65265 = zext i8 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv65265)
  %cmp66266 = icmp ugt i32 %12, %conv65265
  br i1 %cmp66266, label %land.rhs.lr.ph, label %if.end62.while.end_crit_edge

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end62
  %subflows69 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 3
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %local_addr_list.i207 = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1, i32 0, i32 1
  %id_avail_bitmap.i209 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  %skc_family.i210 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 3
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 10
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %msk, i32 0, i32 10, i32 0, i32 0, i32 1
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %msk, i32 0, i32 10, i32 0, i32 0, i32 2
  %remote_deny_join_id0.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 9
  %family.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote.i, i32 0, i32 1
  %95 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 2
  %port.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote.i, i32 0, i32 2
  %96 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote.i, i32 0, i32 3
  %conn_list.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 34
  %arrayidx2.i.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i.i231 = getelementptr inbounds %struct.mptcp_addr_info, ptr %remote.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %97 = ptrtoint ptr %subflows69 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %subflows69, align 1
  %conv70 = zext i8 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv70)
  %cmp71 = icmp ugt i32 %17, %conv70
  br i1 %cmp71, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %addrs) #14
  %99 = call ptr @memset(ptr %addrs, i32 255, i32 192)
  %call.i.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %while.body.msk_owned_by_me.exit.i_crit_edge

while.body.msk_owned_by_me.exit.i_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %while.body
  %call.i6.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.msk_owned_by_me.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.msk_owned_by_me.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %100 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.msk_owned_by_me.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.msk_owned_by_me.exit.i_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.msk_owned_by_me.exit.i_crit_edge, label %if.then.i.i.i, !prof !189

land.rhs3.i.i.i.msk_owned_by_me.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %msk_owned_by_me.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1750, i32 noundef 9, ptr noundef null) #14
  br label %msk_owned_by_me.exit.i

msk_owned_by_me.exit.i:                           ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.msk_owned_by_me.exit.i_crit_edge, %land.rhs.i.i.i.msk_owned_by_me.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.msk_owned_by_me.exit.i_crit_edge, %while.body.msk_owned_by_me.exit.i_crit_edge
  %101 = call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i.i189 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i.i189 to ptr
  %preempt_count.i.i.i.i.i190 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i.i190, align 4
  %add.i.i.i.i191 = add i32 %104, 1
  store volatile i32 %add.i.i.i.i191, ptr %preempt_count.i.i.i.i.i190, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i192 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i192, label %msk_owned_by_me.exit.i.rcu_read_lock.exit.i201_crit_edge, label %land.lhs.true.i.i195

msk_owned_by_me.exit.i.rcu_read_lock.exit.i201_crit_edge: ; preds = %msk_owned_by_me.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i201

land.lhs.true.i.i195:                             ; preds = %msk_owned_by_me.exit.i
  %call1.i.i193 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i193)
  %tobool.not.i.i194 = icmp eq i32 %call1.i.i193, 0
  br i1 %tobool.not.i.i194, label %land.lhs.true.i.i195.rcu_read_lock.exit.i201_crit_edge, label %land.lhs.true2.i.i197

land.lhs.true.i.i195.rcu_read_lock.exit.i201_crit_edge: ; preds = %land.lhs.true.i.i195
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i201

land.lhs.true2.i.i197:                            ; preds = %land.lhs.true.i.i195
  %.b4.i.i196 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i196, label %land.lhs.true2.i.i197.rcu_read_lock.exit.i201_crit_edge, label %if.then.i.i198

land.lhs.true2.i.i197.rcu_read_lock.exit.i201_crit_edge: ; preds = %land.lhs.true2.i.i197
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i201

if.then.i.i198:                                   ; preds = %land.lhs.true2.i.i197
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_lock.exit.i201

rcu_read_lock.exit.i201:                          ; preds = %if.then.i.i198, %land.lhs.true2.i.i197.rcu_read_lock.exit.i201_crit_edge, %land.lhs.true.i.i195.rcu_read_lock.exit.i201_crit_edge, %msk_owned_by_me.exit.i.rcu_read_lock.exit.i201_crit_edge
  %call.i199 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %land.lhs.true.i204, label %rcu_read_lock.exit.i201.do.end.i208_crit_edge

rcu_read_lock.exit.i201.do.end.i208_crit_edge:    ; preds = %rcu_read_lock.exit.i201
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i208

land.lhs.true.i204:                               ; preds = %rcu_read_lock.exit.i201
  %call2.i202 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i202)
  %tobool3.not.i203 = icmp eq i32 %call2.i202, 0
  br i1 %tobool3.not.i203, label %land.lhs.true.i204.do.end.i208_crit_edge, label %land.lhs.true4.i205

land.lhs.true.i204.do.end.i208_crit_edge:         ; preds = %land.lhs.true.i204
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i208

land.lhs.true4.i205:                              ; preds = %land.lhs.true.i204
  %.b65.i = load i1, ptr @select_local_address.__warned, align 1
  br i1 %.b65.i, label %land.lhs.true4.i205.do.end.i208_crit_edge, label %if.then.i206

land.lhs.true4.i205.do.end.i208_crit_edge:        ; preds = %land.lhs.true4.i205
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i208

if.then.i206:                                     ; preds = %land.lhs.true4.i205
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @select_local_address.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.13) #14
  br label %do.end.i208

do.end.i208:                                      ; preds = %if.then.i206, %land.lhs.true4.i205.do.end.i208_crit_edge, %land.lhs.true.i204.do.end.i208_crit_edge, %rcu_read_lock.exit.i201.do.end.i208_crit_edge
  %105 = ptrtoint ptr %local_addr_list.i207 to i32
  call void @__asan_load4_noabort(i32 %105)
  %entry1.081.i = load volatile ptr, ptr %local_addr_list.i207, align 4
  %cmp.not82.i = icmp eq ptr %entry1.081.i, %local_addr_list.i207
  br i1 %cmp.not82.i, label %do.end.i208.for.end.i224_crit_edge, label %do.end.i208.for.body.i213_crit_edge

do.end.i208.for.body.i213_crit_edge:              ; preds = %do.end.i208
  br label %for.body.i213

do.end.i208.for.end.i224_crit_edge:               ; preds = %do.end.i208
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i224

for.body.i213:                                    ; preds = %for.inc.i222.for.body.i213_crit_edge, %do.end.i208.for.body.i213_crit_edge
  %entry1.083.i = phi ptr [ %entry1.0.i220, %for.inc.i222.for.body.i213_crit_edge ], [ %entry1.081.i, %do.end.i208.for.body.i213_crit_edge ]
  %flags.i212 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.083.i, i32 0, i32 2
  %106 = ptrtoint ptr %flags.i212 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flags.i212, align 4
  %108 = and i8 %107, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool11.not.i = icmp eq i8 %108, 0
  br i1 %tobool11.not.i, label %for.body.i213.for.inc.i222_crit_edge, label %if.end13.i

for.body.i213.for.inc.i222_crit_edge:             ; preds = %for.body.i213
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i222

if.end13.i:                                       ; preds = %for.body.i213
  %addr.i214 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.083.i, i32 0, i32 1
  %109 = ptrtoint ptr %addr.i214 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %addr.i214, align 4
  %conv14.i = zext i8 %110 to i32
  %div3.i.i215 = lshr i32 %conv14.i, 5
  %arrayidx.i.i216 = getelementptr i32, ptr %id_avail_bitmap.i209, i32 %div3.i.i215
  %111 = ptrtoint ptr %arrayidx.i.i216 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %arrayidx.i.i216, align 4
  %and.i.i217 = and i32 %conv14.i, 31
  %113 = shl nuw i32 1, %and.i.i217
  %114 = and i32 %113, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool16.not.i218 = icmp eq i32 %114, 0
  br i1 %tobool16.not.i218, label %if.end13.i.for.inc.i222_crit_edge, label %if.end18.i

if.end13.i.for.inc.i222_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i222

if.end18.i:                                       ; preds = %if.end13.i
  %family.i219 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.083.i, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %family.i219 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %family.i219, align 2
  %117 = ptrtoint ptr %skc_family.i210 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %skc_family.i210, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %116, i16 %118)
  %cmp22.not.i = icmp eq i16 %116, %118
  br i1 %cmp22.not.i, label %if.end18.i.for.end.i224_crit_edge, label %if.then24.i

if.end18.i.for.end.i224_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i224

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %116)
  %cmp28.i = icmp eq i16 %116, 2
  br i1 %cmp28.i, label %land.lhs.true30.i, label %if.then24.i.lor.lhs.false.i_crit_edge

if.then24.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

land.lhs.true30.i:                                ; preds = %if.then24.i
  %119 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %skc_v6_daddr.i, align 4
  %121 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %122, %120
  %123 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %124, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true30.i.lor.lhs.false.i_crit_edge, label %land.lhs.true30.i.for.inc.i222_crit_edge

land.lhs.true30.i.for.inc.i222_crit_edge:         ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i222

land.lhs.true30.i.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true30.i.lor.lhs.false.i_crit_edge, %if.then24.i.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %118)
  %cmp36.i = icmp eq i16 %118, 2
  br i1 %cmp36.i, label %land.lhs.true38.i, label %lor.lhs.false.i.for.end.i224_crit_edge

lor.lhs.false.i.for.end.i224_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i224

land.lhs.true38.i:                                ; preds = %lor.lhs.false.i
  %125 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.083.i, i32 0, i32 1, i32 3
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %arrayidx2.i66.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.083.i, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %128 = ptrtoint ptr %arrayidx2.i66.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx2.i66.i, align 4
  %or.i67.i = or i32 %129, %127
  %arrayidx4.i68.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.083.i, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %130 = ptrtoint ptr %arrayidx4.i68.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx4.i68.i, align 4
  %xor.i69.i = xor i32 %131, 65535
  %or5.i70.i = or i32 %or.i67.i, %xor.i69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i70.i)
  %cmp.i71.i = icmp eq i32 %or5.i70.i, 0
  br i1 %cmp.i71.i, label %land.lhs.true38.i.for.end.i224_crit_edge, label %land.lhs.true38.i.for.inc.i222_crit_edge

land.lhs.true38.i.for.inc.i222_crit_edge:         ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i222

land.lhs.true38.i.for.end.i224_crit_edge:         ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i224

for.inc.i222:                                     ; preds = %land.lhs.true38.i.for.inc.i222_crit_edge, %land.lhs.true30.i.for.inc.i222_crit_edge, %if.end13.i.for.inc.i222_crit_edge, %for.body.i213.for.inc.i222_crit_edge
  %132 = ptrtoint ptr %entry1.083.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %entry1.0.i220 = load volatile ptr, ptr %entry1.083.i, align 4
  %cmp.not.i221 = icmp eq ptr %entry1.0.i220, %local_addr_list.i207
  br i1 %cmp.not.i221, label %for.inc.i222.for.end.i224_crit_edge, label %for.inc.i222.for.body.i213_crit_edge

for.inc.i222.for.body.i213_crit_edge:             ; preds = %for.inc.i222
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i213

for.inc.i222.for.end.i224_crit_edge:              ; preds = %for.inc.i222
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i224

for.end.i224:                                     ; preds = %for.inc.i222.for.end.i224_crit_edge, %land.lhs.true38.i.for.end.i224_crit_edge, %lor.lhs.false.i.for.end.i224_crit_edge, %if.end18.i.for.end.i224_crit_edge, %do.end.i208.for.end.i224_crit_edge
  %ret.0.i223 = phi ptr [ null, %do.end.i208.for.end.i224_crit_edge ], [ null, %for.inc.i222.for.end.i224_crit_edge ], [ %entry1.083.i, %lor.lhs.false.i.for.end.i224_crit_edge ], [ %entry1.083.i, %land.lhs.true38.i.for.end.i224_crit_edge ], [ %entry1.083.i, %if.end18.i.for.end.i224_crit_edge ]
  %call.i72.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i72.i, label %for.end.i224.select_local_address.exit_crit_edge, label %land.lhs.true.i75.i

for.end.i224.select_local_address.exit_crit_edge: ; preds = %for.end.i224
  call void @__sanitizer_cov_trace_pc() #16
  br label %select_local_address.exit

land.lhs.true.i75.i:                              ; preds = %for.end.i224
  %call1.i73.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73.i)
  %tobool.not.i74.i = icmp eq i32 %call1.i73.i, 0
  br i1 %tobool.not.i74.i, label %land.lhs.true.i75.i.select_local_address.exit_crit_edge, label %land.lhs.true2.i77.i

land.lhs.true.i75.i.select_local_address.exit_crit_edge: ; preds = %land.lhs.true.i75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %select_local_address.exit

land.lhs.true2.i77.i:                             ; preds = %land.lhs.true.i75.i
  %.b4.i76.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76.i, label %land.lhs.true2.i77.i.select_local_address.exit_crit_edge, label %if.then.i78.i

land.lhs.true2.i77.i.select_local_address.exit_crit_edge: ; preds = %land.lhs.true2.i77.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %select_local_address.exit

if.then.i78.i:                                    ; preds = %land.lhs.true2.i77.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #14
  br label %select_local_address.exit

select_local_address.exit:                        ; preds = %if.then.i78.i, %land.lhs.true2.i77.i.select_local_address.exit_crit_edge, %land.lhs.true.i75.i.select_local_address.exit_crit_edge, %for.end.i224.select_local_address.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %133 = call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i79.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i79.i to ptr
  %preempt_count.i.i.i.i80.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i80.i, align 4
  %sub.i.i.i.i225 = add i32 %136, -1
  store volatile i32 %sub.i.i.i.i225, ptr %preempt_count.i.i.i.i80.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %tobool74.not = icmp eq ptr %ret.0.i223, null
  br i1 %tobool74.not, label %cleanup.thread, label %if.end76

cleanup.thread:                                   ; preds = %select_local_address.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %addrs) #14
  br label %while.end

if.end76:                                         ; preds = %select_local_address.exit
  %flags = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %ret.0.i223, i32 0, i32 2
  %137 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %flags, align 4
  %139 = and i8 %138, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool79.not = icmp eq i8 %139, 0
  %140 = ptrtoint ptr %local_addr_used64 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %local_addr_used64, align 4
  %inc87 = add i8 %141, 1
  store i8 %inc87, ptr %local_addr_used64, align 4
  %142 = ptrtoint ptr %remote_deny_join_id0.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load volatile i8, ptr %remote_deny_join_id0.i, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i226 = icmp eq i8 %143, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %remote.i) #14
  %144 = call ptr @memset(ptr %remote.i, i32 0, i32 24)
  %145 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %skc_net.i, align 4
  %147 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i.i227 = call fastcc ptr @net_generic(ptr noundef %146, i32 noundef %147) #14
  %subflows_max.i.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i.i227, i32 0, i32 7
  %148 = ptrtoint ptr %subflows_max.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %subflows_max.i.i, align 4
  %150 = ptrtoint ptr %skc_family.i210 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %skc_family.i210, align 8
  %152 = ptrtoint ptr %family.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %family.i.i, align 2
  %153 = ptrtoint ptr %95 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %95, align 4
  %155 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %port.i.i, align 4
  %156 = zext i16 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %151, label %if.end76.remote_address.exit.i_crit_edge [
    i16 2, label %if.then.i.i228
    i16 10, label %if.then7.i.i
  ]

if.end76.remote_address.exit.i_crit_edge:         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %remote_address.exit.i

if.then.i.i228:                                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %157 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %msk, align 8
  %159 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %96, align 4
  br label %remote_address.exit.i

if.then7.i.i:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %160 = call ptr @memcpy(ptr %96, ptr %skc_v6_daddr.i, i32 16)
  br label %remote_address.exit.i

remote_address.exit.i:                            ; preds = %if.then7.i.i, %if.then.i.i228, %if.end76.remote_address.exit.i_crit_edge
  br i1 %tobool79.not, label %if.then.i229, label %if.else.i

if.then.i229:                                     ; preds = %remote_address.exit.i
  br i1 %tobool.not.i226, label %fill_remote_addresses_vec.exit.thread257, label %if.then.i229.fill_remote_addresses_vec.exit.thread_crit_edge

if.then.i229.fill_remote_addresses_vec.exit.thread_crit_edge: ; preds = %if.then.i229
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_remote_addresses_vec.exit.thread

fill_remote_addresses_vec.exit.thread257:         ; preds = %if.then.i229
  call void @__sanitizer_cov_trace_pc() #16
  %161 = ptrtoint ptr %subflows69 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %subflows69, align 1
  %inc.i = add i8 %162, 1
  store i8 %inc.i, ptr %subflows69, align 1
  %163 = call ptr @memcpy(ptr %addrs, ptr %remote.i, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %remote.i) #14
  br label %if.end99

if.else.i:                                        ; preds = %remote_address.exit.i
  %164 = ptrtoint ptr %conn_list.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %subflow.077.i = load ptr, ptr %conn_list.i, align 8
  %cmp.not78.i = icmp eq ptr %subflow.077.i, %conn_list.i
  br i1 %cmp.not78.i, label %if.else.i.fill_remote_addresses_vec.exit.thread_crit_edge, label %for.body.lr.ph.i232

if.else.i.fill_remote_addresses_vec.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_remote_addresses_vec.exit.thread

for.body.lr.ph.i232:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %151)
  %cmp30.i.i = icmp eq i16 %151, 2
  br label %for.body.i233

for.body.i233:                                    ; preds = %for.inc.i241.for.body.i233_crit_edge, %for.body.lr.ph.i232
  %subflow.083.i = phi ptr [ %subflow.077.i, %for.body.lr.ph.i232 ], [ %subflow.0.i, %for.inc.i241.for.body.i233_crit_edge ]
  %i.079.i = phi i32 [ 0, %for.body.lr.ph.i232 ], [ %i.1.i, %for.inc.i241.for.body.i233_crit_edge ]
  %tcp_sock.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.083.i, i32 0, i32 5
  %165 = ptrtoint ptr %tcp_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tcp_sock.i.i, align 8
  %skc_family.i63.i = getelementptr inbounds %struct.sock_common, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %skc_family.i63.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %skc_family.i63.i, align 8
  %family.i64.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 1
  %169 = ptrtoint ptr %family.i64.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %family.i64.i, align 2
  %170 = getelementptr inbounds %struct.sock_common, ptr %166, i32 0, i32 2
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %170, align 4
  %port.i65.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 2
  %173 = ptrtoint ptr %port.i65.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %port.i65.i, align 4
  %174 = zext i16 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %168, label %for.body.i233.remote_address.exit69.i_crit_edge [
    i16 2, label %if.then.i66.i
    i16 10, label %if.then7.i68.i
  ]

for.body.i233.remote_address.exit69.i_crit_edge:  ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #16
  br label %remote_address.exit69.i

if.then.i66.i:                                    ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #16
  %175 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %166, align 8
  %177 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %176, ptr %177, align 4
  br label %remote_address.exit69.i

if.then7.i68.i:                                   ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #16
  %179 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3
  %skc_v6_daddr.i67.i = getelementptr inbounds %struct.sock_common, ptr %166, i32 0, i32 10
  %180 = call ptr @memcpy(ptr %179, ptr %skc_v6_daddr.i67.i, i32 16)
  br label %remote_address.exit69.i

remote_address.exit69.i:                          ; preds = %if.then7.i68.i, %if.then.i66.i, %for.body.i233.remote_address.exit69.i_crit_edge
  br i1 %tobool.not.i226, label %remote_address.exit69.i.if.end17.i_crit_edge, label %land.lhs.true.i235

remote_address.exit69.i.if.end17.i_crit_edge:     ; preds = %remote_address.exit69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

land.lhs.true.i235:                               ; preds = %remote_address.exit69.i
  %181 = ptrtoint ptr %family.i64.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %family.i64.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %182, i16 %151)
  %cmp.i.i234 = icmp eq i16 %182, %151
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %182)
  %cmp6.i.i = icmp eq i16 %182, 2
  br i1 %cmp.i.i234, label %if.then.i71.i, label %if.else14.i.i

if.then.i71.i:                                    ; preds = %land.lhs.true.i235
  %183 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.then.i71.i
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %186 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %187)
  %cmp10.i.i = icmp eq i32 %185, %187
  br i1 %cmp10.i.i, label %if.then8.i.i.for.inc.i241_crit_edge, label %if.then8.i.i.if.end17.i_crit_edge

if.then8.i.i.if.end17.i_crit_edge:                ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then8.i.i.for.inc.i241_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i241

if.else.i.i:                                      ; preds = %if.then.i71.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %183, ptr noundef dereferenceable(16) %96, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i236 = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i236, label %if.else.i.i.for.inc.i241_crit_edge, label %if.else.i.i.if.end17.i_crit_edge

if.else.i.i.if.end17.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.else.i.i.for.inc.i241_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i241

if.else14.i.i:                                    ; preds = %land.lhs.true.i235
  br i1 %cmp6.i.i, label %if.then19.i.i, label %if.else27.i.i

if.then19.i.i:                                    ; preds = %if.else14.i.i
  %188 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %96, align 4
  %190 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %191, %189
  %192 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %193, 65535
  %or5.i.i.i = or i32 %or.i.i.i, %xor.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then21.i.i, label %if.then19.i.i.if.end17.i_crit_edge

if.then19.i.i.if.end17.i_crit_edge:               ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  %194 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  %197 = ptrtoint ptr %arrayidx.i.i231 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx.i.i231, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %198)
  %cmp23.i.i = icmp eq i32 %196, %198
  br i1 %cmp23.i.i, label %if.then21.i.i.for.inc.i241_crit_edge, label %if.then21.i.i.if.end17.i_crit_edge

if.then21.i.i.if.end17.i_crit_edge:               ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then21.i.i.for.inc.i241_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i241

if.else27.i.i:                                    ; preds = %if.else14.i.i
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.else27.i.i.if.end17.i_crit_edge

if.else27.i.i.if.end17.i_crit_edge:               ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then32.i.i:                                    ; preds = %if.else27.i.i
  %199 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 4
  %arrayidx2.i73.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3, i32 0, i32 0, i32 0, i32 1
  %202 = ptrtoint ptr %arrayidx2.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx2.i73.i.i, align 4
  %or.i74.i.i = or i32 %203, %201
  %arrayidx4.i75.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3, i32 0, i32 0, i32 0, i32 2
  %204 = ptrtoint ptr %arrayidx4.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx4.i75.i.i, align 4
  %xor.i76.i.i = xor i32 %205, 65535
  %or5.i77.i.i = or i32 %or.i74.i.i, %xor.i76.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i.i)
  %cmp.i78.i.i = icmp eq i32 %or5.i77.i.i, 0
  br i1 %cmp.i78.i.i, label %addresses_equal.exit.i, label %if.then32.i.i.if.end17.i_crit_edge

if.then32.i.i.if.end17.i_crit_edge:               ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

addresses_equal.exit.i:                           ; preds = %if.then32.i.i
  %arrayidx36.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3, i32 0, i32 0, i32 0, i32 3
  %206 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx36.i.i, align 4
  %208 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %209)
  %cmp38.i.i = icmp eq i32 %207, %209
  br i1 %cmp38.i.i, label %addresses_equal.exit.i.for.inc.i241_crit_edge, label %addresses_equal.exit.i.if.end17.i_crit_edge

addresses_equal.exit.i.if.end17.i_crit_edge:      ; preds = %addresses_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

addresses_equal.exit.i.for.inc.i241_crit_edge:    ; preds = %addresses_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i241

if.end17.i:                                       ; preds = %addresses_equal.exit.i.if.end17.i_crit_edge, %if.then32.i.i.if.end17.i_crit_edge, %if.else27.i.i.if.end17.i_crit_edge, %if.then21.i.i.if.end17.i_crit_edge, %if.then19.i.i.if.end17.i_crit_edge, %if.else.i.i.if.end17.i_crit_edge, %if.then8.i.i.if.end17.i_crit_edge, %remote_address.exit69.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.079.i)
  %cmp5.not.i.i = icmp eq i32 %i.079.i, 0
  br i1 %cmp5.not.i.i, label %if.end17.i.land.lhs.true20.i_crit_edge, label %for.body.lr.ph.i.i

if.end17.i.land.lhs.true20.i_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true20.i

for.body.lr.ph.i.i:                               ; preds = %if.end17.i
  %210 = ptrtoint ptr %port.i65.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %port.i65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %tobool.i.i = icmp ne i16 %211, 0
  %212 = ptrtoint ptr %family.i64.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %family.i64.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %213)
  %cmp30.i.i.i = icmp eq i16 %213, 2
  %214 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3
  %arrayidx2.i.i.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.079.i, i32 3, i32 0, i32 0, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cmp9.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %cmp.i74.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.06.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %family.i.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.06.i.i, i32 1
  %215 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %family.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %216, i16 %213)
  %cmp.i.i73.i = icmp eq i16 %216, %213
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %216)
  %cmp6.i.i.i = icmp eq i16 %216, 2
  br i1 %cmp.i.i73.i, label %if.then.i.i.i237, label %if.else14.i.i.i

if.then.i.i.i237:                                 ; preds = %for.body.i.i
  %217 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.06.i.i, i32 3
  br i1 %cmp6.i.i.i, label %if.then8.i.i.i, label %if.else.i.i.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i237
  call void @__sanitizer_cov_trace_pc() #16
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 4
  %220 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %214, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %221)
  %cmp10.i.i.i = icmp eq i32 %219, %221
  br label %if.end44.i.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i237
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %217, ptr noundef dereferenceable(16) %214, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i.i238 = icmp eq i32 %bcmp.i.i.i, 0
  br label %if.end44.i.i.i

if.else14.i.i.i:                                  ; preds = %for.body.i.i
  br i1 %cmp6.i.i.i, label %if.then19.i.i.i, label %if.else27.i.i.i

if.then19.i.i.i:                                  ; preds = %if.else14.i.i.i
  %222 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %214, align 4
  %224 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %225, %223
  %226 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %227, 65535
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %xor.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or5.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then21.i.i.i, label %if.then19.i.i.i.for.inc.i.i_crit_edge

if.then19.i.i.i.for.inc.i.i_crit_edge:            ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then21.i.i.i:                                  ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %228 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.06.i.i, i32 3
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  %231 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %232)
  %cmp23.i.i.i = icmp eq i32 %230, %232
  br label %if.end44.i.i.i

if.else27.i.i.i:                                  ; preds = %if.else14.i.i.i
  br i1 %cmp30.i.i.i, label %if.then32.i.i.i, label %if.else27.i.i.i.for.inc.i.i_crit_edge

if.else27.i.i.i.for.inc.i.i_crit_edge:            ; preds = %if.else27.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then32.i.i.i:                                  ; preds = %if.else27.i.i.i
  %233 = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.06.i.i, i32 3
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  %arrayidx2.i73.i.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.06.i.i, i32 3, i32 0, i32 0, i32 0, i32 1
  %236 = ptrtoint ptr %arrayidx2.i73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx2.i73.i.i.i, align 4
  %or.i74.i.i.i = or i32 %237, %235
  %arrayidx4.i75.i.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.06.i.i, i32 3, i32 0, i32 0, i32 0, i32 2
  %238 = ptrtoint ptr %arrayidx4.i75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx4.i75.i.i.i, align 4
  %xor.i76.i.i.i = xor i32 %239, 65535
  %or5.i77.i.i.i = or i32 %or.i74.i.i.i, %xor.i76.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i.i.i)
  %cmp.i78.i.i.i = icmp eq i32 %or5.i77.i.i.i, 0
  br i1 %cmp.i78.i.i.i, label %if.then34.i.i.i, label %if.then32.i.i.i.for.inc.i.i_crit_edge

if.then32.i.i.i.for.inc.i.i_crit_edge:            ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then34.i.i.i:                                  ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx36.i.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.06.i.i, i32 3, i32 0, i32 0, i32 0, i32 3
  %240 = ptrtoint ptr %arrayidx36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx36.i.i.i, align 4
  %242 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %214, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %243)
  %cmp38.i.i.i = icmp eq i32 %241, %243
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then34.i.i.i, %if.then21.i.i.i, %if.else.i.i.i, %if.then8.i.i.i
  %addr_equals.0.shrunk.i.i.i = phi i1 [ %cmp10.i.i.i, %if.then8.i.i.i ], [ %tobool.not.i.i.i238, %if.else.i.i.i ], [ %cmp23.i.i.i, %if.then21.i.i.i ], [ %cmp38.i.i.i, %if.then34.i.i.i ]
  %244 = and i1 %tobool.i.i, %addr_equals.0.shrunk.i.i.i
  br i1 %244, label %if.end50.i.i.i, label %addresses_equal.exit.i.i

if.end50.i.i.i:                                   ; preds = %if.end44.i.i.i
  %port.i.i.i = getelementptr %struct.mptcp_addr_info, ptr %addrs, i32 %i.06.i.i, i32 2
  %245 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %port.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %246, i16 %211)
  %cmp54.i.i.i = icmp eq i16 %246, %211
  br i1 %cmp54.i.i.i, label %if.end50.i.i.i.lookup_address_in_vec.exit.i_crit_edge, label %if.end50.i.i.i.for.inc.i.i_crit_edge

if.end50.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end50.i.i.i.lookup_address_in_vec.exit.i_crit_edge: ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_address_in_vec.exit.i

addresses_equal.exit.i.i:                         ; preds = %if.end44.i.i.i
  br i1 %addr_equals.0.shrunk.i.i.i, label %addresses_equal.exit.i.i.lookup_address_in_vec.exit.i_crit_edge, label %addresses_equal.exit.i.i.for.inc.i.i_crit_edge

addresses_equal.exit.i.i.for.inc.i.i_crit_edge:   ; preds = %addresses_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

addresses_equal.exit.i.i.lookup_address_in_vec.exit.i_crit_edge: ; preds = %addresses_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_address_in_vec.exit.i

for.inc.i.i:                                      ; preds = %addresses_equal.exit.i.i.for.inc.i.i_crit_edge, %if.end50.i.i.i.for.inc.i.i_crit_edge, %if.then32.i.i.i.for.inc.i.i_crit_edge, %if.else27.i.i.i.for.inc.i.i_crit_edge, %if.then19.i.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %i.079.i)
  %cmp.i74.i = icmp ult i32 %inc.i.i, %i.079.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %i.079.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.lookup_address_in_vec.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.lookup_address_in_vec.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_address_in_vec.exit.i

lookup_address_in_vec.exit.i:                     ; preds = %for.inc.i.i.lookup_address_in_vec.exit.i_crit_edge, %addresses_equal.exit.i.i.lookup_address_in_vec.exit.i_crit_edge, %if.end50.i.i.i.lookup_address_in_vec.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp9.i.i, %if.end50.i.i.i.lookup_address_in_vec.exit.i_crit_edge ], [ %cmp.i74.i, %for.inc.i.i.lookup_address_in_vec.exit.i_crit_edge ], [ %cmp9.i.i, %addresses_equal.exit.i.i.lookup_address_in_vec.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %lookup_address_in_vec.exit.i.for.inc.i241_crit_edge, label %lookup_address_in_vec.exit.i.land.lhs.true20.i_crit_edge

lookup_address_in_vec.exit.i.land.lhs.true20.i_crit_edge: ; preds = %lookup_address_in_vec.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true20.i

lookup_address_in_vec.exit.i.for.inc.i241_crit_edge: ; preds = %lookup_address_in_vec.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i241

land.lhs.true20.i:                                ; preds = %lookup_address_in_vec.exit.i.land.lhs.true20.i_crit_edge, %if.end17.i.land.lhs.true20.i_crit_edge
  %247 = ptrtoint ptr %subflows69 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %subflows69, align 1
  %conv.i239 = zext i8 %248 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %conv.i239)
  %cmp23.i = icmp ugt i32 %149, %conv.i239
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true20.i.for.inc.i241_crit_edge

land.lhs.true20.i.for.inc.i241_crit_edge:         ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i241

if.then25.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc28.i = add i8 %248, 1
  %249 = ptrtoint ptr %subflows69 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %inc28.i, ptr %subflows69, align 1
  %inc29.i = add i32 %i.079.i, 1
  br label %for.inc.i241

for.inc.i241:                                     ; preds = %if.then25.i, %land.lhs.true20.i.for.inc.i241_crit_edge, %lookup_address_in_vec.exit.i.for.inc.i241_crit_edge, %addresses_equal.exit.i.for.inc.i241_crit_edge, %if.then21.i.i.for.inc.i241_crit_edge, %if.else.i.i.for.inc.i241_crit_edge, %if.then8.i.i.for.inc.i241_crit_edge
  %i.1.i = phi i32 [ %i.079.i, %addresses_equal.exit.i.for.inc.i241_crit_edge ], [ %i.079.i, %lookup_address_in_vec.exit.i.for.inc.i241_crit_edge ], [ %inc29.i, %if.then25.i ], [ %i.079.i, %land.lhs.true20.i.for.inc.i241_crit_edge ], [ %i.079.i, %if.then8.i.i.for.inc.i241_crit_edge ], [ %i.079.i, %if.else.i.i.for.inc.i241_crit_edge ], [ %i.079.i, %if.then21.i.i.for.inc.i241_crit_edge ]
  %250 = ptrtoint ptr %subflow.083.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %subflow.0.i = load ptr, ptr %subflow.083.i, align 8
  %cmp.not.i240 = icmp eq ptr %subflow.0.i, %conn_list.i
  br i1 %cmp.not.i240, label %fill_remote_addresses_vec.exit, label %for.inc.i241.for.body.i233_crit_edge

for.inc.i241.for.body.i233_crit_edge:             ; preds = %for.inc.i241
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i233

fill_remote_addresses_vec.exit.thread:            ; preds = %if.else.i.fill_remote_addresses_vec.exit.thread_crit_edge, %if.then.i229.fill_remote_addresses_vec.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %remote.i) #14
  br label %if.end99.thread

fill_remote_addresses_vec.exit:                   ; preds = %for.inc.i241
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %remote.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %tobool91.not = icmp eq i32 %i.1.i, 0
  br i1 %tobool91.not, label %fill_remote_addresses_vec.exit.if.end99.thread_crit_edge, label %fill_remote_addresses_vec.exit.if.end99_crit_edge

fill_remote_addresses_vec.exit.if.end99_crit_edge: ; preds = %fill_remote_addresses_vec.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

fill_remote_addresses_vec.exit.if.end99.thread_crit_edge: ; preds = %fill_remote_addresses_vec.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99.thread

if.end99.thread:                                  ; preds = %fill_remote_addresses_vec.exit.if.end99.thread_crit_edge, %fill_remote_addresses_vec.exit.thread
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %cleanup

if.end99:                                         ; preds = %fill_remote_addresses_vec.exit.if.end99_crit_edge, %fill_remote_addresses_vec.exit.thread257
  %retval.0.i242260 = phi i32 [ 1, %fill_remote_addresses_vec.exit.thread257 ], [ %i.1.i, %fill_remote_addresses_vec.exit.if.end99_crit_edge ]
  %addr93 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %ret.0.i223, i32 0, i32 1
  %251 = ptrtoint ptr %addr93 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %addr93, align 4
  %conv95 = zext i8 %252 to i32
  %rem.i171 = and i32 %conv95, 31
  %shl.i172 = shl nuw i32 1, %rem.i171
  %div2.i173 = lshr i32 %conv95, 5
  %add.ptr.i174 = getelementptr i32, ptr %id_avail_bitmap.i209, i32 %div2.i173
  %neg.i175 = xor i32 %shl.i172, -1
  %253 = ptrtoint ptr %add.ptr.i174 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr.i174, align 4
  %and.i176 = and i32 %254, %neg.i175
  store i32 %and.i176, ptr %add.ptr.i174, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i242260)
  %cmp101263 = icmp sgt i32 %retval.0.i242260, 0
  br i1 %cmp101263, label %for.body.lr.ph, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end99
  %addr103 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %ret.0.i223, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0264 = phi i32 [ 0, %for.body.lr.ph ], [ %inc105, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.mptcp_addr_info], ptr %addrs, i32 0, i32 %i.0264
  %call104 = call i32 @__mptcp_subflow_connect(ptr noundef %msk, ptr noundef %addr103, ptr noundef %arrayidx) #14
  %inc105 = add nuw nsw i32 %i.0264, 1
  %exitcond.not = icmp eq i32 %inc105, %retval.0.i242260
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %if.end99.thread
  call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %addrs) #14
  %255 = ptrtoint ptr %local_addr_used64 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %local_addr_used64, align 4
  %conv65 = zext i8 %256 to i32
  %cmp66 = icmp ugt i32 %12, %conv65
  br i1 %cmp66, label %cleanup.land.rhs_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %land.rhs.while.end_crit_edge, %if.end62.while.end_crit_edge
  %257 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %skc_net.i, align 4
  %259 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i244 = call fastcc ptr @net_generic(ptr noundef %258, i32 noundef %259) #14
  %subflows.i245 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %260 = ptrtoint ptr %subflows.i245 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %subflows.i245, align 1
  %conv.i246 = zext i8 %261 to i32
  %262 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %skc_net.i, align 4
  %264 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i.i247 = call fastcc ptr @net_generic(ptr noundef %263, i32 noundef %264) #14
  %subflows_max.i.i248 = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i.i247, i32 0, i32 7
  %265 = ptrtoint ptr %subflows_max.i.i248 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %subflows_max.i.i248, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %conv.i246)
  %cmp.i = icmp eq i32 %266, %conv.i246
  br i1 %cmp.i, label %while.end.do.body10.i_crit_edge, label %lor.lhs.false.i250

while.end.do.body10.i_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i

lor.lhs.false.i250:                               ; preds = %while.end
  %id_bitmap.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i244, i32 0, i32 9
  %id_avail_bitmap.i249 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  %call13.i.i = call i32 @_find_next_bit(ptr noundef %id_bitmap.i, ptr noundef %id_avail_bitmap.i249, i32 noundef 256, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call13.i.i)
  %cmp7.i = icmp eq i32 %call13.i.i, 256
  br i1 %cmp7.i, label %lor.lhs.false.i250.do.body10.i_crit_edge, label %lor.lhs.false.i250.cleanup112_crit_edge

lor.lhs.false.i250.cleanup112_crit_edge:          ; preds = %lor.lhs.false.i250
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup112

lor.lhs.false.i250.do.body10.i_crit_edge:         ; preds = %lor.lhs.false.i250
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i

do.body10.i:                                      ; preds = %lor.lhs.false.i250.do.body10.i_crit_edge, %while.end.do.body10.i_crit_edge
  %work_pending.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %267 = ptrtoint ptr %work_pending.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store volatile i8 0, ptr %work_pending.i, align 2
  br label %cleanup112

cleanup112:                                       ; preds = %do.body10.i, %lor.lhs.false.i250.cleanup112_crit_edge, %select_signal_address.exit.cleanup112_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lookup_id_by_addr(ptr noundef readonly %pernet, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %local_addr_list = getelementptr inbounds %struct.pm_nl_pernet, ptr %pernet, i32 0, i32 1
  %4 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.029 = load ptr, ptr %local_addr_list, align 4
  %cmp.not30 = icmp eq ptr %entry1.029, %local_addr_list
  br i1 %cmp.not30, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %family1.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 1
  %5 = ptrtoint ptr %family1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %family1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp30.i = icmp eq i16 %6, 2
  %7 = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3
  %arrayidx2.i.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %port52.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %entry1.031 = phi ptr [ %entry1.029, %for.body.lr.ph ], [ %entry1.0, %for.cond.backedge.for.body_crit_edge ]
  %port = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool = icmp ne i16 %9, 0
  %family.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %6)
  %cmp.i = icmp eq i16 %11, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp6.i = icmp eq i16 %11, 2
  br i1 %cmp.i, label %if.then.i16, label %if.else14.i

if.then.i16:                                      ; preds = %for.body
  %12 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1, i32 3
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10.i = icmp eq i32 %14, %16
  br label %if.end44.i

if.else.i:                                        ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %12, ptr noundef dereferenceable(16) %7, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i17 = icmp eq i32 %bcmp.i, 0
  br label %if.end44.i

if.else14.i:                                      ; preds = %for.body
  br i1 %cmp6.i, label %if.then19.i, label %if.else27.i

if.then19.i:                                      ; preds = %if.else14.i
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %7, align 4
  %19 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %20, %18
  %21 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %22, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then21.i, label %if.then19.i.for.cond.backedge_crit_edge

if.then19.i.for.cond.backedge_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp23.i = icmp eq i32 %25, %27
  br label %if.end44.i

if.else27.i:                                      ; preds = %if.else14.i
  br i1 %cmp30.i, label %if.then32.i, label %if.else27.i.for.cond.backedge_crit_edge

if.else27.i.for.cond.backedge_crit_edge:          ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then32.i:                                      ; preds = %if.else27.i
  %28 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %arrayidx2.i73.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx2.i73.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i73.i, align 4
  %or.i74.i = or i32 %32, %30
  %arrayidx4.i75.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx4.i75.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i75.i, align 4
  %xor.i76.i = xor i32 %34, 65535
  %or5.i77.i = or i32 %or.i74.i, %xor.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i)
  %cmp.i78.i = icmp eq i32 %or5.i77.i, 0
  br i1 %cmp.i78.i, label %if.then34.i, label %if.then32.i.for.cond.backedge_crit_edge

if.then32.i.for.cond.backedge_crit_edge:          ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then34.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx36.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx36.i, align 4
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp38.i = icmp eq i32 %36, %38
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then34.i, %if.then21.i, %if.else.i, %if.then8.i
  %addr_equals.0.shrunk.i = phi i1 [ %cmp10.i, %if.then8.i ], [ %tobool.not.i17, %if.else.i ], [ %cmp23.i, %if.then21.i ], [ %cmp38.i, %if.then34.i ]
  %39 = and i1 %tobool, %addr_equals.0.shrunk.i
  br i1 %39, label %if.end50.i, label %addresses_equal.exit

if.end50.i:                                       ; preds = %if.end44.i
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %port, align 4
  %42 = ptrtoint ptr %port52.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %port52.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp54.i = icmp eq i16 %41, %43
  br i1 %cmp54.i, label %if.end50.i.if.then_crit_edge, label %if.end50.i.for.cond.backedge_crit_edge

if.end50.i.for.cond.backedge_crit_edge:           ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end50.i.if.then_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

addresses_equal.exit:                             ; preds = %if.end44.i
  br i1 %addr_equals.0.shrunk.i, label %addresses_equal.exit.if.then_crit_edge, label %addresses_equal.exit.for.cond.backedge_crit_edge

addresses_equal.exit.for.cond.backedge_crit_edge: ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

addresses_equal.exit.if.then_crit_edge:           ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.backedge:                                ; preds = %addresses_equal.exit.for.cond.backedge_crit_edge, %if.end50.i.for.cond.backedge_crit_edge, %if.then32.i.for.cond.backedge_crit_edge, %if.else27.i.for.cond.backedge_crit_edge, %if.then19.i.for.cond.backedge_crit_edge
  %44 = ptrtoint ptr %entry1.031 to i32
  call void @__asan_load4_noabort(i32 %44)
  %entry1.0 = load ptr, ptr %entry1.031, align 4
  %cmp.not = icmp eq ptr %entry1.0, %local_addr_list
  br i1 %cmp.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then:                                          ; preds = %addresses_equal.exit.if.then_crit_edge, %if.end50.i.if.then_crit_edge
  %addr3.le = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.031, i32 0, i32 1
  %45 = ptrtoint ptr %addr3.le to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %addr3.le, align 4
  %conv = zext i8 %46 to i32
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.backedge.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %ret.0 = phi i32 [ %conv, %if.then ], [ -1, %rcu_read_lock.exit.for.end_crit_edge ], [ -1, %for.cond.backedge.for.end_crit_edge ]
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i18, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %for.end
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %47 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i.i.i.i25 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptcp_pm_add_timer(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sock = getelementptr i8, ptr %timer, i32 48
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_add_timer.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_add_timer, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !188

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_add_timer.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.4, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp = icmp eq i8 %3, 7
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %addr = getelementptr i8, ptr %timer, i32 -24
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %addr_signal.i = getelementptr inbounds %struct.mptcp_sock, ptr %1, i32 0, i32 40, i32 4
  %6 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %addr_signal.i, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  br i1 %tobool.i.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 1500
  tail call void @sk_reset_timer(ptr noundef nonnull %1, ptr noundef %timer, i32 noundef %add) #14
  br label %out

if.end16:                                         ; preds = %if.end13
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %1, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %10 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %addr_signal.i, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i84.not = icmp eq i8 %12, 0
  br i1 %tobool.i84.not, label %do.body19, label %if.end16.if.end39_crit_edge

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

do.body19:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_add_timer.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_add_timer, %if.then31)) #14
          to label %do.end36 [label %if.then31], !srcloc !188

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr, align 4
  %conv = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_add_timer.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.37, i32 noundef %conv) #14
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body19
  %call38 = tail call i32 @mptcp_pm_announce_addr(ptr noundef nonnull %1, ptr noundef %addr, i1 noundef zeroext false) #14
  tail call void @mptcp_pm_add_addr_send_ack(ptr noundef nonnull %1) #14
  %retrans_times = getelementptr i8, ptr %timer, i32 52
  %15 = ptrtoint ptr %retrans_times to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %retrans_times, align 4
  %inc = add i8 %16, 1
  store i8 %inc, ptr %retrans_times, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.end16.if.end39_crit_edge
  %retrans_times40 = getelementptr i8, ptr %timer, i32 52
  %17 = ptrtoint ptr %retrans_times40 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %retrans_times40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp42 = icmp ult i8 %18, 3
  br i1 %cmp42, label %if.then44, label %if.end39.if.end48_crit_edge

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_net.i, align 4
  %call46 = tail call i32 @mptcp_get_add_addr_timeout(ptr noundef %21) #14
  %add47 = add i32 %call46, %19
  tail call void @sk_reset_timer(ptr noundef nonnull %1, ptr noundef %timer, i32 noundef %add47) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end39.if.end48_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %22 = ptrtoint ptr %retrans_times40 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %retrans_times40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp53 = icmp eq i8 %23, 3
  br i1 %cmp53, label %if.then55, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mptcp_pm_subflow_established(ptr noundef nonnull %1) #14
  br label %out

out:                                              ; preds = %if.then55, %if.end48.out_crit_edge, %if.then15
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !197
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %out.cleanup_crit_edge, !prof !187

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3.i.i.i:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i.i, %out.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_get_add_addr_timeout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_add_addr_send_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_subflow_established(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__lock_sock_fast(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_event_add_subflow(ptr noundef %skb, ptr noundef %ssk) unnamed_addr #0 align 64 {
entry:
  %tmp.i177 = alloca i8, align 1
  %tmp.i175 = alloca i8, align 1
  %tmp.i173 = alloca i16, align 2
  %tmp.i171 = alloca i16, align 2
  %tmp.i.i167 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup138_crit_edge

entry.cleanup138_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_family, align 8
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %4, label %land.end [
    i16 2, label %sw.bb
    i16 10, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %ssk, i32 0, i32 2
  %6 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inet_saddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup138_crit_edge

sw.bb.cleanup138_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.end7:                                          ; preds = %sw.bb
  %9 = ptrtoint ptr %ssk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ssk, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i167) #14
  %11 = ptrtoint ptr %tmp.i.i167 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i.i167, align 4
  %call.i.i168 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i167) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i167) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i168)
  %tobool10.not = icmp eq i32 %call.i.i168, 0
  br i1 %tobool10.not, label %if.end7.sw.epilog_crit_edge, label %if.end7.cleanup138_crit_edge

if.end7.cleanup138_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %13 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sw.bb13.inet6_sk.exit_crit_edge, label %cond.true.i

sw.bb13.inet6_sk.exit_crit_edge:                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %ssk, i32 0, i32 1
  %14 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %sw.bb13.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %15, %cond.true.i ], [ null, %sw.bb13.inet6_sk.exit_crit_edge ]
  %call.i169 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 16, ptr noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool16.not = icmp eq i32 %call.i169, 0
  br i1 %tobool16.not, label %if.end18, label %inet6_sk.exit.cleanup138_crit_edge

inet6_sk.exit.cleanup138_crit_edge:               ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.end18:                                         ; preds = %inet6_sk.exit
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 10
  %call.i170 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 16, ptr noundef %skc_v6_daddr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool21.not = icmp eq i32 %call.i170, 0
  br i1 %tobool21.not, label %if.end18.sw.epilog_crit_edge, label %if.end18.cleanup138_crit_edge

if.end18.cleanup138_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.end:                                         ; preds = %if.end
  %.b164 = load i1, ptr @mptcp_event_add_subflow.__already_done, align 1
  br i1 %.b164, label %land.end.cleanup138_crit_edge, label %if.then30, !prof !189

land.end.cleanup138_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.then30:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mptcp_event_add_subflow.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1854, i32 noundef 9, ptr noundef null) #14
  br label %cleanup138

sw.epilog:                                        ; preds = %if.end18.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %ssk, i32 0, i32 6
  %16 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %inet_sport, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i171) #14
  %18 = ptrtoint ptr %tmp.i171 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %tmp.i171, align 2
  %call.i172 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i171) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i171) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool61.not = icmp eq i32 %call.i172, 0
  br i1 %tobool61.not, label %if.end63, label %sw.epilog.cleanup138_crit_edge

sw.epilog.cleanup138_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.end63:                                         ; preds = %sw.epilog
  %19 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i173) #14
  %22 = ptrtoint ptr %tmp.i173 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %tmp.i173, align 2
  %call.i174 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %tmp.i173) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i173) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool67.not = icmp eq i32 %call.i174, 0
  br i1 %tobool67.not, label %if.end69, label %if.end63.cleanup138_crit_edge

if.end63.cleanup138_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.end69:                                         ; preds = %if.end63
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %23 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tobool72.not = icmp eq ptr %24, null
  br i1 %tobool72.not, label %land.rhs81, label %if.end129

land.rhs81:                                       ; preds = %if.end69
  %.b162163 = load i1, ptr @mptcp_event_add_subflow.__already_done.42, align 1
  br i1 %.b162163, label %land.rhs81.cleanup138_crit_edge, label %if.then92, !prof !189

land.rhs81.cleanup138_crit_edge:                  ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.then92:                                        ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mptcp_event_add_subflow.__already_done.42, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1864, i32 noundef 9, ptr noundef null) #14
  br label %cleanup138

if.end129:                                        ; preds = %if.end69
  %local_id = getelementptr inbounds %struct.mptcp_subflow_context, ptr %24, i32 0, i32 1, i32 0, i32 20
  %25 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %local_id, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i175) #14
  %27 = ptrtoint ptr %tmp.i175 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %tmp.i175, align 1
  %call.i176 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i175) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i175) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool131.not = icmp eq i32 %call.i176, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.cleanup138_crit_edge

if.end129.cleanup138_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.end133:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  %remote_id = getelementptr inbounds %struct.mptcp_subflow_context, ptr %24, i32 0, i32 1, i32 0, i32 21
  %28 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %remote_id, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i177) #14
  %30 = ptrtoint ptr %tmp.i177 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tmp.i177, align 1
  %call.i178 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i177) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i177) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool135.not = icmp eq i32 %call.i178, 0
  %.166 = select i1 %tobool135.not, i32 0, i32 -90
  br label %cleanup138

cleanup138:                                       ; preds = %if.end133, %if.end129.cleanup138_crit_edge, %if.then92, %land.rhs81.cleanup138_crit_edge, %if.end63.cleanup138_crit_edge, %sw.epilog.cleanup138_crit_edge, %if.then30, %land.end.cleanup138_crit_edge, %if.end18.cleanup138_crit_edge, %inet6_sk.exit.cleanup138_crit_edge, %if.end7.cleanup138_crit_edge, %sw.bb.cleanup138_crit_edge, %entry.cleanup138_crit_edge
  %retval.1 = phi i32 [ -90, %if.end18.cleanup138_crit_edge ], [ -90, %entry.cleanup138_crit_edge ], [ -90, %sw.bb.cleanup138_crit_edge ], [ -90, %if.end7.cleanup138_crit_edge ], [ -90, %if.then30 ], [ -90, %land.end.cleanup138_crit_edge ], [ -90, %sw.epilog.cleanup138_crit_edge ], [ -90, %if.end63.cleanup138_crit_edge ], [ -22, %if.then92 ], [ -90, %if.end129.cleanup138_crit_edge ], [ %.166, %if.end133 ], [ -90, %inet6_sk.exit.cleanup138_crit_edge ], [ -22, %land.rhs81.cleanup138_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_event_put_token_and_ssk(ptr noundef %skb, ptr noundef %msk, ptr noundef %ssk) unnamed_addr #0 align 64 {
entry:
  %tmp.i93 = alloca i8, align 1
  %tmp.i91 = alloca i32, align 4
  %tmp.i89 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %token = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 16
  %0 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %token, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @mptcp_event_add_subflow(ptr noundef %skb, ptr noundef %ssk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %3 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %land.rhs, label %if.end47

land.rhs:                                         ; preds = %if.end4
  %.b87 = load i1, ptr @mptcp_event_put_token_and_ssk.__already_done, align 1
  br i1 %.b87, label %land.rhs.cleanup_crit_edge, label %if.then15, !prof !189

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mptcp_event_put_token_and_ssk.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1891, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end47:                                         ; preds = %if.end4
  %backup = getelementptr inbounds %struct.mptcp_subflow_context, ptr %4, i32 0, i32 1, i32 0, i32 13
  %5 = ptrtoint ptr %backup to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %backup, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %6 = trunc i32 %bf.lshr to i8
  %conv = and i8 %6, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i89) #14
  %7 = ptrtoint ptr %tmp.i89 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %tmp.i89, align 1
  %call.i90 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %tmp.i89) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i89) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool49.not = icmp eq i32 %call.i90, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 6
  %8 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool52.not = icmp eq i32 %9, 0
  br i1 %tobool52.not, label %if.end51.if.end58_crit_edge, label %land.lhs.true

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i91) #14
  %10 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i91, align 4
  %call.i92 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i91) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i91) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool56.not = icmp eq i32 %call.i92, 0
  br i1 %tobool56.not, label %land.lhs.true.if.end58_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true.if.end58_crit_edge, %if.end51.if.end58_crit_edge
  %sk_err59 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 51
  %11 = ptrtoint ptr %sk_err59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_err59, align 4
  %conv60 = trunc i32 %12 to i8
  %conv61 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv61)
  %tobool62.not = icmp eq i32 %conv61, 0
  br i1 %tobool62.not, label %if.end58.if.end71_crit_edge, label %land.lhs.true63

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true63:                                  ; preds = %if.end58
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %land.lhs.true67, label %land.lhs.true63.if.end71_crit_edge

land.lhs.true63.if.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true67:                                  ; preds = %land.lhs.true63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i93) #14
  %15 = ptrtoint ptr %tmp.i93 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv60, ptr %tmp.i93, align 1
  %call.i94 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %tmp.i93) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i93) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool69.not = icmp eq i32 %call.i94, 0
  br i1 %tobool69.not, label %land.lhs.true67.if.end71_crit_edge, label %land.lhs.true67.cleanup_crit_edge

land.lhs.true67.cleanup_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true67.if.end71_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.end71:                                         ; preds = %land.lhs.true67.if.end71_crit_edge, %land.lhs.true63.if.end71_crit_edge, %if.end58.if.end71_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %land.lhs.true67.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then15, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -22, %if.then15 ], [ -90, %if.end47.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ], [ -90, %land.lhs.true67.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptcp_nl_cmd_add_addr(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %s_slot.i = alloca i32, align 4
  %s_num.i = alloca i32, align 4
  %addr.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %addr = alloca %struct.mptcp_pm_addr_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_net.i.i, align 4
  %6 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6) #14
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %addr) #14
  %7 = call ptr @memset(ptr %addr, i32 255, i32 44)
  %call2 = call fastcc i32 @mptcp_pm_parse_addr(ptr noundef %3, ptr noundef %info, i1 noundef zeroext true, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 44) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_nl_cmd_add_addr.__msg) #14
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mptcp_nl_cmd_add_addr.__msg, ptr %10, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %12 = call ptr @memcpy(ptr %call7.i, ptr %addr, i32 44)
  %port = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool10.not = icmp eq i16 %14, 0
  br i1 %tobool10.not, label %if.end8.if.end25_crit_edge, label %if.then11

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then11:                                        ; preds = %if.end8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr.i) #14
  %18 = call ptr @memset(ptr %addr.i, i32 255, i32 128)
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i.i, align 4
  %addr2.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 1
  %family.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %family.i, align 2
  %conv.i = zext i16 %22 to i32
  %lsk.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 4
  %call3.i = tail call i32 @sock_create_kern(ptr noundef %20, i32 noundef %conv.i, i32 noundef 1, i32 noundef 262, ptr noundef %lsk.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.do.body15_crit_edge

if.then11.do.body15_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15

if.end.i:                                         ; preds = %if.then11
  %23 = ptrtoint ptr %lsk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lsk.i, align 8
  %sk5.i = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %sk5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk5.i, align 16
  %tobool7.not.i = icmp eq ptr %26, null
  br i1 %tobool7.not.i, label %if.end.i.out.i_crit_edge, label %if.end9.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call ptr @__mptcp_nmpc_socket(ptr noundef nonnull %26) #14
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.out.i_crit_edge, label %if.end13.i

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end13.i:                                       ; preds = %if.end9.i
  %27 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %family.i, align 2
  call void @mptcp_info2sockaddr(ptr noundef %addr2.i, ptr noundef nonnull %addr.i, i16 noundef zeroext %28) #14
  %29 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %30)
  %cmp.i = icmp eq i16 %30, 10
  %spec.select.i = select i1 %cmp.i, i32 28, i32 16
  %call23.i = call i32 @kernel_bind(ptr noundef nonnull %call10.i, ptr noundef nonnull %addr.i, i32 noundef %spec.select.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end27.i, label %do.end.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call23.i) #20
  br label %out.i

if.end27.i:                                       ; preds = %if.end13.i
  %call28.i = call i32 @kernel_listen(ptr noundef nonnull %call10.i, i32 noundef 1024) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %mptcp_pm_nl_create_listen_socket.exit, label %do.end33.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call28.i) #20
  br label %out.i

out.i:                                            ; preds = %do.end33.i, %do.end.i, %if.end9.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call23.i, %do.end.i ], [ %call28.i, %do.end33.i ], [ -22, %if.end.i.out.i_crit_edge ], [ -22, %if.end9.i.out.i_crit_edge ]
  %31 = ptrtoint ptr %lsk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lsk.i, align 8
  call void @sock_release(ptr noundef %32) #14
  br label %do.body15

mptcp_pm_nl_create_listen_socket.exit:            ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr.i) #14
  br label %if.end25

do.body15:                                        ; preds = %out.i, %if.then11.do.body15_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.then11.do.body15_crit_edge ], [ %err.0.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr.i) #14
  %extack17 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %33 = ptrtoint ptr %extack17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %extack17, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_nl_cmd_add_addr.__msg.45) #14
  %tobool18.not = icmp eq ptr %34, null
  br i1 %tobool18.not, label %do.body15.if.end21_crit_edge, label %if.then19

do.body15.if.end21_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mptcp_nl_cmd_add_addr.__msg.45, ptr %34, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body15.if.end21_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end25:                                         ; preds = %mptcp_pm_nl_create_listen_socket.exit, %if.end8.if.end25_crit_edge
  %call26 = call fastcc i32 @mptcp_pm_nl_append_new_local_addr(ptr noundef %call1.i, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.body29, label %if.end42

do.body29:                                        ; preds = %if.end25
  %extack31 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %36 = ptrtoint ptr %extack31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extack31, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_nl_cmd_add_addr.__msg.46) #14
  %tobool32.not = icmp eq ptr %37, null
  br i1 %tobool32.not, label %do.body29.if.end35_crit_edge, label %if.then33

do.body29.if.end35_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @mptcp_nl_cmd_add_addr.__msg.46, ptr %37, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.body29.if.end35_crit_edge
  %lsk = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %call7.i, i32 0, i32 4
  %39 = ptrtoint ptr %lsk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lsk, align 8
  %tobool38.not = icmp eq ptr %40, null
  br i1 %tobool38.not, label %if.end35.if.end41_crit_edge, label %if.then39

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  call void @sock_release(ptr noundef nonnull %40) #14
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end35.if.end41_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end42:                                         ; preds = %if.end25
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_slot.i) #14
  %46 = ptrtoint ptr %s_slot.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %s_slot.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_num.i) #14
  %47 = ptrtoint ptr %s_num.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %s_num.i, align 4
  %call1.i74 = call ptr @mptcp_token_iter_next(ptr noundef %45, ptr noundef nonnull %s_slot.i, ptr noundef nonnull %s_num.i) #14
  %cmp.not2.i = icmp eq ptr %call1.i74, null
  br i1 %cmp.not2.i, label %if.end42.mptcp_nl_add_subflow_or_signal_addr.exit_crit_edge, label %if.end42.while.body.i_crit_edge

if.end42.while.body.i_crit_edge:                  ; preds = %if.end42
  br label %while.body.i

if.end42.mptcp_nl_add_subflow_or_signal_addr.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_add_subflow_or_signal_addr.exit

while.body.i:                                     ; preds = %sock_put.exit.i.while.body.i_crit_edge, %if.end42.while.body.i_crit_edge
  %call3.i75 = phi ptr [ %call.i, %sock_put.exit.i.while.body.i_crit_edge ], [ %call1.i74, %if.end42.while.body.i_crit_edge ]
  %fully_established.i = getelementptr inbounds %struct.mptcp_sock, ptr %call3.i75, i32 0, i32 23
  %48 = ptrtoint ptr %fully_established.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %fully_established.i, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i76 = icmp eq i8 %49, 0
  br i1 %tobool.not.i76, label %while.body.i.next.i_crit_edge, label %if.end.i77

while.body.i.next.i_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

if.end.i77:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @lock_sock_nested(ptr noundef nonnull %call3.i75, i32 noundef 0) #14
  %lock.i = getelementptr inbounds %struct.mptcp_sock, ptr %call3.i75, i32 0, i32 40, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  call fastcc void @mptcp_pm_create_subflow_or_signal_addr(ptr noundef nonnull %call3.i75) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  call void @release_sock(ptr noundef nonnull %call3.i75) #14
  br label %next.i

next.i:                                           ; preds = %if.end.i77, %while.body.i.next.i_crit_edge
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call3.i75, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #14
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #14, !srcloc !197
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %next.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !189

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #14
  br label %sock_put.exit.i

if.then.i.i:                                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  call void @sk_free(ptr noundef nonnull %call3.i75) #14
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1236, i32 noundef 0) #14
  %call.i.i = call i32 @__cond_resched() #14
  %call.i = call ptr @mptcp_token_iter_next(ptr noundef %45, ptr noundef nonnull %s_slot.i, ptr noundef nonnull %s_num.i) #14
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %sock_put.exit.i.mptcp_nl_add_subflow_or_signal_addr.exit_crit_edge, label %sock_put.exit.i.while.body.i_crit_edge

sock_put.exit.i.while.body.i_crit_edge:           ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

sock_put.exit.i.mptcp_nl_add_subflow_or_signal_addr.exit_crit_edge: ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_add_subflow_or_signal_addr.exit

mptcp_nl_add_subflow_or_signal_addr.exit:         ; preds = %sock_put.exit.i.mptcp_nl_add_subflow_or_signal_addr.exit_crit_edge, %if.end42.mptcp_nl_add_subflow_or_signal_addr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_num.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_slot.i) #14
  br label %cleanup

cleanup:                                          ; preds = %mptcp_nl_add_subflow_or_signal_addr.exit, %if.end41, %if.end21, %if.then6, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.end21 ], [ %call26, %if.end41 ], [ 0, %mptcp_nl_add_subflow_or_signal_addr.exit ], [ %call2, %entry.cleanup_crit_edge ], [ -12, %if.then6 ], [ -12, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptcp_nl_cmd_del_addr(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %list.i = alloca %struct.mptcp_rm_list, align 1
  %s_slot.i = alloca i32, align 4
  %s_num.i = alloca i32, align 4
  %msk_local.i = alloca %struct.mptcp_addr_info, align 4
  %addr = alloca %struct.mptcp_pm_addr_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_net.i.i, align 4
  %6 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6) #14
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %addr) #14
  %7 = call ptr @memset(ptr %addr, i32 255, i32 44)
  %call2 = call fastcc i32 @mptcp_pm_parse_addr(ptr noundef %3, ptr noundef %info, i1 noundef zeroext false, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr3 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1
  %8 = ptrtoint ptr %addr3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp4 = icmp eq i8 %9, 0
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %list.i) #14
  %15 = getelementptr inbounds i8, ptr %list.i, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_slot.i) #14
  %17 = ptrtoint ptr %s_slot.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %s_slot.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_num.i) #14
  %18 = ptrtoint ptr %s_num.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %s_num.i, align 4
  %nr.i = getelementptr inbounds %struct.mptcp_rm_list, ptr %list.i, i32 0, i32 1
  %19 = ptrtoint ptr %nr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %nr.i, align 1
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %list.i, align 1
  %call7.i = call ptr @mptcp_token_iter_next(ptr noundef %14, ptr noundef nonnull %s_slot.i, ptr noundef nonnull %s_num.i) #14
  %cmp.not8.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not8.i, label %if.then6.mptcp_nl_remove_id_zero_address.exit_crit_edge, label %while.body.lr.ph.i

if.then6.mptcp_nl_remove_id_zero_address.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_remove_id_zero_address.exit

while.body.lr.ph.i:                               ; preds = %if.then6
  %family.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local.i, i32 0, i32 1
  %port.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local.i, i32 0, i32 3
  %port.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 2
  %family1.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 1
  %arrayidx2.i73.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i75.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx36.i.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %msk_local.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %22 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 3
  %arrayidx2.i.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %sock_put.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call9.i = phi ptr [ %call7.i, %while.body.lr.ph.i ], [ %call.i, %sock_put.exit.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msk_local.i) #14
  %23 = call ptr @memset(ptr %msk_local.i, i32 255, i32 24)
  %conn_list.i = getelementptr inbounds %struct.mptcp_sock, ptr %call9.i, i32 0, i32 34
  %24 = ptrtoint ptr %conn_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %conn_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %conn_list.i
  br i1 %cmp.i.not.i, label %while.body.i.next.i_crit_edge, label %if.end.i

while.body.i.next.i_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

if.end.i:                                         ; preds = %while.body.i
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %call9.i, i32 0, i32 3
  %26 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %skc_family.i.i, align 8
  %28 = ptrtoint ptr %family.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %family.i.i, align 2
  %29 = getelementptr inbounds %struct.sock_common, ptr %call9.i, i32 0, i32 2
  %skc_num.i.i = getelementptr inbounds %struct.anon.2, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %skc_num.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %skc_num.i.i, align 2
  %32 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %port.i.i, align 4
  %33 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %27, label %if.end.i.local_address.exit.i_crit_edge [
    i16 2, label %if.then.i.i
    i16 10, label %if.then7.i.i
  ]

if.end.i.local_address.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %local_address.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %skc_rcv_saddr.i.i = getelementptr inbounds %struct.anon, ptr %call9.i, i32 0, i32 1
  %34 = ptrtoint ptr %skc_rcv_saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %skc_rcv_saddr.i.i, align 4
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %21, align 4
  br label %local_address.exit.i

if.then7.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %skc_v6_rcv_saddr.i.i = getelementptr inbounds %struct.sock_common, ptr %call9.i, i32 0, i32 11
  %37 = call ptr @memcpy(ptr %21, ptr %skc_v6_rcv_saddr.i.i, i32 16)
  br label %local_address.exit.i

local_address.exit.i:                             ; preds = %if.then7.i.i, %if.then.i.i, %if.end.i.local_address.exit.i_crit_edge
  %38 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool2.i = icmp ne i16 %39, 0
  %40 = ptrtoint ptr %family1.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %family1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %41)
  %cmp.i2.i = icmp eq i16 %27, %41
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %27)
  %cmp6.i.i = icmp eq i16 %27, 2
  br i1 %cmp.i2.i, label %if.then.i3.i, label %if.else14.i.i

if.then.i3.i:                                     ; preds = %local_address.exit.i
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %21, align 4
  %44 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp10.i.i = icmp eq i32 %43, %45
  br label %if.end44.i.i

if.else.i.i:                                      ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %21, ptr noundef dereferenceable(16) %22, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br label %if.end44.i.i

if.else14.i.i:                                    ; preds = %local_address.exit.i
  br i1 %cmp6.i.i, label %if.then19.i.i, label %if.else27.i.i

if.then19.i.i:                                    ; preds = %if.else14.i.i
  %46 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %22, align 4
  %48 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %49, %47
  %50 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %51, 65535
  %or5.i.i.i = or i32 %or.i.i.i, %xor.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then21.i.i, label %if.then19.i.i.next.i_crit_edge

if.then19.i.i.next.i_crit_edge:                   ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %21, align 4
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp23.i.i = icmp eq i32 %53, %55
  br label %if.end44.i.i

if.else27.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %41)
  %cmp30.i.i = icmp eq i16 %41, 2
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.else27.i.i.next.i_crit_edge

if.else27.i.i.next.i_crit_edge:                   ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

if.then32.i.i:                                    ; preds = %if.else27.i.i
  %56 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %21, align 4
  %58 = ptrtoint ptr %arrayidx2.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx2.i73.i.i, align 4
  %or.i74.i.i = or i32 %59, %57
  %60 = ptrtoint ptr %arrayidx4.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx4.i75.i.i, align 4
  %xor.i76.i.i = xor i32 %61, 65535
  %or5.i77.i.i = or i32 %or.i74.i.i, %xor.i76.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i.i)
  %cmp.i78.i.i = icmp eq i32 %or5.i77.i.i, 0
  br i1 %cmp.i78.i.i, label %if.then34.i.i, label %if.then32.i.i.next.i_crit_edge

if.then32.i.i.next.i_crit_edge:                   ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

if.then34.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx36.i.i, align 4
  %64 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp38.i.i = icmp eq i32 %63, %65
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then34.i.i, %if.then21.i.i, %if.else.i.i, %if.then8.i.i
  %addr_equals.0.shrunk.i.i = phi i1 [ %cmp10.i.i, %if.then8.i.i ], [ %tobool.not.i.i, %if.else.i.i ], [ %cmp23.i.i, %if.then21.i.i ], [ %cmp38.i.i, %if.then34.i.i ]
  %66 = and i1 %tobool2.i, %addr_equals.0.shrunk.i.i
  br i1 %66, label %if.end50.i.i, label %addresses_equal.exit.i

if.end50.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %39)
  %cmp54.i.i = icmp eq i16 %31, %39
  br i1 %cmp54.i.i, label %if.end50.i.i.if.end5.i_crit_edge, label %if.end50.i.i.next.i_crit_edge

if.end50.i.i.next.i_crit_edge:                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

if.end50.i.i.if.end5.i_crit_edge:                 ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

addresses_equal.exit.i:                           ; preds = %if.end44.i.i
  br i1 %addr_equals.0.shrunk.i.i, label %addresses_equal.exit.i.if.end5.i_crit_edge, label %addresses_equal.exit.i.next.i_crit_edge

addresses_equal.exit.i.next.i_crit_edge:          ; preds = %addresses_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

addresses_equal.exit.i.if.end5.i_crit_edge:       ; preds = %addresses_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %addresses_equal.exit.i.if.end5.i_crit_edge, %if.end50.i.i.if.end5.i_crit_edge
  call void @lock_sock_nested(ptr noundef nonnull %call9.i, i32 noundef 0) #14
  %lock.i = getelementptr inbounds %struct.mptcp_sock, ptr %call9.i, i32 0, i32 40, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %call6.i = call i32 @mptcp_pm_remove_addr(ptr noundef nonnull %call9.i, ptr noundef nonnull %list.i) #14
  call fastcc void @mptcp_pm_nl_rm_addr_or_subflow(ptr noundef nonnull %call9.i, ptr noundef nonnull %list.i, i32 noundef 35) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  call void @release_sock(ptr noundef nonnull %call9.i) #14
  br label %next.i

next.i:                                           ; preds = %if.end5.i, %addresses_equal.exit.i.next.i_crit_edge, %if.end50.i.i.next.i_crit_edge, %if.then32.i.i.next.i_crit_edge, %if.else27.i.i.next.i_crit_edge, %if.then19.i.i.next.i_crit_edge, %while.body.i.next.i_crit_edge
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call9.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #14
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #14, !srcloc !197
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i5.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %next.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !189

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #14
  br label %sock_put.exit.i

if.then.i5.i:                                     ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  call void @sk_free(ptr noundef nonnull %call9.i) #14
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i5.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1408, i32 noundef 0) #14
  %call.i.i = call i32 @__cond_resched() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msk_local.i) #14
  %call.i = call ptr @mptcp_token_iter_next(ptr noundef %14, ptr noundef nonnull %s_slot.i, ptr noundef nonnull %s_num.i) #14
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %sock_put.exit.i.mptcp_nl_remove_id_zero_address.exit_crit_edge, label %sock_put.exit.i.while.body.i_crit_edge

sock_put.exit.i.while.body.i_crit_edge:           ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

sock_put.exit.i.mptcp_nl_remove_id_zero_address.exit_crit_edge: ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_remove_id_zero_address.exit

mptcp_nl_remove_id_zero_address.exit:             ; preds = %sock_put.exit.i.mptcp_nl_remove_id_zero_address.exit_crit_edge, %if.then6.mptcp_nl_remove_id_zero_address.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_num.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_slot.i) #14
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %list.i) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %call1.i) #14
  %local_addr_list.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end10
  %entry1.0.in.i = phi ptr [ %local_addr_list.i, %if.end10 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %68 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i87 = icmp eq ptr %entry1.0.i, %local_addr_list.i
  br i1 %cmp.not.i87, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %addr.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0.i, i32 0, i32 1
  %69 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %addr.i, align 4
  %cmp4.i = icmp eq i8 %70, %9
  br i1 %cmp4.i, label %__lookup_addr_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__lookup_addr_by_id.exit:                         ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not, label %__lookup_addr_by_id.exit.do.body_crit_edge, label %if.end20

__lookup_addr_by_id.exit.do.body_crit_edge:       ; preds = %__lookup_addr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %__lookup_addr_by_id.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %71 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_nl_cmd_del_addr.__msg) #14
  %tobool16.not = icmp eq ptr %72, null
  br i1 %tobool16.not, label %do.body.if.end18_crit_edge, label %if.then17

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @mptcp_nl_cmd_del_addr.__msg, ptr %72, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body.if.end18_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %call1.i) #14
  br label %cleanup

if.end20:                                         ; preds = %__lookup_addr_by_id.exit
  %flags = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0.i, i32 0, i32 2
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags, align 4
  %76 = and i8 %75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool22.not = icmp eq i8 %76, 0
  br i1 %tobool22.not, label %if.end20.if.end34_crit_edge, label %if.then23

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %add_addr_signal_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 4
  %77 = ptrtoint ptr %add_addr_signal_max to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add_addr_signal_max, align 4
  %sub = add i32 %78, -1
  store volatile i32 %sub, ptr %add_addr_signal_max, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %if.end20.if.end34_crit_edge
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags, align 4
  %81 = and i8 %80, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool38.not = icmp eq i8 %81, 0
  br i1 %tobool38.not, label %if.end34.if.end51_crit_edge, label %if.then39

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %local_addr_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 6
  %82 = ptrtoint ptr %local_addr_max to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %local_addr_max, align 4
  %sub45 = add i32 %83, -1
  store volatile i32 %sub45, ptr %local_addr_max, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then39, %if.end34.if.end51_crit_edge
  %addrs = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 2
  %84 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addrs, align 4
  %dec = add i32 %85, -1
  store i32 %dec, ptr %addrs, align 4
  %call.i.i88 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.0.i) #14
  br i1 %call.i.i88, label %if.end.i.i, label %if.end51.list_del_rcu.exit_crit_edge

if.end51.list_del_rcu.exit_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %88 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %entry1.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end51.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %93 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %addr.i, align 4
  %conv54 = zext i8 %94 to i32
  %id_bitmap = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 9
  %rem.i = and i32 %conv54, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv54, 5
  %add.ptr.i = getelementptr i32, ptr %id_bitmap, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %96, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %call1.i) #14
  %97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %skc_net.i89 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %skc_net.i89 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %skc_net.i89, align 4
  tail call fastcc void @mptcp_nl_remove_subflow_and_signal_addr(ptr noundef %101, ptr noundef %addr.i)
  tail call void @synchronize_rcu() #14
  %lsk.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0.i, i32 0, i32 4
  %102 = ptrtoint ptr %lsk.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lsk.i, align 4
  %tobool.not.i = icmp eq ptr %103, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.__mptcp_pm_release_addr_entry.exit_crit_edge, label %if.then.i

list_del_rcu.exit.__mptcp_pm_release_addr_entry.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mptcp_pm_release_addr_entry.exit

if.then.i:                                        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sock_release(ptr noundef nonnull %103) #14
  br label %__mptcp_pm_release_addr_entry.exit

__mptcp_pm_release_addr_entry.exit:               ; preds = %if.then.i, %list_del_rcu.exit.__mptcp_pm_release_addr_entry.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %entry1.0.i) #14
  br label %cleanup

cleanup:                                          ; preds = %__mptcp_pm_release_addr_entry.exit, %if.end18, %mptcp_nl_remove_id_zero_address.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mptcp_nl_remove_id_zero_address.exit ], [ %call2, %__mptcp_pm_release_addr_entry.exit ], [ -22, %if.end18 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptcp_nl_cmd_flush_addrs(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %alist.i.i = alloca %struct.mptcp_rm_list, align 1
  %slist.i.i = alloca %struct.mptcp_rm_list, align 1
  %s_slot.i = alloca i32, align 4
  %s_num.i = alloca i32, align 4
  %free_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free_list) #14
  %3 = getelementptr inbounds %struct.list_head, ptr %free_list, i32 0, i32 1
  %4 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free_list, ptr %free_list, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %free_list, ptr %3, align 4
  call void @_raw_spin_lock_bh(ptr noundef %call1.i) #14
  %local_addr_list = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 1
  %6 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %local_addr_list, align 4
  %cmp.i.not.i = icmp eq ptr %7, %local_addr_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %free_list, ptr %prev3.i.i, align 4
  store ptr %7, ptr %free_list, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %11, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev6.i.i, align 4
  %15 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %local_addr_list, ptr %local_addr_list, align 4
  store ptr %local_addr_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %add_addr_signal_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 4
  %16 = ptrtoint ptr %add_addr_signal_max.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %add_addr_signal_max.i, align 4
  %add_addr_accept_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 5
  %17 = ptrtoint ptr %add_addr_accept_max.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %add_addr_accept_max.i, align 4
  %local_addr_max.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 6
  %18 = ptrtoint ptr %local_addr_max.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %local_addr_max.i, align 4
  %addrs.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 2
  %19 = ptrtoint ptr %addrs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %addrs.i, align 4
  %next_id = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 8
  %20 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %next_id, align 4
  %id_bitmap = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 9
  %21 = call ptr @memset(ptr %id_bitmap, i32 0, i32 32)
  call void @_raw_spin_unlock_bh(ptr noundef %call1.i) #14
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_slot.i) #14
  %27 = ptrtoint ptr %s_slot.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %s_slot.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_num.i) #14
  %28 = ptrtoint ptr %s_num.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %s_num.i, align 4
  %29 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not.i8 = icmp eq ptr %30, %free_list
  br i1 %cmp.i.not.i8, label %list_splice_init.exit.mptcp_nl_remove_addrs_list.exit_crit_edge, label %while.cond.preheader.i

list_splice_init.exit.mptcp_nl_remove_addrs_list.exit_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_remove_addrs_list.exit

while.cond.preheader.i:                           ; preds = %list_splice_init.exit
  %call112.i = call ptr @mptcp_token_iter_next(ptr noundef %26, ptr noundef nonnull %s_slot.i, ptr noundef nonnull %s_num.i) #14
  %cmp.not13.i = icmp eq ptr %call112.i, null
  br i1 %cmp.not13.i, label %while.cond.preheader.i.mptcp_nl_remove_addrs_list.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.mptcp_nl_remove_addrs_list.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_remove_addrs_list.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %nr.i.i = getelementptr inbounds %struct.mptcp_rm_list, ptr %alist.i.i, i32 0, i32 1
  %nr5.i.i = getelementptr inbounds %struct.mptcp_rm_list, ptr %slist.i.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %sock_put.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call114.i = phi ptr [ %call112.i, %while.body.lr.ph.i ], [ %call1.i9, %sock_put.exit.i.while.body.i_crit_edge ]
  call void @lock_sock_nested(ptr noundef nonnull %call114.i, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %alist.i.i) #14
  %31 = call ptr @memset(ptr %alist.i.i, i32 0, i32 9)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %slist.i.i) #14
  %32 = call ptr @memset(ptr %slist.i.i, i32 0, i32 9)
  %33 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %entry1.063.i.i = load ptr, ptr %free_list, align 4
  %cmp.not64.i.i = icmp eq ptr %entry1.063.i.i, %free_list
  br i1 %cmp.not64.i.i, label %while.body.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

while.body.i.for.end.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %while.body.i
  %conn_list.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %call114.i, i32 0, i32 34
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %entry1.065.i.i = phi ptr [ %entry1.063.i.i, %for.body.lr.ph.i.i ], [ %entry1.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %addr.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.065.i.i, i32 0, i32 1
  %call.i.i = call fastcc zeroext i1 @lookup_subflow_by_saddr(ptr noundef %conn_list.i.i, ptr noundef %addr.i.i) #14
  br i1 %call.i.i, label %land.lhs.true.i.i, label %for.body.i.i.if.else.i.i_crit_edge

for.body.i.i.if.else.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %34 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nr.i.i, align 1
  %conv.i9.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %cmp2.i.i = icmp ult i8 %35, 8
  br i1 %cmp2.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %36 = ptrtoint ptr %nr5.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nr5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %cmp7.i.i = icmp ult i8 %37, 8
  br i1 %cmp7.i.i, label %if.then.i.i, label %land.lhs.true4.i.i.if.else.i.i_crit_edge

land.lhs.true4.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr.i.i, align 4
  %inc.i.i = add nuw nsw i8 %35, 1
  %40 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %inc.i.i, ptr %nr.i.i, align 1
  %arrayidx.i.i = getelementptr [8 x i8], ptr %alist.i.i, i32 0, i32 %conv.i9.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %39, ptr %arrayidx.i.i, align 1
  %42 = load i8, ptr %addr.i.i, align 4
  %inc15.i.i = add nuw nsw i8 %37, 1
  %43 = ptrtoint ptr %nr5.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %inc15.i.i, ptr %nr5.i.i, align 1
  %idxprom16.i.i = zext i8 %37 to i32
  %arrayidx17.i.i = getelementptr [8 x i8], ptr %slist.i.i, i32 0, i32 %idxprom16.i.i
  %44 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %42, ptr %arrayidx17.i.i, align 1
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %land.lhs.true4.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %for.body.i.i.if.else.i.i_crit_edge
  %call19.i.i = call fastcc zeroext i1 @remove_anno_list_by_saddr(ptr noundef nonnull %call114.i, ptr noundef %addr.i.i) #14
  br i1 %call19.i.i, label %land.lhs.true21.i.i, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true21.i.i:                              ; preds = %if.else.i.i
  %45 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %46)
  %cmp24.i.i = icmp ult i8 %46, 8
  br i1 %cmp24.i.i, label %if.then26.i.i, label %land.lhs.true21.i.i.for.inc.i.i_crit_edge

land.lhs.true21.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv23.i.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %addr.i.i, align 4
  %inc31.i.i = add nuw nsw i8 %46, 1
  %49 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %inc31.i.i, ptr %nr.i.i, align 1
  %arrayidx33.i.i = getelementptr [8 x i8], ptr %alist.i.i, i32 0, i32 %conv23.i.i
  %50 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %48, ptr %arrayidx33.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then26.i.i, %land.lhs.true21.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge, %if.then.i.i
  %51 = ptrtoint ptr %entry1.065.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %entry1.0.i.i = load ptr, ptr %entry1.065.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %free_list
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %while.body.i.for.end.i.i_crit_edge
  %52 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.if.end45.i.i_crit_edge, label %if.then41.i.i

for.end.i.i.if.end45.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i.i

if.then41.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %lock.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %call114.i, i32 0, i32 40, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #14
  %call42.i.i = call i32 @mptcp_pm_remove_addr(ptr noundef nonnull %call114.i, ptr noundef nonnull %alist.i.i) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #14
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then41.i.i, %for.end.i.i.if.end45.i.i_crit_edge
  %54 = ptrtoint ptr %nr5.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nr5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool47.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool47.not.i.i, label %if.end45.i.i.mptcp_pm_remove_addrs_and_subflows.exit.i_crit_edge, label %if.then48.i.i

if.end45.i.i.mptcp_pm_remove_addrs_and_subflows.exit.i_crit_edge: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_pm_remove_addrs_and_subflows.exit.i

if.then48.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call49.i.i = call i32 @mptcp_pm_remove_subflow(ptr noundef nonnull %call114.i, ptr noundef nonnull %slist.i.i) #14
  br label %mptcp_pm_remove_addrs_and_subflows.exit.i

mptcp_pm_remove_addrs_and_subflows.exit.i:        ; preds = %if.then48.i.i, %if.end45.i.i.mptcp_pm_remove_addrs_and_subflows.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %slist.i.i) #14
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %alist.i.i) #14
  call void @release_sock(ptr noundef nonnull %call114.i) #14
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call114.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #14
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #14, !srcloc !197
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i10.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %mptcp_pm_remove_addrs_and_subflows.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !189

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #14
  br label %sock_put.exit.i

if.then.i10.i:                                    ; preds = %mptcp_pm_remove_addrs_and_subflows.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  call void @sk_free(ptr noundef nonnull %call114.i) #14
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i10.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1506, i32 noundef 0) #14
  %call.i11.i = call i32 @__cond_resched() #14
  %call1.i9 = call ptr @mptcp_token_iter_next(ptr noundef %26, ptr noundef nonnull %s_slot.i, ptr noundef nonnull %s_num.i) #14
  %cmp.not.i = icmp eq ptr %call1.i9, null
  br i1 %cmp.not.i, label %sock_put.exit.i.mptcp_nl_remove_addrs_list.exit_crit_edge, label %sock_put.exit.i.while.body.i_crit_edge

sock_put.exit.i.while.body.i_crit_edge:           ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

sock_put.exit.i.mptcp_nl_remove_addrs_list.exit_crit_edge: ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_remove_addrs_list.exit

mptcp_nl_remove_addrs_list.exit:                  ; preds = %sock_put.exit.i.mptcp_nl_remove_addrs_list.exit_crit_edge, %while.cond.preheader.i.mptcp_nl_remove_addrs_list.exit_crit_edge, %list_splice_init.exit.mptcp_nl_remove_addrs_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_num.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_slot.i) #14
  call void @synchronize_rcu() #14
  %57 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not4.i = icmp eq ptr %58, %free_list
  br i1 %cmp.i.not4.i, label %mptcp_nl_remove_addrs_list.exit.__flush_addrs.exit_crit_edge, label %mptcp_nl_remove_addrs_list.exit.while.body.i10_crit_edge

mptcp_nl_remove_addrs_list.exit.while.body.i10_crit_edge: ; preds = %mptcp_nl_remove_addrs_list.exit
  br label %while.body.i10

mptcp_nl_remove_addrs_list.exit.__flush_addrs.exit_crit_edge: ; preds = %mptcp_nl_remove_addrs_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__flush_addrs.exit

while.body.i10:                                   ; preds = %__mptcp_pm_release_addr_entry.exit.i.while.body.i10_crit_edge, %mptcp_nl_remove_addrs_list.exit.while.body.i10_crit_edge
  %59 = phi ptr [ %70, %__mptcp_pm_release_addr_entry.exit.i.while.body.i10_crit_edge ], [ %58, %mptcp_nl_remove_addrs_list.exit.while.body.i10_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %59) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i10.list_del_rcu.exit.i_crit_edge

while.body.i10.list_del_rcu.exit.i_crit_edge:     ; preds = %while.body.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i10
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %while.body.i10.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %lsk.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %59, i32 0, i32 4
  %67 = ptrtoint ptr %lsk.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lsk.i.i, align 4
  %tobool.not.i.i11 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i11, label %list_del_rcu.exit.i.__mptcp_pm_release_addr_entry.exit.i_crit_edge, label %if.then.i.i12

list_del_rcu.exit.i.__mptcp_pm_release_addr_entry.exit.i_crit_edge: ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mptcp_pm_release_addr_entry.exit.i

if.then.i.i12:                                    ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @sock_release(ptr noundef nonnull %68) #14
  br label %__mptcp_pm_release_addr_entry.exit.i

__mptcp_pm_release_addr_entry.exit.i:             ; preds = %if.then.i.i12, %list_del_rcu.exit.i.__mptcp_pm_release_addr_entry.exit.i_crit_edge
  call void @kfree(ptr noundef %59) #14
  %69 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not.i13 = icmp eq ptr %70, %free_list
  br i1 %cmp.i.not.i13, label %__mptcp_pm_release_addr_entry.exit.i.__flush_addrs.exit_crit_edge, label %__mptcp_pm_release_addr_entry.exit.i.while.body.i10_crit_edge

__mptcp_pm_release_addr_entry.exit.i.while.body.i10_crit_edge: ; preds = %__mptcp_pm_release_addr_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i10

__mptcp_pm_release_addr_entry.exit.i.__flush_addrs.exit_crit_edge: ; preds = %__mptcp_pm_release_addr_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__flush_addrs.exit

__flush_addrs.exit:                               ; preds = %__mptcp_pm_release_addr_entry.exit.i.__flush_addrs.exit_crit_edge, %mptcp_nl_remove_addrs_list.exit.__flush_addrs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free_list) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptcp_nl_cmd_get_addr(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %addr = alloca %struct.mptcp_pm_addr_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_net.i.i, align 4
  %6 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6) #14
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %addr) #14
  %7 = call ptr @memset(ptr %addr, i32 255, i32 44)
  %call2 = call fastcc i32 @mptcp_pm_parse_addr(ptr noundef %3, ptr noundef %info, i1 noundef zeroext false, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %genlhdr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 2
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_portid.i, align 4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %13, i32 noundef %15, ptr noundef nonnull @mptcp_genl_family, i32 noundef 0, i8 noundef zeroext %11) #14
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end5
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_nl_cmd_get_addr.__msg) #14
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %do.body.fail_crit_edge, label %if.then10

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mptcp_nl_cmd_get_addr.__msg, ptr %17, align 4
  br label %fail

if.end12:                                         ; preds = %if.end5
  tail call void @_raw_spin_lock_bh(ptr noundef %call1.i) #14
  %addr13 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1
  %19 = ptrtoint ptr %addr13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr13, align 4
  %local_addr_list.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end12
  %entry1.0.in.i = phi ptr [ %local_addr_list.i, %if.end12 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %local_addr_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.body17_crit_edge, label %for.body.i

for.cond.i.do.body17_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

for.body.i:                                       ; preds = %for.cond.i
  %addr.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr.i, align 4
  %cmp4.i = icmp eq i8 %23, %20
  br i1 %cmp4.i, label %__lookup_addr_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__lookup_addr_by_id.exit:                         ; preds = %for.body.i
  %tobool15.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool15.not, label %__lookup_addr_by_id.exit.do.body17_crit_edge, label %if.end26

__lookup_addr_by_id.exit.do.body17_crit_edge:     ; preds = %__lookup_addr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

do.body17:                                        ; preds = %__lookup_addr_by_id.exit.do.body17_crit_edge, %for.cond.i.do.body17_crit_edge
  %extack19 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %24 = ptrtoint ptr %extack19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extack19, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_nl_cmd_get_addr.__msg.59) #14
  %tobool20.not = icmp eq ptr %25, null
  br i1 %tobool20.not, label %do.body17.unlock_fail_crit_edge, label %if.then21

do.body17.unlock_fail_crit_edge:                  ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_fail

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mptcp_nl_cmd_get_addr.__msg.59, ptr %25, align 4
  br label %unlock_fail

if.end26:                                         ; preds = %__lookup_addr_by_id.exit
  %call27 = tail call fastcc i32 @mptcp_nl_fill_addr(ptr noundef nonnull %call.i.i, ptr noundef nonnull %entry1.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.unlock_fail_crit_edge

if.end26.unlock_fail_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_fail

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %29 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %30 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_net.i.i, align 4
  %32 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 21
  %34 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %35, ptr noundef nonnull %call.i.i, i32 noundef %33, i32 noundef 64) #14
  %36 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %call1.i) #14
  br label %cleanup

unlock_fail:                                      ; preds = %if.end26.unlock_fail_crit_edge, %if.then21, %do.body17.unlock_fail_crit_edge
  %ret.0 = phi i32 [ %call27, %if.end26.unlock_fail_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body17.unlock_fail_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %call1.i) #14
  br label %fail

fail:                                             ; preds = %unlock_fail, %if.then10, %do.body.fail_crit_edge
  %ret.1 = phi i32 [ %ret.0, %unlock_fail ], [ -90, %if.then10 ], [ -90, %do.body.fail_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %fail ], [ %36, %if.end30 ], [ %call2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptcp_nl_cmd_dump_addrs(ptr noundef %msg, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr @pm_nl_pernet_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %8)
  tail call void @_raw_spin_lock_bh(ptr noundef %call2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %cmp57 = icmp slt i32 %7, 256
  br i1 %cmp57, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %id_bitmap = getelementptr inbounds %struct.pm_nl_pernet, ptr %call2, i32 0, i32 9
  %local_addr_list.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call2, i32 0, i32 1
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ %7, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %id.058 = phi i32 [ %7, %for.body.lr.ph ], [ %id.1, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.059, 5
  %arrayidx.i = getelementptr i32, ptr %id_bitmap, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.059, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %for.body.for.cond.i_crit_edge

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %entry1.0.in.i = phi ptr [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ], [ %local_addr_list.i, %for.body.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %local_addr_list.i
  br i1 %cmp.not.i, label %for.cond.i.for.end_crit_edge, label %for.body.i

for.cond.i.for.end_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.i:                                       ; preds = %for.cond.i
  %addr.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr.i, align 4
  %conv.i = zext i8 %15 to i32
  %cmp4.i = icmp eq i32 %i.059, %conv.i
  br i1 %cmp4.i, label %__lookup_addr_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__lookup_addr_by_id.exit:                         ; preds = %for.body.i
  %tobool5.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool5.not, label %__lookup_addr_by_id.exit.for.end_crit_edge, label %if.end

__lookup_addr_by_id.exit.for.end_crit_edge:       ; preds = %__lookup_addr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %__lookup_addr_by_id.exit
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr.i, align 4
  %conv = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.058, i32 %conv)
  %cmp8.not = icmp slt i32 %id.058, %conv
  br i1 %cmp8.not, label %if.end11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %portid, align 4
  %22 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlmsg_seq, align 4
  %call13 = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %21, i32 noundef %25, ptr noundef nonnull @mptcp_genl_family, i32 noundef 2, i8 noundef zeroext 3) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.for.end_crit_edge, label %if.end16

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end16:                                         ; preds = %if.end11
  %call17 = tail call fastcc i32 @mptcp_nl_fill_addr(ptr noundef %msg, ptr noundef nonnull %entry1.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.i, label %if.end21

if.then.i:                                        ; preds = %if.end16
  %add.ptr1.i = getelementptr i8, ptr %call13, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.for.end_crit_edge, label %if.then.i.i.i

if.then.i.for.end_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %27, %add.ptr1.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !187

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #14
  br label %for.end

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr.i, align 4
  %conv24 = zext i8 %31 to i32
  %add.ptr1.i49 = getelementptr i8, ptr %call13, i32 -20
  %32 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i49 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %34 = ptrtoint ptr %add.ptr1.i49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i49, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %id.1 = phi i32 [ %id.058, %if.end.for.inc_crit_edge ], [ %conv24, %if.end21 ], [ %id.058, %for.body.for.inc_crit_edge ]
  %inc = add nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.i.i.i, %if.then.i.for.end_crit_edge, %if.end11.for.end_crit_edge, %__lookup_addr_by_id.exit.for.end_crit_edge, %for.cond.i.for.end_crit_edge, %entry.for.end_crit_edge
  %id.056 = phi i32 [ %id.058, %if.end.i.i.i ], [ %id.058, %if.then.i.for.end_crit_edge ], [ %7, %entry.for.end_crit_edge ], [ %id.058, %for.cond.i.for.end_crit_edge ], [ %id.1, %for.inc.for.end_crit_edge ], [ %id.058, %__lookup_addr_by_id.exit.for.end_crit_edge ], [ %id.058, %if.end11.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %call2) #14
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %id.056, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptcp_nl_cmd_set_limits(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2) #14
  tail call void @_raw_spin_lock_bh(ptr noundef %call1.i) #14
  %add_addr_accept_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 5
  %3 = ptrtoint ptr %add_addr_accept_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add_addr_accept_max, align 4
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp.i = icmp ugt i32 %10, 8
  br i1 %cmp.i, label %do.body.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body.i:                                        ; preds = %if.end.i
  %extack.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %11 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @parse_limit.__msg) #14
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %do.body.i.unlock_crit_edge, label %if.then3.i

do.body.i.unlock_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @parse_limit.__msg, ptr %12, align 4
  br label %unlock

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rcv_addrs.0.ph = phi i32 [ %10, %if.end.i.if.end_crit_edge ], [ %4, %entry.if.end_crit_edge ]
  %subflows_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 7
  %14 = ptrtoint ptr %subflows_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %subflows_max, align 4
  %16 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i34 = getelementptr ptr, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i34, align 4
  %tobool.not.i35 = icmp eq ptr %19, null
  br i1 %tobool.not.i35, label %if.end.do.body7_crit_edge, label %if.end.i38

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7

if.end.i38:                                       ; preds = %if.end
  %add.ptr.i.i.i36 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp.i37 = icmp ugt i32 %21, 8
  br i1 %cmp.i37, label %do.body.i41, label %if.end.i38.do.body7_crit_edge

if.end.i38.do.body7_crit_edge:                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7

do.body.i41:                                      ; preds = %if.end.i38
  %extack.i39 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %22 = ptrtoint ptr %extack.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %extack.i39, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @parse_limit.__msg) #14
  %tobool2.not.i40 = icmp eq ptr %23, null
  br i1 %tobool2.not.i40, label %do.body.i41.unlock_crit_edge, label %if.then3.i42

do.body.i41.unlock_crit_edge:                     ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then3.i42:                                     ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @parse_limit.__msg, ptr %23, align 4
  br label %unlock

do.body7:                                         ; preds = %if.end.i38.do.body7_crit_edge, %if.end.do.body7_crit_edge
  %subflows.0.ph = phi i32 [ %21, %if.end.i38.do.body7_crit_edge ], [ %15, %if.end.do.body7_crit_edge ]
  %25 = ptrtoint ptr %add_addr_accept_max to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %rcv_addrs.0.ph, ptr %add_addr_accept_max, align 4
  %26 = ptrtoint ptr %subflows_max to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %subflows.0.ph, ptr %subflows_max, align 4
  br label %unlock

unlock:                                           ; preds = %do.body7, %if.then3.i42, %do.body.i41.unlock_crit_edge, %if.then3.i, %do.body.i.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %do.body7 ], [ -22, %if.then3.i ], [ -22, %do.body.i.unlock_crit_edge ], [ -22, %if.then3.i42 ], [ -22, %do.body.i41.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %call1.i) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptcp_nl_cmd_get_limits(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i40 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i.i, align 4
  %2 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2) #14
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %snd_portid.i, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %4, i32 noundef %6, ptr noundef nonnull @mptcp_genl_family, i32 noundef 0, i8 noundef zeroext 6) #14
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.do.body19_crit_edge, label %if.end5

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

if.end5:                                          ; preds = %if.end
  %add_addr_accept_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 5
  %7 = ptrtoint ptr %add_addr_accept_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %add_addr_accept_max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i, align 4
  %call.i39 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool7.not = icmp eq i32 %call.i39, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.do.body19_crit_edge

if.end5.do.body19_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

if.end9:                                          ; preds = %if.end5
  %subflows_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 7
  %10 = ptrtoint ptr %subflows_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %subflows_max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i40) #14
  %12 = ptrtoint ptr %tmp.i40 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i40, align 4
  %call.i41 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i40) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool15.not = icmp eq i32 %call.i41, 0
  br i1 %tobool15.not, label %if.end17, label %if.end9.do.body19_crit_edge

if.end9.do.body19_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %16 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_net.i.i, align 4
  %18 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 21
  %20 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %21, ptr noundef nonnull %call.i.i, i32 noundef %19, i32 noundef 64) #14
  %22 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #14
  br label %cleanup

do.body19:                                        ; preds = %if.end9.do.body19_crit_edge, %if.end5.do.body19_crit_edge, %if.end.do.body19_crit_edge
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_nl_cmd_get_limits.__msg) #14
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %do.body19.if.end22_crit_edge, label %if.then21

do.body19.if.end22_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mptcp_nl_cmd_get_limits.__msg, ptr %24, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.body19.if.end22_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %if.end22 ], [ %22, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptcp_nl_cmd_set_flags(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %s_slot.i = alloca i32, align 4
  %s_num.i = alloca i32, align 4
  %addr = alloca %struct.mptcp_pm_addr_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %addr) #14
  %0 = call ptr @memset(ptr %addr, i32 0, i32 44)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_net.i.i, align 4
  %7 = load i32, ptr @pm_nl_pernet_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7) #14
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %call3 = call fastcc i32 @mptcp_pm_parse_addr(ptr noundef %4, ptr noundef %info, i1 noundef zeroext false, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 4
  %15 = and i8 %14, 4
  %.lobit = lshr exact i8 %15, 2
  %addr6 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1
  %family = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp8 = icmp eq i16 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then10:                                        ; preds = %if.end
  %18 = ptrtoint ptr %addr6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %call1.i) #14
  %local_addr_list.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call1.i, i32 0, i32 1
  %20 = ptrtoint ptr %local_addr_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %entry1.023.i = load ptr, ptr %local_addr_list.i, align 4
  %cmp.not24.i = icmp eq ptr %entry1.023.i, %local_addr_list.i
  br i1 %cmp.not24.i, label %if.end15.if.then20_crit_edge, label %for.body.lr.ph.i

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

for.body.lr.ph.i:                                 ; preds = %if.end15
  %21 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 3
  %arrayidx2.i.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  %port52.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %addr, i32 0, i32 1, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.025.i = phi ptr [ %entry1.023.i, %for.body.lr.ph.i ], [ %entry1.0.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp8, label %land.lhs.true4.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %family.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %family.i.i, align 2
  %24 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp.i.i = icmp eq i16 %23, %25
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp6.i.i = icmp eq i16 %23, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else14.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %26 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1, i32 3
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp10.i.i = icmp eq i32 %28, %30
  br i1 %cmp10.i.i, label %if.then8.i.i.addresses_equal.exit.i_crit_edge, label %if.then8.i.i.for.inc.i_crit_edge

if.then8.i.i.for.inc.i_crit_edge:                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then8.i.i.addresses_equal.exit.i_crit_edge:    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %addresses_equal.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %26, ptr noundef dereferenceable(16) %21, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.addresses_equal.exit.i_crit_edge, label %if.else.i.i.for.inc.i_crit_edge

if.else.i.i.for.inc.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.else.i.i.addresses_equal.exit.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %addresses_equal.exit.i

if.else14.i.i:                                    ; preds = %land.lhs.true.i
  br i1 %cmp6.i.i, label %if.then19.i.i, label %if.else27.i.i

if.then19.i.i:                                    ; preds = %if.else14.i.i
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %21, align 4
  %33 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %34, %32
  %35 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %36, 65535
  %or5.i.i.i = or i32 %or.i.i.i, %xor.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then21.i.i, label %if.then19.i.i.for.inc.i_crit_edge

if.then19.i.i.for.inc.i_crit_edge:                ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  %37 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp23.i.i = icmp eq i32 %39, %41
  br i1 %cmp23.i.i, label %if.then21.i.i.addresses_equal.exit.i_crit_edge, label %if.then21.i.i.for.inc.i_crit_edge

if.then21.i.i.for.inc.i_crit_edge:                ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then21.i.i.addresses_equal.exit.i_crit_edge:   ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %addresses_equal.exit.i

if.else27.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp30.i.i = icmp eq i16 %25, 2
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.else27.i.i.for.inc.i_crit_edge

if.else27.i.i.for.inc.i_crit_edge:                ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then32.i.i:                                    ; preds = %if.else27.i.i
  %42 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %arrayidx2.i73.i.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx2.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.i73.i.i, align 4
  %or.i74.i.i = or i32 %46, %44
  %arrayidx4.i75.i.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx4.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4.i75.i.i, align 4
  %xor.i76.i.i = xor i32 %48, 65535
  %or5.i77.i.i = or i32 %or.i74.i.i, %xor.i76.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i.i)
  %cmp.i78.i.i = icmp eq i32 %or5.i77.i.i, 0
  br i1 %cmp.i78.i.i, label %if.end44.i.i, label %if.then32.i.i.for.inc.i_crit_edge

if.then32.i.i.for.inc.i_crit_edge:                ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end44.i.i:                                     ; preds = %if.then32.i.i
  %arrayidx36.i.i = getelementptr %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx36.i.i, align 4
  %51 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp38.i.i = icmp eq i32 %50, %52
  br i1 %cmp38.i.i, label %if.end44.i.i.addresses_equal.exit.i_crit_edge, label %if.end44.i.i.for.inc.i_crit_edge

if.end44.i.i.for.inc.i_crit_edge:                 ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end44.i.i.addresses_equal.exit.i_crit_edge:    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %addresses_equal.exit.i

addresses_equal.exit.i:                           ; preds = %if.end44.i.i.addresses_equal.exit.i_crit_edge, %if.then21.i.i.addresses_equal.exit.i_crit_edge, %if.else.i.i.addresses_equal.exit.i_crit_edge, %if.then8.i.i.addresses_equal.exit.i_crit_edge
  %port.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %port.i.i, align 4
  %55 = ptrtoint ptr %port52.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %port52.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %56)
  %cmp54.i.i = icmp eq i16 %54, %56
  br i1 %cmp54.i.i, label %addresses_equal.exit.i.__lookup_addr.exit_crit_edge, label %addresses_equal.exit.i.for.inc.i_crit_edge

addresses_equal.exit.i.for.inc.i_crit_edge:       ; preds = %addresses_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

addresses_equal.exit.i.__lookup_addr.exit_crit_edge: ; preds = %addresses_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__lookup_addr.exit

land.lhs.true4.critedge.i:                        ; preds = %for.body.i
  %addr5.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 1
  %57 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %addr5.i, align 4
  %59 = ptrtoint ptr %addr6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %addr6, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp8.i = icmp eq i8 %58, %60
  br i1 %cmp8.i, label %land.lhs.true4.critedge.i.__lookup_addr.exit_crit_edge, label %land.lhs.true4.critedge.i.for.inc.i_crit_edge

land.lhs.true4.critedge.i.for.inc.i_crit_edge:    ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true4.critedge.i.__lookup_addr.exit_crit_edge: ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__lookup_addr.exit

for.inc.i:                                        ; preds = %land.lhs.true4.critedge.i.for.inc.i_crit_edge, %addresses_equal.exit.i.for.inc.i_crit_edge, %if.end44.i.i.for.inc.i_crit_edge, %if.then32.i.i.for.inc.i_crit_edge, %if.else27.i.i.for.inc.i_crit_edge, %if.then21.i.i.for.inc.i_crit_edge, %if.then19.i.i.for.inc.i_crit_edge, %if.else.i.i.for.inc.i_crit_edge, %if.then8.i.i.for.inc.i_crit_edge
  %61 = ptrtoint ptr %entry1.025.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %entry1.0.i = load ptr, ptr %entry1.025.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %local_addr_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.then20_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.then20_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

__lookup_addr.exit:                               ; preds = %land.lhs.true4.critedge.i.__lookup_addr.exit_crit_edge, %addresses_equal.exit.i.__lookup_addr.exit_crit_edge
  %tobool19.not = icmp eq ptr %entry1.025.i, null
  br i1 %tobool19.not, label %__lookup_addr.exit.if.then20_crit_edge, label %if.end22

__lookup_addr.exit.if.then20_crit_edge:           ; preds = %__lookup_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then20:                                        ; preds = %__lookup_addr.exit.if.then20_crit_edge, %for.inc.i.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %call1.i) #14
  br label %cleanup

if.end22:                                         ; preds = %__lookup_addr.exit
  %flags28 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1.025.i, i32 0, i32 2
  %62 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %flags28, align 4
  %64 = and i8 %63, -5
  %.sink = or i8 %64, %15
  store i8 %.sink, ptr %flags28, align 4
  %65 = call ptr @memcpy(ptr %addr, ptr %entry1.025.i, i32 44)
  tail call void @_raw_spin_unlock_bh(ptr noundef %call1.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_slot.i) #14
  %66 = ptrtoint ptr %s_slot.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %s_slot.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_num.i) #14
  %67 = ptrtoint ptr %s_num.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %s_num.i, align 4
  %call1.i53 = call ptr @mptcp_token_iter_next(ptr noundef %12, ptr noundef nonnull %s_slot.i, ptr noundef nonnull %s_num.i) #14
  %cmp.not2.i = icmp eq ptr %call1.i53, null
  br i1 %cmp.not2.i, label %if.end22.mptcp_nl_addr_backup.exit_crit_edge, label %if.end22.while.body.i_crit_edge

if.end22.while.body.i_crit_edge:                  ; preds = %if.end22
  br label %while.body.i

if.end22.mptcp_nl_addr_backup.exit_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_addr_backup.exit

while.body.i:                                     ; preds = %sock_put.exit.i.while.body.i_crit_edge, %if.end22.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %sock_put.exit.i.while.body.i_crit_edge ], [ %call1.i53, %if.end22.while.body.i_crit_edge ]
  %conn_list.i = getelementptr inbounds %struct.mptcp_sock, ptr %call3.i, i32 0, i32 34
  %68 = ptrtoint ptr %conn_list.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %conn_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %69, %conn_list.i
  br i1 %cmp.i.not.i, label %while.body.i.next.i_crit_edge, label %if.end.i

while.body.i.next.i_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @lock_sock_nested(ptr noundef nonnull %call3.i, i32 noundef 0) #14
  %lock.i = getelementptr inbounds %struct.mptcp_sock, ptr %call3.i, i32 0, i32 40, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %call2.i = call fastcc i32 @mptcp_pm_nl_mp_prio_send_ack(ptr noundef nonnull %call3.i, ptr noundef %addr6, i8 noundef zeroext %.lobit) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  call void @release_sock(ptr noundef nonnull %call3.i) #14
  br label %next.i

next.i:                                           ; preds = %if.end.i, %while.body.i.next.i_crit_edge
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call3.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #14
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #14, !srcloc !197
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i54, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %next.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !189

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #14
  br label %sock_put.exit.i

if.then.i.i54:                                    ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  call void @sk_free(ptr noundef nonnull %call3.i) #14
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i.i54, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1776, i32 noundef 0) #14
  %call.i.i = call i32 @__cond_resched() #14
  %call.i = call ptr @mptcp_token_iter_next(ptr noundef %12, ptr noundef nonnull %s_slot.i, ptr noundef nonnull %s_num.i) #14
  %cmp.not.i55 = icmp eq ptr %call.i, null
  br i1 %cmp.not.i55, label %sock_put.exit.i.mptcp_nl_addr_backup.exit_crit_edge, label %sock_put.exit.i.while.body.i_crit_edge

sock_put.exit.i.while.body.i_crit_edge:           ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

sock_put.exit.i.mptcp_nl_addr_backup.exit_crit_edge: ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_nl_addr_backup.exit

mptcp_nl_addr_backup.exit:                        ; preds = %sock_put.exit.i.mptcp_nl_addr_backup.exit_crit_edge, %if.end22.mptcp_nl_addr_backup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_num.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_slot.i) #14
  br label %cleanup

cleanup:                                          ; preds = %mptcp_nl_addr_backup.exit, %if.then20, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mptcp_nl_addr_backup.exit ], [ -22, %if.then20 ], [ %call3, %entry.cleanup_crit_edge ], [ -95, %if.then10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_pm_parse_addr(ptr noundef %attr, ptr nocapture noundef readonly %info, i1 noundef zeroext %require_family, ptr nocapture noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [8 x ptr], align 4
  %tmp = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tb) #14
  %0 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 5
  %3 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 6
  %4 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 7
  %tobool.not = icmp eq ptr %attr, null
  %5 = call ptr @memset(ptr %tb, i32 255, i32 32)
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extack, align 4
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_pm_parse_addr.__msg) #14
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mptcp_pm_parse_addr.__msg, ptr %7, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 7, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @mptcp_pm_addr_policy, i32 noundef 0, ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %11 = call ptr @memset(ptr %entry1, i32 0, i32 44)
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then10, label %if.end23

if.then10:                                        ; preds = %if.end8
  br i1 %require_family, label %do.body14, label %if.then10.skip_family_crit_edge

if.then10.skip_family_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_family

do.body14:                                        ; preds = %if.then10
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_pm_parse_addr.__msg.47) #14
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %do.body14.cleanup_crit_edge, label %if.then18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mptcp_pm_parse_addr.__msg.47, ptr %15, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %attr, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %policy, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %add.ptr.i.i171 = getelementptr i8, ptr %13, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i171 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i171, align 2
  %family = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %family, align 2
  %22 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %20, label %do.body35 [
    i16 2, label %if.end23.if.end46_crit_edge
    i16 10, label %if.end23.if.end46_crit_edge177
  ]

if.end23.if.end46_crit_edge177:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end23.if.end46_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

do.body35:                                        ; preds = %if.end23
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_pm_parse_addr.__msg.48) #14
  %tobool38.not = icmp eq ptr %24, null
  br i1 %tobool38.not, label %do.body35.cleanup_crit_edge, label %if.then39

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mptcp_pm_parse_addr.__msg.48, ptr %24, align 4
  %bad_attr41 = getelementptr inbounds %struct.netlink_ext_ack, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %bad_attr41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %attr, ptr %bad_attr41, align 4
  %policy42 = getelementptr inbounds %struct.netlink_ext_ack, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %policy42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %policy42, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end23.if.end46_crit_edge, %if.end23.if.end46_crit_edge177
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %20)
  %cmp.i = icmp eq i16 %20, 10
  %..i = select i1 %cmp.i, i32 4, i32 3
  %arrayidx51 = getelementptr [8 x ptr], ptr %tb, i32 0, i32 %..i
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %29, null
  br i1 %tobool52.not, label %do.body54, label %if.end65

do.body54:                                        ; preds = %if.end46
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_pm_parse_addr.__msg.49) #14
  %tobool57.not = icmp eq ptr %31, null
  br i1 %tobool57.not, label %do.body54.cleanup_crit_edge, label %if.then58

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mptcp_pm_parse_addr.__msg.49, ptr %31, align 4
  %bad_attr60 = getelementptr inbounds %struct.netlink_ext_ack, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %bad_attr60 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %attr, ptr %bad_attr60, align 4
  %policy61 = getelementptr inbounds %struct.netlink_ext_ack, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %policy61 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %policy61, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end46
  br i1 %cmp.i, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %35 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  %36 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef nonnull %29, i32 noundef 16) #14
  %37 = call ptr @memcpy(ptr %35, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  br label %skip_family

if.else:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i172 = getelementptr i8, ptr %29, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i172 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i172, align 4
  %40 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %40, align 4
  br label %skip_family

skip_family:                                      ; preds = %if.else, %if.then71, %if.then10.skip_family_crit_edge
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %4, align 4
  %tobool79.not = icmp eq ptr %43, null
  br i1 %tobool79.not, label %skip_family.if.end83_crit_edge, label %if.then80

skip_family.if.end83_crit_edge:                   ; preds = %skip_family
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then80:                                        ; preds = %skip_family
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i173 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i173, align 4
  %ifindex = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 3
  %46 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ifindex, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %skip_family.if.end83_crit_edge
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %tobool85.not = icmp eq ptr %48, null
  br i1 %tobool85.not, label %if.end83.if.end90_crit_edge, label %if.then86

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i174 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i174 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i.i174, align 1
  %addr89 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1
  %51 = ptrtoint ptr %addr89 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %addr89, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.end83.if.end90_crit_edge
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %tobool92.not = icmp eq ptr %53, null
  br i1 %tobool92.not, label %if.end90.if.end97_crit_edge, label %if.then93

if.end90.if.end97_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i175 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i175 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i175, align 4
  %conv96 = trunc i32 %55 to i8
  %flags = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 2
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv96, ptr %flags, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.end90.if.end97_crit_edge
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %2, align 4
  %tobool99.not = icmp eq ptr %58, null
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %if.then100

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then100:                                       ; preds = %if.end97
  %flags101 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 2
  %59 = ptrtoint ptr %flags101 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %flags101, align 4
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool103.not = icmp eq i8 %61, 0
  br i1 %tobool103.not, label %do.body105, label %if.end116

do.body105:                                       ; preds = %if.then100
  %62 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mptcp_pm_parse_addr.__msg.50) #14
  %tobool108.not = icmp eq ptr %63, null
  br i1 %tobool108.not, label %do.body105.cleanup_crit_edge, label %if.then109

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then109:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @mptcp_pm_parse_addr.__msg.50, ptr %63, align 4
  %bad_attr111 = getelementptr inbounds %struct.netlink_ext_ack, ptr %63, i32 0, i32 1
  %65 = ptrtoint ptr %bad_attr111 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %attr, ptr %bad_attr111, align 4
  %policy112 = getelementptr inbounds %struct.netlink_ext_ack, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %policy112 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %policy112, align 4
  br label %cleanup

if.end116:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i176 = getelementptr i8, ptr %58, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i176 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %add.ptr.i.i176, align 2
  %port = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then109, %do.body105.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.then58, %do.body54.cleanup_crit_edge, %if.then39, %do.body35.cleanup_crit_edge, %if.then18, %do.body14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ %call2.i, %if.end4.cleanup_crit_edge ], [ -22, %if.then18 ], [ -22, %do.body14.cleanup_crit_edge ], [ -22, %if.then39 ], [ -22, %do.body35.cleanup_crit_edge ], [ -22, %if.then58 ], [ -22, %do.body54.cleanup_crit_edge ], [ -22, %if.then109 ], [ -22, %do.body105.cleanup_crit_edge ], [ 0, %if.end116 ], [ 0, %if.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tb) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__mptcp_nmpc_socket(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_info2sockaddr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptcp_token_iter_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_nl_remove_subflow_and_signal_addr(ptr noundef %net, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  %list.i1 = alloca %struct.mptcp_rm_list, align 1
  %list.i = alloca %struct.mptcp_rm_list, align 1
  %s_slot = alloca i32, align 4
  %s_num = alloca i32, align 4
  %list = alloca %struct.mptcp_rm_list, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_slot) #14
  %0 = ptrtoint ptr %s_slot to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %s_slot, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_num) #14
  %1 = ptrtoint ptr %s_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %s_num, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %list) #14
  %2 = call ptr @memset(ptr %list, i32 0, i32 9)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_nl_remove_subflow_and_signal_addr.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_nl_remove_subflow_and_signal_addr, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !188

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr, align 4
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_nl_remove_subflow_and_signal_addr.__UNIQUE_ID_ddebug652, ptr noundef nonnull @.str.58, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 4
  %nr = getelementptr inbounds %struct.mptcp_rm_list, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr, align 1
  %inc = add i8 %8, 1
  store i8 %inc, ptr %nr, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [8 x i8], ptr %list, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %arrayidx, align 1
  %call411 = call ptr @mptcp_token_iter_next(ptr noundef %net, ptr noundef nonnull %s_slot, ptr noundef nonnull %s_num) #14
  %cmp.not12 = icmp eq ptr %call411, null
  br i1 %cmp.not12, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %10 = getelementptr inbounds i8, ptr %list.i1, i32 1
  %nr.i2 = getelementptr inbounds %struct.mptcp_rm_list, ptr %list.i1, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %list.i, i32 1
  %nr.i = getelementptr inbounds %struct.mptcp_rm_list, ptr %list.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sock_put.exit.while.body_crit_edge, %while.body.lr.ph
  %call413 = phi ptr [ %call411, %while.body.lr.ph ], [ %call4, %sock_put.exit.while.body_crit_edge ]
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %call413, i32 0, i32 34
  %12 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %conn_list, align 4
  %cmp.i.not = icmp eq ptr %13, %conn_list
  br i1 %cmp.i.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %list.i) #14
  %14 = call ptr @memset(ptr %11, i32 0, i32 7)
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr, align 4
  %17 = ptrtoint ptr %nr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %nr.i, align 1
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %16, ptr %list.i, align 1
  %call.i = call fastcc zeroext i1 @remove_anno_list_by_saddr(ptr noundef nonnull %call413, ptr noundef %addr) #14
  br i1 %call.i, label %if.then.i, label %if.then8.mptcp_pm_remove_anno_addr.exit_crit_edge

if.then8.mptcp_pm_remove_anno_addr.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_pm_remove_anno_addr.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %lock.i = getelementptr inbounds %struct.mptcp_sock, ptr %call413, i32 0, i32 40, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %call3.i = call i32 @mptcp_pm_remove_addr(ptr noundef nonnull %call413, ptr noundef nonnull %list.i) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  br label %mptcp_pm_remove_anno_addr.exit

mptcp_pm_remove_anno_addr.exit:                   ; preds = %if.then.i, %if.then8.mptcp_pm_remove_anno_addr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %list.i) #14
  br label %next

if.end10:                                         ; preds = %while.body
  call void @lock_sock_nested(ptr noundef nonnull %call413, i32 noundef 0) #14
  %call12 = call fastcc zeroext i1 @lookup_subflow_by_saddr(ptr noundef %conn_list, ptr noundef %addr)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %list.i1) #14
  %19 = call ptr @memset(ptr %10, i32 0, i32 7)
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr, align 4
  %22 = ptrtoint ptr %nr.i2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %nr.i2, align 1
  %23 = ptrtoint ptr %list.i1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %list.i1, align 1
  %call.i3 = call fastcc zeroext i1 @remove_anno_list_by_saddr(ptr noundef nonnull %call413, ptr noundef %addr) #14
  %brmerge.i = or i1 %call12, %call.i3
  br i1 %brmerge.i, label %if.then.i6, label %if.end10.mptcp_pm_remove_anno_addr.exit7_crit_edge

if.end10.mptcp_pm_remove_anno_addr.exit7_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptcp_pm_remove_anno_addr.exit7

if.then.i6:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %lock.i4 = getelementptr inbounds %struct.mptcp_sock, ptr %call413, i32 0, i32 40, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i4) #14
  %call3.i5 = call i32 @mptcp_pm_remove_addr(ptr noundef nonnull %call413, ptr noundef nonnull %list.i1) #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i4) #14
  br label %mptcp_pm_remove_anno_addr.exit7

mptcp_pm_remove_anno_addr.exit7:                  ; preds = %if.then.i6, %if.end10.mptcp_pm_remove_anno_addr.exit7_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %list.i1) #14
  br i1 %call12, label %if.then17, label %mptcp_pm_remove_anno_addr.exit7.if.end19_crit_edge

mptcp_pm_remove_anno_addr.exit7.if.end19_crit_edge: ; preds = %mptcp_pm_remove_anno_addr.exit7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then17:                                        ; preds = %mptcp_pm_remove_anno_addr.exit7
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = call i32 @mptcp_pm_remove_subflow(ptr noundef nonnull %call413, ptr noundef nonnull %list) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %mptcp_pm_remove_anno_addr.exit7.if.end19_crit_edge
  call void @release_sock(ptr noundef nonnull %call413) #14
  br label %next

next:                                             ; preds = %if.end19, %mptcp_pm_remove_anno_addr.exit
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call413, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i8, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %next
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !189

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #14
  br label %sock_put.exit

if.then.i8:                                       ; preds = %next
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  call void @sk_free(ptr noundef nonnull %call413) #14
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i8, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1365, i32 noundef 0) #14
  %call.i9 = call i32 @__cond_resched() #14
  %call4 = call ptr @mptcp_token_iter_next(ptr noundef %net, ptr noundef nonnull %s_slot, ptr noundef nonnull %s_num) #14
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %sock_put.exit.while.end_crit_edge, label %sock_put.exit.while.body_crit_edge

sock_put.exit.while.body_crit_edge:               ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

sock_put.exit.while.end_crit_edge:                ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %sock_put.exit.while.end_crit_edge, %do.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %list) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_num) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_slot) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_remove_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lookup_subflow_by_saddr(ptr noundef readonly %list, ptr nocapture noundef readonly %saddr) unnamed_addr #11 align 64 {
entry:
  %cur = alloca %struct.mptcp_addr_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cur) #14
  %0 = call ptr @memset(ptr %cur, i32 255, i32 24)
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %subflow.018 = load ptr, ptr %list, align 4
  %cmp.not19 = icmp eq ptr %subflow.018, %list
  br i1 %cmp.not19, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.mptcp_addr_info, ptr %cur, i32 0, i32 3
  %port = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 2
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool = icmp ne i16 %4, 0
  %family1.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 1
  %5 = ptrtoint ptr %family1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %family1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp30.i = icmp eq i16 %6, 2
  %arrayidx2.i73.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %cur, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i75.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %cur, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx36.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %cur, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3
  %arrayidx2.i.i = getelementptr %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i = getelementptr %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.mptcp_addr_info, ptr %saddr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %subflow.020 = phi ptr [ %subflow.018, %for.body.lr.ph ], [ %subflow.0, %for.cond.backedge.for.body_crit_edge ]
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.020, i32 0, i32 5
  %8 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcp_sock.i, align 8
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %skc_family.i, align 8
  %12 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.2, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %skc_num.i, align 2
  %15 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %11, label %for.body.local_address.exit_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then7.i
  ]

for.body.local_address.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %local_address.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %skc_rcv_saddr.i, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %2, align 4
  br label %local_address.exit

if.then7.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 11
  %19 = call ptr @memcpy(ptr %2, ptr %skc_v6_rcv_saddr.i, i32 16)
  br label %local_address.exit

local_address.exit:                               ; preds = %if.then7.i, %if.then.i, %for.body.local_address.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %6)
  %cmp.i = icmp eq i16 %11, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp6.i = icmp eq i16 %11, 2
  br i1 %cmp.i, label %if.then.i14, label %if.else14.i

if.then.i14:                                      ; preds = %local_address.exit
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp10.i = icmp eq i32 %21, %23
  br label %if.end44.i

if.else.i:                                        ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %2, ptr noundef dereferenceable(16) %7, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br label %if.end44.i

if.else14.i:                                      ; preds = %local_address.exit
  br i1 %cmp6.i, label %if.then19.i, label %if.else27.i

if.then19.i:                                      ; preds = %if.else14.i
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %27, %25
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %29, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then21.i, label %if.then19.i.for.cond.backedge_crit_edge

if.then19.i.for.cond.backedge_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp23.i = icmp eq i32 %31, %33
  br label %if.end44.i

if.else27.i:                                      ; preds = %if.else14.i
  br i1 %cmp30.i, label %if.then32.i, label %if.else27.i.for.cond.backedge_crit_edge

if.else27.i.for.cond.backedge_crit_edge:          ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then32.i:                                      ; preds = %if.else27.i
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %2, align 4
  %36 = ptrtoint ptr %arrayidx2.i73.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i73.i, align 4
  %or.i74.i = or i32 %37, %35
  %38 = ptrtoint ptr %arrayidx4.i75.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i75.i, align 4
  %xor.i76.i = xor i32 %39, 65535
  %or5.i77.i = or i32 %or.i74.i, %xor.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i)
  %cmp.i78.i = icmp eq i32 %or5.i77.i, 0
  br i1 %cmp.i78.i, label %if.then34.i, label %if.then32.i.for.cond.backedge_crit_edge

if.then32.i.for.cond.backedge_crit_edge:          ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.then34.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx36.i, align 4
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp38.i = icmp eq i32 %41, %43
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then34.i, %if.then21.i, %if.else.i, %if.then8.i
  %addr_equals.0.shrunk.i = phi i1 [ %cmp10.i, %if.then8.i ], [ %tobool.not.i, %if.else.i ], [ %cmp23.i, %if.then21.i ], [ %cmp38.i, %if.then34.i ]
  %44 = and i1 %tobool, %addr_equals.0.shrunk.i
  br i1 %44, label %if.end50.i, label %addresses_equal.exit

if.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %4)
  %cmp54.i = icmp eq i16 %14, %4
  br i1 %cmp54.i, label %if.end50.i.cleanup_crit_edge, label %if.end50.i.for.cond.backedge_crit_edge

if.end50.i.for.cond.backedge_crit_edge:           ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end50.i.cleanup_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

addresses_equal.exit:                             ; preds = %if.end44.i
  br i1 %addr_equals.0.shrunk.i, label %addresses_equal.exit.cleanup_crit_edge, label %addresses_equal.exit.for.cond.backedge_crit_edge

addresses_equal.exit.for.cond.backedge_crit_edge: ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

addresses_equal.exit.cleanup_crit_edge:           ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.backedge:                                ; preds = %addresses_equal.exit.for.cond.backedge_crit_edge, %if.end50.i.for.cond.backedge_crit_edge, %if.then32.i.for.cond.backedge_crit_edge, %if.else27.i.for.cond.backedge_crit_edge, %if.then19.i.for.cond.backedge_crit_edge
  %45 = ptrtoint ptr %subflow.020 to i32
  call void @__asan_load4_noabort(i32 %45)
  %subflow.0 = load ptr, ptr %subflow.020, align 4
  %cmp.not = icmp eq ptr %subflow.0, %list
  br i1 %cmp.not, label %for.cond.backedge.cleanup_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.backedge.cleanup_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.cond.backedge.cleanup_crit_edge, %addresses_equal.exit.cleanup_crit_edge, %if.end50.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end50.i.cleanup_crit_edge ], [ false, %for.cond.backedge.cleanup_crit_edge ], [ true, %addresses_equal.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cur) #14
  ret i1 %cmp.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_remove_subflow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @remove_anno_list_by_saddr(ptr noundef %msk, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %call.i = tail call ptr @mptcp_lookup_anno_list_by_saddr(ptr noundef %msk, ptr noundef %addr) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %mptcp_pm_del_add_timer.exit.thread, label %if.then

mptcp_pm_del_add_timer.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %retrans_times.c35.i = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %retrans_times.c35.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %retrans_times.c35.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  %add_timer.i = getelementptr inbounds %struct.mptcp_pm_add_entry, ptr %call.i, i32 0, i32 2
  tail call void @sk_stop_timer_sync(ptr noundef %msk, ptr noundef %add_timer.i) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %mptcp_pm_del_add_timer.exit.thread
  %9 = xor i1 %tobool.not.i, true
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_nl_fill_addr(ptr noundef %skb, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %tmp.i70 = alloca i32, align 4
  %tmp.i68 = alloca i32, align 4
  %tmp.i66 = alloca i8, align 1
  %tmp.i64 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %addr2 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not74 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not74
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %family, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end6:                                          ; preds = %if.end
  %port = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i64) #14
  %7 = ptrtoint ptr %tmp.i64 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %tmp.i64, align 2
  %call.i65 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i64) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool8.not = icmp eq i32 %call.i65, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.if.then.i.i_crit_edge

if.end6.if.then.i.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end10:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %addr2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i66) #14
  %10 = ptrtoint ptr %tmp.i66 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %tmp.i66, align 1
  %call.i67 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i66) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i66) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool12.not = icmp eq i32 %call.i67, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.if.then.i.i_crit_edge

if.end10.if.then.i.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end14:                                         ; preds = %if.end10
  %flags = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 4
  %conv = zext i8 %12 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i68) #14
  %13 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %tmp.i68, align 4
  %call.i69 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i68) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool16.not = icmp eq i32 %call.i69, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.if.then.i.i_crit_edge

if.end14.if.then.i.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end18:                                         ; preds = %if.end14
  %ifindex = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 3
  %14 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %if.end18.if.end24_crit_edge, label %land.lhs.true

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i70) #14
  %16 = ptrtoint ptr %tmp.i70 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i70, align 4
  %call.i71 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i70) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i70) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool22.not = icmp eq i32 %call.i71, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  %17 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %18)
  %cmp = icmp eq i16 %18, 2
  br i1 %cmp, label %land.lhs.true28, label %if.end24.if.else_crit_edge

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true28:                                  ; preds = %if.end24
  %19 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %22 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool30.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool30.not, label %if.elsethread-pre-split, label %land.lhs.true28.if.then.i.i_crit_edge

land.lhs.true28.if.then.i.i_crit_edge:            ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.elsethread-pre-split:                          ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %23)
  %.pr = load i16, ptr %family, align 2
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %if.end24.if.else_crit_edge
  %24 = phi i16 [ %.pr, %if.elsethread-pre-split ], [ %18, %if.end24.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %24)
  %cmp34 = icmp eq i16 %24, 10
  br i1 %cmp34, label %land.lhs.true36, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

land.lhs.true36:                                  ; preds = %if.else
  %25 = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %entry1, i32 0, i32 1, i32 3
  %call.i72 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 16, ptr noundef %25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool38.not = icmp eq i32 %call.i72, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end41_crit_edge, label %land.lhs.true36.if.then.i.i_crit_edge

land.lhs.true36.if.then.i.i_crit_edge:            ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

land.lhs.true36.if.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true36.if.end41_crit_edge, %if.else.if.end41_crit_edge
  %26 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true36.if.then.i.i_crit_edge, %land.lhs.true28.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end14.if.then.i.i_crit_edge, %if.end10.if.then.i.i_crit_edge, %if.end6.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i73 = icmp ugt ptr %30, %1
  br i1 %cmp.i.i73, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !187

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end41 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_pm_nl_mp_prio_send_ack(ptr noundef %msk, ptr nocapture noundef readonly %addr, i8 noundef zeroext %bkup) unnamed_addr #0 align 64 {
entry:
  %local = alloca %struct.mptcp_addr_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_nl_mp_prio_send_ack.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_nl_mp_prio_send_ack, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !188

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %bkup to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_nl_mp_prio_send_ack.__UNIQUE_ID_ddebug636, ptr noundef nonnull @.str.63, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 34
  %0 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %subflow.077 = load ptr, ptr %conn_list, align 8
  %cmp.not78 = icmp eq ptr %subflow.077, %conn_list
  br i1 %cmp.not78, label %do.end.cleanup49_crit_edge, label %for.body.lr.ph

do.end.cleanup49_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49

for.body.lr.ph:                                   ; preds = %do.end
  %1 = getelementptr inbounds %struct.mptcp_addr_info, ptr %local, i32 0, i32 3
  %port = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool9 = icmp ne i16 %3, 0
  %family1.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 1
  %4 = ptrtoint ptr %family1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %family1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp30.i = icmp eq i16 %5, 2
  %arrayidx2.i73.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i75.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx36.i = getelementptr inbounds %struct.mptcp_addr_info, ptr %local, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3
  %arrayidx2.i.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %arrayidx4.i.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.mptcp_addr_info, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %subflow.079 = phi ptr [ %subflow.077, %for.body.lr.ph ], [ %subflow.0, %for.inc.critedge.for.body_crit_edge ]
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.079, i32 0, i32 5
  %7 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcp_sock.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %local) #14
  %9 = call ptr @memset(ptr %local, i32 255, i32 24)
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 3
  %10 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %skc_family.i, align 8
  %12 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.2, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %skc_num.i, align 2
  %15 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %11, label %for.body.local_address.exit_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then7.i
  ]

for.body.local_address.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %local_address.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %skc_rcv_saddr.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %1, align 4
  br label %local_address.exit

if.then7.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 11
  %19 = call ptr @memcpy(ptr %1, ptr %skc_v6_rcv_saddr.i, i32 16)
  br label %local_address.exit

local_address.exit:                               ; preds = %if.then7.i, %if.then.i, %for.body.local_address.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %5)
  %cmp.i = icmp eq i16 %11, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp6.i = icmp eq i16 %11, 2
  br i1 %cmp.i, label %if.then.i67, label %if.else14.i

if.then.i67:                                      ; preds = %local_address.exit
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp10.i = icmp eq i32 %21, %23
  br label %if.end44.i

if.else.i:                                        ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %1, ptr noundef dereferenceable(16) %6, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br label %if.end44.i

if.else14.i:                                      ; preds = %local_address.exit
  br i1 %cmp6.i, label %if.then19.i, label %if.else27.i

if.then19.i:                                      ; preds = %if.else14.i
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %6, align 4
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %27, %25
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %29, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then21.i, label %if.then19.i.for.inc.critedge_crit_edge

if.then19.i.for.inc.critedge_crit_edge:           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.critedge

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp23.i = icmp eq i32 %31, %33
  br label %if.end44.i

if.else27.i:                                      ; preds = %if.else14.i
  br i1 %cmp30.i, label %if.then32.i, label %if.else27.i.for.inc.critedge_crit_edge

if.else27.i.for.inc.critedge_crit_edge:           ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.critedge

if.then32.i:                                      ; preds = %if.else27.i
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %36 = ptrtoint ptr %arrayidx2.i73.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i73.i, align 4
  %or.i74.i = or i32 %37, %35
  %38 = ptrtoint ptr %arrayidx4.i75.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i75.i, align 4
  %xor.i76.i = xor i32 %39, 65535
  %or5.i77.i = or i32 %or.i74.i, %xor.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i77.i)
  %cmp.i78.i = icmp eq i32 %or5.i77.i, 0
  br i1 %cmp.i78.i, label %if.then34.i, label %if.then32.i.for.inc.critedge_crit_edge

if.then32.i.for.inc.critedge_crit_edge:           ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.critedge

if.then34.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx36.i, align 4
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp38.i = icmp eq i32 %41, %43
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then34.i, %if.then21.i, %if.else.i, %if.then8.i
  %addr_equals.0.shrunk.i = phi i1 [ %cmp10.i, %if.then8.i ], [ %tobool.not.i, %if.else.i ], [ %cmp23.i, %if.then21.i ], [ %cmp38.i, %if.then34.i ]
  %44 = and i1 %tobool9, %addr_equals.0.shrunk.i
  br i1 %44, label %if.end50.i, label %addresses_equal.exit

if.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %3)
  %cmp54.i = icmp eq i16 %14, %3
  br i1 %cmp54.i, label %if.end50.i.if.end12_crit_edge, label %if.end50.i.for.inc.critedge_crit_edge

if.end50.i.for.inc.critedge_crit_edge:            ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.critedge

if.end50.i.if.end12_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

addresses_equal.exit:                             ; preds = %if.end44.i
  br i1 %addr_equals.0.shrunk.i, label %addresses_equal.exit.if.end12_crit_edge, label %addresses_equal.exit.for.inc.critedge_crit_edge

addresses_equal.exit.for.inc.critedge_crit_edge:  ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.critedge

addresses_equal.exit.if.end12_crit_edge:          ; preds = %addresses_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end12:                                         ; preds = %addresses_equal.exit.if.end12_crit_edge, %if.end50.i.if.end12_crit_edge
  %backup = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.079, i32 0, i32 1, i32 0, i32 13
  %45 = ptrtoint ptr %backup to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load = load i32, ptr %backup, align 8
  %46 = and i8 %bkup, 1
  %bf.value = zext i8 %46 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 19
  %bf.clear = and i32 %bf.load, -537657345
  %bf.set = or i32 %bf.clear, %bf.shl
  %bf.shl20 = shl nuw nsw i32 %bf.value, 29
  %bf.set16 = or i32 %bf.set, %bf.shl20
  %bf.set22 = or i32 %bf.set16, 262144
  store i32 %bf.set22, ptr %backup, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %47 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %48, i32 0, i32 30, i32 8
  %49 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i70 = icmp eq ptr %50, null
  br i1 %tobool.not.i70, label %if.end12.__MPTCP_INC_STATS.exit_crit_edge, label %if.then.i72, !prof !187

if.end12.__MPTCP_INC_STATS.exit_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %__MPTCP_INC_STATS.exit

if.then.i72:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i71 = getelementptr [43 x i32], ptr %50, i32 0, i32 36
  %51 = ptrtoint ptr %arrayidx.i71 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !175) #14
  %and.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %57, %51
  %58 = inttoptr i32 %add.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add12.i = add i32 %60, 1
  store i32 %add12.i, ptr %58, align 4
  br label %__MPTCP_INC_STATS.exit

__MPTCP_INC_STATS.exit:                           ; preds = %if.then.i72, %if.end12.__MPTCP_INC_STATS.exit_crit_edge
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_nl_mp_prio_send_ack.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_nl_mp_prio_send_ack, %if.then36)) #14
          to label %do.end39 [label %if.then36], !srcloc !188

if.then36:                                        ; preds = %__MPTCP_INC_STATS.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_nl_mp_prio_send_ack.__UNIQUE_ID_ddebug637, ptr noundef nonnull @.str.65) #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %__MPTCP_INC_STATS.exit
  tail call void @mptcp_subflow_send_ack(ptr noundef %8) #14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %local) #14
  br label %cleanup49

for.inc.critedge:                                 ; preds = %addresses_equal.exit.for.inc.critedge_crit_edge, %if.end50.i.for.inc.critedge_crit_edge, %if.then32.i.for.inc.critedge_crit_edge, %if.else27.i.for.inc.critedge_crit_edge, %if.then19.i.for.inc.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %local) #14
  %61 = ptrtoint ptr %subflow.079 to i32
  call void @__asan_load4_noabort(i32 %61)
  %subflow.0 = load ptr, ptr %subflow.079, align 8
  %cmp.not = icmp eq ptr %subflow.0, %conn_list
  br i1 %cmp.not, label %for.inc.critedge.cleanup49_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.critedge.cleanup49_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49

cleanup49:                                        ; preds = %for.inc.critedge.cleanup49_crit_edge, %do.end39, %do.end.cleanup49_crit_edge
  %retval.2 = phi i32 [ 0, %do.end39 ], [ -22, %do.end.cleanup49_crit_edge ], [ -22, %for.inc.critedge.cleanup49_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_nl_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pm_nl_pernet_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %local_addr_list = getelementptr inbounds %struct.pm_nl_pernet, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %local_addr_list, ptr %local_addr_list, align 4
  %prev.i = getelementptr inbounds %struct.pm_nl_pernet, ptr %call, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %local_addr_list, ptr %prev.i, align 4
  %subflows_max = getelementptr inbounds %struct.pm_nl_pernet, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %subflows_max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %subflows_max, align 4
  %next_id = getelementptr inbounds %struct.pm_nl_pernet, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %next_id, align 4
  %stale_loss_cnt = getelementptr inbounds %struct.pm_nl_pernet, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %stale_loss_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %stale_loss_cnt, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %call, ptr noundef nonnull @.str.66, ptr noundef nonnull @pm_nl_init_net.__key, i16 noundef signext 3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm_nl_exit_net(ptr noundef readonly %net_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn9 = load ptr, ptr %net_list, align 4
  %cmp.not10 = icmp eq ptr %.pn9, %net_list
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %__flush_addrs.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %__flush_addrs.exit.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn11, i32 -116
  %1 = load i32, ptr @pm_nl_pernet_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net.0, i32 noundef %1)
  %local_addr_list = getelementptr inbounds %struct.pm_nl_pernet, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %local_addr_list, align 4
  %cmp.i.not4.i = icmp eq ptr %3, %local_addr_list
  br i1 %cmp.i.not4.i, label %for.body.__flush_addrs.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.__flush_addrs.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %__flush_addrs.exit

while.body.i:                                     ; preds = %__mptcp_pm_release_addr_entry.exit.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %4 = phi ptr [ %15, %__mptcp_pm_release_addr_entry.exit.i.while.body.i_crit_edge ], [ %3, %for.body.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_rcu.exit.i_crit_edge

while.body.i.list_del_rcu.exit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %while.body.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %lsk.i.i = getelementptr inbounds %struct.mptcp_pm_addr_entry, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %lsk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lsk.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %list_del_rcu.exit.i.__mptcp_pm_release_addr_entry.exit.i_crit_edge, label %if.then.i.i

list_del_rcu.exit.i.__mptcp_pm_release_addr_entry.exit.i_crit_edge: ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mptcp_pm_release_addr_entry.exit.i

if.then.i.i:                                      ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sock_release(ptr noundef nonnull %13) #14
  br label %__mptcp_pm_release_addr_entry.exit.i

__mptcp_pm_release_addr_entry.exit.i:             ; preds = %if.then.i.i, %list_del_rcu.exit.i.__mptcp_pm_release_addr_entry.exit.i_crit_edge
  tail call void @kfree(ptr noundef %4) #14
  %14 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %local_addr_list, align 4
  %cmp.i.not.i = icmp eq ptr %15, %local_addr_list
  br i1 %cmp.i.not.i, label %__mptcp_pm_release_addr_entry.exit.i.__flush_addrs.exit_crit_edge, label %__mptcp_pm_release_addr_entry.exit.i.while.body.i_crit_edge

__mptcp_pm_release_addr_entry.exit.i.while.body.i_crit_edge: ; preds = %__mptcp_pm_release_addr_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

__mptcp_pm_release_addr_entry.exit.i.__flush_addrs.exit_crit_edge: ; preds = %__mptcp_pm_release_addr_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__flush_addrs.exit

__flush_addrs.exit:                               ; preds = %__mptcp_pm_release_addr_entry.exit.i.__flush_addrs.exit_crit_edge, %for.body.__flush_addrs.exit_crit_edge
  %16 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, %net_list
  br i1 %cmp.not, label %__flush_addrs.exit.for.end_crit_edge, label %__flush_addrs.exit.for.body_crit_edge

__flush_addrs.exit.for.body_crit_edge:            ; preds = %__flush_addrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

__flush_addrs.exit.for.end_crit_edge:             ; preds = %__flush_addrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %__flush_addrs.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !82, !84, !85, !87, !88, !89, !91, !93, !94, !95, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !172, !174}
!llvm.named.register.sp = !{!175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__ksymtab_mptcp_pm_get_add_addr_signal_max, !1, !"__ksymtab_mptcp_pm_get_add_addr_signal_max", i1 false, i1 false}
!1 = !{!"../net/mptcp/pm_netlink.c", i32 224, i32 1}
!2 = !{ptr @__ksymtab_mptcp_pm_get_add_addr_accept_max, !3, !"__ksymtab_mptcp_pm_get_add_addr_accept_max", i1 false, i1 false}
!3 = !{!"../net/mptcp/pm_netlink.c", i32 233, i32 1}
!4 = !{ptr @__ksymtab_mptcp_pm_get_subflows_max, !5, !"__ksymtab_mptcp_pm_get_subflows_max", i1 false, i1 false}
!5 = !{!"../net/mptcp/pm_netlink.c", i32 242, i32 1}
!6 = !{ptr @__ksymtab_mptcp_pm_get_local_addr_max, !7, !"__ksymtab_mptcp_pm_get_local_addr_max", i1 false, i1 false}
!7 = !{!"../net/mptcp/pm_netlink.c", i32 251, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mptcp/pm_netlink.c", i32 272, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mptcp/pm_netlink.c", i32 401, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mptcp_pm_free_anno_list.__UNIQUE_ID_ddebug627, !11, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mptcp/pm_netlink.c", i32 723, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mptcp_pm_nl_addr_send_ack.__UNIQUE_ID_ddebug635, !17, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!20 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mptcp/pm_netlink.c", i32 848, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mptcp_pm_nl_work.__UNIQUE_ID_ddebug641, !24, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!27 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../net/mptcp/pm_netlink.c", i32 1003, i32 6}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/mptcp/pm_netlink.c", i32 1020, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../net/mptcp/pm_netlink.c", i32 2021, i32 3}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../net/mptcp/pm_netlink.c", i32 2053, i32 3}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../net/mptcp/pm_netlink.c", i32 2067, i32 3}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/mptcp/pm_netlink.c", i32 2182, i32 9}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/mptcp/pm_netlink.c", i32 2185, i32 9}
!43 = !{ptr @pm_nl_pernet_id, !44, !"pm_nl_pernet_id", i1 false, i1 false}
!44 = !{!"../net/mptcp/pm_netlink.c", i32 23, i32 12}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/net/sock.h", i32 1750, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/mptcp/pm_netlink.c", i32 772, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mptcp_pm_nl_rm_addr_or_subflow.__UNIQUE_ID_ddebug638, !53, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!56 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/mptcp/pm_netlink.c", i32 800, i32 4}
!61 = !{ptr @mptcp_pm_nl_rm_addr_or_subflow.__UNIQUE_ID_ddebug639, !60, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!62 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/mptcp/mib.h", i32 66, i32 3}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/mptcp/pm_netlink.c", i32 669, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mptcp_pm_nl_add_addr_received.__UNIQUE_ID_ddebug632, !66, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!69 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/mptcp/pm_netlink.c", i32 621, i32 2}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/mptcp/pm_netlink.c", i32 540, i32 2}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mptcp_pm_create_subflow_or_signal_addr.__UNIQUE_ID_ddebug629, !73, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!76 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/mptcp/pm_netlink.c", i32 203, i32 2}
!79 = !{ptr @mptcp_pm_alloc_anno_list.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../net/mptcp/pm_netlink.c", i32 388, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/mptcp/pm_netlink.c", i32 309, i32 2}
!84 = !{ptr @mptcp_pm_add_timer.__UNIQUE_ID_ddebug625, !83, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/mptcp/pm_netlink.c", i32 328, i32 3}
!87 = !{ptr @mptcp_pm_add_timer.__UNIQUE_ID_ddebug626, !86, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!88 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/mptcp/pm_netlink.c", i32 168, i32 2}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/net/genetlink.h", i32 437, i32 6}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../net/mptcp/pm_netlink.c", i32 1854, i32 3}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../net/mptcp/pm_netlink.c", i32 1864, i32 6}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../net/mptcp/pm_netlink.c", i32 1891, i32 6}
!109 = !{ptr @mptcp_genl_family, !110, !"mptcp_genl_family", i1 false, i1 false}
!110 = !{!"../net/mptcp/pm_netlink.c", i32 2125, i32 27}
!111 = !{ptr @mptcp_pm_policy, !112, !"mptcp_pm_policy", i1 false, i1 false}
!112 = !{!"../net/mptcp/pm_netlink.c", i32 1082, i32 32}
!113 = !{ptr @mptcp_pm_addr_policy, !114, !"mptcp_pm_addr_policy", i1 false, i1 false}
!114 = !{!"../net/mptcp/pm_netlink.c", i32 1071, i32 1}
!115 = !{ptr @mptcp_pm_ops, !116, !"mptcp_pm_ops", i1 false, i1 false}
!116 = !{!"../net/mptcp/pm_netlink.c", i32 2088, i32 36}
!117 = !{ptr @mptcp_nl_cmd_add_addr.__msg, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../net/mptcp/pm_netlink.c", i32 1255, i32 3}
!119 = !{ptr @mptcp_nl_cmd_add_addr.__msg.45, !120, !"__msg", i1 false, i1 false}
!120 = !{!"../net/mptcp/pm_netlink.c", i32 1263, i32 4}
!121 = !{ptr @mptcp_nl_cmd_add_addr.__msg.46, !122, !"__msg", i1 false, i1 false}
!122 = !{!"../net/mptcp/pm_netlink.c", i32 1270, i32 3}
!123 = !{ptr @mptcp_pm_parse_addr.__msg, !124, !"__msg", i1 false, i1 false}
!124 = !{!"../net/mptcp/pm_netlink.c", i32 1143, i32 3}
!125 = !{ptr @mptcp_pm_parse_addr.__msg.47, !126, !"__msg", i1 false, i1 false}
!126 = !{!"../net/mptcp/pm_netlink.c", i32 1158, i32 3}
!127 = !{ptr @mptcp_pm_parse_addr.__msg.48, !128, !"__msg", i1 false, i1 false}
!128 = !{!"../net/mptcp/pm_netlink.c", i32 1169, i32 3}
!129 = !{ptr @mptcp_pm_parse_addr.__msg.49, !130, !"__msg", i1 false, i1 false}
!130 = !{!"../net/mptcp/pm_netlink.c", i32 1175, i32 3}
!131 = !{ptr @mptcp_pm_parse_addr.__msg.50, !132, !"__msg", i1 false, i1 false}
!132 = !{!"../net/mptcp/pm_netlink.c", i32 1202, i32 4}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/mptcp/pm_netlink.c", i32 978, i32 3}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mptcp_pm_nl_create_listen_socket._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @mptcp_pm_nl_create_listen_socket._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/mptcp/pm_netlink.c", i32 984, i32 3}
!140 = !{ptr @mptcp_pm_nl_create_listen_socket._entry.53, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @mptcp_pm_nl_create_listen_socket._entry_ptr.55, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @mptcp_nl_cmd_del_addr.__msg, !143, !"__msg", i1 false, i1 false}
!143 = !{!"../net/mptcp/pm_netlink.c", i32 1437, i32 3}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/mptcp/pm_netlink.c", i32 1343, i32 2}
!146 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mptcp_nl_remove_subflow_and_signal_addr.__UNIQUE_ID_ddebug652, !145, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!148 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mptcp_nl_cmd_get_addr.__msg, !150, !"__msg", i1 false, i1 false}
!150 = !{!"../net/mptcp/pm_netlink.c", i32 1607, i32 3}
!151 = !{ptr @mptcp_nl_cmd_get_addr.__msg.59, !152, !"__msg", i1 false, i1 false}
!152 = !{!"../net/mptcp/pm_netlink.c", i32 1615, i32 3}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/net/netlink.h", i32 991, i32 3}
!155 = !{ptr @parse_limit.__msg, !156, !"__msg", i1 false, i1 false}
!156 = !{!"../net/mptcp/pm_netlink.c", i32 1689, i32 3}
!157 = !{ptr @mptcp_nl_cmd_get_limits.__msg, !158, !"__msg", i1 false, i1 false}
!158 = !{!"../net/mptcp/pm_netlink.c", i32 1749, i32 2}
!159 = !{ptr @.str.61, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/mptcp/pm_netlink.c", i32 737, i32 2}
!161 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mptcp_pm_nl_mp_prio_send_ack.__UNIQUE_ID_ddebug636, !160, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!163 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/mptcp/pm_netlink.c", i32 754, i32 3}
!166 = !{ptr @mptcp_pm_nl_mp_prio_send_ack.__UNIQUE_ID_ddebug637, !165, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!167 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mptcp_pm_mcgrps, !169, !"mptcp_pm_mcgrps", i1 false, i1 false}
!169 = !{!"../net/mptcp/pm_netlink.c", i32 1063, i32 42}
!170 = !{ptr @mptcp_pm_pernet_ops, !171, !"mptcp_pm_pernet_ops", i1 false, i1 false}
!171 = !{!"../net/mptcp/pm_netlink.c", i32 2172, i32 33}
!172 = !{ptr @pm_nl_init_net.__key, !173, !"__key", i1 false, i1 false}
!173 = !{!"../net/mptcp/pm_netlink.c", i32 2148, i32 2}
!174 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!175 = !{!"sp"}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2149416610}
!186 = !{i64 2149416876}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{i64 2148645026, i64 2148645031, i64 2148645044, i64 2148645088, i64 2148645122, i64 2148645143}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{i64 2150280979}
!191 = !{i64 640323, i64 640384}
!192 = !{i64 643055}
!193 = !{i64 643340}
!194 = !{i8 0, i8 2}
!195 = !{i64 2157012284}
!196 = !{i64 2148276527}
!197 = !{i64 2148190991, i64 2148191023, i64 2148191052, i64 2148191086, i64 2148191117, i64 2148191140}
!198 = !{i64 2148656223}
