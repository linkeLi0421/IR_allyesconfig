; ModuleID = '/llk/IR_all_yes/net/mptcp/token_test.c_pt.bc'
source_filename = "../net/mptcp/token_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.131, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.131 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
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
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.mptcp_subflow_request_sock = type { %struct.tcp_request_sock, i8, i8, i8, i64, i64, i32, i32, i64, i32, i32, ptr, %struct.hlist_nulls_node }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.189 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { ptr, ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.194, %struct.anon.195, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.79, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.119, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.120, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.79 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.119 = type { ptr }
%union.anon.120 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.125 }
%union.anon.125 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.194 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.195 = type { i32, i32, i32, i32 }
%struct.mptcp_subflow_context = type { %struct.list_head, %union.anon.198, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i24, i32, i32, i64, i32, i32, [20 x i8], i8, i8, i8, i8, i32 }
%struct.mptcp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i32, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, ptr, %struct.rb_root, %struct.sk_buff_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.mptcp_pm_data, %struct.anon.197, i32, [16 x i8] }
%struct.mptcp_pm_data = type { %struct.mptcp_addr_info, %struct.mptcp_addr_info, %struct.list_head, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32], %struct.mptcp_rm_list, %struct.mptcp_rm_list }
%struct.mptcp_addr_info = type { i8, i16, i16, %union.anon.196 }
%union.anon.196 = type { %struct.in6_addr }
%struct.mptcp_rm_list = type { [8 x i8], i8 }
%struct.anon.197 = type { i32, i32, i64, i64 }

@__UNIQUE_ID_array618 = internal global [2 x ptr] [ptr @mptcp_token_suite, ptr null], align 4
@__UNIQUE_ID_suites619 = internal global ptr @__UNIQUE_ID_array618, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file620 = internal constant [49 x i8] c"mptcp_token_test.file=net/mptcp/mptcp_token_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license621 = internal constant [29 x i8] c"mptcp_token_test.license=GPL\00", section ".modinfo", align 1
@mptcp_token_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"mptcp-token\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @mptcp_token_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@mptcp_token_test_cases = internal global { [5 x %struct.kunit_case], [60 x i8] } { [5 x %struct.kunit_case] [%struct.kunit_case { ptr @mptcp_token_test_req_basic, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @mptcp_token_test_msk_basic, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @mptcp_token_test_accept, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @mptcp_token_test_destroyed, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptcp_token_test_req_basic\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptcp_token_test_msk_basic\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mptcp_token_test_accept\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptcp_token_test_destroyed\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/mptcp/token_test.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mptcp_token_new_request((struct request_sock *)req)\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(int)req->token\00", [16 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"null_msk\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mptcp_token_get_sock(&init_net, req->token)\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mptcp_token_new_connect((struct sock *)icsk)\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(int)ctx->token\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ctx->token\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msk->token\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msk\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mptcp_token_get_sock(&init_net, ctx->token)\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(int)refcount_read(&sk->__sk_common.skc_refcnt)\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"icsk\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctx\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mptcp_token_get_sock(&init_net, msk->token)\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"mptcp_token_suite\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 135, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"mptcp_token_test_cases\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 127, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 128, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 129, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 130, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 131, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 23, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 25, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 26, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 12, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 75, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 77, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 78, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 79, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 80, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 38, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 48, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [26 x i8] c"../net/mptcp/token_test.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 95, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_file620, ptr @__UNIQUE_ID_license621, ptr @__UNIQUE_ID_suites619, ptr @mptcp_token_suite, ptr @mptcp_token_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_token_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_token_test_cases to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptcp_token_test_req_basic(ptr noundef %test) #0 align 64 {
entry:
  %__assertion.i = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 320, i32 noundef 1052096) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i) #3
  %0 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion.i, align 4
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type.i, align 4
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %2 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %line.i, align 4
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %3 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.4, ptr %file.i, align 4
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %4 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message.i, align 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va.i, align 4
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %6 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format.i, align 4
  %text.i = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i, i32 0, i32 1
  %7 = ptrtoint ptr %text.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.12, ptr %text.i, align 4
  %value.i = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i, i32 0, i32 2
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %value.i, align 4
  %tobool.not.i.i = icmp ne ptr %call.i.i.i, null
  %cmp.i.i = icmp ule ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %lnot.i = and i1 %tobool.not.i.i, %cmp.i.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %lnot.i, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i) #3
  %pprev.i.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %call.i.i.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @init_net, ptr %skc_net.i.i, align 4
  %call1 = call i32 @mptcp_token_new_request(ptr noundef %call.i.i.i) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %11 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %12 = call ptr @memset(ptr %11, i32 255, i32 24)
  %13 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %15 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 24, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %16 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %17 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %20 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %21 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %22 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %23 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.7, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv4 = sext i32 %call1 to i64
  %24 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv4, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %token = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %call.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %token, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #3
  %27 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %28 = call ptr @memset(ptr %27, i32 255, i32 24)
  %29 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %30 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %31 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 25, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %32 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.4, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %33 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %35 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %36 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.8, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %37 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.6, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %38 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %39 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.9, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = sext i32 %26 to i64
  %40 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp31 = icmp ne i32 %26, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #3
  %41 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %token, align 8
  %call41 = call ptr @mptcp_token_get_sock(ptr noundef nonnull @init_net, i32 noundef %42) #3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion43) #3
  %43 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion43, align 4
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %44 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %45 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 26, ptr %line47, align 4
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %46 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.4, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %47 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message49, align 4
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %49 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_ptr_assert_format, ptr %format52, align 4
  %operation53 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion43, i32 0, i32 1
  %50 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.5, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion43, i32 0, i32 2
  %51 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.10, ptr %left_text54, align 4
  %left_value55 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion43, i32 0, i32 3
  %52 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %left_value55, align 4
  %right_text56 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion43, i32 0, i32 4
  %53 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.11, ptr %right_text56, align 4
  %right_value57 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion43, i32 0, i32 5
  %54 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call41, ptr %right_value57, align 4
  %cmp59 = icmp eq ptr %call41, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp59, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion43) #3
  call void @mptcp_token_destroy_request(ptr noundef %call.i.i.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptcp_token_test_msk_basic(ptr noundef %test) #0 align 64 {
entry:
  %__assertion.i238 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion.i225 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion.i = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion50 = alloca %struct.kunit_binary_assert, align 8
  %__assertion80 = alloca %struct.kunit_binary_assert, align 8
  %__assertion110 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion137 = alloca %struct.kunit_binary_assert, align 8
  %__assertion167 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 1584, i32 noundef 1052096) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i) #3
  %0 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion.i, align 4
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type.i, align 4
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %2 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 38, ptr %line.i, align 4
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %3 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.4, ptr %file.i, align 4
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %4 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message.i, align 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va.i, align 4
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %6 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format.i, align 4
  %text.i = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i, i32 0, i32 1
  %7 = ptrtoint ptr %text.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.21, ptr %text.i, align 4
  %value.i = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i, i32 0, i32 2
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %value.i, align 4
  %tobool.not.i.i = icmp ne ptr %call.i.i.i, null
  %cmp.i.i = icmp ule ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %lnot.i = and i1 %tobool.not.i.i, %cmp.i.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %lnot.i, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i) #3
  %call.i.i.i226 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 200, i32 noundef 1052096) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i225) #3
  %9 = ptrtoint ptr %__assertion.i225 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %__assertion.i225, align 4
  %type.i227 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i225, i32 0, i32 1
  %10 = ptrtoint ptr %type.i227 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type.i227, align 4
  %line.i228 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i225, i32 0, i32 2
  %11 = ptrtoint ptr %line.i228 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 48, ptr %line.i228, align 4
  %file.i229 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i225, i32 0, i32 3
  %12 = ptrtoint ptr %file.i229 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.4, ptr %file.i229, align 4
  %message.i230 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i225, i32 0, i32 4
  %13 = ptrtoint ptr %message.i230 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %message.i230, align 4
  %va.i231 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i225, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %va.i231 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %va.i231, align 4
  %format.i232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i225, i32 0, i32 5
  %15 = ptrtoint ptr %format.i232 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format.i232, align 4
  %text.i233 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i225, i32 0, i32 1
  %16 = ptrtoint ptr %text.i233 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.22, ptr %text.i233, align 4
  %value.i234 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i225, i32 0, i32 2
  %17 = ptrtoint ptr %value.i234 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i.i226, ptr %value.i234, align 4
  %tobool.not.i.i235 = icmp ne ptr %call.i.i.i226, null
  %cmp.i.i236 = icmp ule ptr %call.i.i.i226, inttoptr (i32 -4096 to ptr)
  %lnot.i237 = and i1 %tobool.not.i.i235, %cmp.i.i236
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i225, i1 noundef zeroext %lnot.i237, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i225) #3
  %call.i.i.i239 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 2072, i32 noundef 1052096) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i238) #3
  %18 = ptrtoint ptr %__assertion.i238 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %test, ptr %__assertion.i238, align 4
  %type.i240 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i238, i32 0, i32 1
  %19 = ptrtoint ptr %type.i240 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type.i240, align 4
  %line.i241 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i238, i32 0, i32 2
  %20 = ptrtoint ptr %line.i241 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 57, ptr %line.i241, align 4
  %file.i242 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i238, i32 0, i32 3
  %21 = ptrtoint ptr %file.i242 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.4, ptr %file.i242, align 4
  %message.i243 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i238, i32 0, i32 4
  %22 = ptrtoint ptr %message.i243 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %message.i243, align 4
  %va.i244 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i238, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %va.i244 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %va.i244, align 4
  %format.i245 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i238, i32 0, i32 5
  %24 = ptrtoint ptr %format.i245 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format.i245, align 4
  %text.i246 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i238, i32 0, i32 1
  %25 = ptrtoint ptr %text.i246 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.17, ptr %text.i246, align 4
  %value.i247 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i238, i32 0, i32 2
  %26 = ptrtoint ptr %value.i247 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i239, ptr %value.i247, align 4
  %tobool.not.i.i248 = icmp ne ptr %call.i.i.i239, null
  %cmp.i.i249 = icmp ule ptr %call.i.i.i239, inttoptr (i32 -4096 to ptr)
  %lnot.i250 = and i1 %tobool.not.i.i248, %cmp.i.i249
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i238, i1 noundef zeroext %lnot.i250, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i238) #3
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i239, i32 0, i32 19
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  %27 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %skc_refcnt.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i239, i32 0, i32 9
  %28 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @init_net, ptr %skc_net.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !59
  %icsk_ulp_data23 = getelementptr inbounds %struct.inet_connection_sock, ptr %call.i.i.i, i32 0, i32 13
  %29 = ptrtoint ptr %icsk_ulp_data23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call.i.i.i226, ptr %icsk_ulp_data23, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call.i.i.i226, i32 0, i32 6
  %30 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i.i239, ptr %conn, align 4
  %call35 = call i32 @mptcp_token_new_connect(ptr noundef %call.i.i.i) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %31 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %32 = call ptr @memset(ptr %31, i32 255, i32 24)
  %33 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %34 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %35 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 76, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %36 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %37 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %39 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %40 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %41 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %42 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %43 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.13, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv38 = sext i32 %call35 to i64
  %44 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv38, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp40 = icmp eq i32 %call35, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp40, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %token = getelementptr inbounds %struct.mptcp_subflow_context, ptr %call.i.i.i226, i32 0, i32 1, i32 0, i32 6
  %45 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %token, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion50) #3
  %47 = getelementptr inbounds i8, ptr %__assertion50, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion50, align 8
  %type53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 1
  %50 = ptrtoint ptr %type53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type53, align 4
  %line54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 2
  %51 = ptrtoint ptr %line54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 77, ptr %line54, align 8
  %file55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 3
  %52 = ptrtoint ptr %file55 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.4, ptr %file55, align 4
  %message56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 4
  %53 = ptrtoint ptr %message56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message56, align 8
  %va58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va58 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va58, align 4
  %format59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 5
  %55 = ptrtoint ptr %format59 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format59, align 8
  %operation60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 1
  %56 = ptrtoint ptr %operation60 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.8, ptr %operation60, align 4
  %left_text61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 2
  %57 = ptrtoint ptr %left_text61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.6, ptr %left_text61, align 8
  %left_value62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 3
  %58 = ptrtoint ptr %left_value62 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %left_value62, align 8
  %right_text64 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 4
  %59 = ptrtoint ptr %right_text64 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.14, ptr %right_text64, align 8
  %right_value65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 5
  %conv66 = sext i32 %46 to i64
  %60 = ptrtoint ptr %right_value65 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv66, ptr %right_value65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp68 = icmp ne i32 %46, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion50, i1 noundef zeroext %cmp68, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion50) #3
  %61 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %token, align 4
  %token78 = getelementptr inbounds %struct.mptcp_sock, ptr %call.i.i.i239, i32 0, i32 16
  %63 = ptrtoint ptr %token78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %token78, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion80) #3
  %65 = getelementptr inbounds i8, ptr %__assertion80, i32 32
  %66 = call ptr @memset(ptr %65, i32 255, i32 24)
  %67 = ptrtoint ptr %__assertion80 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %test, ptr %__assertion80, align 8
  %type83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80, i32 0, i32 1
  %68 = ptrtoint ptr %type83 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %type83, align 4
  %line84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80, i32 0, i32 2
  %69 = ptrtoint ptr %line84 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 78, ptr %line84, align 8
  %file85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80, i32 0, i32 3
  %70 = ptrtoint ptr %file85 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.4, ptr %file85, align 4
  %message86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80, i32 0, i32 4
  %71 = ptrtoint ptr %message86 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %message86, align 8
  %va88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %va88 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %va88, align 4
  %format89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80, i32 0, i32 5
  %73 = ptrtoint ptr %format89 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @kunit_binary_assert_format, ptr %format89, align 8
  %operation90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion80, i32 0, i32 1
  %74 = ptrtoint ptr %operation90 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.5, ptr %operation90, align 4
  %left_text91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion80, i32 0, i32 2
  %75 = ptrtoint ptr %left_text91 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.15, ptr %left_text91, align 8
  %left_value92 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion80, i32 0, i32 3
  %conv93 = zext i32 %62 to i64
  %76 = ptrtoint ptr %left_value92 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv93, ptr %left_value92, align 8
  %right_text94 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion80, i32 0, i32 4
  %77 = ptrtoint ptr %right_text94 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.16, ptr %right_text94, align 8
  %right_value95 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion80, i32 0, i32 5
  %conv96 = zext i32 %64 to i64
  %78 = ptrtoint ptr %right_value95 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv96, ptr %right_value95, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp98 = icmp eq i32 %62, %64
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion80, i1 noundef zeroext %cmp98, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion80) #3
  %79 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %token, align 4
  %call108 = call ptr @mptcp_token_get_sock(ptr noundef nonnull @init_net, i32 noundef %80) #3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion110) #3
  %81 = ptrtoint ptr %__assertion110 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %test, ptr %__assertion110, align 4
  %type113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion110, i32 0, i32 1
  %82 = ptrtoint ptr %type113 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %type113, align 4
  %line114 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion110, i32 0, i32 2
  %83 = ptrtoint ptr %line114 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 79, ptr %line114, align 4
  %file115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion110, i32 0, i32 3
  %84 = ptrtoint ptr %file115 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.4, ptr %file115, align 4
  %message116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion110, i32 0, i32 4
  %85 = ptrtoint ptr %message116 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %message116, align 4
  %va118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion110, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %va118 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %va118, align 4
  %format119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion110, i32 0, i32 5
  %87 = ptrtoint ptr %format119 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @kunit_binary_ptr_assert_format, ptr %format119, align 4
  %operation120 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion110, i32 0, i32 1
  %88 = ptrtoint ptr %operation120 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.5, ptr %operation120, align 4
  %left_text121 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion110, i32 0, i32 2
  %89 = ptrtoint ptr %left_text121 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.17, ptr %left_text121, align 4
  %left_value122 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion110, i32 0, i32 3
  %90 = ptrtoint ptr %left_value122 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i.i.i239, ptr %left_value122, align 4
  %right_text123 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion110, i32 0, i32 4
  %91 = ptrtoint ptr %right_text123 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.18, ptr %right_text123, align 4
  %right_value124 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion110, i32 0, i32 5
  %92 = ptrtoint ptr %right_value124 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call108, ptr %right_value124, align 4
  %cmp126 = icmp eq ptr %call.i.i.i239, %call108
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion110, i1 noundef zeroext %cmp126, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion110) #3
  %call.i.i.i251 = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  %93 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion137) #3
  %95 = getelementptr inbounds i8, ptr %__assertion137, i32 32
  %96 = call ptr @memset(ptr %95, i32 255, i32 24)
  %97 = ptrtoint ptr %__assertion137 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %test, ptr %__assertion137, align 8
  %type140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 1
  %98 = ptrtoint ptr %type140 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %type140, align 4
  %line141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 2
  %99 = ptrtoint ptr %line141 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 80, ptr %line141, align 8
  %file142 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 3
  %100 = ptrtoint ptr %file142 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.4, ptr %file142, align 4
  %message143 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 4
  %101 = ptrtoint ptr %message143 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %message143, align 8
  %va145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %va145 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %va145, align 4
  %format146 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 5
  %103 = ptrtoint ptr %format146 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @kunit_binary_assert_format, ptr %format146, align 8
  %operation147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 1
  %104 = ptrtoint ptr %operation147 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.5, ptr %operation147, align 4
  %left_text148 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 2
  %105 = ptrtoint ptr %left_text148 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.19, ptr %left_text148, align 8
  %left_value149 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 3
  %106 = ptrtoint ptr %left_value149 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 2, ptr %left_value149, align 8
  %right_text151 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 4
  %107 = ptrtoint ptr %right_text151 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.20, ptr %right_text151, align 8
  %right_value152 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 5
  %conv153 = sext i32 %94 to i64
  %108 = ptrtoint ptr %right_value152 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv153, ptr %right_value152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp155 = icmp eq i32 %94, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion137, i1 noundef zeroext %cmp155, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion137) #3
  call void @mptcp_token_destroy(ptr noundef %call.i.i.i239) #3
  %109 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %token, align 4
  %call165 = call ptr @mptcp_token_get_sock(ptr noundef nonnull @init_net, i32 noundef %110) #3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion167) #3
  %111 = ptrtoint ptr %__assertion167 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %test, ptr %__assertion167, align 4
  %type170 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 1
  %112 = ptrtoint ptr %type170 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %type170, align 4
  %line171 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 2
  %113 = ptrtoint ptr %line171 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 83, ptr %line171, align 4
  %file172 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 3
  %114 = ptrtoint ptr %file172 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.4, ptr %file172, align 4
  %message173 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 4
  %115 = ptrtoint ptr %message173 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %message173, align 4
  %va175 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %va175 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %va175, align 4
  %format176 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 5
  %117 = ptrtoint ptr %format176 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @kunit_binary_ptr_assert_format, ptr %format176, align 4
  %operation177 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion167, i32 0, i32 1
  %118 = ptrtoint ptr %operation177 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.5, ptr %operation177, align 4
  %left_text178 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion167, i32 0, i32 2
  %119 = ptrtoint ptr %left_text178 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.10, ptr %left_text178, align 4
  %left_value179 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion167, i32 0, i32 3
  %120 = ptrtoint ptr %left_value179 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %left_value179, align 4
  %right_text180 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion167, i32 0, i32 4
  %121 = ptrtoint ptr %right_text180 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.18, ptr %right_text180, align 4
  %right_value181 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion167, i32 0, i32 5
  %122 = ptrtoint ptr %right_value181 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call165, ptr %right_value181, align 4
  %cmp183 = icmp eq ptr %call165, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion167, i1 noundef zeroext %cmp183, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion167) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptcp_token_test_accept(ptr noundef %test) #0 align 64 {
entry:
  %__assertion.i89 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion.i = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion17 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion45 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 320, i32 noundef 1052096) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i) #3
  %0 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion.i, align 4
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type.i, align 4
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %2 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %line.i, align 4
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %3 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.4, ptr %file.i, align 4
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %4 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message.i, align 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va.i, align 4
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %6 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format.i, align 4
  %text.i = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i, i32 0, i32 1
  %7 = ptrtoint ptr %text.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.12, ptr %text.i, align 4
  %value.i = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i, i32 0, i32 2
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %value.i, align 4
  %tobool.not.i.i = icmp ne ptr %call.i.i.i, null
  %cmp.i.i = icmp ule ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %lnot.i = and i1 %tobool.not.i.i, %cmp.i.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %lnot.i, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i) #3
  %pprev.i.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %call.i.i.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @init_net, ptr %skc_net.i.i, align 4
  %call.i.i.i90 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 2072, i32 noundef 1052096) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i89) #3
  %11 = ptrtoint ptr %__assertion.i89 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion.i89, align 4
  %type.i91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i89, i32 0, i32 1
  %12 = ptrtoint ptr %type.i91 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type.i91, align 4
  %line.i92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i89, i32 0, i32 2
  %13 = ptrtoint ptr %line.i92 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 57, ptr %line.i92, align 4
  %file.i93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i89, i32 0, i32 3
  %14 = ptrtoint ptr %file.i93 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.4, ptr %file.i93, align 4
  %message.i94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i89, i32 0, i32 4
  %15 = ptrtoint ptr %message.i94 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message.i94, align 4
  %va.i95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i89, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va.i95 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va.i95, align 4
  %format.i96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i89, i32 0, i32 5
  %17 = ptrtoint ptr %format.i96 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format.i96, align 4
  %text.i97 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i89, i32 0, i32 1
  %18 = ptrtoint ptr %text.i97 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.17, ptr %text.i97, align 4
  %value.i98 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i89, i32 0, i32 2
  %19 = ptrtoint ptr %value.i98 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i90, ptr %value.i98, align 4
  %tobool.not.i.i99 = icmp ne ptr %call.i.i.i90, null
  %cmp.i.i100 = icmp ule ptr %call.i.i.i90, inttoptr (i32 -4096 to ptr)
  %lnot.i101 = and i1 %tobool.not.i.i99, %cmp.i.i100
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i89, i1 noundef zeroext %lnot.i101, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i89) #3
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i90, i32 0, i32 19
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  %20 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %skc_refcnt.i, align 4
  %skc_net.i.i102 = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i90, i32 0, i32 9
  %21 = ptrtoint ptr %skc_net.i.i102 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @init_net, ptr %skc_net.i.i102, align 4
  %call2 = call i32 @mptcp_token_new_request(ptr noundef %call.i.i.i) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %22 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %23 = call ptr @memset(ptr %22, i32 255, i32 24)
  %24 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %26 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 92, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %27 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %28 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %30 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %31 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %32 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %33 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %34 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.7, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = sext i32 %call2 to i64
  %35 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %token = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %call.i.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %token, align 8
  %token10 = getelementptr inbounds %struct.mptcp_sock, ptr %call.i.i.i90, i32 0, i32 16
  %38 = ptrtoint ptr %token10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %token10, align 4
  call void @mptcp_token_accept(ptr noundef %call.i.i.i, ptr noundef %call.i.i.i90) #3
  %39 = ptrtoint ptr %token10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %token10, align 4
  %call15 = call ptr @mptcp_token_get_sock(ptr noundef nonnull @init_net, i32 noundef %40) #3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion17) #3
  %41 = ptrtoint ptr %__assertion17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion17, align 4
  %type20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 1
  %42 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %type20, align 4
  %line21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 2
  %43 = ptrtoint ptr %line21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 95, ptr %line21, align 4
  %file22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 3
  %44 = ptrtoint ptr %file22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.4, ptr %file22, align 4
  %message23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4
  %45 = ptrtoint ptr %message23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %message23, align 4
  %va25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %va25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %va25, align 4
  %format26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 5
  %47 = ptrtoint ptr %format26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_binary_ptr_assert_format, ptr %format26, align 4
  %operation27 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 1
  %48 = ptrtoint ptr %operation27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.5, ptr %operation27, align 4
  %left_text28 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 2
  %49 = ptrtoint ptr %left_text28 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.17, ptr %left_text28, align 4
  %left_value29 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 3
  %50 = ptrtoint ptr %left_value29 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i.i.i90, ptr %left_value29, align 4
  %right_text30 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 4
  %51 = ptrtoint ptr %right_text30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.23, ptr %right_text30, align 4
  %right_value31 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 5
  %52 = ptrtoint ptr %right_value31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call15, ptr %right_value31, align 4
  %cmp33 = icmp eq ptr %call.i.i.i90, %call15
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion17, i1 noundef zeroext %cmp33, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion17) #3
  call void @mptcp_token_destroy_request(ptr noundef %call.i.i.i) #3
  %53 = ptrtoint ptr %token10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %token10, align 4
  %call43 = call ptr @mptcp_token_get_sock(ptr noundef nonnull @init_net, i32 noundef %54) #3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion45) #3
  %55 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion45, align 4
  %type48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %56 = ptrtoint ptr %type48 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type48, align 4
  %line49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %57 = ptrtoint ptr %line49 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 99, ptr %line49, align 4
  %file50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %58 = ptrtoint ptr %file50 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.4, ptr %file50, align 4
  %message51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %59 = ptrtoint ptr %message51 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %message51, align 4
  %va53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %va53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %va53, align 4
  %format54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %61 = ptrtoint ptr %format54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_binary_ptr_assert_format, ptr %format54, align 4
  %operation55 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion45, i32 0, i32 1
  %62 = ptrtoint ptr %operation55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.5, ptr %operation55, align 4
  %left_text56 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion45, i32 0, i32 2
  %63 = ptrtoint ptr %left_text56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.17, ptr %left_text56, align 4
  %left_value57 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion45, i32 0, i32 3
  %64 = ptrtoint ptr %left_value57 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i.i90, ptr %left_value57, align 4
  %right_text58 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion45, i32 0, i32 4
  %65 = ptrtoint ptr %right_text58 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.23, ptr %right_text58, align 4
  %right_value59 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion45, i32 0, i32 5
  %66 = ptrtoint ptr %right_value59 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call43, ptr %right_value59, align 4
  %cmp61 = icmp eq ptr %call.i.i.i90, %call43
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext %cmp61, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion45) #3
  call void @mptcp_token_destroy(ptr noundef %call.i.i.i90) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptcp_token_test_destroyed(ptr noundef %test) #0 align 64 {
entry:
  %__assertion.i54 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion.i = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion17 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 320, i32 noundef 1052096) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i) #3
  %0 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion.i, align 4
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type.i, align 4
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %2 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %line.i, align 4
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %3 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.4, ptr %file.i, align 4
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %4 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message.i, align 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va.i, align 4
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %6 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format.i, align 4
  %text.i = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i, i32 0, i32 1
  %7 = ptrtoint ptr %text.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.12, ptr %text.i, align 4
  %value.i = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i, i32 0, i32 2
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %value.i, align 4
  %tobool.not.i.i = icmp ne ptr %call.i.i.i, null
  %cmp.i.i = icmp ule ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %lnot.i = and i1 %tobool.not.i.i, %cmp.i.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %lnot.i, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i) #3
  %pprev.i.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %call.i.i.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @init_net, ptr %skc_net.i.i, align 4
  %call.i.i.i55 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 2072, i32 noundef 1052096) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i54) #3
  %11 = ptrtoint ptr %__assertion.i54 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion.i54, align 4
  %type.i56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i54, i32 0, i32 1
  %12 = ptrtoint ptr %type.i56 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type.i56, align 4
  %line.i57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i54, i32 0, i32 2
  %13 = ptrtoint ptr %line.i57 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 57, ptr %line.i57, align 4
  %file.i58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i54, i32 0, i32 3
  %14 = ptrtoint ptr %file.i58 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.4, ptr %file.i58, align 4
  %message.i59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i54, i32 0, i32 4
  %15 = ptrtoint ptr %message.i59 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message.i59, align 4
  %va.i60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i54, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va.i60 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va.i60, align 4
  %format.i61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i54, i32 0, i32 5
  %17 = ptrtoint ptr %format.i61 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format.i61, align 4
  %text.i62 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i54, i32 0, i32 1
  %18 = ptrtoint ptr %text.i62 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.17, ptr %text.i62, align 4
  %value.i63 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion.i54, i32 0, i32 2
  %19 = ptrtoint ptr %value.i63 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i55, ptr %value.i63, align 4
  %tobool.not.i.i64 = icmp ne ptr %call.i.i.i55, null
  %cmp.i.i65 = icmp ule ptr %call.i.i.i55, inttoptr (i32 -4096 to ptr)
  %lnot.i66 = and i1 %tobool.not.i.i64, %cmp.i.i65
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i54, i1 noundef zeroext %lnot.i66, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i54) #3
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i55, i32 0, i32 19
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  %20 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %skc_refcnt.i, align 4
  %skc_net.i.i67 = getelementptr inbounds %struct.sock_common, ptr %call.i.i.i55, i32 0, i32 9
  %21 = ptrtoint ptr %skc_net.i.i67 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @init_net, ptr %skc_net.i.i67, align 4
  %call2 = call i32 @mptcp_token_new_request(ptr noundef %call.i.i.i) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %22 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %23 = call ptr @memset(ptr %22, i32 255, i32 24)
  %24 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %26 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 115, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %27 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %28 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %30 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %31 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %32 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %33 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %34 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.7, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = sext i32 %call2 to i64
  %35 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %token = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %call.i.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %token, align 8
  %token10 = getelementptr inbounds %struct.mptcp_sock, ptr %call.i.i.i55, i32 0, i32 16
  %38 = ptrtoint ptr %token10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %token10, align 4
  call void @mptcp_token_accept(ptr noundef %call.i.i.i, ptr noundef %call.i.i.i55) #3
  %call.i.i.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  %39 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %skc_refcnt.i, align 4
  %40 = ptrtoint ptr %token10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %token10, align 4
  %call15 = call ptr @mptcp_token_get_sock(ptr noundef nonnull @init_net, i32 noundef %41) #3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion17) #3
  %42 = ptrtoint ptr %__assertion17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %test, ptr %__assertion17, align 4
  %type20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 1
  %43 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %type20, align 4
  %line21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 2
  %44 = ptrtoint ptr %line21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 121, ptr %line21, align 4
  %file22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 3
  %45 = ptrtoint ptr %file22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.4, ptr %file22, align 4
  %message23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4
  %46 = ptrtoint ptr %message23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %message23, align 4
  %va25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %va25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %va25, align 4
  %format26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 5
  %48 = ptrtoint ptr %format26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @kunit_binary_ptr_assert_format, ptr %format26, align 4
  %operation27 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 1
  %49 = ptrtoint ptr %operation27 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.5, ptr %operation27, align 4
  %left_text28 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 2
  %50 = ptrtoint ptr %left_text28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.10, ptr %left_text28, align 4
  %left_value29 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 3
  %51 = ptrtoint ptr %left_value29 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %left_value29, align 4
  %right_text30 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 4
  %52 = ptrtoint ptr %right_text30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.23, ptr %right_text30, align 4
  %right_value31 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion17, i32 0, i32 5
  %53 = ptrtoint ptr %right_value31 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call15, ptr %right_value31, align 4
  %cmp33 = icmp eq ptr %call15, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion17, i1 noundef zeroext %cmp33, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion17) #3
  call void @mptcp_token_destroy(ptr noundef %call.i.i.i55) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_token_new_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptcp_token_get_sock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_token_destroy_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_ptr_not_err_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_token_new_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_token_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_token_accept(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !38, !40, !41, !43, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__UNIQUE_ID_suites619, !1, !"__UNIQUE_ID_suites619", i1 false, i1 false}
!1 = !{!"../net/mptcp/token_test.c", i32 140, i32 1}
!2 = !{ptr @__UNIQUE_ID_file620, !3, !"__UNIQUE_ID_file620", i1 false, i1 false}
!3 = !{!"../net/mptcp/token_test.c", i32 142, i32 1}
!4 = !{ptr @__UNIQUE_ID_license621, !3, !"__UNIQUE_ID_license621", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array618, !1, !"__UNIQUE_ID_array618", i1 false, i1 false}
!6 = !{ptr @mptcp_token_suite, !7, !"mptcp_token_suite", i1 false, i1 false}
!7 = !{!"../net/mptcp/token_test.c", i32 135, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mptcp/token_test.c", i32 128, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mptcp/token_test.c", i32 129, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mptcp/token_test.c", i32 130, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/mptcp/token_test.c", i32 131, i32 2}
!16 = !{ptr @mptcp_token_test_cases, !17, !"mptcp_token_test_cases", i1 false, i1 false}
!17 = !{!"../net/mptcp/token_test.c", i32 127, i32 26}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/mptcp/token_test.c", i32 23, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mptcp/token_test.c", i32 25, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mptcp/token_test.c", i32 26, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/mptcp/token_test.c", i32 12, i32 2}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/mptcp/token_test.c", i32 75, i32 2}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/mptcp/token_test.c", i32 77, i32 2}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/mptcp/token_test.c", i32 78, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/mptcp/token_test.c", i32 79, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/mptcp/token_test.c", i32 80, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/mptcp/token_test.c", i32 38, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/mptcp/token_test.c", i32 48, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/mptcp/token_test.c", i32 95, i32 2}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2158943708}
