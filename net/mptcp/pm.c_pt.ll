; ModuleID = '/llk/IR_all_yes/net/mptcp/pm.c_pt.bc'
source_filename = "../net/mptcp/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mptcp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i32, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, ptr, %struct.rb_root, %struct.sk_buff_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.mptcp_pm_data, %struct.anon.190, i32, [16 x i8] }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.187, %struct.anon.188, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
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
%struct.anon.187 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.188 = type { i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mptcp_pm_data = type { %struct.mptcp_addr_info, %struct.mptcp_addr_info, %struct.list_head, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32], %struct.mptcp_rm_list, %struct.mptcp_rm_list }
%struct.mptcp_addr_info = type { i8, i16, i16, %union.anon.189 }
%union.anon.189 = type { %struct.in6_addr }
%struct.mptcp_rm_list = type { [8 x i8], i8 }
%struct.anon.190 = type { i32, i32, i64, i64 }
%struct.mptcp_subflow_context = type { %struct.list_head, %union.anon.197, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i24, i32, i32, i64, i32, i32, [20 x i8], i8, i8, i8, i8, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.200, %struct.anon.201, %struct.anon.202, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.200 = type { i32, i32, i64 }
%struct.anon.201 = type { i32, i32, i64 }
%struct.anon.202 = type { i32, i32 }

@mptcp_pm_announce_addr.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mptcp\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mptcp_pm_announce_addr\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/mptcp/pm.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"msk=%p, local_id=%d, echo=%d\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MPTCP: msk=%p, local_id=%d, echo=%d\00", [60 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@mptcp_pm_announce_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014MPTCP: addr_signal error, add_addr=%d, echo=%d\00", [47 x i8] zeroinitializer }, align 32
@mptcp_pm_announce_addr._entry_ptr = internal global ptr @mptcp_pm_announce_addr._entry, section ".printk_index", align 4
@mptcp_pm_remove_addr.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mptcp_pm_remove_addr\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msk=%p, rm_list_nr=%d\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MPTCP: msk=%p, rm_list_nr=%d\00", [35 x i8] zeroinitializer }, align 32
@mptcp_pm_remove_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014MPTCP: addr_signal error, rm_addr=%d\00", [57 x i8] zeroinitializer }, align 32
@mptcp_pm_remove_addr._entry_ptr = internal global ptr @mptcp_pm_remove_addr._entry, section ".printk_index", align 4
@mptcp_pm_remove_subflow.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.7, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mptcp_pm_remove_subflow\00", [40 x i8] zeroinitializer }, align 32
@mptcp_pm_new_connection.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mptcp_pm_new_connection\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msk=%p, token=%u side=%d\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MPTCP: msk=%p, token=%u side=%d\00", [32 x i8] zeroinitializer }, align 32
@mptcp_pm_allow_new_subflow.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptcp_pm_allow_new_subflow\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"msk=%p subflows=%d max=%d allow=%d\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MPTCP: msk=%p subflows=%d max=%d allow=%d\00", [54 x i8] zeroinitializer }, align 32
@mptcp_pm_fully_established.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptcp_pm_fully_established\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msk=%p\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MPTCP: msk=%p\00", [18 x i8] zeroinitializer }, align 32
@mptcp_pm_connection_closed.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.18, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptcp_pm_connection_closed\00", [37 x i8] zeroinitializer }, align 32
@mptcp_pm_subflow_established.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.18, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mptcp_pm_subflow_established\00", [35 x i8] zeroinitializer }, align 32
@mptcp_pm_add_addr_received.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptcp_pm_add_addr_received\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"msk=%p remote_id=%d accept=%d\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MPTCP: msk=%p remote_id=%d accept=%d\00", [59 x i8] zeroinitializer }, align 32
@mptcp_pm_add_addr_echoed.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.18, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mptcp_pm_add_addr_echoed\00", [39 x i8] zeroinitializer }, align 32
@mptcp_pm_rm_addr_received.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mptcp_pm_rm_addr_received\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msk=%p remote_ids_nr=%d\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MPTCP: msk=%p remote_ids_nr=%d\00", [33 x i8] zeroinitializer }, align 32
@mptcp_pm_mp_prio_received.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mptcp_pm_mp_prio_received\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"subflow->backup=%d, bkup=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MPTCP: subflow->backup=%d, bkup=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@mptcp_pm_mp_fail_received.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mptcp_pm_mp_fail_received\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fail_seq=%llu\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MPTCP: fail_seq=%llu\00", [43 x i8] zeroinitializer }, align 32
@mptcp_pm_data_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&msk->pm.lock\00", [18 x i8] zeroinitializer }, align 32
@mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mptcp_pm_schedule_work\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msk=%p status=%x new=%lx\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MPTCP: msk=%p status=%x new=%lx\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 23, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 29, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 48, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 51, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 64, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 78, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 92, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 131, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 155, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 162, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 204, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 228, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 252, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 269, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 277, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 403, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [18 x i8] c"../net/mptcp/pm.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 116, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @mptcp_pm_announce_addr._entry, ptr @mptcp_pm_announce_addr._entry_ptr, ptr @mptcp_pm_remove_addr._entry, ptr @mptcp_pm_remove_addr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mptcp_pm_data_init.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_announce_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_remove_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_pm_data_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_announce_addr(ptr noundef %msk, ptr nocapture noundef readonly %addr, i1 noundef zeroext %echo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40
  %addr_signal = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %0 = ptrtoint ptr %addr_signal to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %addr_signal, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_announce_addr.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_announce_addr, %if.then)) #5
          to label %do.body10 [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 4
  %conv = zext i8 %3 to i32
  %conv7 = zext i1 %echo to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_announce_addr.__UNIQUE_ID_ddebug615, ptr noundef nonnull @.str.4, ptr noundef %msk, i32 noundef %conv, i32 noundef %conv7) #5
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %do.body10.if.end38_crit_edge, label %land.rhs

do.body10.if.end38_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.rhs:                                         ; preds = %do.body10
  %dep_map = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end32, label %land.rhs.if.end38_crit_edge, !prof !88

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end32:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 25, i32 noundef 9, ptr noundef null) #5
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %land.rhs.if.end38_crit_edge, %do.body10.if.end38_crit_edge
  %conv48 = zext i8 %1 to i32
  %cond = select i1 %echo, i32 2, i32 1
  %and = and i32 %cond, %conv48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end61, label %do.end55

do.end55:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %conv59 = zext i1 %echo to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv48, i32 noundef %conv59) #8
  br label %cleanup

if.end61:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %remote = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 1
  %remote.sink = select i1 %echo, ptr %remote, ptr %pm
  %.sink = select i1 %echo, i8 2, i8 1
  %5 = call ptr @memcpy(ptr %remote.sink, ptr %addr, i32 24)
  %or = or i8 %1, %.sink
  %6 = ptrtoint ptr %addr_signal to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 %or, ptr %addr_signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end55
  %retval.0 = phi i32 [ -22, %do.end55 ], [ 0, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_remove_addr(ptr noundef %msk, ptr nocapture noundef readonly %rm_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_signal = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %0 = ptrtoint ptr %addr_signal to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %addr_signal, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_remove_addr.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_remove_addr, %if.then)) #5
          to label %do.end6 [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nr = getelementptr inbounds %struct.mptcp_rm_list, ptr %rm_list, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_remove_addr.__UNIQUE_ID_ddebug618, ptr noundef nonnull @.str.8, ptr noundef %msk, i32 noundef %conv) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %tobool7.not, label %if.end15, label %do.end11

do.end11:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %conv13 = zext i8 %1 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv13) #8
  br label %cleanup

if.end15:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %rm_list_tx = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 16
  %4 = call ptr @memcpy(ptr %rm_list_tx, ptr %rm_list, i32 9)
  %5 = ptrtoint ptr %addr_signal to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 4, ptr %addr_signal, align 4
  tail call void @mptcp_pm_nl_addr_send_ack(ptr noundef %msk) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_nl_addr_send_ack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_remove_subflow(ptr noundef %msk, ptr noundef %rm_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_remove_subflow.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_remove_subflow, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nr = getelementptr inbounds %struct.mptcp_rm_list, ptr %rm_list, i32 0, i32 1
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_remove_subflow.__UNIQUE_ID_ddebug620, ptr noundef nonnull @.str.8, ptr noundef %msk, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  tail call void @mptcp_pm_nl_rm_subflow_received(ptr noundef %msk, ptr noundef %rm_list) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_nl_rm_subflow_received(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_new_connection(ptr noundef %msk, ptr noundef %ssk, i32 noundef %server_side) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_new_connection.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_new_connection, %if.then)) #5
          to label %do.body8 [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %token = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 16
  %0 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %token, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_new_connection.__UNIQUE_ID_ddebug621, ptr noundef nonnull @.str.13, ptr noundef %msk, i32 noundef %1, i32 noundef %server_side) #5
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %server_side)
  %tobool9 = icmp ne i32 %server_side, 0
  %server_side10 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 5
  %frombool11 = zext i1 %tobool9 to i8
  %2 = ptrtoint ptr %server_side10 to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 %frombool11, ptr %server_side10, align 1
  tail call void @mptcp_event(i32 noundef 1, ptr noundef %msk, ptr noundef %ssk, i32 noundef 2592) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_event(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_pm_allow_new_subflow(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mptcp_pm_get_subflows_max(ptr noundef %msk) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_allow_new_subflow.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_allow_new_subflow, %if.then)) #5
          to label %do.end15 [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %subflows = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %0 = ptrtoint ptr %subflows to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subflows, align 1
  %conv = zext i8 %1 to i32
  %accept_subflow = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %accept_subflow to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %accept_subflow, align 4, !range !89
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_allow_new_subflow.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.16, ptr noundef %msk, i32 noundef %conv, i32 noundef %call, i32 noundef %4) #5
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %accept_subflow17 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 8
  %5 = ptrtoint ptr %accept_subflow17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %accept_subflow17, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool18.not = icmp eq i8 %6, 0
  br i1 %tobool18.not, label %do.end15.cleanup_crit_edge, label %if.end22

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %do.end15
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %7 = ptrtoint ptr %accept_subflow17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %accept_subflow17, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  br i1 %tobool28.not, label %if.end22.if.end52_crit_edge, label %if.then31

if.end22.if.end52_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then31:                                        ; preds = %if.end22
  %subflows32 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %9 = ptrtoint ptr %subflows32 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %subflows32, align 1
  %conv33 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv33)
  %cmp = icmp ugt i32 %call, %conv33
  br i1 %cmp, label %land.lhs.true, label %if.then31.if.end52_crit_edge

if.then31.if.end52_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true:                                    ; preds = %if.then31
  %inc = add i8 %10, 1
  %11 = ptrtoint ptr %subflows32 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %inc, ptr %subflows32, align 1
  %conv37 = zext i8 %inc to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv37)
  %cmp38 = icmp eq i32 %call, %conv37
  br i1 %cmp38, label %do.body45, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.body45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %accept_subflow17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 0, ptr %accept_subflow17, align 4
  br label %if.end52

if.end52:                                         ; preds = %do.body45, %land.lhs.true.if.end52_crit_edge, %if.then31.if.end52_crit_edge, %if.end22.if.end52_crit_edge
  %ret.0.shrunk = phi i1 [ true, %do.body45 ], [ true, %land.lhs.true.if.end52_crit_edge ], [ false, %if.then31.if.end52_crit_edge ], [ false, %if.end22.if.end52_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end15.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.shrunk, %if.end52 ], [ false, %do.end15.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_get_subflows_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_fully_established(ptr noundef %msk, ptr noundef %ssk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_fully_established.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_fully_established, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_fully_established.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.19, ptr noundef %msk) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %work_pending = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %0 = ptrtoint ptr %work_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %work_pending, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool8.not = icmp eq i8 %1, 0
  br i1 %tobool8.not, label %do.end.if.end15_crit_edge, label %land.lhs.true

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %do.end
  %status = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 2
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_fully_established, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status, align 2
  %conv.i = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.38, ptr noundef %msk, i32 noundef %conv.i, i32 noundef 8) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then13
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 2
  %9 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not.i = icmp eq i8 %9, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i.if.end15_crit_edge

do.end.i.if.end15_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i = or i8 %8, 8
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14.i, ptr %status, align 2
  %call15.i = tail call zeroext i1 @mptcp_schedule_work(ptr noundef %msk) #5
  br label %if.end15

if.end15:                                         ; preds = %if.end9.i, %do.end.i.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %status17 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %11 = ptrtoint ptr %status17 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status17, align 2
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  %14 = or i8 %12, 32
  %15 = ptrtoint ptr %status17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %status17, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br i1 %cmp, label %if.then29, label %if.end15.if.end30_crit_edge

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mptcp_event(i32 noundef 2, ptr noundef %msk, ptr noundef %ssk, i32 noundef %gfp) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end15.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_connection_closed(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_connection_closed.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_connection_closed, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_connection_closed.__UNIQUE_ID_ddebug631, ptr noundef nonnull @.str.19, ptr noundef %msk) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_subflow_established(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_subflow_established.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_subflow_established, %if.then)) #5
          to label %do.end6 [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_subflow_established.__UNIQUE_ID_ddebug632, ptr noundef nonnull @.str.19, ptr noundef %msk) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %work_pending = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %0 = ptrtoint ptr %work_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %work_pending, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool8.not = icmp eq i8 %1, 0
  br i1 %tobool8.not, label %do.end6.cleanup_crit_edge, label %if.end12

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %do.end6
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %2 = ptrtoint ptr %work_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %work_pending, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool18.not = icmp eq i8 %3, 0
  br i1 %tobool18.not, label %if.end12.if.end23_crit_edge, label %if.then21

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_subflow_established, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i, align 2
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.38, ptr noundef %msk, i32 noundef %conv.i, i32 noundef 16) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then21
  %status4.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %6 = ptrtoint ptr %status4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status4.i, align 2
  %8 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not.i = icmp eq i8 %8, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i.if.end23_crit_edge

do.end.i.if.end23_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i = or i8 %7, 16
  %9 = ptrtoint ptr %status4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv14.i, ptr %status4.i, align 2
  %call15.i = tail call zeroext i1 @mptcp_schedule_work(ptr noundef %msk) #5
  br label %if.end23

if.end23:                                         ; preds = %if.end9.i, %do.end.i.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_subflow_check_next(ptr noundef %msk, ptr noundef %ssk, ptr nocapture noundef readonly %subflow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp eq i8 %1, 7
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  %request_join = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow, i32 0, i32 1, i32 0, i32 13
  %2 = ptrtoint ptr %request_join to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %request_join, align 8
  %3 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %if.end.thread

if.end.thread:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %work_pending26 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %4 = ptrtoint ptr %work_pending26 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %work_pending26, align 2, !range !89
  %lock30 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock30) #5
  br label %if.then12

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %6 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool6, %lor.rhs ]
  %work_pending = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %8 = ptrtoint ptr %work_pending to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %work_pending, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp ne i8 %9, 0
  %brmerge = select i1 %tobool7.not, i1 true, i1 %7
  br i1 %brmerge, label %if.end, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.end
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  br i1 %7, label %if.end.if.then12_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %if.end.if.then12_crit_edge, %if.end.thread
  %lock32 = phi ptr [ %lock30, %if.end.thread ], [ %lock, %if.end.if.then12_crit_edge ]
  %subflows = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %10 = ptrtoint ptr %subflows to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %subflows, align 1
  %dec = add i8 %11, -1
  store i8 %dec, ptr %subflows, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %lock31 = phi ptr [ %lock32, %if.then12 ], [ %lock, %if.end.if.end13_crit_edge ]
  %call = tail call zeroext i1 @mptcp_pm_nl_check_work_pending(ptr noundef %msk) #5
  br i1 %call, label %if.then14, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_subflow_check_next, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status.i, align 2
  %conv.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.38, ptr noundef %msk, i32 noundef %conv.i, i32 noundef 16) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then14
  %status4.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %14 = ptrtoint ptr %status4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status4.i, align 2
  %16 = and i8 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not.i = icmp eq i8 %16, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i.if.end16_crit_edge

do.end.i.if.end16_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i = or i8 %15, 16
  %17 = ptrtoint ptr %status4.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv14.i, ptr %status4.i, align 2
  %call15.i = tail call zeroext i1 @mptcp_schedule_work(ptr noundef %msk) #5
  br label %if.end16

if.end16:                                         ; preds = %if.end9.i, %do.end.i.if.end16_crit_edge, %if.end13.if.end16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock31) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_pm_nl_check_work_pending(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_add_addr_received(ptr noundef %msk, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_add_addr_received.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_add_addr_received, %if.then)) #5
          to label %do.end11 [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 4
  %conv = zext i8 %1 to i32
  %accept_addr = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 7
  %2 = ptrtoint ptr %accept_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %accept_addr, align 1, !range !89
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_add_addr_received.__UNIQUE_ID_ddebug636, ptr noundef nonnull @.str.24, ptr noundef %msk, i32 noundef %conv, i32 noundef %4) #5
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  tail call void @mptcp_event_addr_announced(ptr noundef %msk, ptr noundef %addr) #5
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %accept_addr16 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 7
  %5 = ptrtoint ptr %accept_addr16 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %accept_addr16, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool17.not = icmp eq i8 %6, 0
  br i1 %tobool17.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %do.end11
  %call21 = tail call i32 @mptcp_pm_announce_addr(ptr noundef %msk, ptr noundef %addr, i1 noundef zeroext true)
  %addr_signal.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %7 = ptrtoint ptr %addr_signal.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %addr_signal.i.i, align 4
  %9 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i, label %if.then20.if.end27_crit_edge, label %if.end.i

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end.i:                                         ; preds = %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_add_addr_received, %if.then.i.i)) #5
          to label %do.end.i.i [label %if.then.i.i], !srcloc !87

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %status.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status.i.i, align 2
  %conv.i.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.38, ptr noundef %msk, i32 noundef %conv.i.i, i32 noundef 2) #5
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i
  %status4.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %12 = ptrtoint ptr %status4.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status4.i.i, align 2
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %do.end.i.i.if.end27_crit_edge

do.end.i.i.if.end27_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end9.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i.i = or i8 %13, 2
  %15 = ptrtoint ptr %status4.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14.i.i, ptr %status4.i.i, align 2
  %call15.i.i = tail call zeroext i1 @mptcp_schedule_work(ptr noundef %msk) #5
  br label %if.end27

if.else:                                          ; preds = %do.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_add_addr_received, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %status.i, align 2
  %conv.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.38, ptr noundef %msk, i32 noundef %conv.i, i32 noundef 1) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else
  %status4.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %18 = ptrtoint ptr %status4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status4.i, align 2
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  br i1 %tobool7.not.i, label %if.then23, label %if.else24

if.then23:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i = or i8 %19, 1
  %21 = ptrtoint ptr %status4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv14.i, ptr %status4.i, align 2
  %call15.i = tail call zeroext i1 @mptcp_schedule_work(ptr noundef %msk) #5
  %remote = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 1
  %22 = call ptr @memcpy(ptr %remote, ptr %addr, i32 24)
  br label %if.end27

if.else24:                                        ; preds = %do.end.i
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %23 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %24, i32 0, i32 30, i32 8
  %25 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.else24.if.end27_crit_edge, label %if.then.i42, !prof !88

if.else24.if.end27_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then.i42:                                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [43 x i32], ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %arrayidx.i to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !77) #5
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add12.i = add i32 %36, 1
  store i32 %add12.i, ptr %34, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then.i42, %if.else24.if.end27_crit_edge, %if.then23, %if.end9.i.i, %do.end.i.i.if.end27_crit_edge, %if.then20.if.end27_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_event_addr_announced(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_add_addr_send_ack(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_signal.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %0 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %addr_signal.i, align 4
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_add_addr_send_ack, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status.i, align 2
  %conv.i = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.38, ptr noundef %msk, i32 noundef %conv.i, i32 noundef 2) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %status4.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %5 = ptrtoint ptr %status4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status4.i, align 2
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not.i = icmp eq i8 %7, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i.return_crit_edge

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i = or i8 %6, 2
  %8 = ptrtoint ptr %status4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14.i, ptr %status4.i, align 2
  %call15.i = tail call zeroext i1 @mptcp_schedule_work(ptr noundef %msk) #5
  br label %return

return:                                           ; preds = %if.end9.i, %do.end.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_add_addr_echoed(ptr noundef %msk, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_add_addr_echoed.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_add_addr_echoed, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_add_addr_echoed.__UNIQUE_ID_ddebug639, ptr noundef nonnull @.str.19, ptr noundef %msk) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %call4 = tail call ptr @mptcp_lookup_anno_list_by_saddr(ptr noundef %msk, ptr noundef %addr) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.if.end15_crit_edge, label %do.end8

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end8:                                          ; preds = %do.end
  %work_pending = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %0 = ptrtoint ptr %work_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %work_pending, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool10.not = icmp eq i8 %1, 0
  br i1 %tobool10.not, label %do.end8.if.end15_crit_edge, label %if.then13

do.end8.if.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %do.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_add_addr_echoed, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status.i, align 2
  %conv.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.38, ptr noundef %msk, i32 noundef %conv.i, i32 noundef 16) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then13
  %status4.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %4 = ptrtoint ptr %status4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status4.i, align 2
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not.i = icmp eq i8 %6, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i.if.end15_crit_edge

do.end.i.if.end15_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i = or i8 %5, 16
  %7 = ptrtoint ptr %status4.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv14.i, ptr %status4.i, align 2
  %call15.i = tail call zeroext i1 @mptcp_schedule_work(ptr noundef %msk) #5
  br label %if.end15

if.end15:                                         ; preds = %if.end9.i, %do.end.i.if.end15_crit_edge, %do.end8.if.end15_crit_edge, %do.end.if.end15_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptcp_lookup_anno_list_by_saddr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_rm_addr_received(ptr noundef %msk, ptr nocapture noundef readonly %rm_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_rm_addr_received.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_rm_addr_received, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nr = getelementptr inbounds %struct.mptcp_rm_list, ptr %rm_list, i32 0, i32 1
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_rm_addr_received.__UNIQUE_ID_ddebug641, ptr noundef nonnull @.str.28, ptr noundef %msk, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nr5 = getelementptr inbounds %struct.mptcp_rm_list, ptr %rm_list, i32 0, i32 1
  %2 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp26.not = icmp eq i8 %3, 0
  br i1 %cmp26.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr %rm_list, i32 0, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  tail call void @mptcp_event_addr_removed(ptr noundef %msk, i8 noundef zeroext %5) #5
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %6 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr5, align 1
  %8 = zext i8 %7 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_rm_addr_received, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status.i, align 2
  %conv.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.38, ptr noundef %msk, i32 noundef %conv.i, i32 noundef 4) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.end
  %status4.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %11 = ptrtoint ptr %status4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status4.i, align 2
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i = or i8 %12, 4
  %14 = ptrtoint ptr %status4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14.i, ptr %status4.i, align 2
  %call15.i = tail call zeroext i1 @mptcp_schedule_work(ptr noundef %msk) #5
  %rm_list_rx = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 17
  %15 = call ptr @memcpy(ptr %rm_list_rx, ptr %rm_list, i32 9)
  br label %if.end11

if.else:                                          ; preds = %do.end.i
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i, align 4
  %mptcp_statistics.i = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 30, i32 8
  %18 = ptrtoint ptr %mptcp_statistics.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mptcp_statistics.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.if.end11_crit_edge, label %if.then.i24, !prof !88

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then.i24:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [43 x i32], ptr %19, i32 0, i32 34
  %20 = ptrtoint ptr %arrayidx.i to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !77) #5
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add12.i = add i32 %29, 1
  store i32 %add12.i, ptr %27, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then.i24, %if.else.if.end11_crit_edge, %if.then9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_event_addr_removed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_mp_prio_received(ptr noundef %sk, i8 noundef zeroext %bkup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_mp_prio_received.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_mp_prio_received, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %backup = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %2 = ptrtoint ptr %backup to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %backup, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %conv = zext i8 %bkup to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_mp_prio_received.__UNIQUE_ID_ddebug642, ptr noundef nonnull @.str.31, i32 noundef %bf.clear, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %backup5 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 13
  %3 = ptrtoint ptr %backup5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load6 = load i32, ptr %backup5, align 8
  %4 = and i8 %bkup, 1
  %bf.value = zext i8 %4 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 19
  %bf.clear7 = and i32 %bf.load6, -524289
  %bf.set = or i32 %bf.clear7, %bf.shl
  store i32 %bf.set, ptr %backup5, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  tail call void @mptcp_event(i32 noundef 13, ptr noundef %6, ptr noundef %sk, i32 noundef 2592) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_mp_fail_received(ptr nocapture noundef readnone %sk, i64 noundef %fail_seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_pm_mp_fail_received.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_pm_mp_fail_received, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_pm_mp_fail_received.__UNIQUE_ID_ddebug643, ptr noundef nonnull @.str.34, i64 noundef %fail_seq) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_pm_add_addr_signal(ptr noundef %msk, ptr noundef readonly %skb, i32 noundef %opt_size, i32 noundef %remaining, ptr nocapture noundef writeonly %addr, ptr nocapture noundef %echo, ptr nocapture noundef %port, ptr nocapture noundef writeonly %drop_other_suboptions) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %addr_signal.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %0 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %addr_signal.i, align 4
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %3 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %truesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp eq i32 %4, 2
  br i1 %cmp.i, label %if.then2, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %remaining, %opt_size
  %5 = ptrtoint ptr %drop_other_suboptions to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %drop_other_suboptions, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %remaining.addr.0 = phi i32 [ %add, %if.then2 ], [ %remaining, %land.lhs.true.if.end3_crit_edge ], [ %remaining, %if.end.if.end3_crit_edge ]
  %6 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %addr_signal.i, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i83.not = icmp eq i8 %8, 0
  %.lobit = lshr exact i8 %8, 1
  %9 = ptrtoint ptr %echo to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.lobit, ptr %echo, align 1
  %port7 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 1, i32 2
  %port9 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 0, i32 2
  %cond.in.in = select i1 %tobool.i83.not, ptr %port9, ptr %port7
  %10 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %10)
  %cond.in = load i16, ptr %cond.in.in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in)
  %tobool11 = icmp ne i16 %cond.in, 0
  %frombool13 = zext i1 %tobool11 to i8
  %11 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool13, ptr %port, align 1
  %12 = ptrtoint ptr %echo to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %echo, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  %family19 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 1, i32 1
  %family24 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 0, i32 1
  %cond27.in.in = select i1 %tobool14.not, ptr %family24, ptr %family19
  %14 = ptrtoint ptr %cond27.in.in to i32
  call void @__asan_load2_noabort(i32 %14)
  %cond27.in = load i16, ptr %cond27.in.in, align 2
  %15 = and i16 %cond27.in, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %15)
  %cmp.i84 = icmp eq i16 %15, 10
  %spec.store.select.i = select i1 %cmp.i84, i8 20, i8 8
  %narrow.i = add nuw nsw i8 %spec.store.select.i, 8
  %spec.select.i = select i1 %tobool14.not, i8 %narrow.i, i8 %spec.store.select.i
  %add8.i = add nuw nsw i8 %spec.select.i, 4
  %len.1.i = select i1 %tobool11, i8 %add8.i, i8 %spec.select.i
  %conv11.i = zext i8 %len.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.addr.0, i32 %conv11.i)
  %cmp = icmp ult i32 %remaining.addr.0, %conv11.i
  br i1 %cmp, label %if.end3.out_unlock_crit_edge, label %if.end35

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end35:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %remote39 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 1
  %remote39.sink = select i1 %tobool14.not, ptr %pm, ptr %remote39
  %.sink85 = select i1 %tobool14.not, i8 -2, i8 -3
  %16 = call ptr @memcpy(ptr %addr, ptr %remote39.sink, i32 24)
  %17 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr_signal.i, align 4
  %19 = and i8 %18, %.sink85
  store volatile i8 %19, ptr %addr_signal.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end35, %if.end3.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %tobool61 = phi i1 [ false, %if.end3.out_unlock_crit_edge ], [ false, %entry.out_unlock_crit_edge ], [ true, %if.end35 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i1 %tobool61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_pm_rm_addr_signal(ptr noundef %msk, i32 noundef %remaining, ptr nocapture noundef writeonly %rm_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %addr_signal.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %0 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %addr_signal.i, align 4
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end:                                           ; preds = %entry
  %3 = and i8 %1, -5
  %rm_list_tx = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 16
  %nr.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 16, i32 1
  %4 = ptrtoint ptr %nr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr.i, align 1
  %6 = add i8 %5, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %6)
  %7 = icmp ult i8 %6, -8
  br i1 %7, label %if.end.out_unlock.sink.split_crit_edge, label %if.end15

if.end.out_unlock.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock.sink.split

if.end15:                                         ; preds = %if.end
  %conv.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %add9.i = or i32 %add.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %remaining)
  %cmp16.not = icmp ult i32 %add9.i, %remaining
  br i1 %cmp16.not, label %if.end19, label %if.end15.out_unlock_crit_edge

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %8 = call ptr @memcpy(ptr %rm_list, ptr %rm_list_tx, i32 9)
  br label %out_unlock.sink.split

out_unlock.sink.split:                            ; preds = %if.end19, %if.end.out_unlock.sink.split_crit_edge
  %9 = xor i1 %7, true
  %10 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 %3, ptr %addr_signal.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %if.end15.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %tobool = phi i1 [ false, %if.end15.out_unlock_crit_edge ], [ false, %entry.out_unlock_crit_edge ], [ %9, %out_unlock.sink.split ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_pm_get_local_id(ptr noundef %msk, ptr noundef %skc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mptcp_pm_nl_get_local_id(ptr noundef %msk, ptr noundef %skc) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_nl_get_local_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_subflow_chk_stale(ptr noundef %msk, ptr noundef %ssk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %rcv_tstamp2 = getelementptr inbounds %struct.tcp_sock, ptr %ssk, i32 0, i32 18
  %2 = ptrtoint ptr %rcv_tstamp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rcv_tstamp2, align 4
  %stale_count = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 23
  %4 = ptrtoint ptr %stale_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stale_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %stale_rcv_tstamp = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %stale_rcv_tstamp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %stale_rcv_tstamp, align 4
  %7 = ptrtoint ptr %stale_count to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %stale_count, align 1
  br label %if.end15

if.else:                                          ; preds = %entry
  %8 = ptrtoint ptr %stale_rcv_tstamp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stale_rcv_tstamp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp = icmp eq i32 %9, %3
  br i1 %cmp, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp7.not = icmp eq i8 %5, -1
  br i1 %cmp7.not, label %if.then5.if.end_crit_edge, label %if.then9

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %inc11 = add nuw i8 %5, 1
  %10 = ptrtoint ptr %stale_count to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %inc11, ptr %stale_count, align 1
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then5.if.end_crit_edge
  tail call void @mptcp_pm_nl_subflow_chk_stale(ptr noundef %msk, ptr noundef %ssk) #5
  br label %if.end15

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %stale_count to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %stale_count, align 1
  tail call void @mptcp_subflow_set_active(ptr noundef %1) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_nl_subflow_chk_stale(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_subflow_set_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_data_reset(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add_addr_signaled = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 10
  %nr = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 16, i32 1
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %nr, align 4
  %nr6 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 17, i32 1
  %1 = ptrtoint ptr %nr6 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %nr6, align 1
  %work_pending = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %2 = ptrtoint ptr %add_addr_signaled to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %add_addr_signaled, align 2
  %3 = ptrtoint ptr %work_pending to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 0, ptr %work_pending, align 2
  %addr_signal = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %4 = ptrtoint ptr %addr_signal to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 0, ptr %addr_signal, align 4
  %accept_addr = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 7
  %5 = ptrtoint ptr %accept_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 0, ptr %accept_addr, align 1
  %accept_subflow = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 8
  %6 = ptrtoint ptr %accept_subflow to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 0, ptr %accept_subflow, align 4
  %remote_deny_join_id0 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 9
  %7 = ptrtoint ptr %remote_deny_join_id0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 0, ptr %remote_deny_join_id0, align 1
  %status = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %status, align 2
  %id_avail_bitmap = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  %9 = call ptr @memset(ptr %id_avail_bitmap, i32 255, i32 32)
  tail call void @mptcp_pm_nl_data_init(ptr noundef %msk) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_pm_nl_data_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_data_init(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @mptcp_pm_data_init.__key, i16 noundef signext 3) #5
  %anno_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 2
  %0 = ptrtoint ptr %anno_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %anno_list, ptr %anno_list, align 4
  %prev.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %anno_list, ptr %prev.i, align 4
  %add_addr_signaled.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 10
  %nr.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 16, i32 1
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %nr.i, align 4
  %nr6.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 17, i32 1
  %3 = ptrtoint ptr %nr6.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %nr6.i, align 1
  %work_pending.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 6
  %4 = ptrtoint ptr %add_addr_signaled.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %add_addr_signaled.i, align 2
  %5 = ptrtoint ptr %work_pending.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 0, ptr %work_pending.i, align 2
  %addr_signal.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 4
  %6 = ptrtoint ptr %addr_signal.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 0, ptr %addr_signal.i, align 4
  %accept_addr.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 7
  %7 = ptrtoint ptr %accept_addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 0, ptr %accept_addr.i, align 1
  %accept_subflow.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 8
  %8 = ptrtoint ptr %accept_subflow.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 0, ptr %accept_subflow.i, align 4
  %remote_deny_join_id0.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 9
  %9 = ptrtoint ptr %remote_deny_join_id0.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 0, ptr %remote_deny_join_id0.i, align 1
  %status.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 14
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %status.i, align 2
  %id_avail_bitmap.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 15
  %11 = call ptr @memset(ptr %id_avail_bitmap.i, i32 255, i32 32)
  tail call void @mptcp_pm_nl_data_init(ptr noundef %msk) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_pm_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mptcp_pm_nl_init() #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mptcp_pm_nl_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mptcp_schedule_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !74, !75}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mptcp/pm.c", i32 23, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mptcp_pm_announce_addr.__UNIQUE_ID_ddebug615, !1, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/mptcp/pm.c", i32 29, i32 3}
!9 = !{ptr @mptcp_pm_announce_addr._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @mptcp_pm_announce_addr._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/mptcp/pm.c", i32 48, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mptcp_pm_remove_addr.__UNIQUE_ID_ddebug618, !12, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mptcp/pm.c", i32 51, i32 3}
!18 = !{ptr @mptcp_pm_remove_addr._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mptcp_pm_remove_addr._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/mptcp/pm.c", i32 64, i32 2}
!22 = !{ptr @mptcp_pm_remove_subflow.__UNIQUE_ID_ddebug620, !21, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mptcp/pm.c", i32 78, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mptcp_pm_new_connection.__UNIQUE_ID_ddebug621, !24, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!27 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mptcp/pm.c", i32 92, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mptcp_pm_allow_new_subflow.__UNIQUE_ID_ddebug623, !29, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!32 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/mptcp/pm.c", i32 131, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mptcp_pm_fully_established.__UNIQUE_ID_ddebug629, !34, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!37 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/mptcp/pm.c", i32 155, i32 2}
!40 = !{ptr @mptcp_pm_connection_closed.__UNIQUE_ID_ddebug631, !39, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/mptcp/pm.c", i32 162, i32 2}
!43 = !{ptr @mptcp_pm_subflow_established.__UNIQUE_ID_ddebug632, !42, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/mptcp/pm.c", i32 204, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mptcp_pm_add_addr_received.__UNIQUE_ID_ddebug636, !45, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!48 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/mptcp/pm.c", i32 228, i32 2}
!51 = !{ptr @mptcp_pm_add_addr_echoed.__UNIQUE_ID_ddebug639, !50, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/mptcp/pm.c", i32 252, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mptcp_pm_rm_addr_received.__UNIQUE_ID_ddebug641, !53, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!56 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/mptcp/pm.c", i32 269, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mptcp_pm_mp_prio_received.__UNIQUE_ID_ddebug642, !58, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!61 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/mptcp/pm.c", i32 277, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mptcp_pm_mp_fail_received.__UNIQUE_ID_ddebug643, !63, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!66 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mptcp_pm_data_init.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../net/mptcp/pm.c", i32 403, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/mptcp/pm.c", i32 116, i32 2}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mptcp_pm_schedule_work.__UNIQUE_ID_ddebug628, !71, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!74 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/mptcp/mib.h", i32 66, i32 3}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148700092, i64 2148700097, i64 2148700110, i64 2148700154, i64 2148700188, i64 2148700209}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i8 0, i8 2}
