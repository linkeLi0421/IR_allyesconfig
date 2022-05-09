; ModuleID = '/llk/IR_all_yes/net/mctp/route.c_pt.bc'
source_filename = "../net/mctp/route.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.95 }
%struct.atomic_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nla_policy = type { i8, i8, i16, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
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
%struct.mctp_frag_test = type { i32, i32, i32 }
%struct.mctp_rx_input_test = type { %struct.mctp_hdr, i8 }
%struct.mctp_hdr = type { i8, i8, i8, i8 }
%struct.mctp_route_input_sk_test = type { %struct.mctp_hdr, i8, i8 }
%struct.mctp_route_input_sk_reasm_test = type { ptr, [4 x %struct.mctp_hdr], i32, i32 }
%struct.mctp_sk_key = type { i8, i8, i8, ptr, %struct.hlist_node, %struct.hlist_node, %struct.spinlock, %struct.refcount_struct, ptr, ptr, i8, i8, i8, i32, i32, ptr }
%struct.mctp_dev = type { ptr, %struct.refcount_struct, i32, ptr, ptr, i32, %struct.spinlock, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mctp_route = type { i8, i8, ptr, i32, i8, ptr, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.mctp_sock = type { %struct.sock, i32, i8, i8, i8, %struct.hlist_head, %struct.timer_list }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.125, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.125 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.139 = type { ptr }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.rtmsg = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.nlattr = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.mctp_test_route = type { %struct.mctp_route, %struct.sk_buff_head }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.mctp_test_dev = type { ptr, ptr }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_mctp = type { i16, i16, i32, %struct.mctp_addr, i8, i8, i8 }
%struct.mctp_addr = type { i8 }

@mctp_route_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/mctp/route.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@mctp_route_remove_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mctp_packet_type = internal global { %struct.packet_type, [56 x i8] } { %struct.packet_type { i16 250, i8 0, ptr null, ptr null, ptr @mctp_pkttype_receive, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@mctp_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @mctp_routes_net_init, ptr null, ptr @mctp_routes_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_array486 = internal global [2 x ptr] [ptr @mctp_test_suite, ptr null], align 4
@__UNIQUE_ID_suites487 = internal global ptr @__UNIQUE_ID_array486, section ".kunit_test_suites", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/mctp.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mctp_key_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&key->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_mctp_key_acquire = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/mctp.h\00", [36 x i8] zeroinitializer }, align 32
@trace_mctp_key_acquire.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mctp_route_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mctp_lookup_bind.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_mctp_key_release = external dso_local global %struct.tracepoint, align 4
@trace_mctp_key_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mctp_rt_compare_exact.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mctp_route_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mctp_route_lookup_null.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mctp_dump_rtinfo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@mctp_newroute.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtm_type must be RTN_UNICAST\00", [35 x i8] zeroinitializer }, align 32
@mctp_route_nlparse.__msg = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"incorrect format\00", [47 x i8] zeroinitializer }, align 32
@mctp_route_nlparse.__msg.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dst EID missing\00", [16 x i8] zeroinitializer }, align 32
@mctp_route_nlparse.__msg.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ifindex missing\00", [16 x i8] zeroinitializer }, align 32
@mctp_route_nlparse.__msg.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"route family must be AF_MCTP\00", [35 x i8] zeroinitializer }, align 32
@mctp_route_nlparse.__msg.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad ifindex\00", [20 x i8] zeroinitializer }, align 32
@mctp_route_nlparse.__msg.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no routes to loopback\00", [42 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@rta_mctp_policy = internal constant { <{ [9 x %struct.nla_policy], [22 x %struct.nla_policy] }>, [40 x i8] } { <{ [9 x %struct.nla_policy], [22 x %struct.nla_policy] }> <{ [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.63 zeroinitializer }], [22 x %struct.nla_policy] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@rta_metrics_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [15 x %struct.nla_policy] }>, [48 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [15 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, [15 x %struct.nla_policy] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@mctp_routes_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ns->bind_lock\00", [17 x i8] zeroinitializer }, align 32
@mctp_routes_net_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ns->keys_lock\00", [17 x i8] zeroinitializer }, align 32
@mctp_routes_net_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mctp_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"mctp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @mctp_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@mctp_test_cases = internal global { [5 x %struct.kunit_case], [60 x i8] } { [5 x %struct.kunit_case] [%struct.kunit_case { ptr @mctp_test_fragment, ptr @.str.22, ptr @mctp_frag_gen_params, i32 0, ptr null }, %struct.kunit_case { ptr @mctp_test_rx_input, ptr @.str.23, ptr @mctp_rx_input_gen_params, i32 0, ptr null }, %struct.kunit_case { ptr @mctp_test_route_input_sk, ptr @.str.24, ptr @mctp_route_input_sk_gen_params, i32 0, ptr null }, %struct.kunit_case { ptr @mctp_test_route_input_sk_reasm, ptr @.str.25, ptr @mctp_route_input_sk_reasm_gen_params, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mctp_test_fragment\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mctp_test_rx_input\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mctp_test_route_input_sk\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mctp_test_route_input_sk_reasm\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mctp/test/route-test.c\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"skb\00", [28 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rt\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rc\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"params->n_frags\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdr2->ver\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdr.ver\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdr2->src\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdr.src\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdr2->dest\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdr.dest\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hdr2->flags_seq_tag & tag_mask\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hdr.flags_seq_tag & tag_mask\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"!!(hdr2->flags_seq_tag & ((((1UL))) << (7)))\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"first\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"!!(hdr2->flags_seq_tag & ((((1UL))) << (6)))\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"last\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"seq2\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"seq & ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (1)) * 0l)) : (int *)8))), (0) > (1), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (0)) + 1) & (~(((0UL))) >> (32 - 1 - (1)))))\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"skb2->len\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtu\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"refs\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"route ref imbalance\00", [44 x i8] zeroinitializer }, align 32
@mctp_frag_tests = internal constant { [8 x %struct.mctp_frag_test], [32 x i8] } { [8 x %struct.mctp_frag_test] [%struct.mctp_frag_test { i32 68, i32 63, i32 1 }, %struct.mctp_frag_test { i32 68, i32 64, i32 1 }, %struct.mctp_frag_test { i32 68, i32 65, i32 2 }, %struct.mctp_frag_test { i32 68, i32 66, i32 2 }, %struct.mctp_frag_test { i32 68, i32 127, i32 2 }, %struct.mctp_frag_test { i32 68, i32 128, i32 2 }, %struct.mctp_frag_test { i32 68, i32 129, i32 3 }, %struct.mctp_frag_test { i32 68, i32 130, i32 3 }], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtu %d len %d -> %d frags\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"!!rt->pkts.qlen\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"params->input\00", [18 x i8] zeroinitializer }, align 32
@mctp_rx_input_tests = internal constant { [3 x %struct.mctp_rx_input_test], [17 x i8] } { [3 x %struct.mctp_rx_input_test] [%struct.mctp_rx_input_test { %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 0 }, i8 1 }, %struct.mctp_rx_input_test { %struct.mctp_hdr { i8 1, i8 9, i8 10, i8 0 }, i8 0 }, %struct.mctp_rx_input_test { %struct.mctp_hdr { i8 2, i8 8, i8 10, i8 0 }, i8 0 }], [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"{%x,%x,%x,%x}\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"skb2\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"skb->len\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"((void *)0)\00", [20 x i8] zeroinitializer }, align 32
@mctp_route_input_sk_tests = internal constant { [6 x %struct.mctp_route_input_sk_test], [60 x i8] } { [6 x %struct.mctp_route_input_sk_test] [%struct.mctp_route_input_sk_test { %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -56 }, i8 0, i8 1 }, %struct.mctp_route_input_sk_test { %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -56 }, i8 1, i8 0 }, %struct.mctp_route_input_sk_test { %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -64 }, i8 0, i8 0 }, %struct.mctp_route_input_sk_test { %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 72 }, i8 0, i8 0 }, %struct.mctp_route_input_sk_test { %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 8 }, i8 0, i8 0 }, %struct.mctp_route_input_sk_test { %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 0 }, i8 0, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"{%x,%x,%x,%x} type %d\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"params->rx_len\00", [17 x i8] zeroinitializer }, align 32
@mctp_route_input_sk_reasm_tests = internal constant { [8 x %struct.mctp_route_input_sk_reasm_test], [32 x i8] } { [8 x %struct.mctp_route_input_sk_reasm_test] [%struct.mctp_route_input_sk_reasm_test { ptr @.str.66, [4 x %struct.mctp_hdr] [%struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -56 }, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer], i32 1, i32 1 }, %struct.mctp_route_input_sk_reasm_test { ptr @.str.67, [4 x %struct.mctp_hdr] [%struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -40 }, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer], i32 1, i32 1 }, %struct.mctp_route_input_sk_reasm_test { ptr @.str.68, [4 x %struct.mctp_hdr] [%struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -120 }, %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 88 }, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer], i32 2, i32 2 }, %struct.mctp_route_input_sk_reasm_test { ptr @.str.69, [4 x %struct.mctp_hdr] [%struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -104 }, %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 104 }, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer], i32 2, i32 2 }, %struct.mctp_route_input_sk_reasm_test { ptr @.str.70, [4 x %struct.mctp_hdr] [%struct.mctp_hdr { i8 1, i8 8, i8 10, i8 88 }, %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -120 }, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer], i32 2, i32 0 }, %struct.mctp_route_input_sk_reasm_test { ptr @.str.71, [4 x %struct.mctp_hdr] [%struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -120 }, %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 24 }, %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 104 }, %struct.mctp_hdr zeroinitializer], i32 3, i32 3 }, %struct.mctp_route_input_sk_reasm_test { ptr @.str.72, [4 x %struct.mctp_hdr] [%struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -120 }, %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 104 }, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer], i32 2, i32 0 }, %struct.mctp_route_input_sk_reasm_test { ptr @.str.73, [4 x %struct.mctp_hdr] [%struct.mctp_hdr { i8 1, i8 8, i8 10, i8 -72 }, %struct.mctp_hdr { i8 1, i8 8, i8 10, i8 72 }, %struct.mctp_hdr zeroinitializer, %struct.mctp_hdr zeroinitializer], i32 2, i32 2 }], [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"single packet\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"single packet, offset seq\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"start & end packets\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"start & end packets, offset seq\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"start & end packets, out of order\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"start, middle & end packets\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"missing seq\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"seq wrap\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 678, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 998, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"mctp_packet_type\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1068, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"mctp_net_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1311, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"../include/net/mctp.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 194, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 695, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 723, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 149, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"../include/trace/events/mctp.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 26, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 108, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 991, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1157, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1097, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1102, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1108, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1115, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1121, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1129, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"rta_mctp_policy\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1075, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1208, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"rta_metrics_policy\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1136, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1294, i32 2 }
@___asan_gen_.160 = private constant [20 x i8] c"../net/mctp/route.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1296, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"mctp_test_suite\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 534, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"mctp_test_cases\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 525, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 526, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 527, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 528, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 529, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 148, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 151, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 154, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 158, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 178, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 179, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 180, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 181, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 184, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 186, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 196, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 200, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 202, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1984, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 77, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [16 x i8] c"mctp_frag_tests\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 210, i32 36 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 223, i32 16 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 244, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 256, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c"mctp_rx_input_tests\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 266, i32 40 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 275, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 353, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 356, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 357, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 362, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 364, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [26 x i8] c"mctp_route_input_sk_tests\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 374, i32 46 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 386, i32 16 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 429, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [32 x i8] c"mctp_route_input_sk_reasm_tests\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 441, i32 52 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 443, i32 11 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 451, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 459, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 468, i32 11 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 477, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 486, i32 11 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 496, i32 11 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [30 x i8] c"../net/mctp/test/route-test.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 505, i32 11 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_suites487, ptr @mctp_routes_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mctp_packet_type, ptr @mctp_net_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mctp_key_alloc.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mctp_newroute.__msg, ptr @mctp_route_nlparse.__msg, ptr @mctp_route_nlparse.__msg.12, ptr @mctp_route_nlparse.__msg.13, ptr @mctp_route_nlparse.__msg.14, ptr @mctp_route_nlparse.__msg.15, ptr @mctp_route_nlparse.__msg.16, ptr @rta_mctp_policy, ptr @nla_parse_nested.__msg, ptr @rta_metrics_policy, ptr @mctp_routes_net_init.__key, ptr @.str.19, ptr @mctp_routes_net_init.__key.20, ptr @.str.21, ptr @mctp_test_suite, ptr @mctp_test_cases, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @skb_queue_head_init.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @mctp_frag_tests, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @mctp_rx_input_tests, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @mctp_route_input_sk_tests, ptr @.str.64, ptr @.str.65, ptr @mctp_route_input_sk_reasm_tests, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_packet_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_key_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_newroute.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_route_nlparse.__msg to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_route_nlparse.__msg.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_route_nlparse.__msg.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_route_nlparse.__msg.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_route_nlparse.__msg.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_route_nlparse.__msg.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rta_mctp_policy to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rta_metrics_policy to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_routes_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_routes_net_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_test_cases to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_frag_tests to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_rx_input_tests to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_route_input_sk_tests to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_route_input_sk_reasm_tests to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_key_unref(ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #16, !srcloc !197
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body1, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !198

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #16
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %lock = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %dev = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 15
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void @mctp_dev_release_key(ptr noundef %2, ptr noundef %key) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #16
  tail call void @kfree(ptr noundef %key) #16
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_dev_release_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mctp_default_net(ptr noundef %net) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %default_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 5
  %0 = ptrtoint ptr %default_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %default_net, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mctp_default_net_set(ptr noundef %net, i32 noundef %index) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %entry.return_crit_edge, label %do.body2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %default_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 5
  %0 = ptrtoint ptr %default_net to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %index, ptr %default_net, align 4
  br label %return

return:                                           ; preds = %do.body2, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body2 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mctp_route_lookup(ptr noundef %net, i32 noundef %dnet, i8 noundef zeroext %daddr) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @mctp_route_lookup.__warned, align 1
  br i1 %.b32, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_route_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 678, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52
  %0 = ptrtoint ptr %mctp to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn33 = load volatile ptr, ptr %mctp, align 4
  %cmp.not35 = icmp eq ptr %.pn33, %mctp
  br i1 %cmp.not35, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn33, %do.end.for.body_crit_edge ]
  %tmp.037 = getelementptr i8, ptr %.pn36, i32 -20
  %dev.i = getelementptr i8, ptr %.pn36, i32 -16
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %net1.i = getelementptr inbounds %struct.mctp_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %net1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %dnet)
  %cmp.i = icmp eq i32 %4, %dnet
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %5 = ptrtoint ptr %tmp.037 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp.037, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %daddr)
  %cmp3.not.i = icmp ugt i8 %6, %daddr
  br i1 %cmp3.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %mctp_rt_match_eid.exit

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

mctp_rt_match_eid.exit:                           ; preds = %land.lhs.true.i
  %max.i = getelementptr i8, ptr %.pn36, i32 -19
  %7 = ptrtoint ptr %max.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %daddr)
  %cmp7.i.not = icmp ult i8 %8, %daddr
  br i1 %cmp7.i.not, label %mctp_rt_match_eid.exit.for.inc_crit_edge, label %if.then13

mctp_rt_match_eid.exit.for.inc_crit_edge:         ; preds = %mctp_rt_match_eid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then13:                                        ; preds = %mctp_rt_match_eid.exit
  %refs = getelementptr i8, ptr %.pn36, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #16
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #16
  %9 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refs, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then13
  %11 = phi i32 [ %10, %if.then13 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #16
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 %14, i32 %add.i.i.i, ptr elementtype(i32) %refs) #16, !srcloc !200
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !198

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !198

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 0) #16
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %20 = phi i32 [ %17, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #16
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %refcount_inc_not_zero.exit.for.end_crit_edge

refcount_inc_not_zero.exit.for.end_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %mctp_rt_match_eid.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load volatile ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %mctp
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %refcount_inc_not_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %rt.0 = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tmp.037, %refcount_inc_not_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  ret ptr %rt.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mctp_local_output(ptr noundef %sk, ptr noundef %rt, ptr noundef %skb, i8 noundef zeroext %daddr, i8 noundef zeroext %req_tag) local_unnamed_addr #0 align 64 {
entry:
  %tmp_rt = alloca %struct.mctp_route, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296258128, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1296258128
  br i1 %cmp.not.i, label %entry.mctp_cb.exit_crit_edge, label %do.end11.i, !prof !198

entry.mctp_cb.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_cb.exit

do.end11.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 194, i32 noundef 9, ptr noundef null) #16
  br label %mctp_cb.exit

mctp_cb.exit:                                     ; preds = %do.end11.i, %entry.mctp_cb.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp_rt) #16
  %2 = call ptr @memset(ptr %tmp_rt, i32 255, i32 40)
  %tobool.not = icmp eq ptr %rt, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mctp_cb.exit
  %dev1 = getelementptr inbounds %struct.mctp_route, ptr %rt, i32 0, i32 2
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %out_release.thread210, label %if.then.do.body47_crit_edge, !prof !201

if.then.do.body47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body47

out_release.thread210:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 806, i32 noundef 9, ptr noundef null) #16
  br label %if.then98

if.else:                                          ; preds = %mctp_cb.exit
  %ifindex = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool28.not = icmp eq i32 %6, 0
  br i1 %tobool28.not, label %if.else.cleanup_crit_edge, label %if.then29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then29:                                        ; preds = %if.else
  %7 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !202
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.then29.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then29.rcu_read_lock.exit_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then29.rcu_read_lock.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %call32 = tail call ptr @dev_get_by_index_rcu(ptr noundef %12, i32 noundef %14) #16
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %rcu_read_lock.exit
  %call.i159 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i159, label %if.then34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i162

if.then34.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i162:                               ; preds = %if.then34
  %call1.i160 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool.not.i161, label %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i164

land.lhs.true.i162.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i164:                              ; preds = %land.lhs.true.i162
  %.b4.i163 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i163, label %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, label %if.then.i165

land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i165:                                     ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i165, %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, %if.then34.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !203
  %15 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i166 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i166 to ptr
  %preempt_count.i.i.i.i167 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i167, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i167, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

if.end35:                                         ; preds = %rcu_read_lock.exit
  %call36 = tail call ptr @__mctp_dev_get(ptr noundef nonnull %call32) #16
  %dev37 = getelementptr inbounds %struct.mctp_route, ptr %tmp_rt, i32 0, i32 2
  %19 = ptrtoint ptr %dev37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call36, ptr %dev37, align 4
  %call.i168 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i168, label %if.end35.rcu_read_unlock.exit178_crit_edge, label %land.lhs.true.i171

if.end35.rcu_read_unlock.exit178_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit178

land.lhs.true.i171:                               ; preds = %if.end35
  %call1.i169 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %tobool.not.i170 = icmp eq i32 %call1.i169, 0
  br i1 %tobool.not.i170, label %land.lhs.true.i171.rcu_read_unlock.exit178_crit_edge, label %land.lhs.true2.i173

land.lhs.true.i171.rcu_read_unlock.exit178_crit_edge: ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit178

land.lhs.true2.i173:                              ; preds = %land.lhs.true.i171
  %.b4.i172 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i172, label %land.lhs.true2.i173.rcu_read_unlock.exit178_crit_edge, label %if.then.i174

land.lhs.true2.i173.rcu_read_unlock.exit178_crit_edge: ; preds = %land.lhs.true2.i173
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit178

if.then.i174:                                     ; preds = %land.lhs.true2.i173
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit178

rcu_read_unlock.exit178:                          ; preds = %if.then.i174, %land.lhs.true2.i173.rcu_read_unlock.exit178_crit_edge, %land.lhs.true.i171.rcu_read_unlock.exit178_crit_edge, %if.end35.rcu_read_unlock.exit178_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !203
  %20 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i175 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i175 to ptr
  %preempt_count.i.i.i.i176 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i176, align 4
  %sub.i.i.i177 = add i32 %23, -1
  store volatile i32 %sub.i.i.i177, ptr %preempt_count.i.i.i.i176, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %24 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev37, align 4
  %tobool39.not = icmp eq ptr %25, null
  br i1 %tobool39.not, label %rcu_read_unlock.exit178.do.body1.i_crit_edge, label %if.end41

rcu_read_unlock.exit178.do.body1.i_crit_edge:     ; preds = %rcu_read_unlock.exit178
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

if.end41:                                         ; preds = %rcu_read_unlock.exit178
  call void @__sanitizer_cov_trace_pc() #18
  %output = getelementptr inbounds %struct.mctp_route, ptr %tmp_rt, i32 0, i32 5
  %26 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mctp_route_output, ptr %output, align 4
  %mtu42 = getelementptr inbounds %struct.mctp_route, ptr %tmp_rt, i32 0, i32 3
  %27 = ptrtoint ptr %mtu42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %mtu42, align 4
  br label %do.body47

do.body47:                                        ; preds = %if.end41, %if.then.do.body47_crit_edge
  %dev.0 = phi ptr [ %call32, %if.end41 ], [ null, %if.then.do.body47_crit_edge ]
  %rt.addr.0 = phi ptr [ %tmp_rt, %if.end41 ], [ %rt, %if.then.do.body47_crit_edge ]
  %dev49 = getelementptr inbounds %struct.mctp_route, ptr %rt.addr.0, i32 0, i32 2
  %28 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev49, align 4
  %addrs_lock = getelementptr inbounds %struct.mctp_dev, ptr %29, i32 0, i32 6
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %addrs_lock) #16
  %30 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev49, align 4
  %num_addrs = getelementptr inbounds %struct.mctp_dev, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %num_addrs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp57 = icmp eq i32 %33, 0
  br i1 %cmp57, label %out_release, label %if.end67

if.end67:                                         ; preds = %do.body47
  %addrs = getelementptr inbounds %struct.mctp_dev, ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addrs, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %addrs_lock64 = getelementptr inbounds %struct.mctp_dev, ptr %31, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %addrs_lock64, i32 noundef %call51) #16
  %38 = and i8 %req_tag, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool69.not = icmp eq i8 %38, 0
  br i1 %tobool69.not, label %if.end67.if.end79_crit_edge, label %if.then70

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

if.then70:                                        ; preds = %if.end67
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %39 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skc_net.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %daddr)
  %cmp.i = icmp eq i8 %daddr, 0
  %spec.store.select.i = select i1 %cmp.i, i8 -1, i8 %daddr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 96) #19
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then70.if.then73_crit_edge, label %if.end5.i

if.then70.if.then73_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73

if.end5.i:                                        ; preds = %if.then70
  %42 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %spec.store.select.i, ptr %call7.i.i.i.i, align 8
  %local_addr.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %local_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %37, ptr %local_addr.i.i, align 1
  %tag1.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %tag1.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %tag1.i.i, align 2
  %sk2.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %sk2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %sk, ptr %sk2.i.i, align 4
  %valid.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 12
  %46 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %valid.i.i, align 2
  %lock.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @mctp_key_alloc.__key, i16 noundef signext 3) #16
  %refs.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #16
  %47 = ptrtoint ptr %refs.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %refs.i.i, align 4
  %keys_lock.i = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 52, i32 3
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %keys_lock.i) #16
  %keys.i = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 52, i32 4
  %48 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %keys.i, align 4
  %tobool15.not.i = icmp eq ptr %49, null
  %add.ptr.i = getelementptr i8, ptr %49, i32 -8
  %tobool17.not115118.i = icmp eq ptr %add.ptr.i, null
  %tobool17.not115.i = or i1 %tobool15.not.i, %tobool17.not115118.i
  br i1 %tobool17.not115.i, label %if.end5.i.if.then59.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.if.then59.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then59.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %tmp.0117.i = phi ptr [ %add.ptr54.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end5.i.for.body.i_crit_edge ]
  %tagbits.0116.i = phi i8 [ %tagbits.2.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.end5.i.for.body.i_crit_edge ]
  %tag.i = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.0117.i, i32 0, i32 2
  %50 = ptrtoint ptr %tag.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tag.i, align 2
  %52 = and i8 %51, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool19.not.i = icmp eq i8 %52, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end21.i:                                       ; preds = %for.body.i
  %53 = ptrtoint ptr %tmp.0117.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tmp.0117.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %spec.store.select.i)
  %cmp24.i = icmp eq i8 %54, %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %cmp28.i = icmp eq i8 %54, -1
  %or.cond.i = or i1 %cmp24.i, %cmp28.i
  br i1 %or.cond.i, label %land.lhs.true.i179, label %if.end21.i.for.inc.i_crit_edge

if.end21.i.for.inc.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i179:                               ; preds = %if.end21.i
  %local_addr.i = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.0117.i, i32 0, i32 1
  %55 = ptrtoint ptr %local_addr.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %local_addr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %37)
  %cmp32.i = icmp eq i8 %56, %37
  br i1 %cmp32.i, label %if.end35.i, label %land.lhs.true.i179.for.inc.i_crit_edge

land.lhs.true.i179.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end35.i:                                       ; preds = %land.lhs.true.i179
  %lock.i = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.0117.i, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %valid.i = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.0117.i, i32 0, i32 12
  %57 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %valid.i, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool36.not.i = icmp eq i8 %58, 0
  br i1 %tobool36.not.i, label %if.end35.i.if.end43.i_crit_edge, label %if.then37.i

if.end35.i.if.end43.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  %59 = ptrtoint ptr %tag.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tag.i, align 2
  %conv39.i = zext i8 %60 to i32
  %shl.i = shl nuw i32 1, %conv39.i
  %61 = trunc i32 %shl.i to i8
  %62 = xor i8 %61, -1
  %conv42.i = and i8 %tagbits.0116.i, %62
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end43.i_crit_edge
  %tagbits.1.i = phi i8 [ %conv42.i, %if.then37.i ], [ %tagbits.0116.i, %if.end35.i.if.end43.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tagbits.1.i)
  %tobool45.not.i = icmp eq i8 %tagbits.1.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.then68.critedge.i_crit_edge, label %if.end43.i.for.inc.i_crit_edge

if.end43.i.for.inc.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end43.i.if.then68.critedge.i_crit_edge:        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then68.critedge.i

for.inc.i:                                        ; preds = %if.end43.i.for.inc.i_crit_edge, %land.lhs.true.i179.for.inc.i_crit_edge, %if.end21.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %tagbits.2.i = phi i8 [ %tagbits.0116.i, %for.body.i.for.inc.i_crit_edge ], [ %tagbits.1.i, %if.end43.i.for.inc.i_crit_edge ], [ %tagbits.0116.i, %land.lhs.true.i179.for.inc.i_crit_edge ], [ %tagbits.0116.i, %if.end21.i.for.inc.i_crit_edge ]
  %hlist.i = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.0117.i, i32 0, i32 4
  %63 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hlist.i, align 4
  %tobool50.not.i = icmp eq ptr %64, null
  %add.ptr54.i = getelementptr i8, ptr %64, i32 -8
  %tobool17.not122.i = icmp eq ptr %add.ptr54.i, null
  %tobool17.not.i = or i1 %tobool50.not.i, %tobool17.not122.i
  br i1 %tobool17.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tagbits.2.i)
  %tobool58.not.i = icmp eq i8 %tagbits.2.i, 0
  br i1 %tobool58.not.i, label %for.end.i.if.then68.critedge.i_crit_edge, label %for.end.i.if.then59.i_crit_edge

for.end.i.if.then59.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then59.i

for.end.i.if.then68.critedge.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then68.critedge.i

if.then59.i:                                      ; preds = %for.end.i.if.then59.i_crit_edge, %if.end5.i.if.then59.i_crit_edge
  %tagbits.0.lcssa121.i = phi i8 [ %tagbits.2.i, %for.end.i.if.then59.i_crit_edge ], [ -1, %if.end5.i.if.then59.i_crit_edge ]
  %65 = tail call i8 @llvm.cttz.i8(i8 %tagbits.0.lcssa121.i, i1 true) #16, !range !205
  %66 = ptrtoint ptr %tag1.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %tag1.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %67 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i107.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i107.i, label %if.then59.i.if.end.i108.i_crit_edge, label %land.rhs.i.i

if.then59.i.if.end.i108.i_crit_edge:              ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i108.i

land.rhs.i.i:                                     ; preds = %if.then59.i
  %dep_map.i.i = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 52, i32 3, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i108.i_crit_edge, !prof !201

land.rhs.i.i.if.end.i108.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i108.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 568, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i108.i

if.end.i108.i:                                    ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i108.i_crit_edge, %if.then59.i.if.end.i108.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %68, 600
  %expiry.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 13
  %69 = ptrtoint ptr %expiry.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.i.i, ptr %expiry.i.i, align 4
  %key_expiry.i.i = getelementptr inbounds %struct.mctp_sock, ptr %sk, i32 0, i32 6
  %call25.i.i = tail call i32 @timer_reduce(ptr noundef %key_expiry.i.i, i32 noundef %add.i.i) #16
  %hlist.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %keys.i, align 4
  %72 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %hlist.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %keys.i, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !206
  %74 = ptrtoint ptr %keys.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %hlist.i.i, ptr %keys.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i.i, label %if.end.i108.i.hlist_add_head_rcu.exit.i.i_crit_edge, label %do.body49.i.i.i

if.end.i108.i.hlist_add_head_rcu.exit.i.i_crit_edge: ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head_rcu.exit.i.i

do.body49.i.i.i:                                  ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %hlist.i.i, ptr %pprev51.i.i.i, align 4
  br label %hlist_add_head_rcu.exit.i.i

hlist_add_head_rcu.exit.i.i:                      ; preds = %do.body49.i.i.i, %if.end.i108.i.hlist_add_head_rcu.exit.i.i_crit_edge
  %sklist.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 5
  %keys26.i.i = getelementptr inbounds %struct.mctp_sock, ptr %sk, i32 0, i32 5
  %76 = ptrtoint ptr %keys26.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %keys26.i.i, align 4
  %78 = ptrtoint ptr %sklist.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %sklist.i.i, align 8
  %pprev.i34.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i.i.i, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %pprev.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %keys26.i.i, ptr %pprev.i34.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !206
  %80 = ptrtoint ptr %keys26.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %sklist.i.i, ptr %keys26.i.i, align 4
  %tobool.not.i35.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i35.i.i, label %hlist_add_head_rcu.exit.i.i.hlist_add_head_rcu.exit38.i.i_crit_edge, label %do.body49.i37.i.i

hlist_add_head_rcu.exit.i.i.hlist_add_head_rcu.exit38.i.i_crit_edge: ; preds = %hlist_add_head_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head_rcu.exit38.i.i

do.body49.i37.i.i:                                ; preds = %hlist_add_head_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev51.i36.i.i = getelementptr inbounds %struct.hlist_node, ptr %77, i32 0, i32 1
  %81 = ptrtoint ptr %pprev51.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %sklist.i.i, ptr %pprev51.i36.i.i, align 4
  br label %hlist_add_head_rcu.exit38.i.i

hlist_add_head_rcu.exit38.i.i:                    ; preds = %do.body49.i37.i.i, %hlist_add_head_rcu.exit.i.i.hlist_add_head_rcu.exit38.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs.i.i, i32 1, i32 3, i32 1) #16
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i.i, ptr %refs.i.i, i32 1, ptr elementtype(i32) %refs.i.i) #16, !srcloc !207
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %hlist_add_head_rcu.exit38.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !201

hlist_add_head_rcu.exit38.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %hlist_add_head_rcu.exit38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %hlist_add_head_rcu.exit38.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %83 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %.not.i.i.i.i.i = icmp sgt i32 %83, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.mctp_alloc_local_tag.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !198

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.mctp_alloc_local_tag.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_alloc_local_tag.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %hlist_add_head_rcu.exit38.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %hlist_add_head_rcu.exit38.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %mctp_alloc_local_tag.exit

if.then68.critedge.i:                             ; preds = %for.end.i.if.then68.critedge.i_crit_edge, %if.end43.i.if.then68.critedge.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %keys_lock.i, i32 noundef %call11.i) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #16
  br label %if.then73

mctp_alloc_local_tag.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.mctp_alloc_local_tag.exit_crit_edge
  tail call fastcc void @trace_mctp_key_acquire(ptr noundef nonnull %call7.i.i.i.i) #16
  %84 = ptrtoint ptr %tag1.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tag1.i.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %keys_lock.i, i32 noundef %call11.i) #16
  %cmp.i180 = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %mctp_alloc_local_tag.exit.if.then73_crit_edge, label %if.end75

mctp_alloc_local_tag.exit.if.then73_crit_edge:    ; preds = %mctp_alloc_local_tag.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73

if.then73:                                        ; preds = %mctp_alloc_local_tag.exit.if.then73_crit_edge, %if.then68.critedge.i, %if.then70.if.then73_crit_edge
  %retval.0.i203 = phi ptr [ %call7.i.i.i.i, %mctp_alloc_local_tag.exit.if.then73_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then70.if.then73_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then68.critedge.i ]
  %86 = ptrtoint ptr %retval.0.i203 to i32
  br i1 %tobool.not, label %if.then73.if.end99_crit_edge, label %if.then73.if.then98_crit_edge

if.then73.if.then98_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then98

if.then73.if.end99_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.end75:                                         ; preds = %mctp_alloc_local_tag.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mctp_key_unref(ptr noundef nonnull %call7.i.i.i.i)
  %87 = or i8 %85, 8
  br label %if.end79

if.end79:                                         ; preds = %if.end75, %if.end67.if.end79_crit_edge
  %storemerge = phi i8 [ %87, %if.end75 ], [ %req_tag, %if.end67.if.end79_crit_edge ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %88 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 250, ptr %protocol, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %89 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %priority, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %92 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %94 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call80 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #16
  %95 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i, align 4
  %97 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i183 = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast.i184 = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i185 = sub i32 %sub.ptr.lhs.cast.i183, %sub.ptr.rhs.cast.i184
  %conv.i186 = trunc i32 %sub.ptr.sub.i185 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %99 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i186, ptr %network_header.i, align 4
  %100 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev49, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %104 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %103, ptr %104, align 8
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %106 = ptrtoint ptr %src to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %37, ptr %src, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i185, 65535
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 %conv.i.i
  %107 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %add.ptr.i.i, align 1
  %dest = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %daddr, ptr %dest, align 1
  %src84 = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %src84 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %37, ptr %src84, align 1
  %mtu.i = getelementptr inbounds %struct.mctp_route, ptr %rt.addr.0, i32 0, i32 3
  %110 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i187 = icmp eq i32 %111, 0
  br i1 %tobool.not.i187, label %do.end.i, label %if.end79.mctp_route_mtu.exit_crit_edge

if.end79.mctp_route_mtu.exit_crit_edge:           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_route_mtu.exit

do.end.i:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  %112 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev49, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %mtu2.i = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 20
  %116 = ptrtoint ptr %mtu2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %mtu2.i, align 4
  br label %mctp_route_mtu.exit

mctp_route_mtu.exit:                              ; preds = %do.end.i, %if.end79.mctp_route_mtu.exit_crit_edge
  %cond.i = phi i32 [ %117, %do.end.i ], [ %111, %if.end79.mctp_route_mtu.exit_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %118 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len, align 4
  %add = add i32 %119, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond.i)
  %cmp86.not = icmp ugt i32 %add, %cond.i
  br i1 %cmp86.not, label %if.else94, label %if.then88

if.then88:                                        ; preds = %mctp_route_mtu.exit
  %120 = or i8 %storemerge, -64
  %flags_seq_tag = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %121 = ptrtoint ptr %flags_seq_tag to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %flags_seq_tag, align 1
  %output92 = getelementptr inbounds %struct.mctp_route, ptr %rt.addr.0, i32 0, i32 5
  %122 = ptrtoint ptr %output92 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %output92, align 4
  %call93 = call i32 %123(ptr noundef nonnull %rt.addr.0, ptr noundef %skb) #16
  br i1 %tobool.not, label %if.then88.if.end99_crit_edge, label %if.then88.if.then98_crit_edge

if.then88.if.then98_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then98

if.then88.if.end99_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.else94:                                        ; preds = %mctp_route_mtu.exit
  %call95 = call fastcc i32 @mctp_do_fragment_route(ptr noundef nonnull %rt.addr.0, ptr noundef %skb, i32 noundef %cond.i, i8 noundef zeroext %storemerge)
  br i1 %tobool.not, label %if.else94.if.end99_crit_edge, label %if.else94.if.then98_crit_edge

if.else94.if.then98_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then98

if.else94.if.end99_crit_edge:                     ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

out_release:                                      ; preds = %do.body47
  %addrs_lock64199 = getelementptr inbounds %struct.mctp_dev, ptr %31, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %addrs_lock64199, i32 noundef %call51) #16
  br i1 %tobool.not, label %out_release.if.end99_crit_edge, label %out_release.if.then98_crit_edge

out_release.if.then98_crit_edge:                  ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then98

out_release.if.end99_crit_edge:                   ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then98:                                        ; preds = %out_release.if.then98_crit_edge, %if.else94.if.then98_crit_edge, %if.then88.if.then98_crit_edge, %if.then73.if.then98_crit_edge, %out_release.thread210
  %rt.addr.1217 = phi ptr [ %rt, %out_release.thread210 ], [ %rt.addr.0, %out_release.if.then98_crit_edge ], [ %rt.addr.0, %if.then73.if.then98_crit_edge ], [ %rt.addr.0, %if.then88.if.then98_crit_edge ], [ %rt.addr.0, %if.else94.if.then98_crit_edge ]
  %rc.1216 = phi i32 [ -19, %out_release.thread210 ], [ -113, %out_release.if.then98_crit_edge ], [ %86, %if.then73.if.then98_crit_edge ], [ %call93, %if.then88.if.then98_crit_edge ], [ %call95, %if.else94.if.then98_crit_edge ]
  %dev.1215 = phi ptr [ null, %out_release.thread210 ], [ %dev.0, %out_release.if.then98_crit_edge ], [ %dev.0, %if.then73.if.then98_crit_edge ], [ %dev.0, %if.then88.if.then98_crit_edge ], [ %dev.0, %if.else94.if.then98_crit_edge ]
  %refs.i = getelementptr inbounds %struct.mctp_route, ptr %rt.addr.1217, i32 0, i32 7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !196
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %124 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !197
  %asmresult.i.i.i.i.i.i.i188 = extractvalue { i32, i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i188)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i188, 1
  br i1 %cmp.i.i.i.i, label %do.end.i192, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i188)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i188, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end99_crit_edge, label %if.then10.i.i.i.i, !prof !198

if.end5.i.i.i.i.if.end99_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 3) #16
  br label %if.end99

do.end.i192:                                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %dev.i189 = getelementptr inbounds %struct.mctp_route, ptr %rt.addr.1217, i32 0, i32 2
  %125 = ptrtoint ptr %dev.i189 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i189, align 4
  call void @mctp_dev_put(ptr noundef %126) #16
  %rcu.i = getelementptr inbounds %struct.mctp_route, ptr %rt.addr.1217, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %if.end99

if.end99:                                         ; preds = %do.end.i192, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end99_crit_edge, %out_release.if.end99_crit_edge, %if.else94.if.end99_crit_edge, %if.then88.if.end99_crit_edge, %if.then73.if.end99_crit_edge
  %rc.1209 = phi i32 [ -113, %out_release.if.end99_crit_edge ], [ %86, %if.then73.if.end99_crit_edge ], [ %call93, %if.then88.if.end99_crit_edge ], [ %call95, %if.else94.if.end99_crit_edge ], [ %rc.1216, %if.end5.i.i.i.i.if.end99_crit_edge ], [ %rc.1216, %if.then10.i.i.i.i ], [ %rc.1216, %do.end.i192 ]
  %dev.1208 = phi ptr [ %dev.0, %out_release.if.end99_crit_edge ], [ %dev.0, %if.then73.if.end99_crit_edge ], [ %dev.0, %if.then88.if.end99_crit_edge ], [ %dev.0, %if.else94.if.end99_crit_edge ], [ %dev.1215, %if.end5.i.i.i.i.if.end99_crit_edge ], [ %dev.1215, %if.then10.i.i.i.i ], [ %dev.1215, %do.end.i192 ]
  %tobool.not.i194 = icmp eq ptr %dev.1208, null
  br i1 %tobool.not.i194, label %if.end99.cleanup_crit_edge, label %if.end99.do.body1.i_crit_edge

if.end99.do.body1.i_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body1.i:                                       ; preds = %if.end99.do.body1.i_crit_edge, %rcu_read_unlock.exit178.do.body1.i_crit_edge
  %dev.1208223 = phi ptr [ %dev.1208, %if.end99.do.body1.i_crit_edge ], [ %call32, %rcu_read_unlock.exit178.do.body1.i_crit_edge ]
  %rc.1209221 = phi i32 [ %rc.1209, %if.end99.do.body1.i_crit_edge ], [ -19, %rcu_read_unlock.exit178.do.body1.i_crit_edge ]
  %127 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !208
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.1208223, i32 0, i32 118
  %128 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pcpu_refcnt.i, align 4
  %130 = ptrtoint ptr %129 to i32
  %131 = call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %134
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %136, %130
  %137 = inttoptr i32 %add.i to ptr
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %add13.i = add i32 %139, -1
  store i32 %add13.i, ptr %137, align 4
  %140 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !209
  %and.i.i.i = and i32 %140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !201

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %127) #16, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %if.end99.cleanup_crit_edge, %rcu_read_unlock.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %rcu_read_unlock.exit ], [ -22, %if.else.cleanup_crit_edge ], [ %rc.1209, %if.end99.cleanup_crit_edge ], [ %rc.1209221, %do.end30.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_rt) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__mctp_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_route_output(ptr nocapture noundef readonly %route, ptr noundef %skb) #0 align 64 {
entry:
  %daddr_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296258128, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1296258128
  br i1 %cmp.not.i, label %entry.mctp_cb.exit_crit_edge, label %do.end11.i, !prof !198

entry.mctp_cb.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_cb.exit

do.end11.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 194, i32 noundef 9, ptr noundef null) #16
  br label %mctp_cb.exit

mctp_cb.exit:                                     ; preds = %do.end11.i, %entry.mctp_cb.exit_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %daddr_buf) #16
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = call ptr @memset(ptr %daddr_buf, i32 255, i32 32)
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 250, ptr %protocol, align 8
  %8 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %mtu2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %mtu2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp = icmp ugt i32 %14, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %mctp_cb.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

if.end:                                           ; preds = %mctp_cb.exit
  %ifindex = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %haddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.mctp_route, ptr %route, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dest = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dest, align 1
  %call5 = call i32 @mctp_neigh_lookup(ptr noundef %18, i8 noundef zeroext %20, ptr noundef nonnull %daddr_buf) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  %spec.select = select i1 %cmp6, ptr %daddr_buf, ptr null
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %daddr.0 = phi ptr [ %haddr, %if.then3 ], [ %spec.select, %if.else ]
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %8, align 8
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %protocol, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 49
  %29 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end10.if.end16_crit_edge, label %lor.lhs.false.i

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

lor.lhs.false.i:                                  ; preds = %if.end10
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool2.not.i = icmp eq ptr %32, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end16_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.if.end16_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  %call.i = call i32 %32(ptr noundef %skb, ptr noundef %22, i16 noundef zeroext %24, ptr noundef %daddr.0, ptr noundef %26, i32 noundef %28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %dev_hard_header.exit.if.end16_crit_edge, label %if.then15

dev_hard_header.exit.if.end16_crit_edge:          ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then15:                                        ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

if.end16:                                         ; preds = %dev_hard_header.exit.if.end16_crit_edge, %lor.lhs.false.i.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %call18 = call i32 @dev_queue_xmit(ptr noundef %skb) #16
  %33 = and i32 %call18, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  %rc.0 = select i1 %34, i32 0, i32 -105
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then
  %retval.0 = phi i32 [ -90, %if.then ], [ -113, %if.then15 ], [ %rc.0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %daddr_buf) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mctp_do_fragment_route(ptr noundef %rt, ptr noundef %skb, i32 noundef %mtu, i8 noundef zeroext %tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mtu)
  %cmp = icmp ult i32 %mtu, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #16
  %sub = add i32 %mtu, -4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2124.not = icmp eq i32 %5, 0
  br i1 %cmp2124.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %6 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %cb11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %dest = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %src = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = and i8 %tag, 15
  %9 = or i8 %8, -128
  %output = getelementptr inbounds %struct.mctp_route, ptr %rt, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end53.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i32 [ %5, %for.body.lr.ph ], [ %61, %if.end53.for.body_crit_edge ]
  %seq.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %and56, %if.end53.for.body_crit_edge ]
  %pos.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %add33, %if.end53.for.body_crit_edge ]
  %sub4 = sub i32 %10, %pos.0125
  %11 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub4)
  %add = add i32 %11, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end8

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end8:                                          ; preds = %for.body
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol, align 8
  %protocol9 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol9 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %protocol9, align 8
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %priority, align 4
  %priority10 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 6
  %17 = ptrtoint ptr %priority10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %priority10, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.anon.44, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %20, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %cb, ptr %cb11, i32 48)
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %tobool13.not = icmp eq ptr %24, null
  br i1 %tobool13.not, label %if.end8.if.end15_crit_edge, label %if.then14

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef nonnull %24) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8.if.end15_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %28, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %network_header.i, align 4
  %add16 = add i32 %11, 4
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add16) #16
  %32 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i, align 4
  %add18 = add i16 %33, 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %34 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %add18, ptr %transport_header, align 2
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %conv.i.i119 = zext i16 %33 to i32
  %add.ptr.i.i120 = getelementptr i8, ptr %36, i32 %conv.i.i119
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.i, align 1
  %39 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %add.ptr.i.i120, align 1
  %40 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dest, align 1
  %dest22 = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i120, i32 0, i32 1
  %42 = ptrtoint ptr %dest22 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %dest22, align 1
  %43 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %src, align 1
  %src23 = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i120, i32 0, i32 2
  %45 = ptrtoint ptr %src23 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %src23, align 1
  %flags_seq_tag = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i120, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0125)
  %cmp26 = icmp eq i32 %pos.0125, 0
  %spec.select = select i1 %cmp26, i8 %9, i8 %8
  %46 = ptrtoint ptr %flags_seq_tag to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %spec.select, ptr %flags_seq_tag, align 1
  %add33 = add i32 %11, %pos.0125
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %48)
  %cmp35 = icmp eq i32 %add33, %48
  br i1 %cmp35, label %if.then37, label %if.end15.if.end42_crit_edge

if.end15.if.end42_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then37:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %49 = or i8 %spec.select, 64
  %50 = ptrtoint ptr %flags_seq_tag to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %flags_seq_tag, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end15.if.end42_crit_edge
  %51 = ptrtoint ptr %flags_seq_tag to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flags_seq_tag, align 1
  %seq.0.tr = trunc i32 %seq.0126 to i8
  %53 = shl nuw nsw i8 %seq.0.tr, 4
  %conv47 = or i8 %52, %53
  store i8 %conv47, ptr %flags_seq_tag, align 1
  %54 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i, align 8
  %56 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %transport_header, align 2
  %conv.i122 = zext i16 %57 to i32
  %add.ptr.i123 = getelementptr i8, ptr %55, i32 %conv.i122
  %call49 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %pos.0125, ptr noundef %add.ptr.i123, i32 noundef %11) #16
  %58 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %output, align 4
  %call50 = tail call i32 %59(ptr noundef %rt, ptr noundef nonnull %call.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end42.for.end_crit_edge

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end53:                                         ; preds = %if.end42
  %add55 = add nuw nsw i32 %seq.0126, 1
  %and56 = and i32 %add55, 3
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len, align 4
  %cmp2 = icmp ugt i32 %61, %add33
  br i1 %cmp2, label %if.end53.for.body_crit_edge, label %if.end53.for.end_crit_edge

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end53.for.end_crit_edge, %if.end42.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %rc.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ -12, %for.body.for.end_crit_edge ], [ %call50, %if.end42.for.end_crit_edge ], [ 0, %if.end53.for.end_crit_edge ]
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ -90, %if.then ], [ %rc.1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mctp_route_add_local(ptr noundef %mdev, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mctp_route_add(ptr noundef %mdev, i8 noundef zeroext %addr, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mctp_route_add(ptr noundef %mdev, i8 noundef zeroext %daddr_start, i32 noundef %daddr_extent, i32 noundef %mtu, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %4 = add i8 %daddr_start, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %4)
  %5 = icmp ult i8 %4, -9
  br i1 %5, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %daddr_start to i32
  %add = add i32 %conv, %daddr_extent
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add)
  %cmp2 = icmp ugt i32 %add, 254
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %6 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %if.end5.cleanup_crit_edge [
    i8 2, label %if.end5.sw.epilog_crit_edge
    i8 1, label %sw.bb7
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %if.end5.sw.epilog_crit_edge
  %rtfn.0 = phi ptr [ @mctp_route_output, %sw.bb7 ], [ @mctp_route_input, %if.end5.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 40) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %sw.epilog
  %list.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list.i, ptr %prev.i.i, align 8
  %refs.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  %10 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refs.i, align 4
  %output.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mctp_route_discard, ptr %output.i, align 8
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %daddr_start, ptr %call7.i.i.i, align 8
  %conv13 = trunc i32 %add to i8
  %max = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13, ptr %max, align 1
  %mtu14 = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %mtu14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mtu, ptr %mtu14, align 8
  %dev15 = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mdev, ptr %dev15, align 4
  tail call void @mctp_dev_hold(ptr noundef %mdev) #16
  %type17 = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %type17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %type, ptr %type17, align 4
  %17 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rtfn.0, ptr %output.i, align 8
  %call18 = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.rhs, label %if.end10.if.end51_crit_edge

if.end10.if.end51_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

land.rhs:                                         ; preds = %if.end10
  %.b103 = load i1, ptr @mctp_route_add.__already_done, align 1
  br i1 %.b103, label %land.rhs.if.end51_crit_edge, label %if.then29, !prof !198

land.rhs.if.end51_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then29:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_route_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 938, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 938) #16
  br label %if.end51

if.end51:                                         ; preds = %if.then29, %land.rhs.if.end51_crit_edge, %if.end10.if.end51_crit_edge
  %mctp = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 52
  %18 = ptrtoint ptr %mctp to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn109 = load ptr, ptr %mctp, align 4
  %cmp62.not110 = icmp eq ptr %.pn109, %mctp
  br i1 %cmp62.not110, label %if.end51.for.end_crit_edge, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  br label %for.body

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %if.end51.for.body_crit_edge
  %.pn111 = phi ptr [ %.pn, %for.cond.backedge.for.body_crit_edge ], [ %.pn109, %if.end51.for.body_crit_edge ]
  %ert.0 = getelementptr i8, ptr %.pn111, i32 -20
  %call.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i104 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i104, label %land.rhs.i, label %for.body.if.end29.i_crit_edge

for.body.if.end29.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

land.rhs.i:                                       ; preds = %for.body
  %.b56.i = load i1, ptr @mctp_rt_compare_exact.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !198

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_rt_compare_exact.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 667) #16
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %for.body.if.end29.i_crit_edge
  %19 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev15, align 4
  %net.i = getelementptr inbounds %struct.mctp_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %net.i, align 4
  %dev37.i = getelementptr i8, ptr %.pn111, i32 -16
  %23 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev37.i, align 4
  %net38.i = getelementptr inbounds %struct.mctp_dev, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %net38.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %net38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp.i = icmp eq i32 %22, %26
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end29.i.for.cond.backedge_crit_edge

if.end29.i.for.cond.backedge_crit_edge:           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

land.lhs.true.i:                                  ; preds = %if.end29.i
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call7.i.i.i, align 8
  %29 = ptrtoint ptr %ert.0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ert.0, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp41.i = icmp eq i8 %28, %30
  br i1 %cmp41.i, label %land.rhs43.i, label %land.lhs.true.i.for.cond.backedge_crit_edge

land.lhs.true.i.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

land.rhs43.i:                                     ; preds = %land.lhs.true.i
  %31 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max, align 1
  %max45.i = getelementptr i8, ptr %.pn111, i32 -19
  %33 = ptrtoint ptr %max45.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max45.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp47.i = icmp eq i8 %32, %34
  br i1 %cmp47.i, label %if.then67, label %land.rhs43.i.for.cond.backedge_crit_edge

land.rhs43.i.for.cond.backedge_crit_edge:         ; preds = %land.rhs43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.rhs43.i.for.cond.backedge_crit_edge, %land.lhs.true.i.for.cond.backedge_crit_edge, %if.end29.i.for.cond.backedge_crit_edge
  %35 = ptrtoint ptr %.pn111 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn111, align 4
  %cmp62.not = icmp eq ptr %.pn, %mctp
  br i1 %cmp62.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.then67:                                        ; preds = %land.rhs43.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !198

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 3) #16
  br label %cleanup

do.end.i:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %37 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev15, align 4
  tail call void @mctp_dev_put(ptr noundef %38) #16
  %rcu.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %cleanup

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %if.end51.for.end_crit_edge
  %39 = ptrtoint ptr %mctp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mctp, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %mctp, ptr noundef %40) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %list.i, align 4
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %mctp, ptr %prev.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !211
  %43 = ptrtoint ptr %mctp to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list.i, ptr %mctp, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list.i, ptr %prev37.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.end.cleanup_crit_edge, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -17, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -17, %if.then10.i.i.i.i ], [ -17, %do.end.i ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mctp_route_remove_local(ptr noundef %mdev, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mctp_route_remove(ptr noundef %mdev, i8 noundef zeroext %addr, i32 noundef 0, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mctp_route_remove(ptr noundef readonly %mdev, i8 noundef zeroext %daddr_start, i32 noundef %daddr_extent, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %conv = zext i8 %daddr_start to i32
  %add = add i32 %conv, %daddr_extent
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add)
  %cmp1 = icmp ugt i32 %add, 254
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

land.rhs:                                         ; preds = %if.end
  %.b111 = load i1, ptr @mctp_route_remove.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.end39_crit_edge, label %if.then16, !prof !198

land.rhs.if.end39_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_route_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 966, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 966) #16
  br label %if.end39

if.end39:                                         ; preds = %if.then16, %land.rhs.if.end39_crit_edge, %if.end.if.end39_crit_edge
  %mctp = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %mctp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mctp, align 4
  %cmp55.not115 = icmp eq ptr %5, %mctp
  br i1 %cmp55.not115, label %if.end39.cleanup_crit_edge, label %for.body.lr.ph

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end39
  %6 = trunc i32 %add to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in117 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn119, %for.inc.for.body_crit_edge ]
  %dropped.0.off0116 = phi i1 [ false, %for.body.lr.ph ], [ %dropped.1.off0, %for.inc.for.body_crit_edge ]
  %rt.0118 = getelementptr i8, ptr %.pn.in117, i32 -20
  %7 = ptrtoint ptr %.pn.in117 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn119 = load ptr, ptr %.pn.in117, align 4
  %dev59 = getelementptr i8, ptr %.pn.in117, i32 -16
  %8 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev59, align 4
  %cmp60 = icmp eq ptr %9, %mdev
  br i1 %cmp60, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %rt.0118 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rt.0118, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %daddr_start)
  %cmp64 = icmp eq i8 %11, %daddr_start
  br i1 %cmp64, label %land.lhs.true66, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true66:                                  ; preds = %land.lhs.true
  %max = getelementptr i8, ptr %.pn.in117, i32 -19
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %6)
  %cmp69 = icmp eq i8 %13, %6
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true66.for.inc_crit_edge

land.lhs.true66.for.inc_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true71:                                  ; preds = %land.lhs.true66
  %type72 = getelementptr i8, ptr %.pn.in117, i32 -8
  %14 = ptrtoint ptr %type72 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type72, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %type)
  %cmp75 = icmp eq i8 %15, %type
  br i1 %cmp75, label %if.then77, label %land.lhs.true71.for.inc_crit_edge

land.lhs.true71.for.inc_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then77:                                        ; preds = %land.lhs.true71
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in117) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then77.list_del_rcu.exit_crit_edge

if.then77.list_del_rcu.exit_crit_edge:            ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in117, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in117 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in117, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then77.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in117, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refs.i = getelementptr i8, ptr %.pn.in117, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !198

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 3) #16
  br label %for.inc

if.then.i:                                        ; preds = %list_del_rcu.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %24 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev59, align 4
  tail call void @mctp_dev_put(ptr noundef %25) #16
  %tobool.not.i = icmp eq ptr %rt.0118, null
  br i1 %tobool.not.i, label %if.then.i.for.inc_crit_edge, label %do.end.i

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %rcu.i = getelementptr i8, ptr %.pn.in117, i32 12
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end.i, %if.then.i.for.inc_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %land.lhs.true71.for.inc_crit_edge, %land.lhs.true66.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dropped.1.off0 = phi i1 [ %dropped.0.off0116, %land.lhs.true71.for.inc_crit_edge ], [ %dropped.0.off0116, %land.lhs.true66.for.inc_crit_edge ], [ %dropped.0.off0116, %land.lhs.true.for.inc_crit_edge ], [ %dropped.0.off0116, %for.body.for.inc_crit_edge ], [ true, %if.end5.i.i.i.i.for.inc_crit_edge ], [ true, %if.then10.i.i.i.i ], [ true, %if.then.i.for.inc_crit_edge ], [ true, %do.end.i ]
  %cmp55.not = icmp eq ptr %.pn119, %mctp
  br i1 %cmp55.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %spec.select = select i1 %dropped.1.off0, i32 0, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end39.cleanup_crit_edge ], [ %spec.select, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_route_remove_dev(ptr noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b68 = load i1, ptr @mctp_route_remove_dev.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !198

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_route_remove_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 998, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 998) #16
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %mctp = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %mctp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mctp, align 4
  %cmp.not72 = icmp eq ptr %5, %mctp
  br i1 %cmp.not72, label %if.end31.for.end_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end31.for.body_crit_edge
  %.pn.in73 = phi ptr [ %.pn75, %for.inc.for.body_crit_edge ], [ %5, %if.end31.for.body_crit_edge ]
  %rt.074 = getelementptr i8, ptr %.pn.in73, i32 -20
  %6 = ptrtoint ptr %.pn.in73 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn75 = load ptr, ptr %.pn.in73, align 4
  %dev49 = getelementptr i8, ptr %.pn.in73, i32 -16
  %7 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev49, align 4
  %cmp50 = icmp eq ptr %8, %mdev
  br i1 %cmp50, label %if.then51, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then51:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in73) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then51.list_del_rcu.exit_crit_edge

if.then51.list_del_rcu.exit_crit_edge:            ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in73, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in73 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in73, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then51.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in73, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refs.i = getelementptr i8, ptr %.pn.in73, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !198

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 3) #16
  br label %for.inc

if.then.i:                                        ; preds = %list_del_rcu.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %17 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev49, align 4
  tail call void @mctp_dev_put(ptr noundef %18) #16
  %tobool.not.i = icmp eq ptr %rt.074, null
  br i1 %tobool.not.i, label %if.then.i.for.inc_crit_edge, label %do.end.i

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %rcu.i = getelementptr i8, ptr %.pn.in73, i32 12
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end.i, %if.then.i.for.inc_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn75, %mctp
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end31.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mctp_routes_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_add_pack(ptr noundef nonnull @mctp_packet_type) #16
  %call = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 26, ptr noundef null, ptr noundef nonnull @mctp_dump_rtinfo, i32 noundef 0) #16
  %call1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 24, ptr noundef nonnull @mctp_newroute, ptr noundef null, i32 noundef 0) #16
  %call2 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 25, ptr noundef nonnull @mctp_delroute, ptr noundef null, i32 noundef 0) #16
  %call3 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @mctp_net_ops) #16
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_dump_rtinfo(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %tmp.i6.i = alloca i32, align 4
  %tmp.i3.i = alloca i32, align 4
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
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
  %8 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !202
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @mctp_dump_rtinfo.__warned, align 1
  br i1 %.b40, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_dump_rtinfo.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1271, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %mctp = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 52
  %12 = ptrtoint ptr %mctp to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn53 = load volatile ptr, ptr %mctp, align 4
  %cmp.not55 = icmp eq ptr %.pn53, %mctp
  br i1 %cmp.not55, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn57 = phi ptr [ %.pn53, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %idx.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rt.058 = getelementptr i8, ptr %.pn57, i32 -20
  %inc = add i32 %idx.056, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.056, i32 %7)
  %cmp12 = icmp slt i32 %idx.056, %7
  br i1 %cmp12, label %for.body.for.inc_crit_edge, label %if.end14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %13 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %portid, align 4
  %17 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nlmsg_seq, align 4
  %21 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

skb_tailroom.exit.i.i:                            ; preds = %if.end14
  %23 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i.i, align 4
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 28
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.for.end_crit_edge, label %nlmsg_put.exit.i, !prof !201

skb_tailroom.exit.i.i.for.end_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %16, i32 noundef %20, i32 noundef 24, i32 noundef 12, i32 noundef 2) #16
  %tobool.not.i41 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i41, label %nlmsg_put.exit.i.for.end_crit_edge, label %if.end.i

nlmsg_put.exit.i.for.end_crit_edge:               ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 45, ptr %add.ptr.i.i, align 4
  %max.i = getelementptr i8, ptr %.pn57, i32 -19
  %28 = ptrtoint ptr %max.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max.i, align 1
  %30 = ptrtoint ptr %rt.058 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rt.058, align 4
  %sub.i = sub i8 %29, %31
  %rtm_dst_len.i = getelementptr i8, ptr %call3.i.i, i32 17
  %32 = ptrtoint ptr %rtm_dst_len.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %sub.i, ptr %rtm_dst_len.i, align 1
  %rtm_src_len.i = getelementptr i8, ptr %call3.i.i, i32 18
  %33 = ptrtoint ptr %rtm_src_len.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %rtm_src_len.i, align 2
  %rtm_tos.i = getelementptr i8, ptr %call3.i.i, i32 19
  %34 = ptrtoint ptr %rtm_tos.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %rtm_tos.i, align 1
  %rtm_table.i = getelementptr i8, ptr %call3.i.i, i32 20
  %35 = ptrtoint ptr %rtm_table.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -3, ptr %rtm_table.i, align 4
  %rtm_protocol.i = getelementptr i8, ptr %call3.i.i, i32 21
  %36 = ptrtoint ptr %rtm_protocol.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %rtm_protocol.i, align 1
  %rtm_scope.i = getelementptr i8, ptr %call3.i.i, i32 22
  %37 = ptrtoint ptr %rtm_scope.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -3, ptr %rtm_scope.i, align 2
  %type.i = getelementptr i8, ptr %.pn57, i32 -8
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type.i, align 4
  %rtm_type.i = getelementptr i8, ptr %call3.i.i, i32 23
  %40 = ptrtoint ptr %rtm_type.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %rtm_type.i, align 1
  %41 = load i8, ptr %rt.058, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #16
  %42 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end8.i:                                        ; preds = %if.end.i
  %43 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i2.i = icmp slt i32 %call1.i.i, 0
  %tobool10.not18.i = icmp eq ptr %44, null
  %tobool10.not.i = select i1 %cmp.i2.i, i1 true, i1 %tobool10.not18.i
  br i1 %tobool10.not.i, label %if.end8.i.if.then.i.i.i_crit_edge, label %if.end12.i

if.end8.i.if.then.i.i.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end12.i:                                       ; preds = %if.end8.i
  %mtu.i = getelementptr i8, ptr %.pn57, i32 -12
  %45 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool13.not.i = icmp eq i32 %46, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end20.i_crit_edge, label %if.then14.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3.i) #16
  %47 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i3.i, align 4
  %call.i4.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i3.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool17.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then14.i.if.then.i.i.i_crit_edge

if.then14.i.if.then.i.i.i_crit_edge:              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %if.end12.i.if.end20.i_crit_edge
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i.i, ptr %44, align 2
  %dev.i = getelementptr i8, ptr %.pn57, i32 -16
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %tobool22.not.i = icmp eq ptr %52, null
  br i1 %tobool22.not.i, label %if.end20.i.mctp_fill_rtinfo.exit_crit_edge, label %if.then23.i

if.end20.i.mctp_fill_rtinfo.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_fill_rtinfo.exit

if.then23.i:                                      ; preds = %if.end20.i
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i6.i) #16
  %57 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %tmp.i6.i, align 4
  %call.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i6.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i6.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool27.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool27.not.i, label %if.then23.i.mctp_fill_rtinfo.exit_crit_edge, label %if.then23.i.if.then.i.i.i_crit_edge

if.then23.i.if.then.i.i.i_crit_edge:              ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then23.i.mctp_fill_rtinfo.exit_crit_edge:      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_fill_rtinfo.exit

if.then.i.i.i:                                    ; preds = %if.then23.i.if.then.i.i.i_crit_edge, %if.then14.i.if.then.i.i.i_crit_edge, %if.end8.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %59, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !201

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i12.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i13.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.i14.i = sub i32 %sub.ptr.lhs.cast.i.i12.i, %sub.ptr.rhs.cast.i.i13.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i14.i) #16
  br label %for.end

mctp_fill_rtinfo.exit:                            ; preds = %if.then23.i.mctp_fill_rtinfo.exit_crit_edge, %if.end20.i.mctp_fill_rtinfo.exit_crit_edge
  %62 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i9.i = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast.i10.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i11.i = sub i32 %sub.ptr.lhs.cast.i9.i, %sub.ptr.rhs.cast.i10.i
  %64 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub.ptr.sub.i11.i, ptr %call3.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %mctp_fill_rtinfo.exit, %for.body.for.inc_crit_edge
  %65 = ptrtoint ptr %.pn57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn = load volatile ptr, ptr %.pn57, align 4
  %cmp.not = icmp eq ptr %.pn, %mctp
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.for.end_crit_edge, %skb_tailroom.exit.i.i.for.end_crit_edge, %if.end14.for.end_crit_edge, %do.end.for.end_crit_edge
  %idx.1 = phi i32 [ %inc, %nlmsg_cancel.exit.i ], [ 0, %do.end.for.end_crit_edge ], [ %inc, %if.end14.for.end_crit_edge ], [ %inc, %skb_tailroom.exit.i.i.for.end_crit_edge ], [ %inc, %nlmsg_put.exit.i.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %call.i42 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i42, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %for.end
  %call1.i43 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !203
  %66 = call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i49 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %idx.1, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_newroute(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [31 x ptr], align 4
  %tbx = alloca [18 x ptr], align 4
  %daddr_start = alloca i8, align 1
  %mdev = alloca ptr, align 4
  %rtm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %tb) #16
  %0 = call ptr @memset(ptr %tb, i32 255, i32 124)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %tbx) #16
  %1 = call ptr @memset(ptr %tbx, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %daddr_start) #16
  %2 = ptrtoint ptr %daddr_start to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %daddr_start, align 1, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdev) #16
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %mdev, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtm) #16
  %4 = ptrtoint ptr %rtm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %rtm, align 4, !annotation !212
  %call = call fastcc i32 @mctp_route_nlparse(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack, ptr noundef nonnull %tb, ptr noundef nonnull %rtm, ptr noundef nonnull %mdev, ptr noundef nonnull %daddr_start)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %rtm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtm, align 4
  %rtm_type = getelementptr inbounds %struct.rtmsg, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp1.not = icmp eq i8 %8, 1
  br i1 %cmp1.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_newroute.__msg) #16
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mctp_newroute.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end6.if.end22_crit_edge, label %if.then8

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then8:                                         ; preds = %if.end6
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %tobool.not.i = icmp sgt i16 %13, -1
  br i1 %tobool.not.i, label %nla_parse_nested.exit.thread, label %nla_parse_nested.exit

nla_parse_nested.exit.thread:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #16
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.then8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %11, align 2
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tbx, i32 noundef 17, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @rta_metrics_policy, i32 noundef 31, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp12 = icmp slt i32 %call6.i, 0
  br i1 %cmp12, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end15

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %nla_parse_nested.exit
  %arrayidx16 = getelementptr inbounds [18 x ptr], ptr %tbx, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i45 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i45, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge, %if.end6.if.end22_crit_edge
  %mtu.0 = phi i32 [ %19, %if.then18 ], [ 0, %if.end15.if.end22_crit_edge ], [ 0, %if.end6.if.end22_crit_edge ]
  %20 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp25.not = icmp eq i8 %21, 1
  br i1 %cmp25.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev, align 4
  %24 = ptrtoint ptr %daddr_start to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %daddr_start, align 1
  %rtm_dst_len = getelementptr inbounds %struct.rtmsg, ptr %6, i32 0, i32 1
  %26 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rtm_dst_len, align 1
  %conv29 = zext i8 %27 to i32
  %call31 = call fastcc i32 @mctp_route_add(ptr noundef %23, i8 noundef zeroext %25, i32 noundef %conv29, i32 noundef %mtu.0, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end22.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %nla_parse_nested.exit.thread, %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end28 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %nla_parse_nested.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtm) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdev) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %daddr_start) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %tbx) #16
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_delroute(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [31 x ptr], align 4
  %daddr_start = alloca i8, align 1
  %mdev = alloca ptr, align 4
  %rtm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %tb) #16
  %0 = call ptr @memset(ptr %tb, i32 255, i32 124)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %daddr_start) #16
  %1 = ptrtoint ptr %daddr_start to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %daddr_start, align 1, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdev) #16
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mdev, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtm) #16
  %3 = ptrtoint ptr %rtm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %rtm, align 4, !annotation !212
  %call = call fastcc i32 @mctp_route_nlparse(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack, ptr noundef nonnull %tb, ptr noundef nonnull %rtm, ptr noundef nonnull %mdev, ptr noundef nonnull %daddr_start)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %rtm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtm, align 4
  %rtm_type = getelementptr inbounds %struct.rtmsg, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp1.not = icmp eq i8 %7, 1
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 4
  %10 = ptrtoint ptr %daddr_start to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %daddr_start, align 1
  %rtm_dst_len = getelementptr inbounds %struct.rtmsg, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rtm_dst_len, align 1
  %conv5 = zext i8 %13 to i32
  %call6 = call fastcc i32 @mctp_route_remove(ptr noundef %9, i8 noundef zeroext %11, i32 noundef %conv5, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtm) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdev) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %daddr_start) #16
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_routes_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @mctp_net_ops) #16
  %call = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 25) #16
  %call1 = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 24) #16
  %call2 = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 26) #16
  tail call void @dev_remove_pack(ptr noundef nonnull @mctp_packet_type) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctp_neigh_lookup(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mctp_key_alloc(ptr noundef %msk, i8 noundef zeroext %local, i8 noundef zeroext %peer, i8 noundef zeroext %tag, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !198

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 96) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %peer, ptr %call7.i.i, align 8
  %local_addr = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %local_addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %local, ptr %local_addr, align 1
  %tag1 = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %tag1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %tag, ptr %tag1, align 2
  %sk2 = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %sk2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msk, ptr %sk2, align 4
  %valid = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i, i32 0, i32 12
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %valid, align 2
  %lock = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mctp_key_alloc.__key, i16 noundef signext 3) #16
  %refs = getelementptr inbounds %struct.mctp_sk_key, ptr %call7.i.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  %7 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mctp_key_acquire(ptr noundef %key) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mctp_key_acquire, i32 0, i32 1), ptr blockaddress(@trace_mctp_key_acquire, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !213

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !214
  %call42 = tail call i32 @__traceiter_mctp_key_acquire(ptr noundef null, ptr noundef %key) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !215
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mctp_key_acquire, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mctp_key_acquire, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mctp_key_acquire.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_mctp_key_acquire.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 44, ptr noundef nonnull @.str.9) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !217
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #16
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
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mctp_key_acquire(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_route_input(ptr nocapture noundef readnone %route, ptr noundef %skb) #0 align 64 {
entry:
  %f = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #16
  %5 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %f, align 4, !annotation !212
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i166 = icmp eq ptr %7, null
  br i1 %tobool.not.i166, label %do.body.i, label %if.then.i167

if.then.i167:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %7(ptr noundef %skb) #16
  %8 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %destructor.i, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %entry
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !198

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #16, !srcloc !218
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i167
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp = icmp ult i32 %15, 5
  br i1 %cmp, label %skb_orphan.exit.if.then100_crit_edge, label %if.end

skb_orphan.exit.if.then100_crit_edge:             ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then100

if.end:                                           ; preds = %skb_orphan.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #16
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp3.not = icmp eq i8 %21, 1
  br i1 %cmp3.not, label %if.end6, label %if.end.if.then100_crit_edge

if.end.if.then100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then100

if.end6:                                          ; preds = %if.end
  %flags_seq_tag = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %flags_seq_tag to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags_seq_tag, align 1
  %and = and i8 %23, -64
  %24 = and i8 %23, 15
  %25 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !202
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %src = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %src, align 1
  %call13 = call fastcc ptr @mctp_lookup_key(ptr noundef %4, ptr noundef %skb, i8 noundef zeroext %30, ptr noundef nonnull %f)
  %conv14 = zext i8 %and to i32
  %and15 = and i32 %conv14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  %tobool73.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.else72, label %if.then16

if.then16:                                        ; preds = %rcu_read_lock.exit
  br i1 %tobool73.not, label %if.else, label %if.end36

if.else:                                          ; preds = %if.then16
  %call19 = call fastcc ptr @mctp_lookup_key(ptr noundef %4, ptr noundef %skb, i8 noundef zeroext -1, ptr noundef nonnull %f)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.else.land.lhs.true30_crit_edge, label %if.end27

if.else.land.lhs.true30_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true30

if.end27:                                         ; preds = %if.else
  %sk23 = getelementptr inbounds %struct.mctp_sk_key, ptr %call19, i32 0, i32 3
  %31 = ptrtoint ptr %sk23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk23, align 4
  %lock = getelementptr inbounds %struct.mctp_sk_key, ptr %call19, i32 0, i32 6
  %33 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %34) #16
  tail call void @mctp_key_unref(ptr noundef nonnull %call19)
  %tobool29.not = icmp eq ptr %32, null
  br i1 %tobool29.not, label %if.end27.land.lhs.true30_crit_edge, label %if.end27.if.end39_crit_edge

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.end27.land.lhs.true30_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end27.land.lhs.true30_crit_edge, %if.else.land.lhs.true30_crit_edge
  %35 = and i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool33.not = icmp eq i8 %35, 0
  br i1 %tobool33.not, label %land.lhs.true30.out_unlock_crit_edge, label %if.then34

land.lhs.true30.out_unlock_crit_edge:             ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then34:                                        ; preds = %land.lhs.true30
  %cb1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %36 = ptrtoint ptr %cb1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cb1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296258128, i32 %37)
  %cmp.not.i.i = icmp eq i32 %37, 1296258128
  br i1 %cmp.not.i.i, label %if.then34.mctp_cb.exit.i_crit_edge, label %do.end11.i.i, !prof !198

if.then34.mctp_cb.exit.i_crit_edge:               ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_cb.exit.i

do.end11.i.i:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 194, i32 noundef 9, ptr noundef null) #16
  br label %mctp_cb.exit.i

mctp_cb.exit.i:                                   ; preds = %do.end11.i.i, %if.then34.mctp_cb.exit.i_crit_edge
  %call1.i168 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %tobool.not.i169 = icmp eq i32 %call1.i168, 0
  br i1 %tobool.not.i169, label %do.end.i, label %mctp_cb.exit.i.if.end.i_crit_edge, !prof !201

mctp_cb.exit.i.if.end.i_crit_edge:                ; preds = %mctp_cb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %mctp_cb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %mctp_cb.exit.i.if.end.i_crit_edge
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %41 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 %conv.i.i.i
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %tobool24.not.i = icmp eq i32 %43, %45
  br i1 %tobool24.not.i, label %if.end.i.out_unlock_crit_edge, label %if.end26.i

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end26.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  %50 = and i8 %49, 127
  %call29.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i170, label %if.end26.i.do.end38.i_crit_edge

if.end26.i.do.end38.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38.i

land.lhs.true.i170:                               ; preds = %if.end26.i
  %call31.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i170.do.end38.i_crit_edge, label %land.lhs.true33.i

land.lhs.true.i170.do.end38.i_crit_edge:          ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38.i

land.lhs.true33.i:                                ; preds = %land.lhs.true.i170
  %.b111.i = load i1, ptr @mctp_lookup_bind.__warned, align 1
  br i1 %.b111.i, label %land.lhs.true33.i.do.end38.i_crit_edge, label %if.then35.i

land.lhs.true33.i.do.end38.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38.i

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_lookup_bind.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.1) #16
  br label %do.end38.i

do.end38.i:                                       ; preds = %if.then35.i, %land.lhs.true33.i.do.end38.i_crit_edge, %land.lhs.true.i170.do.end38.i_crit_edge, %if.end26.i.do.end38.i_crit_edge
  %binds.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 52, i32 2
  %51 = ptrtoint ptr %binds.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %binds.i, align 4
  %tobool45.not.i = icmp eq ptr %52, null
  %add.ptr.i = getelementptr i8, ptr %52, i32 -84
  %dest.i = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %tobool47.not118123.i = icmp eq ptr %add.ptr.i, null
  %tobool47.not118.i = or i1 %tobool45.not.i, %tobool47.not118123.i
  br i1 %tobool47.not118.i, label %do.end38.i.out_unlock_crit_edge, label %for.body.lr.ph.i

do.end38.i.out_unlock_crit_edge:                  ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

for.body.lr.ph.i:                                 ; preds = %do.end38.i
  %net54.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sk.0119.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr87.i, %for.inc.i.for.body.i_crit_edge ]
  %bind_net.i = getelementptr inbounds %struct.mctp_sock, ptr %sk.0119.i, i32 0, i32 1
  %53 = ptrtoint ptr %bind_net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bind_net.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i = icmp eq i32 %54, 0
  br i1 %cmp.not.i, label %for.body.i.if.end58.i_crit_edge, label %land.lhs.true52.i

for.body.i.if.end58.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58.i

land.lhs.true52.i:                                ; preds = %for.body.i
  %55 = ptrtoint ptr %net54.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %net54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp55.not.i = icmp eq i32 %54, %56
  br i1 %cmp55.not.i, label %land.lhs.true52.i.if.end58.i_crit_edge, label %land.lhs.true52.i.for.inc.i_crit_edge

land.lhs.true52.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true52.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58.i

if.end58.i:                                       ; preds = %land.lhs.true52.i.if.end58.i_crit_edge, %for.body.i.if.end58.i_crit_edge
  %bind_type.i = getelementptr inbounds %struct.mctp_sock, ptr %sk.0119.i, i32 0, i32 3
  %57 = ptrtoint ptr %bind_type.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bind_type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %50)
  %cmp61.not.i = icmp eq i8 %58, %50
  br i1 %cmp61.not.i, label %if.end64.i, label %if.end58.i.for.inc.i_crit_edge

if.end58.i.for.inc.i_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end64.i:                                       ; preds = %if.end58.i
  %bind_addr.i = getelementptr inbounds %struct.mctp_sock, ptr %sk.0119.i, i32 0, i32 2
  %59 = ptrtoint ptr %bind_addr.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bind_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp66.not.i = icmp eq i8 %60, -1
  br i1 %cmp66.not.i, label %if.end64.i.if.end39_crit_edge, label %land.lhs.true68.i

if.end64.i.if.end39_crit_edge:                    ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

land.lhs.true68.i:                                ; preds = %if.end64.i
  %61 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %dest.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %62)
  %cmp72.not.i = icmp eq i8 %60, %62
  br i1 %cmp72.not.i, label %land.lhs.true68.i.if.end39_crit_edge, label %land.lhs.true68.i.for.inc.i_crit_edge

land.lhs.true68.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true68.i.if.end39_crit_edge:             ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

for.inc.i:                                        ; preds = %land.lhs.true68.i.for.inc.i_crit_edge, %if.end58.i.for.inc.i_crit_edge, %land.lhs.true52.i.for.inc.i_crit_edge
  %63 = getelementptr inbounds %struct.sock_common, ptr %sk.0119.i, i32 0, i32 15
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %63, align 4
  %tobool83.not.i = icmp eq ptr %65, null
  %add.ptr87.i = getelementptr i8, ptr %65, i32 -84
  %tobool47.not124.i = icmp eq ptr %add.ptr87.i, null
  %tobool47.not.i = or i1 %tobool83.not.i, %tobool47.not124.i
  br i1 %tobool47.not.i, label %for.inc.i.out_unlock_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.out_unlock_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end36:                                         ; preds = %if.then16
  %sk = getelementptr inbounds %struct.mctp_sk_key, ptr %call13, i32 0, i32 3
  %66 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk, align 4
  %tobool37.not = icmp eq ptr %67, null
  br i1 %tobool37.not, label %if.end36.out_unlock_crit_edge, label %if.end36.if.end39_crit_edge

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.end36.out_unlock_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end39:                                         ; preds = %if.end36.if.end39_crit_edge, %land.lhs.true68.i.if.end39_crit_edge, %if.end64.i.if.end39_crit_edge, %if.end27.if.end39_crit_edge
  %msk.1209 = phi ptr [ %67, %if.end36.if.end39_crit_edge ], [ %32, %if.end27.if.end39_crit_edge ], [ %sk.0119.i, %if.end64.i.if.end39_crit_edge ], [ %sk.0119.i, %land.lhs.true68.i.if.end39_crit_edge ]
  %key.0194208 = phi ptr [ %call13, %if.end36.if.end39_crit_edge ], [ null, %if.end27.if.end39_crit_edge ], [ null, %if.end64.i.if.end39_crit_edge ], [ null, %land.lhs.true68.i.if.end39_crit_edge ]
  %and41 = and i32 %conv14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end49, label %if.then43

if.then43:                                        ; preds = %if.end39
  %call45 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %msk.1209, ptr noundef %skb) #16
  br i1 %tobool73.not, label %if.then43.out_unlock_crit_edge, label %if.then47

if.then43.out_unlock_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @trace_mctp_key_release(ptr noundef nonnull %key.0194208, i32 noundef 1)
  %68 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %f, align 4
  tail call fastcc void @__mctp_key_unlock_drop(ptr noundef nonnull %key.0194208, ptr noundef %4, i32 noundef %69)
  br label %out_unlock

if.end49:                                         ; preds = %if.end39
  br i1 %tobool73.not, label %if.then51, label %if.else63

if.then51:                                        ; preds = %if.end49
  %dest = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dest, align 1
  %72 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %src, align 1
  %call53 = tail call fastcc ptr @mctp_key_alloc(ptr noundef nonnull %msk.1209, i8 noundef zeroext %71, i8 noundef zeroext %73, i8 noundef zeroext %24, i32 noundef 2592)
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then51.out_unlock_crit_edge, label %if.end56

if.then51.out_unlock_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end56:                                         ; preds = %if.then51
  %call57 = tail call fastcc i32 @mctp_frag_queue(ptr noundef nonnull %call53, ptr noundef %skb)
  %call58 = tail call fastcc i32 @mctp_key_add(ptr noundef nonnull %call53, ptr noundef nonnull %msk.1209)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.else61, label %if.then60

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call53) #16
  br label %out_unlock

if.else61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @trace_mctp_key_acquire(ptr noundef nonnull %call53)
  tail call void @mctp_key_unref(ptr noundef nonnull %call53)
  br label %out_unlock

if.else63:                                        ; preds = %if.end49
  %reasm_head = getelementptr inbounds %struct.mctp_sk_key, ptr %key.0194208, i32 0, i32 8
  %74 = ptrtoint ptr %reasm_head to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reasm_head, align 4
  %tobool64.not = icmp eq ptr %75, null
  br i1 %tobool64.not, label %lor.lhs.false, label %if.else63.if.then67_crit_edge

if.else63.if.then67_crit_edge:                    ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

lor.lhs.false:                                    ; preds = %if.else63
  %reasm_dead = getelementptr inbounds %struct.mctp_sk_key, ptr %key.0194208, i32 0, i32 10
  %76 = ptrtoint ptr %reasm_dead to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reasm_dead, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool65.not = icmp eq i8 %77, 0
  br i1 %tobool65.not, label %if.else68, label %lor.lhs.false.if.then67_crit_edge

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false.if.then67_crit_edge, %if.else63.if.then67_crit_edge
  tail call fastcc void @trace_mctp_key_release(ptr noundef nonnull %key.0194208, i32 noundef 2)
  %78 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %f, align 4
  tail call fastcc void @__mctp_key_unlock_drop(ptr noundef nonnull %key.0194208, ptr noundef %4, i32 noundef %79)
  br label %out_unlock

if.else68:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %call69 = tail call fastcc i32 @mctp_frag_queue(ptr noundef nonnull %key.0194208, ptr noundef %skb)
  br label %out_unlock

if.else72:                                        ; preds = %rcu_read_lock.exit
  br i1 %tobool73.not, label %if.else72.out_unlock_crit_edge, label %if.then74

if.else72.out_unlock_crit_edge:                   ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then74:                                        ; preds = %if.else72
  %reasm_head75 = getelementptr inbounds %struct.mctp_sk_key, ptr %call13, i32 0, i32 8
  %80 = ptrtoint ptr %reasm_head75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reasm_head75, align 4
  %tobool76.not = icmp eq ptr %81, null
  br i1 %tobool76.not, label %if.then74.out_unlock_crit_edge, label %if.end.i178

if.then74.out_unlock_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end.i178:                                      ; preds = %if.then74
  %82 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i, align 8
  %84 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i173 = zext i16 %85 to i32
  %add.ptr.i.i.i174 = getelementptr i8, ptr %83, i32 %conv.i.i.i173
  %flags_seq_tag.i = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i.i174, i32 0, i32 3
  %86 = ptrtoint ptr %flags_seq_tag.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flags_seq_tag.i, align 1
  %88 = lshr i8 %87, 4
  %89 = and i8 %88, 3
  %last_seq4.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call13, i32 0, i32 11
  %90 = ptrtoint ptr %last_seq4.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %last_seq4.i, align 1
  %92 = add i8 %91, 1
  %93 = and i8 %92, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %93)
  %cmp.not.i177 = icmp eq i8 %89, %93
  br i1 %cmp.not.i177, label %if.end12.i, label %if.end.i178.out_unlock_crit_edge

if.end.i178.out_unlock_crit_edge:                 ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end12.i:                                       ; preds = %if.end.i178
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 6
  %94 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i, align 4
  %96 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len, align 4
  %add15.i = add i32 %97, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add15.i)
  %cmp16.i = icmp ugt i32 %add15.i, 65536
  br i1 %cmp16.i, label %if.end12.i.out_unlock_crit_edge, label %land.lhs.true82

if.end12.i.out_unlock_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

land.lhs.true82:                                  ; preds = %if.end12.i
  %98 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %skb, align 8
  %99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %99, align 4
  %reasm_tailp20.i = getelementptr inbounds %struct.mctp_sk_key, ptr %call13, i32 0, i32 9
  %101 = ptrtoint ptr %reasm_tailp20.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reasm_tailp20.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %skb, ptr %102, align 4
  store ptr %skb, ptr %reasm_tailp20.i, align 4
  %104 = ptrtoint ptr %last_seq4.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %89, ptr %last_seq4.i, align 1
  %105 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len, align 4
  %107 = ptrtoint ptr %reasm_head75 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reasm_head75, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 7
  %109 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data_len.i, align 8
  %add26.i = add i32 %110, %106
  store i32 %add26.i, ptr %data_len.i, align 8
  %111 = load i32, ptr %len, align 4
  %112 = load ptr, ptr %reasm_head75, align 4
  %len29.i = getelementptr inbounds %struct.sk_buff, ptr %112, i32 0, i32 6
  %113 = ptrtoint ptr %len29.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len29.i, align 4
  %add30.i = add i32 %114, %111
  store i32 %add30.i, ptr %len29.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %115 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %truesize.i, align 8
  %117 = load ptr, ptr %reasm_head75, align 4
  %truesize32.i = getelementptr inbounds %struct.sk_buff, ptr %117, i32 0, i32 20
  %118 = ptrtoint ptr %truesize32.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %truesize32.i, align 8
  %add33.i = add i32 %119, %116
  store i32 %add33.i, ptr %truesize32.i, align 8
  %and84 = and i32 %conv14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %land.lhs.true82.out_unlock_crit_edge, label %if.then86

land.lhs.true82.out_unlock_crit_edge:             ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then86:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #18
  %sk87 = getelementptr inbounds %struct.mctp_sk_key, ptr %call13, i32 0, i32 3
  %120 = ptrtoint ptr %sk87 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sk87, align 4
  %122 = ptrtoint ptr %reasm_head75 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reasm_head75, align 4
  %call89 = tail call i32 @sock_queue_rcv_skb(ptr noundef %121, ptr noundef %123) #16
  %124 = ptrtoint ptr %reasm_head75 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %reasm_head75, align 4
  tail call fastcc void @trace_mctp_key_release(ptr noundef nonnull %call13, i32 noundef 1)
  %125 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %f, align 4
  tail call fastcc void @__mctp_key_unlock_drop(ptr noundef nonnull %call13, ptr noundef %4, i32 noundef %126)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then86, %land.lhs.true82.out_unlock_crit_edge, %if.end12.i.out_unlock_crit_edge, %if.end.i178.out_unlock_crit_edge, %if.then74.out_unlock_crit_edge, %if.else72.out_unlock_crit_edge, %if.else68, %if.then67, %if.else61, %if.then60, %if.then51.out_unlock_crit_edge, %if.then47, %if.then43.out_unlock_crit_edge, %if.end36.out_unlock_crit_edge, %for.inc.i.out_unlock_crit_edge, %do.end38.i.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge, %land.lhs.true30.out_unlock_crit_edge
  %rc.1 = phi i32 [ -17, %if.then67 ], [ %call69, %if.else68 ], [ 0, %if.then86 ], [ 0, %land.lhs.true82.out_unlock_crit_edge ], [ -2, %if.end36.out_unlock_crit_edge ], [ 0, %if.then47 ], [ 0, %if.then43.out_unlock_crit_edge ], [ -12, %if.then51.out_unlock_crit_edge ], [ 0, %if.else61 ], [ %call58, %if.then60 ], [ -2, %if.else72.out_unlock_crit_edge ], [ -2, %land.lhs.true30.out_unlock_crit_edge ], [ -2, %if.end.i.out_unlock_crit_edge ], [ -2, %do.end38.i.out_unlock_crit_edge ], [ -22, %if.then74.out_unlock_crit_edge ], [ -22, %if.end.i178.out_unlock_crit_edge ], [ -22, %if.end12.i.out_unlock_crit_edge ], [ -2, %for.inc.i.out_unlock_crit_edge ]
  %key.2 = phi ptr [ null, %if.then67 ], [ %key.0194208, %if.else68 ], [ null, %if.then86 ], [ %call13, %land.lhs.true82.out_unlock_crit_edge ], [ %call13, %if.end36.out_unlock_crit_edge ], [ null, %if.then47 ], [ null, %if.then43.out_unlock_crit_edge ], [ null, %if.then51.out_unlock_crit_edge ], [ null, %if.else61 ], [ null, %if.then60 ], [ null, %if.else72.out_unlock_crit_edge ], [ null, %land.lhs.true30.out_unlock_crit_edge ], [ null, %if.end.i.out_unlock_crit_edge ], [ null, %do.end38.i.out_unlock_crit_edge ], [ %call13, %if.then74.out_unlock_crit_edge ], [ %call13, %if.end.i178.out_unlock_crit_edge ], [ %call13, %if.end12.i.out_unlock_crit_edge ], [ null, %for.inc.i.out_unlock_crit_edge ]
  %call.i179 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i179, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i182

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i182:                               ; preds = %out_unlock
  %call1.i180 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i180)
  %tobool.not.i181 = icmp eq i32 %call1.i180, 0
  br i1 %tobool.not.i181, label %land.lhs.true.i182.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i184

land.lhs.true.i182.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i182
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i184:                              ; preds = %land.lhs.true.i182
  %.b4.i183 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i183, label %land.lhs.true2.i184.rcu_read_unlock.exit_crit_edge, label %if.then.i185

land.lhs.true2.i184.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i185:                                     ; preds = %land.lhs.true2.i184
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i185, %land.lhs.true2.i184.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i182.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !203
  %127 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i186 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i186 to ptr
  %preempt_count.i.i.i.i187 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i.i.i187, align 4
  %sub.i.i.i = add i32 %130, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i187, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool95.not = icmp eq ptr %key.2, null
  br i1 %tobool95.not, label %rcu_read_unlock.exit.out_crit_edge, label %if.then96

rcu_read_unlock.exit.out_crit_edge:               ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then96:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %lock97 = getelementptr inbounds %struct.mctp_sk_key, ptr %key.2, i32 0, i32 6
  %131 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %f, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock97, i32 noundef %132) #16
  tail call void @mctp_key_unref(ptr noundef nonnull %key.2)
  br label %out

out:                                              ; preds = %if.then96, %rcu_read_unlock.exit.out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool99.not = icmp eq i32 %rc.1, 0
  br i1 %tobool99.not, label %out.if.end101_crit_edge, label %out.if.then100_crit_edge

out.if.then100_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then100

out.if.end101_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then100:                                       ; preds = %out.if.then100_crit_edge, %if.end.if.then100_crit_edge, %skb_orphan.exit.if.then100_crit_edge
  %rc.2214 = phi i32 [ %rc.1, %out.if.then100_crit_edge ], [ -22, %skb_orphan.exit.if.then100_crit_edge ], [ -22, %if.end.if.then100_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %out.if.end101_crit_edge
  %rc.2215 = phi i32 [ %rc.2214, %if.then100 ], [ 0, %out.if.end101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #16
  ret i32 %rc.2215
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_dev_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mctp_lookup_key(ptr noundef %net, ptr nocapture noundef readonly %skb, i8 noundef zeroext %peer, ptr nocapture noundef writeonly %irqflags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %flags_seq_tag = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %flags_seq_tag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags_seq_tag, align 1
  %6 = and i8 %5, 15
  %keys_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %keys_lock) #16
  %keys = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 4
  %7 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %keys, align 4
  %tobool.not = icmp eq ptr %8, null
  %add.ptr = getelementptr i8, ptr %8, i32 -8
  %tobool11.not6064 = icmp eq ptr %add.ptr, null
  %tobool11.not60 = or i1 %tobool.not, %tobool11.not6064
  br i1 %tobool11.not60, label %entry.if.else_crit_edge, label %for.body.lr.ph

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

for.body.lr.ph:                                   ; preds = %entry
  %dest = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %key.061 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr23, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dest, align 1
  %local_addr.i = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 1
  %11 = ptrtoint ptr %local_addr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %local_addr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %10)
  %cmp.not.i = icmp eq i8 %12, %10
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %13 = ptrtoint ptr %key.061 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %key.061, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %peer)
  %cmp5.not.i = icmp eq i8 %14, %peer
  br i1 %cmp5.not.i, label %mctp_key_match.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

mctp_key_match.exit:                              ; preds = %if.end.i
  %tag9.i = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 2
  %15 = ptrtoint ptr %tag9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tag9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %6)
  %cmp12.not.i = icmp eq i8 %16, %6
  br i1 %cmp12.not.i, label %if.end, label %mctp_key_match.exit.for.inc_crit_edge

mctp_key_match.exit.for.inc_crit_edge:            ; preds = %mctp_key_match.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %mctp_key_match.exit
  %lock = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %valid = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 12
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not = icmp eq i8 %18, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  %refs = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #16, !srcloc !207
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then14.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !201

if.then14.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then14
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.then28_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !198

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.then28_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then14.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then14.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #16
  br label %if.then28

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %mctp_key_match.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hlist = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 4
  %21 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hlist, align 4
  %tobool19.not = icmp eq ptr %22, null
  %add.ptr23 = getelementptr i8, ptr %22, i32 -8
  %tobool11.not66 = icmp eq ptr %add.ptr23, null
  %tobool11.not = or i1 %tobool19.not, %tobool11.not66
  br i1 %tobool11.not, label %for.inc.if.else_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then28:                                        ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.then28_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %keys_lock) #16
  %23 = ptrtoint ptr %irqflags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call5, ptr %irqflags, align 4
  br label %if.end33

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %keys_lock, i32 noundef %call5) #16
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then28
  %key.059 = phi ptr [ null, %if.else ], [ %key.061, %if.then28 ]
  ret ptr %key.059
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mctp_key_release(ptr noundef %key, i32 noundef %reason) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mctp_key_release, i32 0, i32 1), ptr blockaddress(@trace_mctp_key_release, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !213

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !219
  %call42 = tail call i32 @__traceiter_mctp_key_release(ptr noundef null, ptr noundef %key, i32 noundef %reason) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !220
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mctp_key_release, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mctp_key_release, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mctp_key_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_mctp_key_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 71, ptr noundef nonnull @.str.9) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !217
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #16
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mctp_key_unlock_drop(ptr noundef %key, ptr noundef %net, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reasm_head = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 8
  %0 = ptrtoint ptr %reasm_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reasm_head, align 4
  store ptr null, ptr %reasm_head, align 4
  %reasm_dead = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 10
  %2 = ptrtoint ptr %reasm_dead to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %reasm_dead, align 4
  %valid = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 12
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %valid, align 2
  %dev = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @mctp_dev_release_key(ptr noundef %5, ptr noundef %key) #16
  %lock = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags) #16
  %keys_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %keys_lock) #16
  %hlist = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 4
  %6 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hlist, align 4
  %pprev2.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev2.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.hlist_del.exit_crit_edge, label %do.body13.i.i

entry.hlist_del.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %entry.hlist_del.exit_crit_edge
  %12 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist, align 4
  %13 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %sklist = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 5
  %14 = ptrtoint ptr %sklist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sklist, align 4
  %pprev2.i.i20 = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %pprev2.i.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev2.i.i20, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %15, ptr %17, align 4
  %tobool.not.i.i21 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i21, label %hlist_del.exit.hlist_del.exit24_crit_edge, label %do.body13.i.i23

hlist_del.exit.hlist_del.exit24_crit_edge:        ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del.exit24

do.body13.i.i23:                                  ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i22 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %pprev14.i.i22, align 4
  br label %hlist_del.exit24

hlist_del.exit24:                                 ; preds = %do.body13.i.i23, %hlist_del.exit.hlist_del.exit24_crit_edge
  %20 = ptrtoint ptr %sklist to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %sklist, align 4
  %21 = ptrtoint ptr %pprev2.i.i20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %keys_lock, i32 noundef %call3) #16
  tail call void @mctp_key_unref(ptr noundef %key)
  tail call void @mctp_key_unref(ptr noundef %key)
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mctp_frag_queue(ptr nocapture noundef %key, ptr noundef %skb) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %flags_seq_tag = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %flags_seq_tag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags_seq_tag, align 1
  %6 = lshr i8 %5, 4
  %7 = and i8 %6, 3
  %reasm_head = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 8
  %8 = ptrtoint ptr %reasm_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reasm_head, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %reasm_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %reasm_head, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 6
  %reasm_tailp = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 9
  %13 = ptrtoint ptr %reasm_tailp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %frag_list, ptr %reasm_tailp, align 4
  %last_seq = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 11
  %14 = ptrtoint ptr %last_seq to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %7, ptr %last_seq, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_seq4 = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 11
  %15 = ptrtoint ptr %last_seq4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %last_seq4, align 1
  %17 = add i8 %16, 1
  %18 = and i8 %17, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %18)
  %cmp.not = icmp eq i8 %7, %18
  br i1 %cmp.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len14, align 4
  %add15 = add i32 %22, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add15)
  %cmp16 = icmp ugt i32 %add15, 65536
  br i1 %cmp16, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %skb, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %24, align 4
  %reasm_tailp20 = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 9
  %26 = ptrtoint ptr %reasm_tailp20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reasm_tailp20, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %skb, ptr %27, align 4
  store ptr %skb, ptr %reasm_tailp20, align 4
  %29 = ptrtoint ptr %last_seq4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %7, ptr %last_seq4, align 1
  %30 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len14, align 4
  %32 = ptrtoint ptr %reasm_head to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reasm_head, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len, align 8
  %add26 = add i32 %35, %31
  store i32 %add26, ptr %data_len, align 8
  %36 = load i32, ptr %len14, align 4
  %37 = load ptr, ptr %reasm_head, align 4
  %len29 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len29, align 4
  %add30 = add i32 %39, %36
  store i32 %add30, ptr %len29, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %40 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %truesize, align 8
  %42 = load ptr, ptr %reasm_head, align 4
  %truesize32 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %truesize32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %truesize32, align 8
  %add33 = add i32 %44, %41
  store i32 %add33, ptr %truesize32, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 0, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mctp_key_add(ptr noundef %key, ptr noundef %msk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %keys_lock = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 52, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %keys_lock) #16
  %keys = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 52, i32 4
  %2 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keys, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %tobool10.not7679 = icmp eq ptr %add.ptr, null
  %tobool10.not76 = or i1 %tobool.not, %tobool10.not7679
  br i1 %tobool10.not76, label %entry.if.then30_crit_edge, label %for.body.lr.ph

entry.if.then30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

for.body.lr.ph:                                   ; preds = %entry
  %local_addr = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 1
  %tag = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.077 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr25, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %local_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %local_addr, align 1
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tag, align 2
  %local_addr.i = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.077, i32 0, i32 1
  %8 = ptrtoint ptr %local_addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %local_addr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %5)
  %cmp.not.i = icmp eq i8 %9, %5
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %key, align 4
  %12 = ptrtoint ptr %tmp.077 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp.077, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %11)
  %cmp5.not.i = icmp eq i8 %13, %11
  br i1 %cmp5.not.i, label %mctp_key_match.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

mctp_key_match.exit:                              ; preds = %if.end.i
  %tag9.i = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.077, i32 0, i32 2
  %14 = ptrtoint ptr %tag9.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tag9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %7)
  %cmp12.not.i = icmp eq i8 %15, %7
  br i1 %cmp12.not.i, label %if.then, label %mctp_key_match.exit.for.inc_crit_edge

mctp_key_match.exit.for.inc_crit_edge:            ; preds = %mctp_key_match.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %mctp_key_match.exit
  %lock = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.077, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %valid = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.077, i32 0, i32 12
  %16 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %valid, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br i1 %tobool12.not, label %if.then.for.inc_crit_edge, label %if.then.if.end37_crit_edge

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %mctp_key_match.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hlist = getelementptr inbounds %struct.mctp_sk_key, ptr %tmp.077, i32 0, i32 4
  %18 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hlist, align 4
  %tobool21.not = icmp eq ptr %19, null
  %add.ptr25 = getelementptr i8, ptr %19, i32 -8
  %tobool10.not80 = icmp eq ptr %add.ptr25, null
  %tobool10.not = or i1 %tobool21.not, %tobool10.not80
  br i1 %tobool10.not, label %for.inc.if.then30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.if.then30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

if.then30:                                        ; preds = %for.inc.if.then30_crit_edge, %entry.if.then30_crit_edge
  %refs = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #16
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #16, !srcloc !207
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then30.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !201

if.then30.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then30
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !198

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then30.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then30.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #16
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, 600
  %expiry = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 13
  %23 = ptrtoint ptr %expiry to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %expiry, align 4
  %key_expiry = getelementptr inbounds %struct.mctp_sock, ptr %msk, i32 0, i32 6
  %call32 = tail call i32 @timer_reduce(ptr noundef %key_expiry, i32 noundef %add) #16
  %hlist33 = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 4
  %24 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %keys, align 4
  %26 = ptrtoint ptr %hlist33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %hlist33, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %refcount_inc.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

refcount_inc.exit.hlist_add_head.exit_crit_edge:  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %hlist33, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %refcount_inc.exit.hlist_add_head.exit_crit_edge
  %28 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hlist33, ptr %keys, align 4
  %pprev34.i = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %keys, ptr %pprev34.i, align 4
  %sklist = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 5
  %keys36 = getelementptr inbounds %struct.mctp_sock, ptr %msk, i32 0, i32 5
  %30 = ptrtoint ptr %keys36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %keys36, align 4
  %32 = ptrtoint ptr %sklist to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %sklist, align 4
  %tobool.not.i64 = icmp eq ptr %31, null
  br i1 %tobool.not.i64, label %hlist_add_head.exit.hlist_add_head.exit68_crit_edge, label %do.body12.i66

hlist_add_head.exit.hlist_add_head.exit68_crit_edge: ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head.exit68

do.body12.i66:                                    ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i65 = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %pprev.i65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %sklist, ptr %pprev.i65, align 4
  br label %hlist_add_head.exit68

hlist_add_head.exit68:                            ; preds = %do.body12.i66, %hlist_add_head.exit.hlist_add_head.exit68_crit_edge
  %34 = ptrtoint ptr %keys36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %sklist, ptr %keys36, align 4
  %pprev34.i67 = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %pprev34.i67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %keys36, ptr %pprev34.i67, align 4
  br label %if.end37

if.end37:                                         ; preds = %hlist_add_head.exit68, %if.then.if.end37_crit_edge
  %rc.373 = phi i32 [ 0, %hlist_add_head.exit68 ], [ -17, %if.then.if.end37_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %keys_lock, i32 noundef %call4) #16
  ret i32 %rc.373
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mctp_key_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_route_discard(ptr nocapture noundef readnone %route, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_pkttype_receive(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !202
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call ptr @__mctp_dev_get(ptr noundef %dev) #16
  %call.i69 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i69, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i72

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i72:                                ; preds = %rcu_read_lock.exit
  %call1.i70 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i72.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i74

land.lhs.true.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i74:                               ; preds = %land.lhs.true.i72
  %.b4.i73 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i73, label %land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge, label %if.then.i75

land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i75:                                      ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i75, %land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i72.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !203
  %6 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i76 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i76 to ptr
  %preempt_count.i.i.i.i77 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i77, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i77, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %rcu_read_unlock.exit.err_drop_crit_edge, label %if.end

rcu_read_unlock.exit.err_drop_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_drop

if.end:                                           ; preds = %rcu_read_unlock.exit
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp.i, label %if.end.if.end4_crit_edge, label %if.end.i, !prof !198

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp3.i = icmp ult i32 %11, 4
  br i1 %cmp3.i, label %if.end.i.err_drop_crit_edge, label %pskb_may_pull.exit, !prof !201

if.end.i.err_drop_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #16
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.err_drop_crit_edge, label %pskb_may_pull.exit.if.end4_crit_edge

pskb_may_pull.exit.if.end4_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

pskb_may_pull.exit.err_drop_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_drop

if.end4:                                          ; preds = %pskb_may_pull.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cond = icmp eq i8 %21, 1
  br i1 %cond, label %if.end12, label %if.end4.err_drop_crit_edge

if.end4.err_drop_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_drop

if.end12:                                         ; preds = %if.end4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 290, i16 %23)
  %cmp14 = icmp eq i16 %23, 290
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %24 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296258128, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 1296258128
  br i1 %cmp.not.i, label %if.then16.do.end_crit_edge, label %do.end11.i, !prof !198

if.then16.do.end_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end11.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 194, i32 noundef 9, ptr noundef null) #16
  br label %do.end

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1296258128, ptr %cb1.i, align 4
  %halen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %27 = ptrtoint ptr %halen to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %halen, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %do.end11.i, %if.then16.do.end_crit_edge
  %net20 = getelementptr inbounds %struct.mctp_dev, ptr %call1, i32 0, i32 2
  %28 = ptrtoint ptr %net20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %net20, align 4
  %net21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %net21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %net21, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %31 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifindex, align 4
  %ifindex22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %ifindex22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ifindex22, align 4
  %dest = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dest, align 1
  %call24 = tail call ptr @mctp_route_lookup(ptr noundef %1, i32 noundef %29, i8 noundef zeroext %35)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %land.lhs.true, label %do.end.if.end39_crit_edge

do.end.if.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

land.lhs.true:                                    ; preds = %do.end
  %36 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp28 = icmp eq i8 %37, 0
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true.err_drop_crit_edge

land.lhs.true.err_drop_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_drop

land.lhs.true30:                                  ; preds = %land.lhs.true
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %38 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp32 = icmp ult i16 %bf.load, 8192
  br i1 %cmp32, label %if.end36, label %land.lhs.true30.err_drop_crit_edge

land.lhs.true30.err_drop_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_drop

if.end36:                                         ; preds = %land.lhs.true30
  %call35 = tail call fastcc ptr @mctp_route_lookup_null(ptr noundef %1, ptr noundef %dev)
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %if.end36.err_drop_crit_edge, label %if.end36.if.end39_crit_edge

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.end36.err_drop_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_drop

if.end39:                                         ; preds = %if.end36.if.end39_crit_edge, %do.end.if.end39_crit_edge
  %rt.096 = phi ptr [ %call35, %if.end36.if.end39_crit_edge ], [ %call24, %do.end.if.end39_crit_edge ]
  %output = getelementptr inbounds %struct.mctp_route, ptr %rt.096, i32 0, i32 5
  %39 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %output, align 4
  %call40 = tail call i32 %40(ptr noundef nonnull %rt.096, ptr noundef %skb) #16
  %refs.i = getelementptr inbounds %struct.mctp_route, ptr %rt.096, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !198

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 3) #16
  br label %cleanup

do.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %dev.i = getelementptr inbounds %struct.mctp_route, ptr %rt.096, i32 0, i32 2
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void @mctp_dev_put(ptr noundef %43) #16
  %rcu.i = getelementptr inbounds %struct.mctp_route, ptr %rt.096, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %cleanup

err_drop:                                         ; preds = %if.end36.err_drop_crit_edge, %land.lhs.true30.err_drop_crit_edge, %land.lhs.true.err_drop_crit_edge, %if.end4.err_drop_crit_edge, %pskb_may_pull.exit.err_drop_crit_edge, %if.end.i.err_drop_crit_edge, %rcu_read_unlock.exit.err_drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %err_drop, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %err_drop ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mctp_route_lookup_null(ptr noundef %net, ptr noundef readnone %dev) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @mctp_route_lookup_null.__warned, align 1
  br i1 %.b37, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_route_lookup_null.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52
  %0 = ptrtoint ptr %mctp to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn40 = load volatile ptr, ptr %mctp, align 4
  %cmp.not41 = icmp eq ptr %.pn40, %mctp
  br i1 %cmp.not41, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn40, %do.end.for.body_crit_edge ]
  %dev11 = getelementptr i8, ptr %.pn42, i32 -16
  %1 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev11, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp13 = icmp eq ptr %4, %dev
  br i1 %cmp13, label %land.lhs.true14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %type = getelementptr i8, ptr %.pn42, i32 -8
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp15 = icmp eq i8 %6, 2
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %refs = getelementptr i8, ptr %.pn42, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #16
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #16
  %7 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %refs, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true17
  %9 = phi i32 [ %8, %land.lhs.true17 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 %12, i32 %add.i.i.i, ptr elementtype(i32) %refs) #16, !srcloc !200
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !198

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !198

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 0) #16
  %17 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %18 = phi i32 [ %15, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.i.i.i.not = icmp eq i32 %18, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #16
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %cleanup.split.loop.exit38

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load volatile ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %mctp
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.split.loop.exit38:                        ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  %rt.0.le = getelementptr i8, ptr %.pn42, i32 -20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit38, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %rt.0.le, %cleanup.split.loop.exit38 ], [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mctp_route_nlparse(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack, ptr noundef %tb, ptr nocapture noundef writeonly %rtm, ptr nocapture noundef writeonly %mdev, ptr nocapture noundef writeonly %daddr_start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %6)
  %cmp.i.i = icmp ult i32 %6, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.thread, label %do.body.thread103

do.body.thread:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_route_nlparse.__msg) #16
  br label %cleanup

do.body.thread103:                                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_route_nlparse.__msg) #16
  br label %if.then2

nlmsg_parse.exit:                                 ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %6, -28
  %call5.i.i = tail call i32 @__nla_parse(ptr noundef %tb, i32 noundef 30, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @rta_mctp_policy, i32 noundef 31, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %do.body, label %if.end3

do.body:                                          ; preds = %nlmsg_parse.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_route_nlparse.__msg) #16
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %do.body.if.then2_crit_edge, %do.body.thread103
  %retval.0.i.i100106 = phi i32 [ -22, %do.body.thread103 ], [ %call5.i.i, %do.body.if.then2_crit_edge ]
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mctp_route_nlparse.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %nlmsg_parse.exit
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %do.body6, label %if.end14

do.body6:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_route_nlparse.__msg.12) #16
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %if.then9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mctp_route_nlparse.__msg.12, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i, align 1
  %14 = ptrtoint ptr %daddr_start to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %daddr_start, align 1
  %arrayidx17 = getelementptr ptr, ptr %tb, i32 4
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %do.body20, label %if.end28

do.body20:                                        ; preds = %if.end14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_route_nlparse.__msg.13) #16
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.cleanup_crit_edge, label %if.then23

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mctp_route_nlparse.__msg.13, ptr %extack, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end14
  %add.ptr.i.i97 = getelementptr i8, ptr %16, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i97 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i97, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %20 = ptrtoint ptr %rtm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %rtm, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %22)
  %cmp32.not = icmp eq i8 %22, 45
  br i1 %cmp32.not, label %if.end43, label %do.body35

do.body35:                                        ; preds = %if.end28
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_route_nlparse.__msg.14) #16
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.body35.cleanup_crit_edge, label %if.then38

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mctp_route_nlparse.__msg.14, ptr %extack, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %call44 = tail call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %19) #16
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.body47, label %if.end55

do.body47:                                        ; preds = %if.end43
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_route_nlparse.__msg.15) #16
  %tobool49.not = icmp eq ptr %extack, null
  br i1 %tobool49.not, label %do.body47.cleanup_crit_edge, label %if.then50

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then50:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mctp_route_nlparse.__msg.15, ptr %extack, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end43
  %call56 = tail call ptr @mctp_dev_get_rtnl(ptr noundef nonnull %call44) #16
  %25 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call56, ptr %mdev, align 4
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %flags = getelementptr inbounds %struct.net_device, ptr %call44, i32 0, i32 14
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end59.cleanup_crit_edge, label %do.body62

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body62:                                        ; preds = %if.end59
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_route_nlparse.__msg.16) #16
  %tobool64.not = icmp eq ptr %extack, null
  br i1 %tobool64.not, label %do.body62.cleanup_crit_edge, label %if.then65

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then65:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mctp_route_nlparse.__msg.16, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body62.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then50, %do.body47.cleanup_crit_edge, %if.then38, %do.body35.cleanup_crit_edge, %if.then23, %do.body20.cleanup_crit_edge, %if.then9, %do.body6.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge, %do.body.thread
  %retval.0 = phi i32 [ %retval.0.i.i100106, %if.then2 ], [ %call5.i.i, %do.body.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %do.body6.cleanup_crit_edge ], [ -22, %if.then23 ], [ -22, %do.body20.cleanup_crit_edge ], [ -22, %if.then38 ], [ -22, %do.body35.cleanup_crit_edge ], [ -19, %if.then50 ], [ -19, %do.body47.cleanup_crit_edge ], [ -19, %if.end55.cleanup_crit_edge ], [ -22, %if.then65 ], [ -22, %do.body62.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ], [ -22, %do.body.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctp_dev_get_rtnl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_routes_net_init(ptr noundef %net) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52
  %0 = ptrtoint ptr %mctp to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %mctp, ptr %mctp, align 4
  %prev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mctp, ptr %prev.i, align 4
  %binds = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 2
  %2 = ptrtoint ptr %binds to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %binds, align 4
  %bind_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 1
  tail call void @__mutex_init(ptr noundef %bind_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @mctp_routes_net_init.__key) #16
  %keys = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 4
  %3 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %keys, align 4
  %keys_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %keys_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @mctp_routes_net_init.__key.20, i16 noundef signext 3) #16
  %default_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 5
  %4 = ptrtoint ptr %default_net.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %default_net.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_routes_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !202
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @mctp_routes_net_exit.__warned, align 1
  br i1 %.b23, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mctp_routes_net_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1306, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %mctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52
  %4 = ptrtoint ptr %mctp to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36 = load volatile ptr, ptr %mctp, align 4
  %cmp.not37 = icmp eq ptr %.pn36, %mctp
  br i1 %cmp.not37, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %mctp_route_release.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn38 = phi ptr [ %.pn, %mctp_route_release.exit.for.body_crit_edge ], [ %.pn36, %do.end.for.body_crit_edge ]
  %refs.i = getelementptr i8, ptr %.pn38, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !197
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i25, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mctp_route_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !198

if.end5.i.i.i.i.mctp_route_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_route_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 3) #16
  br label %mctp_route_release.exit

if.then.i25:                                      ; preds = %for.body
  %rt.0 = getelementptr i8, ptr %.pn38, i32 -20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %dev.i = getelementptr i8, ptr %.pn38, i32 -16
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void @mctp_dev_put(ptr noundef %7) #16
  %tobool.not.i24 = icmp eq ptr %rt.0, null
  br i1 %tobool.not.i24, label %if.then.i25.mctp_route_release.exit_crit_edge, label %do.end.i

if.then.i25.mctp_route_release.exit_crit_edge:    ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_route_release.exit

do.end.i:                                         ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #18
  %rcu.i = getelementptr i8, ptr %.pn38, i32 12
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %mctp_route_release.exit

mctp_route_release.exit:                          ; preds = %do.end.i, %if.then.i25.mctp_route_release.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mctp_route_release.exit_crit_edge
  %8 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load volatile ptr, ptr %.pn38, align 4
  %cmp.not = icmp eq ptr %.pn, %mctp
  br i1 %cmp.not, label %mctp_route_release.exit.for.end_crit_edge, label %mctp_route_release.exit.for.body_crit_edge

mctp_route_release.exit.for.body_crit_edge:       ; preds = %mctp_route_release.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

mctp_route_release.exit.for.end_crit_edge:        ; preds = %mctp_route_release.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %mctp_route_release.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i26, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %for.end
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !203
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #16
  %and.i.i.i.i.i33 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_test_fragment(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion8 = alloca %struct.kunit_unary_assert, align 4
  %__assertion32 = alloca %struct.kunit_unary_assert, align 4
  %__assertion55 = alloca %struct.kunit_binary_assert, align 8
  %__assertion88 = alloca %struct.kunit_binary_assert, align 8
  %__assertion120 = alloca %struct.kunit_binary_assert, align 8
  %__assertion152 = alloca %struct.kunit_binary_assert, align 8
  %__assertion189 = alloca %struct.kunit_binary_assert, align 8
  %__assertion227 = alloca %struct.kunit_binary_assert, align 8
  %__assertion268 = alloca %struct.kunit_binary_assert, align 8
  %__assertion307 = alloca %struct.kunit_binary_assert, align 8
  %__assertion339 = alloca %struct.kunit_binary_assert, align 8
  %__assertion369 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %param_value = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 4
  %0 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_value, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %msgsize2 = getelementptr inbounds %struct.mctp_frag_test, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %msgsize2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msgsize2, align 4
  %add.i = add i32 %5, 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.mctp_test_create_skb.exit_crit_edge, label %if.end.i

entry.mctp_test_create_skb.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_test_create_skb.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 17434632, ptr %call1.i, align 1
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not.i = icmp eq i32 %5, 0
  br i1 %cmp16.not.i, label %if.end.i.mctp_test_create_skb.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.mctp_test_create_skb.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_test_create_skb.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.017.i to i8
  %arrayidx.i = getelementptr i8, ptr %call2.i, i32 %i.017.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.body.i.mctp_test_create_skb.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.mctp_test_create_skb.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_test_create_skb.exit

mctp_test_create_skb.exit:                        ; preds = %for.body.i.mctp_test_create_skb.exit_crit_edge, %if.end.i.mctp_test_create_skb.exit_crit_edge, %entry.mctp_test_create_skb.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #16
  %8 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !212
  %10 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 148, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %13 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.26, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %14 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %16 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.27, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %expected_true, align 4
  %tobool = icmp ne ptr %call.i.i, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #16
  %call6 = call fastcc ptr @mctp_test_create_route(ptr noundef null, i8 noundef zeroext 10, i32 noundef %3)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion8) #16
  %19 = getelementptr inbounds i8, ptr %__assertion8, i32 32
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !212
  %21 = ptrtoint ptr %__assertion8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion8, align 4
  %type11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 1
  %22 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %type11, align 4
  %line12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 2
  %23 = ptrtoint ptr %line12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 151, ptr %line12, align 4
  %file13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 3
  %24 = ptrtoint ptr %file13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.26, ptr %file13, align 4
  %message14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4
  %25 = ptrtoint ptr %message14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message14, align 4
  %va16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va16, align 4
  %format17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 5
  %27 = ptrtoint ptr %format17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_unary_assert_format, ptr %format17, align 4
  %condition18 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 1
  %28 = ptrtoint ptr %condition18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.28, ptr %condition18, align 4
  %expected_true19 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 2
  %29 = ptrtoint ptr %expected_true19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %expected_true19, align 4
  %tobool21 = icmp ne ptr %call6, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion8, i1 noundef zeroext %tobool21, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion8) #16
  %call30 = call fastcc i32 @mctp_do_fragment_route(ptr noundef %call6, ptr noundef %call.i.i, i32 noundef %3, i8 noundef zeroext 8)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion32) #16
  %30 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %30, align 4, !annotation !212
  %32 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion32, align 4
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %33 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type35, align 4
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %34 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 154, ptr %line36, align 4
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %35 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.26, ptr %file37, align 4
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %36 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message38, align 4
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va40, align 4
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %38 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_unary_assert_format, ptr %format41, align 4
  %condition42 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion32, i32 0, i32 1
  %39 = ptrtoint ptr %condition42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.29, ptr %condition42, align 4
  %expected_true43 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion32, i32 0, i32 2
  %40 = ptrtoint ptr %expected_true43 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %expected_true43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool45.not = icmp eq i32 %call30, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %tobool45.not, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion32) #16
  %pkts = getelementptr inbounds %struct.mctp_test_route, ptr %call6, i32 0, i32 1
  %qlen = getelementptr inbounds %struct.mctp_test_route, ptr %call6, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen, align 4
  %n_frags = getelementptr inbounds %struct.mctp_frag_test, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %n_frags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_frags, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion55) #16
  %45 = getelementptr inbounds i8, ptr %__assertion55, i32 32
  %46 = call ptr @memset(ptr %45, i32 255, i32 24)
  %47 = ptrtoint ptr %__assertion55 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %test, ptr %__assertion55, align 8
  %type58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 1
  %48 = ptrtoint ptr %type58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %type58, align 4
  %line59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 2
  %49 = ptrtoint ptr %line59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 158, ptr %line59, align 8
  %file60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 3
  %50 = ptrtoint ptr %file60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.26, ptr %file60, align 4
  %message61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4
  %51 = ptrtoint ptr %message61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message61, align 8
  %va63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %va63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va63, align 4
  %format64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 5
  %53 = ptrtoint ptr %format64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_binary_assert_format, ptr %format64, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 1
  %54 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.30, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 2
  %55 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.31, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 3
  %conv = sext i32 %42 to i64
  %56 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 4
  %57 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.32, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 5
  %conv65 = zext i32 %44 to i64
  %58 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv65, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp67 = icmp eq i32 %42, %44
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion55, i1 noundef zeroext %cmp67, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion55) #16
  %sub = add i32 %42, -1
  %call79482 = call ptr @skb_dequeue(ptr noundef %pkts) #16
  %tobool80.not483 = icmp eq ptr %call79482, null
  br i1 %tobool80.not483, label %mctp_test_create_skb.exit.for.end_crit_edge, label %if.end.lr.ph

mctp_test_create_skb.exit.for.end_crit_edge:      ; preds = %mctp_test_create_skb.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.lr.ph:                                     ; preds = %mctp_test_create_skb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp75481 = icmp eq i32 %sub, 0
  %type91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 1
  %line92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 2
  %file93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 3
  %message94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 4
  %va96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 4, i32 1
  %format97 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 5
  %operation98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 1
  %left_text99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 2
  %left_value100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 3
  %right_text102 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 4
  %right_value103 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 5
  %type123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 1
  %line124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 2
  %file125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 3
  %message126 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 4
  %va128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 4, i32 1
  %format129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 5
  %operation130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion120, i32 0, i32 1
  %left_text131 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion120, i32 0, i32 2
  %left_value132 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion120, i32 0, i32 3
  %right_text134 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion120, i32 0, i32 4
  %right_value135 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion120, i32 0, i32 5
  %type155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 1
  %line156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 2
  %file157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 3
  %message158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 4
  %va160 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 4, i32 1
  %format161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 5
  %operation162 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 1
  %left_text163 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 2
  %left_value164 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 3
  %right_text166 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 4
  %right_value167 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 5
  %type192 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion189, i32 0, i32 1
  %line193 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion189, i32 0, i32 2
  %file194 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion189, i32 0, i32 3
  %message195 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion189, i32 0, i32 4
  %va197 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion189, i32 0, i32 4, i32 1
  %format198 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion189, i32 0, i32 5
  %operation199 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion189, i32 0, i32 1
  %left_text200 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion189, i32 0, i32 2
  %left_value201 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion189, i32 0, i32 3
  %right_text203 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion189, i32 0, i32 4
  %right_value204 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion189, i32 0, i32 5
  %type230 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion227, i32 0, i32 1
  %line231 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion227, i32 0, i32 2
  %file232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion227, i32 0, i32 3
  %message233 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion227, i32 0, i32 4
  %va235 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion227, i32 0, i32 4, i32 1
  %format236 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion227, i32 0, i32 5
  %operation237 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion227, i32 0, i32 1
  %left_text238 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion227, i32 0, i32 2
  %left_value239 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion227, i32 0, i32 3
  %right_text241 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion227, i32 0, i32 4
  %right_value242 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion227, i32 0, i32 5
  %type271 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 1
  %line272 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 2
  %file273 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 3
  %message274 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 4
  %va276 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 4, i32 1
  %format277 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 5
  %operation278 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 1
  %left_text279 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 2
  %left_value280 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 3
  %right_text282 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 4
  %right_value283 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 5
  %type310 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion307, i32 0, i32 1
  %line311 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion307, i32 0, i32 2
  %file312 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion307, i32 0, i32 3
  %message313 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion307, i32 0, i32 4
  %va315 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion307, i32 0, i32 4, i32 1
  %format316 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion307, i32 0, i32 5
  %operation317 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion307, i32 0, i32 1
  %left_text318 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion307, i32 0, i32 2
  %left_value319 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion307, i32 0, i32 3
  %right_text321 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion307, i32 0, i32 4
  %right_value322 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion307, i32 0, i32 5
  %type342 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 1
  %line343 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 2
  %file344 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 3
  %message345 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 4
  %va347 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 4, i32 1
  %format348 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 5
  %operation349 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 1
  %left_text350 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 2
  %left_value351 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 3
  %right_text353 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 4
  %right_value354 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 5
  %conv355 = sext i32 %3 to i64
  %type372 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 1
  %line373 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 2
  %file374 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 3
  %message375 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 4
  %va377 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 4, i32 1
  %format378 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 5
  %operation379 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 1
  %left_text380 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 2
  %left_value381 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 3
  %right_text383 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 4
  %right_value384 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 5
  %59 = getelementptr inbounds i8, ptr %__assertion88, i32 32
  %60 = getelementptr inbounds i8, ptr %__assertion120, i32 32
  %61 = getelementptr inbounds i8, ptr %__assertion152, i32 32
  %62 = getelementptr inbounds i8, ptr %__assertion189, i32 32
  %63 = getelementptr inbounds i8, ptr %__assertion227, i32 32
  %64 = getelementptr inbounds i8, ptr %__assertion268, i32 32
  %65 = getelementptr inbounds i8, ptr %__assertion307, i32 32
  %66 = getelementptr inbounds i8, ptr %__assertion339, i32 32
  %67 = getelementptr inbounds i8, ptr %__assertion369, i32 32
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %call79487 = phi ptr [ %call79482, %if.end.lr.ph ], [ %call79, %for.inc.if.end_crit_edge ]
  %cmp75486 = phi i1 [ %cmp75481, %if.end.lr.ph ], [ %cmp75, %for.inc.if.end_crit_edge ]
  %i.0485 = phi i32 [ 0, %if.end.lr.ph ], [ %inc399, %for.inc.if.end_crit_edge ]
  %seq.0484 = phi i8 [ -1, %if.end.lr.ph ], [ %seq.1, %for.inc.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0485)
  %cmp73 = icmp eq i32 %i.0485, 0
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call79487, i32 0, i32 18
  %68 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call79487, i32 0, i32 15, i32 0, i32 20
  %70 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %71 to i32
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 %conv.i.i
  %72 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %add.ptr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion88) #16
  %74 = call ptr @memset(ptr %59, i32 255, i32 24)
  %75 = ptrtoint ptr %__assertion88 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %test, ptr %__assertion88, align 8
  %76 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %type91, align 4
  %77 = ptrtoint ptr %line92 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 178, ptr %line92, align 8
  %78 = ptrtoint ptr %file93 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.26, ptr %file93, align 4
  %79 = ptrtoint ptr %message94 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %message94, align 8
  %80 = ptrtoint ptr %va96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %va96, align 4
  %81 = ptrtoint ptr %format97 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @kunit_binary_assert_format, ptr %format97, align 8
  %82 = ptrtoint ptr %operation98 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.30, ptr %operation98, align 4
  %83 = ptrtoint ptr %left_text99 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.33, ptr %left_text99, align 8
  %conv101 = zext i8 %73 to i64
  %84 = ptrtoint ptr %left_value100 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv101, ptr %left_value100, align 8
  %85 = ptrtoint ptr %right_text102 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.34, ptr %right_text102, align 8
  %86 = ptrtoint ptr %right_value103 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 1, ptr %right_value103, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp108 = icmp eq i8 %73, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion88, i1 noundef zeroext %cmp108, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion88) #16
  %src116 = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %src116 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %src116, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion120) #16
  %89 = call ptr @memset(ptr %60, i32 255, i32 24)
  %90 = ptrtoint ptr %__assertion120 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %test, ptr %__assertion120, align 8
  %91 = ptrtoint ptr %type123 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %type123, align 4
  %92 = ptrtoint ptr %line124 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 179, ptr %line124, align 8
  %93 = ptrtoint ptr %file125 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.26, ptr %file125, align 4
  %94 = ptrtoint ptr %message126 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %message126, align 8
  %95 = ptrtoint ptr %va128 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %va128, align 4
  %96 = ptrtoint ptr %format129 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @kunit_binary_assert_format, ptr %format129, align 8
  %97 = ptrtoint ptr %operation130 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.30, ptr %operation130, align 4
  %98 = ptrtoint ptr %left_text131 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.35, ptr %left_text131, align 8
  %conv133 = zext i8 %88 to i64
  %99 = ptrtoint ptr %left_value132 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv133, ptr %left_value132, align 8
  %100 = ptrtoint ptr %right_text134 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.36, ptr %right_text134, align 8
  %101 = ptrtoint ptr %right_value135 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 8, ptr %right_value135, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %88)
  %cmp140 = icmp eq i8 %88, 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion120, i1 noundef zeroext %cmp140, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion120) #16
  %dest148 = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %dest148 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dest148, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion152) #16
  %104 = call ptr @memset(ptr %61, i32 255, i32 24)
  %105 = ptrtoint ptr %__assertion152 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %test, ptr %__assertion152, align 8
  %106 = ptrtoint ptr %type155 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %type155, align 4
  %107 = ptrtoint ptr %line156 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 180, ptr %line156, align 8
  %108 = ptrtoint ptr %file157 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.26, ptr %file157, align 4
  %109 = ptrtoint ptr %message158 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %message158, align 8
  %110 = ptrtoint ptr %va160 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %va160, align 4
  %111 = ptrtoint ptr %format161 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @kunit_binary_assert_format, ptr %format161, align 8
  %112 = ptrtoint ptr %operation162 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.30, ptr %operation162, align 4
  %113 = ptrtoint ptr %left_text163 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.37, ptr %left_text163, align 8
  %conv165 = zext i8 %103 to i64
  %114 = ptrtoint ptr %left_value164 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %conv165, ptr %left_value164, align 8
  %115 = ptrtoint ptr %right_text166 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @.str.38, ptr %right_text166, align 8
  %116 = ptrtoint ptr %right_value167 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 10, ptr %right_value167, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %103)
  %cmp172 = icmp eq i8 %103, 10
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion152, i1 noundef zeroext %cmp172, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion152) #16
  %flags_seq_tag180 = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %flags_seq_tag180 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %flags_seq_tag180, align 1
  %119 = and i8 %118, 15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion189) #16
  %120 = call ptr @memset(ptr %62, i32 255, i32 24)
  %121 = ptrtoint ptr %__assertion189 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %test, ptr %__assertion189, align 8
  %122 = ptrtoint ptr %type192 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %type192, align 4
  %123 = ptrtoint ptr %line193 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 182, ptr %line193, align 8
  %124 = ptrtoint ptr %file194 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.26, ptr %file194, align 4
  %125 = ptrtoint ptr %message195 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %message195, align 8
  %126 = ptrtoint ptr %va197 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %va197, align 4
  %127 = ptrtoint ptr %format198 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @kunit_binary_assert_format, ptr %format198, align 8
  %128 = ptrtoint ptr %operation199 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.30, ptr %operation199, align 4
  %129 = ptrtoint ptr %left_text200 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @.str.39, ptr %left_text200, align 8
  %130 = zext i8 %119 to i64
  %131 = ptrtoint ptr %left_value201 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %left_value201, align 8
  %132 = ptrtoint ptr %right_text203 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.40, ptr %right_text203, align 8
  %133 = ptrtoint ptr %right_value204 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 8, ptr %right_value204, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %119)
  %cmp207 = icmp eq i8 %119, 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion189, i1 noundef zeroext %cmp207, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion189) #16
  %134 = ptrtoint ptr %flags_seq_tag180 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %flags_seq_tag180, align 1
  %.lobit = lshr i8 %135, 7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion227) #16
  %136 = call ptr @memset(ptr %63, i32 255, i32 24)
  %137 = ptrtoint ptr %__assertion227 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %test, ptr %__assertion227, align 8
  %138 = ptrtoint ptr %type230 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %type230, align 4
  %139 = ptrtoint ptr %line231 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 185, ptr %line231, align 8
  %140 = ptrtoint ptr %file232 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.26, ptr %file232, align 4
  %141 = ptrtoint ptr %message233 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %message233, align 8
  %142 = ptrtoint ptr %va235 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %va235, align 4
  %143 = ptrtoint ptr %format236 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @kunit_binary_assert_format, ptr %format236, align 8
  %144 = ptrtoint ptr %operation237 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @.str.30, ptr %operation237, align 4
  %145 = ptrtoint ptr %left_text238 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.41, ptr %left_text238, align 8
  %146 = zext i8 %.lobit to i64
  %147 = ptrtoint ptr %left_value239 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %left_value239, align 8
  %148 = ptrtoint ptr %right_text241 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.42, ptr %right_text241, align 8
  %conv244 = zext i1 %cmp73 to i64
  %149 = ptrtoint ptr %right_value242 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %conv244, ptr %right_value242, align 8
  %150 = zext i1 %cmp73 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %150)
  %cmp248 = icmp eq i8 %.lobit, %150
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion227, i1 noundef zeroext %cmp248, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion227) #16
  %151 = ptrtoint ptr %flags_seq_tag180 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %flags_seq_tag180, align 1
  %153 = lshr i8 %152, 6
  %.lobit475 = and i8 %153, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion268) #16
  %154 = call ptr @memset(ptr %64, i32 255, i32 24)
  %155 = ptrtoint ptr %__assertion268 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %test, ptr %__assertion268, align 8
  %156 = ptrtoint ptr %type271 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1, ptr %type271, align 4
  %157 = ptrtoint ptr %line272 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 187, ptr %line272, align 8
  %158 = ptrtoint ptr %file273 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @.str.26, ptr %file273, align 4
  %159 = ptrtoint ptr %message274 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %message274, align 8
  %160 = ptrtoint ptr %va276 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %va276, align 4
  %161 = ptrtoint ptr %format277 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @kunit_binary_assert_format, ptr %format277, align 8
  %162 = ptrtoint ptr %operation278 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @.str.30, ptr %operation278, align 4
  %163 = ptrtoint ptr %left_text279 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.43, ptr %left_text279, align 8
  %164 = zext i8 %.lobit475 to i64
  %165 = ptrtoint ptr %left_value280 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %left_value280, align 8
  %166 = ptrtoint ptr %right_text282 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @.str.44, ptr %right_text282, align 8
  %conv285 = zext i1 %cmp75486 to i64
  %167 = ptrtoint ptr %right_value283 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv285, ptr %right_value283, align 8
  %168 = and i8 %152, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %169 = icmp eq i8 %168, 0
  %cmp289 = xor i1 %cmp75486, %169
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion268, i1 noundef zeroext %cmp289, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion268) #16
  %170 = ptrtoint ptr %flags_seq_tag180 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %flags_seq_tag180, align 1
  %172 = lshr i8 %171, 4
  %173 = and i8 %172, 3
  br i1 %cmp73, label %if.end.if.end332_crit_edge, label %if.else

if.end.if.end332_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end332

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i8 %seq.0484, 1
  %174 = and i8 %inc, 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion307) #16
  %175 = call ptr @memset(ptr %65, i32 255, i32 24)
  %176 = ptrtoint ptr %__assertion307 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %test, ptr %__assertion307, align 8
  %177 = ptrtoint ptr %type310 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %type310, align 4
  %178 = ptrtoint ptr %line311 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 196, ptr %line311, align 8
  %179 = ptrtoint ptr %file312 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @.str.26, ptr %file312, align 4
  %180 = ptrtoint ptr %message313 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %message313, align 8
  %181 = ptrtoint ptr %va315 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %va315, align 4
  %182 = ptrtoint ptr %format316 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @kunit_binary_assert_format, ptr %format316, align 8
  %183 = ptrtoint ptr %operation317 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @.str.30, ptr %operation317, align 4
  %184 = ptrtoint ptr %left_text318 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr @.str.45, ptr %left_text318, align 8
  %conv320 = zext i8 %173 to i64
  %185 = ptrtoint ptr %left_value319 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %conv320, ptr %left_value319, align 8
  %186 = ptrtoint ptr %right_text321 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @.str.46, ptr %right_text321, align 8
  %conv323 = zext i8 %174 to i64
  %187 = ptrtoint ptr %right_value322 to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %conv323, ptr %right_value322, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %173, i8 %174)
  %cmp326 = icmp eq i8 %173, %174
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion307, i1 noundef zeroext %cmp326, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion307) #16
  br label %if.end332

if.end332:                                        ; preds = %if.else, %if.end.if.end332_crit_edge
  %seq.1 = phi i8 [ %inc, %if.else ], [ %173, %if.end.if.end332_crit_edge ]
  %len366 = getelementptr inbounds %struct.sk_buff, ptr %call79487, i32 0, i32 6
  %188 = ptrtoint ptr %len366 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %len366, align 4
  br i1 %cmp75486, label %do.body364, label %do.body335

do.body335:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion339) #16
  %190 = call ptr @memset(ptr %66, i32 255, i32 24)
  %191 = ptrtoint ptr %__assertion339 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %test, ptr %__assertion339, align 8
  %192 = ptrtoint ptr %type342 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1, ptr %type342, align 4
  %193 = ptrtoint ptr %line343 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 200, ptr %line343, align 8
  %194 = ptrtoint ptr %file344 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @.str.26, ptr %file344, align 4
  %195 = ptrtoint ptr %message345 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %message345, align 8
  %196 = ptrtoint ptr %va347 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %va347, align 4
  %197 = ptrtoint ptr %format348 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @kunit_binary_assert_format, ptr %format348, align 8
  %198 = ptrtoint ptr %operation349 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr @.str.30, ptr %operation349, align 4
  %199 = ptrtoint ptr %left_text350 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @.str.47, ptr %left_text350, align 8
  %conv352 = zext i32 %189 to i64
  %200 = ptrtoint ptr %left_value351 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %conv352, ptr %left_value351, align 8
  %201 = ptrtoint ptr %right_text353 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @.str.48, ptr %right_text353, align 8
  %202 = ptrtoint ptr %right_value354 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %conv355, ptr %right_value354, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %3)
  %cmp357 = icmp eq i32 %189, %3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion339, i1 noundef zeroext %cmp357, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion339) #16
  br label %for.inc

do.body364:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion369) #16
  %203 = call ptr @memset(ptr %67, i32 255, i32 24)
  %204 = ptrtoint ptr %__assertion369 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %test, ptr %__assertion369, align 8
  %205 = ptrtoint ptr %type372 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1, ptr %type372, align 4
  %206 = ptrtoint ptr %line373 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 202, ptr %line373, align 8
  %207 = ptrtoint ptr %file374 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @.str.26, ptr %file374, align 4
  %208 = ptrtoint ptr %message375 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %message375, align 8
  %209 = ptrtoint ptr %va377 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %va377, align 4
  %210 = ptrtoint ptr %format378 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @kunit_binary_assert_format, ptr %format378, align 8
  %211 = ptrtoint ptr %operation379 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @.str.49, ptr %operation379, align 4
  %212 = ptrtoint ptr %left_text380 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @.str.47, ptr %left_text380, align 8
  %conv382 = zext i32 %189 to i64
  %213 = ptrtoint ptr %left_value381 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %conv382, ptr %left_value381, align 8
  %214 = ptrtoint ptr %right_text383 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @.str.48, ptr %right_text383, align 8
  %215 = ptrtoint ptr %right_value384 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %conv355, ptr %right_value384, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %3)
  %cmp387 = icmp ule i32 %189, %3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion369, i1 noundef zeroext %cmp387, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion369) #16
  br label %for.inc

for.inc:                                          ; preds = %do.body364, %do.body335
  call void @kfree_skb_reason(ptr noundef nonnull %call79487, i32 noundef 0) #16
  %inc399 = add i32 %i.0485, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc399, i32 %sub)
  %cmp75 = icmp eq i32 %inc399, %sub
  %call79 = call ptr @skb_dequeue(ptr noundef %pkts) #16
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %for.inc.for.end_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mctp_test_create_skb.exit.for.end_crit_edge
  call fastcc void @mctp_test_route_destroy(ptr noundef %test, ptr noundef %call6)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mctp_frag_gen_params(ptr noundef %prev, ptr nocapture noundef writeonly %desc) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prev, null
  %add.ptr = getelementptr %struct.mctp_frag_test, ptr %prev, i32 1
  %spec.select = select i1 %tobool.not, ptr @mctp_frag_tests, ptr %add.ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @mctp_frag_tests to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.div)
  %cmp = icmp ult i32 %sub.ptr.div, 8
  br i1 %cmp, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %msgsize.i = getelementptr inbounds %struct.mctp_frag_test, ptr %spec.select, i32 0, i32 1
  %0 = ptrtoint ptr %msgsize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msgsize.i, align 4
  %2 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spec.select, align 4
  %n_frags.i = getelementptr inbounds %struct.mctp_frag_test, ptr %spec.select, i32 0, i32 2
  %4 = ptrtoint ptr %n_frags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_frags.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %desc, ptr noundef nonnull @.str.54, i32 noundef %1, i32 noundef %3, i32 noundef %5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.then2 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_test_rx_input(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion11 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion34 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion60 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %param_value = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 4
  %0 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_value, align 4
  %call = tail call ptr @mctp_test_create_dev() #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #16
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 244, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.26, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.55, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #16
  %mdev = getelementptr inbounds %struct.mctp_test_dev, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 4
  %call7 = call fastcc ptr @mctp_test_create_route(ptr noundef %12, i8 noundef zeroext 8, i32 noundef 68)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion11) #16
  %13 = ptrtoint ptr %__assertion11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion11, align 4
  %type14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 1
  %14 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %type14, align 4
  %line15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 2
  %15 = ptrtoint ptr %line15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 247, ptr %line15, align 4
  %file16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 3
  %16 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.26, ptr %file16, align 4
  %message17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4
  %17 = ptrtoint ptr %message17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message17, align 4
  %va19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va19, align 4
  %format20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 5
  %19 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format20, align 4
  %text21 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 1
  %20 = ptrtoint ptr %text21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.28, ptr %text21, align 4
  %value22 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 2
  %21 = ptrtoint ptr %value22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7, ptr %value22, align 4
  %tobool.not.i102 = icmp ne ptr %call7, null
  %cmp.i103 = icmp ule ptr %call7, inttoptr (i32 -4096 to ptr)
  %lnot25 = and i1 %tobool.not.i102, %cmp.i103
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion11, i1 noundef zeroext %lnot25, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion11) #16
  %call.i.i = call ptr @__alloc_skb(i32 noundef 5, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not.i105 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i105, label %entry.mctp_test_create_skb.exit_crit_edge, label %if.end.i

entry.mctp_test_create_skb.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mctp_test_create_skb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #16
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %1, align 1
  %24 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %call1.i, align 1
  %call2.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #16
  %25 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %call2.i, align 1
  br label %mctp_test_create_skb.exit

mctp_test_create_skb.exit:                        ; preds = %if.end.i, %entry.mctp_test_create_skb.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion34) #16
  %26 = ptrtoint ptr %__assertion34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %test, ptr %__assertion34, align 4
  %type37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 1
  %27 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %type37, align 4
  %line38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 2
  %28 = ptrtoint ptr %line38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 250, ptr %line38, align 4
  %file39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 3
  %29 = ptrtoint ptr %file39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.26, ptr %file39, align 4
  %message40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4
  %30 = ptrtoint ptr %message40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %message40, align 4
  %va42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %va42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %va42, align 4
  %format43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 5
  %32 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format43, align 4
  %text44 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion34, i32 0, i32 1
  %33 = ptrtoint ptr %text44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.27, ptr %text44, align 4
  %value45 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion34, i32 0, i32 2
  %34 = ptrtoint ptr %value45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %value45, align 4
  %cmp.i107 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i108 = or i1 %tobool.not.i105, %cmp.i107
  %lnot48 = xor i1 %spec.select.i108, true
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion34, i1 noundef zeroext %lnot48, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion34) #16
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1296258128, ptr %cb1.i, align 4
  %36 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call, align 4
  %call54 = call i32 @mctp_pkttype_receive(ptr noundef %call.i.i, ptr noundef %37, ptr noundef nonnull @mctp_packet_type, ptr noundef null)
  %qlen = getelementptr inbounds %struct.mctp_test_route, ptr %call7, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool = icmp ne i32 %39, 0
  %input = getelementptr inbounds %struct.mctp_rx_input_test, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %input, align 1, !range !204
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion60) #16
  %42 = getelementptr inbounds i8, ptr %__assertion60, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion60, align 8
  %type63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 1
  %45 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type63, align 4
  %line64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 2
  %46 = ptrtoint ptr %line64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 256, ptr %line64, align 8
  %file65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 3
  %47 = ptrtoint ptr %file65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.26, ptr %file65, align 4
  %message66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4
  %48 = ptrtoint ptr %message66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message66, align 8
  %va68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va68, align 4
  %format69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 5
  %50 = ptrtoint ptr %format69 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format69, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 1
  %51 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.30, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 2
  %52 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.56, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 3
  %53 = zext i1 %tobool to i64
  %54 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 4
  %55 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.57, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 5
  %56 = zext i8 %41 to i64
  %57 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %right_value, align 8
  %58 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %58)
  %cmp = icmp eq i8 %41, %58
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion60, i1 noundef zeroext %cmp, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion60) #16
  call fastcc void @mctp_test_route_destroy(ptr noundef %test, ptr noundef %call7)
  call void @mctp_test_destroy_dev(ptr noundef %call) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mctp_rx_input_gen_params(ptr noundef %prev, ptr nocapture noundef writeonly %desc) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prev, null
  %add.ptr = getelementptr %struct.mctp_rx_input_test, ptr %prev, i32 1
  %spec.select = select i1 %tobool.not, ptr @mctp_rx_input_tests, ptr %add.ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @mctp_rx_input_tests to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.div)
  %cmp = icmp ult i32 %sub.ptr.div, 3
  br i1 %cmp, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spec.select, align 1
  %conv.i = zext i8 %1 to i32
  %src.i = getelementptr inbounds %struct.mctp_hdr, ptr %spec.select, i32 0, i32 2
  %2 = ptrtoint ptr %src.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src.i, align 1
  %conv2.i = zext i8 %3 to i32
  %dest.i = getelementptr inbounds %struct.mctp_hdr, ptr %spec.select, i32 0, i32 1
  %4 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dest.i, align 1
  %conv4.i = zext i8 %5 to i32
  %flags_seq_tag.i = getelementptr inbounds %struct.mctp_hdr, ptr %spec.select, i32 0, i32 3
  %6 = ptrtoint ptr %flags_seq_tag.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags_seq_tag.i, align 1
  %conv6.i = zext i8 %7 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %desc, ptr noundef nonnull @.str.58, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.then2 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_test_route_input_sk(ptr noundef %test) #0 align 64 {
entry:
  %rt = alloca ptr, align 4
  %dev = alloca ptr, align 4
  %sock = alloca ptr, align 4
  %rc = alloca i32, align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion34 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion57 = alloca %struct.kunit_binary_assert, align 8
  %__assertion86 = alloca %struct.kunit_binary_assert, align 8
  %__assertion116 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt) #16
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rt, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #16
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #16
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #16
  %param_value = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 4
  %3 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param_value, align 4
  call fastcc void @__mctp_route_test_init(ptr noundef %test, ptr noundef nonnull %dev, ptr noundef nonnull %rt, ptr noundef nonnull %sock)
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 5, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.__mctp_test_create_skb_data.exit_crit_edge, label %if.end.i

entry.__mctp_test_create_skb_data.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__mctp_test_create_skb_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr inbounds %struct.mctp_route_input_sk_test, ptr %4, i32 0, i32 1
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 1
  %7 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %call1.i, align 1
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #16
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 1
  %10 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %call2.i, align 1
  br label %__mctp_test_create_skb_data.exit

__mctp_test_create_skb_data.exit:                 ; preds = %if.end.i, %entry.__mctp_test_create_skb_data.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #16
  %11 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion, align 4
  %type3 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type3, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 345, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %14 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.26, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %18 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.27, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %value, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %lnot = xor i1 %spec.select.i, true
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #16
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %24, align 8
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1296258128, ptr %cb1.i, align 4
  %27 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rt, align 4
  %call10 = call i32 @mctp_route_input(ptr noundef %28, ptr noundef %call.i.i)
  %29 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call10, ptr %rc, align 4
  %deliver = getelementptr inbounds %struct.mctp_route_input_sk_test, ptr %4, i32 0, i32 2
  %30 = ptrtoint ptr %deliver to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %deliver, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %do.body82, label %do.body11

do.body11:                                        ; preds = %__mctp_test_create_skb_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #16
  %32 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %33 = call ptr @memset(ptr %32, i32 255, i32 24)
  %34 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %35 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %36 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 353, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %37 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.26, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %38 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %40 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %41 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.30, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %42 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.29, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv = sext i32 %call10 to i64
  %43 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %44 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.59, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %45 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #16
  %46 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sk, align 16
  %call30 = call ptr @skb_recv_datagram(ptr noundef %49, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %rc) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion34) #16
  %50 = ptrtoint ptr %__assertion34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %test, ptr %__assertion34, align 4
  %type37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 1
  %51 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type37, align 4
  %line38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 2
  %52 = ptrtoint ptr %line38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 356, ptr %line38, align 4
  %file39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 3
  %53 = ptrtoint ptr %file39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.26, ptr %file39, align 4
  %message40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4
  %54 = ptrtoint ptr %message40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %message40, align 4
  %va42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %va42 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %va42, align 4
  %format43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 5
  %56 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format43, align 4
  %text44 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion34, i32 0, i32 1
  %57 = ptrtoint ptr %text44 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.60, ptr %text44, align 4
  %value45 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion34, i32 0, i32 2
  %58 = ptrtoint ptr %value45 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call30, ptr %value45, align 4
  %tobool.not.i171 = icmp ne ptr %call30, null
  %cmp.i172 = icmp ule ptr %call30, inttoptr (i32 -4096 to ptr)
  %lnot48 = and i1 %tobool.not.i171, %cmp.i172
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion34, i1 noundef zeroext %lnot48, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion34) #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion57) #16
  %61 = getelementptr inbounds i8, ptr %__assertion57, i32 32
  %62 = call ptr @memset(ptr %61, i32 255, i32 24)
  %63 = ptrtoint ptr %__assertion57 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion57, align 8
  %type60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion57, i32 0, i32 1
  %64 = ptrtoint ptr %type60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type60, align 4
  %line61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion57, i32 0, i32 2
  %65 = ptrtoint ptr %line61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 357, ptr %line61, align 8
  %file62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion57, i32 0, i32 3
  %66 = ptrtoint ptr %file62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.26, ptr %file62, align 4
  %message63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion57, i32 0, i32 4
  %67 = ptrtoint ptr %message63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message63, align 8
  %va65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion57, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %va65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va65, align 4
  %format66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion57, i32 0, i32 5
  %69 = ptrtoint ptr %format66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_assert_format, ptr %format66, align 8
  %operation67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion57, i32 0, i32 1
  %70 = ptrtoint ptr %operation67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.30, ptr %operation67, align 4
  %left_text68 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion57, i32 0, i32 2
  %71 = ptrtoint ptr %left_text68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.61, ptr %left_text68, align 8
  %left_value69 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion57, i32 0, i32 3
  %conv70 = zext i32 %60 to i64
  %72 = ptrtoint ptr %left_value69 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv70, ptr %left_value69, align 8
  %right_text71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion57, i32 0, i32 4
  %73 = ptrtoint ptr %right_text71 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.52, ptr %right_text71, align 8
  %right_value72 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion57, i32 0, i32 5
  %74 = ptrtoint ptr %right_value72 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 1, ptr %right_value72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp75 = icmp eq i32 %60, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion57, i1 noundef zeroext %cmp75, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion57) #16
  %75 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sk, align 16
  call void @skb_free_datagram(ptr noundef %76, ptr noundef %call30) #16
  br label %if.end

do.body82:                                        ; preds = %__mctp_test_create_skb_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion86) #16
  %77 = getelementptr inbounds i8, ptr %__assertion86, i32 32
  %78 = call ptr @memset(ptr %77, i32 255, i32 24)
  %79 = ptrtoint ptr %__assertion86 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion86, align 8
  %type89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 1
  %80 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type89, align 4
  %line90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 2
  %81 = ptrtoint ptr %line90 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 362, ptr %line90, align 8
  %file91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 3
  %82 = ptrtoint ptr %file91 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.26, ptr %file91, align 4
  %message92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4
  %83 = ptrtoint ptr %message92 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message92, align 8
  %va94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va94 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va94, align 4
  %format95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 5
  %85 = ptrtoint ptr %format95 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_binary_assert_format, ptr %format95, align 8
  %operation96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 1
  %86 = ptrtoint ptr %operation96 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.62, ptr %operation96, align 4
  %left_text97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 2
  %87 = ptrtoint ptr %left_text97 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.29, ptr %left_text97, align 8
  %left_value98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 3
  %conv99 = sext i32 %call10 to i64
  %88 = ptrtoint ptr %left_value98 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv99, ptr %left_value98, align 8
  %right_text100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 4
  %89 = ptrtoint ptr %right_text100 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.59, ptr %right_text100, align 8
  %right_value101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 5
  %90 = ptrtoint ptr %right_value101 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %right_value101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp104 = icmp ne i32 %call10, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion86, i1 noundef zeroext %cmp104, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion86) #16
  %91 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sock, align 4
  %sk110 = getelementptr inbounds %struct.socket, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %sk110 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sk110, align 16
  %call111 = call ptr @skb_recv_datagram(ptr noundef %94, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %rc) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion116) #16
  %95 = ptrtoint ptr %__assertion116 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %test, ptr %__assertion116, align 4
  %type119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 1
  %96 = ptrtoint ptr %type119 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %type119, align 4
  %line120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 2
  %97 = ptrtoint ptr %line120 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 364, ptr %line120, align 4
  %file121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 3
  %98 = ptrtoint ptr %file121 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.26, ptr %file121, align 4
  %message122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4
  %99 = ptrtoint ptr %message122 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %message122, align 4
  %va124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %va124 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %va124, align 4
  %format125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 5
  %101 = ptrtoint ptr %format125 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @kunit_binary_ptr_assert_format, ptr %format125, align 4
  %operation126 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 1
  %102 = ptrtoint ptr %operation126 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.30, ptr %operation126, align 4
  %left_text127 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 2
  %103 = ptrtoint ptr %left_text127 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.60, ptr %left_text127, align 4
  %left_value128 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 3
  %104 = ptrtoint ptr %left_value128 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call111, ptr %left_value128, align 4
  %right_text129 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 4
  %105 = ptrtoint ptr %right_text129 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.63, ptr %right_text129, align 4
  %right_value130 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 5
  %106 = ptrtoint ptr %right_value130 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %right_value130, align 4
  %cmp132 = icmp eq ptr %call111, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion116, i1 noundef zeroext %cmp132, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion116) #16
  br label %if.end

if.end:                                           ; preds = %do.body82, %do.body11
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  %109 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sock, align 4
  call void @sock_release(ptr noundef %110) #16
  call fastcc void @mctp_test_route_destroy(ptr noundef %test, ptr noundef %28) #16
  call void @mctp_test_destroy_dev(ptr noundef %108) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mctp_route_input_sk_gen_params(ptr noundef %prev, ptr nocapture noundef writeonly %desc) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prev, null
  %add.ptr = getelementptr %struct.mctp_route_input_sk_test, ptr %prev, i32 1
  %spec.select = select i1 %tobool.not, ptr @mctp_route_input_sk_tests, ptr %add.ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @mctp_route_input_sk_tests to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.ptr.div)
  %cmp = icmp ult i32 %sub.ptr.div, 6
  br i1 %cmp, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spec.select, align 1
  %conv.i = zext i8 %1 to i32
  %src.i = getelementptr inbounds %struct.mctp_hdr, ptr %spec.select, i32 0, i32 2
  %2 = ptrtoint ptr %src.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src.i, align 1
  %conv2.i = zext i8 %3 to i32
  %dest.i = getelementptr inbounds %struct.mctp_hdr, ptr %spec.select, i32 0, i32 1
  %4 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dest.i, align 1
  %conv4.i = zext i8 %5 to i32
  %flags_seq_tag.i = getelementptr inbounds %struct.mctp_hdr, ptr %spec.select, i32 0, i32 3
  %6 = ptrtoint ptr %flags_seq_tag.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags_seq_tag.i, align 1
  %conv6.i = zext i8 %7 to i32
  %type.i = getelementptr inbounds %struct.mctp_route_input_sk_test, ptr %spec.select, i32 0, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 1
  %conv7.i = zext i8 %9 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %desc, ptr noundef nonnull @.str.64, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.then2 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_test_route_input_sk_reasm(ptr noundef %test) #0 align 64 {
entry:
  %rt = alloca ptr, align 4
  %dev = alloca ptr, align 4
  %sock = alloca ptr, align 4
  %rc = alloca i32, align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion14 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion36 = alloca %struct.kunit_binary_assert, align 8
  %__assertion60 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt) #16
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rt, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #16
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #16
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #16
  %3 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rc, align 4, !annotation !212
  %param_value = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 4
  %4 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param_value, align 4
  call fastcc void @__mctp_route_test_init(ptr noundef %test, ptr noundef nonnull %dev, ptr noundef nonnull %rt, ptr noundef nonnull %sock)
  %n_hdrs = getelementptr inbounds %struct.mctp_route_input_sk_reasm_test, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %n_hdrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_hdrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp114 = icmp sgt i32 %7, 0
  br i1 %cmp114, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %__mctp_test_create_skb_data.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__mctp_test_create_skb_data.exit.for.body_crit_edge ]
  %call.i.i = call ptr @__alloc_skb(i32 noundef 5, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.__mctp_test_create_skb_data.exit_crit_edge, label %if.end.i

for.body.__mctp_test_create_skb_data.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %__mctp_test_create_skb_data.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.mctp_route_input_sk_reasm_test, ptr %5, i32 0, i32 1, i32 %i.0115
  %conv = trunc i32 %i.0115 to i8
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %call1.i, align 1
  %call2.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #16
  %11 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %call2.i, align 1
  br label %__mctp_test_create_skb_data.exit

__mctp_test_create_skb_data.exit:                 ; preds = %if.end.i, %for.body.__mctp_test_create_skb_data.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #16
  %12 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion, align 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %type, align 4
  %14 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 417, ptr %line, align 4
  %15 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.26, ptr %file, align 4
  %16 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message, align 4
  %17 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va, align 4
  %18 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %19 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.27, ptr %text, align 4
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %value, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %lnot = xor i1 %spec.select.i, true
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #16
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %25, align 8
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1296258128, ptr %cb1.i, align 4
  %28 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rt, align 4
  %call9 = call i32 @mctp_route_input(ptr noundef %29, ptr noundef %call.i.i)
  %30 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call9, ptr %rc, align 4
  %inc = add nuw nsw i32 %i.0115, 1
  %31 = ptrtoint ptr %n_hdrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_hdrs, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %__mctp_test_create_skb_data.exit.for.body_crit_edge, label %__mctp_test_create_skb_data.exit.for.end_crit_edge

__mctp_test_create_skb_data.exit.for.end_crit_edge: ; preds = %__mctp_test_create_skb_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

__mctp_test_create_skb_data.exit.for.body_crit_edge: ; preds = %__mctp_test_create_skb_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %__mctp_test_create_skb_data.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %33 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk, align 16
  %call10 = call ptr @skb_recv_datagram(ptr noundef %36, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %rc) #16
  %rx_len = getelementptr inbounds %struct.mctp_route_input_sk_reasm_test, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %do.body56, label %do.body11

do.body11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion14) #16
  %39 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %test, ptr %__assertion14, align 4
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %40 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %41 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 428, ptr %line18, align 4
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %42 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.26, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %43 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %message20, align 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %45 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format23, align 4
  %text24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion14, i32 0, i32 1
  %46 = ptrtoint ptr %text24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.60, ptr %text24, align 4
  %value25 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion14, i32 0, i32 2
  %47 = ptrtoint ptr %value25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call10, ptr %value25, align 4
  %tobool.not.i111 = icmp ne ptr %call10, null
  %cmp.i112 = icmp ule ptr %call10, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i111, %cmp.i112
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %lnot28, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion14) #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %50 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion36) #16
  %52 = getelementptr inbounds i8, ptr %__assertion36, i32 32
  %53 = call ptr @memset(ptr %52, i32 255, i32 24)
  %54 = ptrtoint ptr %__assertion36 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %test, ptr %__assertion36, align 8
  %type39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 1
  %55 = ptrtoint ptr %type39 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %type39, align 4
  %line40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 2
  %56 = ptrtoint ptr %line40 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 429, ptr %line40, align 8
  %file41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 3
  %57 = ptrtoint ptr %file41 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.26, ptr %file41, align 4
  %message42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4
  %58 = ptrtoint ptr %message42 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %message42, align 8
  %va44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %va44 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %va44, align 4
  %format45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 5
  %60 = ptrtoint ptr %format45 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @kunit_binary_assert_format, ptr %format45, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36, i32 0, i32 1
  %61 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.30, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36, i32 0, i32 2
  %62 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.47, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36, i32 0, i32 3
  %conv46 = zext i32 %49 to i64
  %63 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv46, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36, i32 0, i32 4
  %64 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.65, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36, i32 0, i32 5
  %conv47 = sext i32 %51 to i64
  %65 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv47, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp49 = icmp eq i32 %49, %51
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion36, i1 noundef zeroext %cmp49, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion36) #16
  %66 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk, align 16
  call void @skb_free_datagram(ptr noundef %67, ptr noundef %call10) #16
  br label %if.end

do.body56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion60) #16
  %68 = ptrtoint ptr %__assertion60 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %test, ptr %__assertion60, align 4
  %type63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 1
  %69 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %type63, align 4
  %line64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 2
  %70 = ptrtoint ptr %line64 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 433, ptr %line64, align 4
  %file65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 3
  %71 = ptrtoint ptr %file65 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.26, ptr %file65, align 4
  %message66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4
  %72 = ptrtoint ptr %message66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %message66, align 4
  %va68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %va68 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %va68, align 4
  %format69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 5
  %74 = ptrtoint ptr %format69 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @kunit_binary_ptr_assert_format, ptr %format69, align 4
  %operation70 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion60, i32 0, i32 1
  %75 = ptrtoint ptr %operation70 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.30, ptr %operation70, align 4
  %left_text71 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion60, i32 0, i32 2
  %76 = ptrtoint ptr %left_text71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.60, ptr %left_text71, align 4
  %left_value72 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion60, i32 0, i32 3
  %77 = ptrtoint ptr %left_value72 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call10, ptr %left_value72, align 4
  %right_text73 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion60, i32 0, i32 4
  %78 = ptrtoint ptr %right_text73 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.63, ptr %right_text73, align 4
  %right_value74 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion60, i32 0, i32 5
  %79 = ptrtoint ptr %right_value74 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %right_value74, align 4
  %cmp76 = icmp eq ptr %call10, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion60, i1 noundef zeroext %cmp76, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion60) #16
  br label %if.end

if.end:                                           ; preds = %do.body56, %do.body11
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %82 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rt, align 4
  call void @sock_release(ptr noundef %34) #16
  call fastcc void @mctp_test_route_destroy(ptr noundef %test, ptr noundef %83) #16
  call void @mctp_test_destroy_dev(ptr noundef %81) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mctp_route_input_sk_reasm_gen_params(ptr noundef %prev, ptr noundef %desc) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prev, null
  %add.ptr = getelementptr %struct.mctp_route_input_sk_reasm_test, ptr %prev, i32 1
  %spec.select = select i1 %tobool.not, ptr @mctp_route_input_sk_reasm_tests, ptr %add.ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @mctp_route_input_sk_reasm_tests to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.div)
  %cmp = icmp ult i32 %sub.ptr.div, 8
  br i1 %cmp, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec.select, align 4
  %strcpy.i = tail call ptr @strcpy(ptr noundef %desc, ptr noundef %1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.then2 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mctp_test_create_route(ptr noundef %dev, i8 noundef zeroext %eid, i32 noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %list.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list.i, ptr %prev.i.i, align 8
  %refs.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  %3 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %refs.i, align 4
  %output.i = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mctp_test_route_output, ptr %output.i, align 8
  %pkts.i = getelementptr inbounds %struct.mctp_test_route, ptr %call7.i.i.i, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.mctp_test_route, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %5 = ptrtoint ptr %pkts.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pkts.i, ptr %pkts.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.mctp_test_route, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pkts.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.mctp_test_route, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i.i, align 8
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %eid, ptr %call7.i.i.i, align 8
  %max = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %eid, ptr %max, align 1
  %mtu4 = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %mtu4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mtu, ptr %mtu4, align 8
  %type = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %type, align 4
  %tobool6.not = icmp eq ptr %dev, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mctp_dev_hold(ptr noundef nonnull %dev) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %dev10 = getelementptr inbounds %struct.mctp_route, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 52) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 52), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 52), ptr noundef %13) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %list.i, align 4
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 52), ptr %prev.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !211
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 52) to i32))
  store volatile ptr %list.i, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 52), align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list.i, ptr %prev37.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mctp_test_route_destroy(ptr noundef %test, ptr noundef %rt) unnamed_addr #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #16
  %list = getelementptr inbounds %struct.mctp_route, ptr %rt, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.mctp_route, ptr %rt, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.mctp_route, ptr %rt, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @rtnl_unlock() #16
  %pkts = getelementptr inbounds %struct.mctp_test_route, ptr %rt, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %pkts) #16
  %dev = getelementptr inbounds %struct.mctp_route, ptr %rt, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %list_del_rcu.exit.if.end_crit_edge, label %if.then

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mctp_dev_put(ptr noundef nonnull %8) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_rcu.exit.if.end_crit_edge
  %refs6 = getelementptr inbounds %struct.mctp_route, ptr %rt, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs6, i32 noundef 4) #16
  %9 = ptrtoint ptr %refs6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refs6, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #16
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
  store i32 77, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %16 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.26, ptr %file, align 4
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
  store ptr @.str.30, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %21 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.51, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %10 to i64
  %22 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %23 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.52, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %24 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.53) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #16
  %tobool16.not = icmp eq ptr %rt, null
  br i1 %tobool16.not, label %if.end.if.end21_crit_edge, label %do.end20

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %rcu = getelementptr inbounds %struct.mctp_route, ptr %rt, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 32 to ptr)) #16
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_test_route_output(ptr noundef %rt, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pkts = getelementptr inbounds %struct.mctp_test_route, ptr %rt, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %pkts, ptr noundef %skb) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctp_test_create_dev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_ptr_not_err_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_test_destroy_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mctp_route_test_init(ptr noundef %test, ptr nocapture noundef writeonly %devp, ptr nocapture noundef writeonly %rtp, ptr nocapture noundef writeonly %sockp) unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.sockaddr_mctp, align 4
  %sock = alloca ptr, align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion11 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion33 = alloca %struct.kunit_binary_assert, align 8
  %__assertion55 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %addr) #16
  %0 = call ptr @memset(ptr %addr, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #16
  %1 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !212
  %call = tail call ptr @mctp_test_create_dev() #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #16
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 295, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.26, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.55, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #16
  %mdev = getelementptr inbounds %struct.mctp_test_dev, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 4
  %call7 = call fastcc ptr @mctp_test_create_route(ptr noundef %12, i8 noundef zeroext 8, i32 noundef 68)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion11) #16
  %13 = ptrtoint ptr %__assertion11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion11, align 4
  %type14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 1
  %14 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %type14, align 4
  %line15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 2
  %15 = ptrtoint ptr %line15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 298, ptr %line15, align 4
  %file16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 3
  %16 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.26, ptr %file16, align 4
  %message17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4
  %17 = ptrtoint ptr %message17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message17, align 4
  %va19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va19, align 4
  %format20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 5
  %19 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format20, align 4
  %text21 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 1
  %20 = ptrtoint ptr %text21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.28, ptr %text21, align 4
  %value22 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 2
  %21 = ptrtoint ptr %value22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7, ptr %value22, align 4
  %tobool.not.i96 = icmp ne ptr %call7, null
  %cmp.i97 = icmp ule ptr %call7, inttoptr (i32 -4096 to ptr)
  %lnot25 = and i1 %tobool.not.i96, %cmp.i97
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion11, i1 noundef zeroext %lnot25, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion11) #16
  %call30 = call i32 @sock_create_kern(ptr noundef nonnull @init_net, i32 noundef 45, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %sock) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion33) #16
  %22 = getelementptr inbounds i8, ptr %__assertion33, i32 32
  %23 = call ptr @memset(ptr %22, i32 255, i32 24)
  %24 = ptrtoint ptr %__assertion33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %test, ptr %__assertion33, align 8
  %type36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 1
  %25 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type36, align 4
  %line37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 2
  %26 = ptrtoint ptr %line37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 301, ptr %line37, align 8
  %file38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 3
  %27 = ptrtoint ptr %file38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.26, ptr %file38, align 4
  %message39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 4
  %28 = ptrtoint ptr %message39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message39, align 8
  %va41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %va41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va41, align 4
  %format42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 5
  %30 = ptrtoint ptr %format42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_binary_assert_format, ptr %format42, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion33, i32 0, i32 1
  %31 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.30, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion33, i32 0, i32 2
  %32 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.29, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion33, i32 0, i32 3
  %conv = sext i32 %call30 to i64
  %33 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion33, i32 0, i32 4
  %34 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.59, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion33, i32 0, i32 5
  %35 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp eq i32 %call30, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion33, i1 noundef zeroext %cmp, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion33) #16
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 45, ptr %addr, align 4
  %smctp_network = getelementptr inbounds %struct.sockaddr_mctp, ptr %addr, i32 0, i32 2
  %37 = ptrtoint ptr %smctp_network to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %smctp_network, align 4
  %smctp_addr = getelementptr inbounds %struct.sockaddr_mctp, ptr %addr, i32 0, i32 3
  %38 = ptrtoint ptr %smctp_addr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %smctp_addr, align 4
  %smctp_type = getelementptr inbounds %struct.sockaddr_mctp, ptr %addr, i32 0, i32 4
  %39 = ptrtoint ptr %smctp_type to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %smctp_type, align 1
  %40 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sock, align 4
  %call50 = call i32 @kernel_bind(ptr noundef %41, ptr noundef nonnull %addr, i32 noundef 12) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion55) #16
  %42 = getelementptr inbounds i8, ptr %__assertion55, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion55, align 8
  %type58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 1
  %45 = ptrtoint ptr %type58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %type58, align 4
  %line59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 2
  %46 = ptrtoint ptr %line59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 308, ptr %line59, align 8
  %file60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 3
  %47 = ptrtoint ptr %file60 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.26, ptr %file60, align 4
  %message61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4
  %48 = ptrtoint ptr %message61 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message61, align 8
  %va63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va63, align 4
  %format64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 5
  %50 = ptrtoint ptr %format64 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format64, align 8
  %operation65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 1
  %51 = ptrtoint ptr %operation65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.30, ptr %operation65, align 4
  %left_text66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 2
  %52 = ptrtoint ptr %left_text66 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.29, ptr %left_text66, align 8
  %left_value67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 3
  %conv68 = sext i32 %call50 to i64
  %53 = ptrtoint ptr %left_value67 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv68, ptr %left_value67, align 8
  %right_text69 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 4
  %54 = ptrtoint ptr %right_text69 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.59, ptr %right_text69, align 8
  %right_value70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 5
  %55 = ptrtoint ptr %right_value70 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %right_value70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp73 = icmp eq i32 %call50, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion55, i1 noundef zeroext %cmp73, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion55) #16
  %56 = ptrtoint ptr %rtp to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7, ptr %rtp, align 4
  %57 = ptrtoint ptr %devp to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call, ptr %devp, align 4
  %58 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sock, align 4
  %60 = ptrtoint ptr %sockp to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %sockp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %addr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !96, !98, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !132, !133, !135, !136, !137, !139, !141, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184}
!llvm.named.register.sp = !{!186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/mctp/route.c", i32 678, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/mctp/route.c", i32 998, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_suites487, !8, !"__UNIQUE_ID_suites487", i1 false, i1 false}
!8 = !{!"../net/mctp/test/route-test.c", i32 539, i32 1}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/net/mctp.h", i32 194, i32 2}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mctp_key_alloc.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../net/mctp/route.c", i32 149, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/trace/events/mctp.h", i32 26, i32 1}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!25 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../net/mctp/route.c", i32 938, i32 2}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/mctp/route.c", i32 58, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/trace/events/mctp.h", i32 46, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../net/mctp/route.c", i32 667, i32 2}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../net/mctp/route.c", i32 966, i32 2}
!40 = !{ptr @mctp_packet_type, !41, !"mctp_packet_type", i1 false, i1 false}
!41 = !{!"../net/mctp/route.c", i32 1068, i32 27}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/mctp/route.c", i32 696, i32 2}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../net/mctp/route.c", i32 1271, i32 2}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/net/netlink.h", i32 991, i32 3}
!48 = !{ptr @mctp_newroute.__msg, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/mctp/route.c", i32 1157, i32 3}
!50 = !{ptr @mctp_route_nlparse.__msg, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../net/mctp/route.c", i32 1097, i32 3}
!52 = !{ptr @mctp_route_nlparse.__msg.12, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/mctp/route.c", i32 1102, i32 3}
!54 = !{ptr @mctp_route_nlparse.__msg.13, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/mctp/route.c", i32 1108, i32 3}
!56 = !{ptr @mctp_route_nlparse.__msg.14, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../net/mctp/route.c", i32 1115, i32 3}
!58 = !{ptr @mctp_route_nlparse.__msg.15, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../net/mctp/route.c", i32 1121, i32 3}
!60 = !{ptr @mctp_route_nlparse.__msg.16, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../net/mctp/route.c", i32 1129, i32 3}
!62 = !{ptr @__nlmsg_parse.__msg, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../include/net/netlink.h", i32 729, i32 3}
!64 = !{ptr @rta_mctp_policy, !65, !"rta_mctp_policy", i1 false, i1 false}
!65 = !{!"../net/mctp/route.c", i32 1075, i32 32}
!66 = !{ptr @nla_parse_nested.__msg, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!68 = !{ptr @rta_metrics_policy, !69, !"rta_metrics_policy", i1 false, i1 false}
!69 = !{!"../net/mctp/route.c", i32 1136, i32 32}
!70 = !{ptr @mctp_net_ops, !71, !"mctp_net_ops", i1 false, i1 false}
!71 = !{!"../net/mctp/route.c", i32 1311, i32 33}
!72 = !{ptr @mctp_routes_net_init.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../net/mctp/route.c", i32 1294, i32 2}
!74 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mctp_routes_net_init.__key.20, !76, !"__key", i1 false, i1 false}
!76 = !{!"../net/mctp/route.c", i32 1296, i32 2}
!77 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/mctp/route.c", i32 1306, i32 2}
!80 = !{ptr @__UNIQUE_ID_array486, !8, !"__UNIQUE_ID_array486", i1 false, i1 false}
!81 = !{ptr @mctp_test_suite, !82, !"mctp_test_suite", i1 false, i1 false}
!82 = !{!"../net/mctp/test/route-test.c", i32 534, i32 27}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/mctp/test/route-test.c", i32 526, i32 2}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/mctp/test/route-test.c", i32 527, i32 2}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/mctp/test/route-test.c", i32 528, i32 2}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/mctp/test/route-test.c", i32 529, i32 2}
!91 = !{ptr @mctp_test_cases, !92, !"mctp_test_cases", i1 false, i1 false}
!92 = !{!"../net/mctp/test/route-test.c", i32 525, i32 26}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/mctp/test/route-test.c", i32 148, i32 2}
!95 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/mctp/test/route-test.c", i32 151, i32 2}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/mctp/test/route-test.c", i32 154, i32 2}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/mctp/test/route-test.c", i32 158, i32 2}
!102 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/mctp/test/route-test.c", i32 178, i32 3}
!106 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/mctp/test/route-test.c", i32 179, i32 3}
!109 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/mctp/test/route-test.c", i32 180, i32 3}
!112 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/mctp/test/route-test.c", i32 181, i32 3}
!115 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/mctp/test/route-test.c", i32 184, i32 3}
!118 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/mctp/test/route-test.c", i32 186, i32 3}
!121 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/mctp/test/route-test.c", i32 196, i32 4}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/mctp/test/route-test.c", i32 200, i32 4}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/mctp/test/route-test.c", i32 202, i32 4}
!130 = !{ptr @skb_queue_head_init.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!132 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/mctp/test/route-test.c", i32 77, i32 2}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @mctp_frag_tests, !138, !"mctp_frag_tests", i1 false, i1 false}
!138 = !{!"../net/mctp/test/route-test.c", i32 210, i32 36}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/mctp/test/route-test.c", i32 223, i32 16}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/mctp/test/route-test.c", i32 244, i32 2}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/mctp/test/route-test.c", i32 256, i32 2}
!145 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mctp_rx_input_tests, !147, !"mctp_rx_input_tests", i1 false, i1 false}
!147 = !{!"../net/mctp/test/route-test.c", i32 266, i32 40}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/mctp/test/route-test.c", i32 275, i32 16}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/mctp/test/route-test.c", i32 353, i32 3}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/mctp/test/route-test.c", i32 356, i32 3}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/mctp/test/route-test.c", i32 357, i32 3}
!156 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/mctp/test/route-test.c", i32 362, i32 3}
!158 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/mctp/test/route-test.c", i32 364, i32 3}
!160 = !{ptr @mctp_route_input_sk_tests, !161, !"mctp_route_input_sk_tests", i1 false, i1 false}
!161 = !{!"../net/mctp/test/route-test.c", i32 374, i32 46}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/mctp/test/route-test.c", i32 386, i32 16}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/mctp/test/route-test.c", i32 429, i32 3}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/mctp/test/route-test.c", i32 443, i32 11}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/mctp/test/route-test.c", i32 451, i32 11}
!170 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/mctp/test/route-test.c", i32 459, i32 11}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/mctp/test/route-test.c", i32 468, i32 11}
!174 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/mctp/test/route-test.c", i32 477, i32 11}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/mctp/test/route-test.c", i32 486, i32 11}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/mctp/test/route-test.c", i32 496, i32 11}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/mctp/test/route-test.c", i32 505, i32 11}
!182 = !{ptr @mctp_route_input_sk_reasm_tests, !183, !"mctp_route_input_sk_reasm_tests", i1 false, i1 false}
!183 = !{!"../net/mctp/test/route-test.c", i32 441, i32 52}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/mctp/test/route-test.c", i32 519, i32 16}
!186 = !{!"sp"}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 2148306228}
!197 = !{i64 2148220692, i64 2148220724, i64 2148220753, i64 2148220787, i64 2148220818, i64 2148220841}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2149897971}
!200 = !{i64 700433, i64 700457, i64 700478, i64 700495, i64 700512}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2149947514}
!203 = !{i64 2149947780}
!204 = !{i8 0, i8 2}
!205 = !{i8 0, i8 9}
!206 = !{i64 2151683670}
!207 = !{i64 2148218227, i64 2148218259, i64 2148218288, i64 2148218322, i64 2148218353, i64 2148218376}
!208 = !{i64 609178, i64 609239}
!209 = !{i64 611910}
!210 = !{i64 612195}
!211 = !{i64 2151607295}
!212 = !{!"auto-init"}
!213 = !{i64 2148726660, i64 2148726665, i64 2148726678, i64 2148726722, i64 2148726756, i64 2148726777}
!214 = !{i64 2156930958}
!215 = !{i64 2156931159}
!216 = !{i64 2149956073}
!217 = !{i64 2149957109}
!218 = !{i64 2154984030, i64 2154984518, i64 2154984067, i64 2154984123, i64 2154984157, i64 2154984181, i64 2154984222, i64 2154984243, i64 2154984271, i64 2154984305}
!219 = !{i64 2156947431}
!220 = !{i64 2156947648}
