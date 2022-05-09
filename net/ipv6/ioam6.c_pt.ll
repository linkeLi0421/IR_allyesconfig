; ModuleID = '/llk/IR_all_yes/net/ipv6/ioam6.c_pt.bc'
source_filename = "../net/ipv6/ioam6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.143, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.143 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ioam6_pernet_data = type { %struct.mutex, %struct.rhashtable, %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ioam6_trace_hdr = type { i16, i16, %union.anon.149, [0 x i8] }
%union.anon.149 = type { i32 }
%struct.ioam6_namespace = type { %struct.rhash_head, %struct.callback_head, ptr, i16, i32, i64 }
%struct.rhash_head = type { ptr }
%struct.ioam6_schema = type { %struct.rhash_head, %struct.callback_head, ptr, i32, i32, i32, [0 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.113, %union.anon.114, [48 x i8], %union.anon.115, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.117, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.113 = type { ptr }
%union.anon.114 = type { i64 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i32, ptr }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.119, i32, i32, i32, i16, i16, %union.anon.121, i32, %union.anon.122, %union.anon.123, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.119 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.112 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.131, [0 x i32], %union.anon.132, i16, i16, %union.anon.133, %struct.refcount_struct, [0 x i32], %union.anon.134 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { %struct.hlist_node }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@rht_ns_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 2, i16 16, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr @ioam6_ns_cmpfn }, [36 x i8] zeroinitializer }, align 32
@ioam6_fill_trace_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/ipv6/ioam6.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ioam6_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ioam6_net_init, ptr null, ptr @ioam6_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ioam6_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"IOAM6\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 -64, i8 7, i8 0, i8 0, ptr null, ptr null, ptr null, ptr @ioam6_genl_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@ioam6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016In-situ OAM (IOAM) with IPv6\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ioam6_init\00", [21 x i8] zeroinitializer }, align 32
@ioam6_init._entry_ptr = internal global ptr @ioam6_init._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__ioam6_fill_trace_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@ioam6_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&nsdata->lock\00", [18 x i8] zeroinitializer }, align 32
@rht_sc_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 16, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr @ioam6_sc_cmpfn }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ioam6_genl_ops = internal constant { [7 x %struct.genl_ops], [60 x i8] } { [7 x %struct.genl_ops] [%struct.genl_ops { ptr @ioam6_genl_addns, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_addns, i32 3, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_delns, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_delns, i32 1, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr @ioam6_genl_dumpns_start, ptr @ioam6_genl_dumpns, ptr @ioam6_genl_dumpns_done, ptr null, i32 0, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_addsc, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_addsc, i32 5, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_delsc, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_delsc, i32 4, i8 5, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr @ioam6_genl_dumpsc_start, ptr @ioam6_genl_dumpsc, ptr @ioam6_genl_dumpsc_done, ptr null, i32 0, i8 6, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_ns_set_schema, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_ns_sc, i32 6, i8 7, i8 0, i8 1, i8 3 }], [60 x i8] zeroinitializer }, align 32
@ioam6_genl_policy_addns = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@ioam6_genl_policy_delns = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@ioam6_genl_policy_addsc = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 1020, %union.anon.91 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@ioam6_genl_policy_delsc = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@ioam6_genl_policy_ns_sc = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ioam6_genl_delns.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ioam6_genl_dumpns_element.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ioam6_genl_delsc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ioam6_genl_dumpsc_element.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ioam6_genl_ns_set_schema.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ioam6_genl_ns_set_schema.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"rht_ns_params\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 63, i32 39 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 878, i32 7 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"ioam6_net_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 938, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 959, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 695, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 594, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 723, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1011, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 313, i32 9 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 907, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"rht_sc_params\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 71, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"ioam6_genl_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 556, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"ioam6_genl_policy_addns\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 81, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"ioam6_genl_policy_delns\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 87, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"ioam6_genl_policy_addsc\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 91, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant [24 x i8] c"ioam6_genl_policy_delsc\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 97, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"ioam6_genl_policy_ns_sc\00", align 1
@___asan_gen_.86 = private constant [20 x i8] c"../net/ipv6/ioam6.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 101, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 755, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 991, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @ioam6_init._entry, ptr @ioam6_init._entry_ptr, ptr @rht_ns_params, ptr @.str, ptr @.str.1, ptr @ioam6_net_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ioam6_net_init.__key, ptr @.str.11, ptr @rht_sc_params, ptr @ioam6_genl_ops, ptr @ioam6_genl_policy_addns, ptr @ioam6_genl_policy_delns, ptr @ioam6_genl_policy_addsc, ptr @ioam6_genl_policy_delsc, ptr @ioam6_genl_policy_ns_sc, ptr @.str.13, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rht_ns_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rht_sc_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_genl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_genl_policy_addns to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_genl_policy_delns to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_genl_policy_addsc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_genl_policy_delsc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_genl_policy_ns_sc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ioam6_namespace(ptr nocapture noundef readonly %net, i16 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  %id.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %id, ptr %id.addr, align 2
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 39
  %1 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioam6_data.i, align 4
  %namespaces = getelementptr inbounds %struct.ioam6_pernet_data, ptr %2, i32 0, i32 1
  %call1 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %namespaces, ptr noundef nonnull %id.addr, [7 x i32] [i32 2, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  ret ptr %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #12
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 594, ptr noundef nonnull @.str.1) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #12
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !101

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 369, ptr noundef nonnull @.str.1) #12
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.7, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 614, ptr noundef nonnull @.str.1) #12
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !101

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %43 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %cond.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ioam6_fill_trace_data(ptr nocapture noundef %skb, ptr noundef %ns, ptr noundef %trace, i1 noundef zeroext %is_input) local_unnamed_addr #0 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  %ts.i438.i = alloca %struct.timespec64, align 8
  %ts.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %overflow = getelementptr inbounds %struct.ioam6_trace_hdr, ptr %trace, i32 0, i32 1
  %0 = ptrtoint ptr %overflow to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %overflow, align 1
  %1 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %schema = getelementptr inbounds %struct.ioam6_namespace, ptr %ns, i32 0, i32 2
  %2 = ptrtoint ptr %schema to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %schema, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.do.end10_crit_edge

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b76 = load i1, ptr @ioam6_fill_trace_data.__warned, align 1
  br i1 %.b76, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ioam6_fill_trace_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 878, ptr noundef nonnull @.str.1) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %4 = getelementptr inbounds %struct.ioam6_trace_hdr, ptr %trace, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load12 = load i32, ptr %4, align 1
  %6 = and i32 %bf.load12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %do.end10.if.end21_crit_edge, label %if.then16

do.end10.if.end21_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %do.end10
  %tobool17.not = icmp eq ptr %3, null
  br i1 %tobool17.not, label %if.then16.if.end21_crit_edge, label %if.then18

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.ioam6_schema, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %div = sdiv i32 %8, 4
  %9 = trunc i32 %div to i8
  %conv19 = add i8 %9, 1
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then16.if.end21_crit_edge, %do.end10.if.end21_crit_edge
  %sclen.0 = phi i8 [ %conv19, %if.then18 ], [ 1, %if.then16.if.end21_crit_edge ], [ 0, %do.end10.if.end21_crit_edge ]
  %10 = ptrtoint ptr %overflow to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %bf.load22 = load i16, ptr %overflow, align 1
  %11 = trunc i16 %bf.load22 to i8
  %bf.cast24 = and i8 %11, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast24)
  %tobool25.not = icmp eq i8 %bf.cast24, 0
  br i1 %tobool25.not, label %if.end21.if.then38_crit_edge, label %lor.lhs.false

if.end21.if.then38_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.end21
  %conv30 = zext i8 %bf.cast24 to i32
  %bf.lshr32 = lshr i16 %bf.load22, 11
  %bf.cast33 = zext i16 %bf.lshr32 to i32
  %conv35 = zext i8 %sclen.0 to i32
  %add36 = add nuw nsw i32 %bf.cast33, %conv35
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %conv30)
  %cmp = icmp ugt i32 %add36, %conv30
  br i1 %cmp, label %lor.lhs.false.if.then38_crit_edge, label %if.end42

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %if.end21.if.then38_crit_edge
  %bf.set = or i16 %bf.load22, 1024
  br label %cleanup.sink.split

if.end42:                                         ; preds = %lor.lhs.false
  %data1.i = getelementptr inbounds %struct.ioam6_trace_hdr, ptr %trace, i32 0, i32 3
  %12 = shl i16 %bf.load22, 2
  %13 = and i16 %12, 508
  %mul.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %data1.i, i32 %mul.i
  %14 = lshr i16 %bf.load22, 9
  %15 = and i16 %14, 124
  %mul5.i = zext i16 %15 to i32
  %idx.neg.i = sub nsw i32 0, %mul5.i
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %mul8.neg.i = mul nsw i32 %conv35, -4
  %add.ptr10.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul8.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load12)
  %tobool.not.i = icmp sgt i32 %bf.load12, -1
  br i1 %tobool.not.i, label %if.end42.if.end19.i_crit_edge, label %if.then.i

if.end42.if.end19.i_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then.i:                                        ; preds = %if.end42
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %19 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i
  %hop_limit.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hop_limit.i, align 1
  %dec.i = sext i1 %is_input to i8
  %spec.select.i = add i8 %21, %dec.i
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.skb_dst.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !105

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.i.skb_dst.exit.i_crit_edge
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %and25.i.i = and i32 %26, -2
  %27 = inttoptr i32 %and25.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 127
  %30 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nd_net.i.i, align 4
  %ioam6_id.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 36, i32 1, i32 36
  %32 = ptrtoint ptr %ioam6_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ioam6_id.i, align 4
  %conv17.i = zext i8 %spec.select.i to i32
  %shl.i = shl nuw i32 %conv17.i, 24
  %or.i = or i32 %33, %shl.i
  %34 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %add.ptr10.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %skb_dst.exit.i, %if.end42.if.end19.i_crit_edge
  %data.0.i = phi ptr [ %add.ptr18.i, %skb_dst.exit.i ], [ %add.ptr10.i, %if.end42.if.end19.i_crit_edge ]
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bf.load20.i = load i32, ptr %4, align 1
  %36 = and i32 %bf.load20.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool23.not.i = icmp eq i32 %36, 0
  br i1 %tobool23.not.i, label %if.end19.i.if.end45.i_crit_edge, label %if.then24.i

if.end19.i.if.end45.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.then24.i:                                      ; preds = %if.end19.i
  %37 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %tobool25.not.i = icmp eq ptr %39, null
  br i1 %tobool25.not.i, label %if.then24.i.if.end30.i_crit_edge, label %if.else.i

if.then24.i.if.end30.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.else.i:                                        ; preds = %if.then24.i
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 80
  %40 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i399.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i399.i, label %if.else.i.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.else.i.__in6_dev_get.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.else.i
  %call2.i400.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i400.i)
  %tobool.not.i401.i = icmp eq i32 %call2.i400.i, 0
  br i1 %tobool.not.i401.i, label %land.lhs.true.i402.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit.i

land.lhs.true.i402.i:                             ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i402.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i402.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i402.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i402.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.1) #12
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i402.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.else.i.__in6_dev_get.exit.i_crit_edge
  %ioam6_id28.i = getelementptr inbounds %struct.inet6_dev, ptr %41, i32 0, i32 32, i32 53
  %42 = ptrtoint ptr %ioam6_id28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ioam6_id28.i, align 4
  %conv29.i = trunc i32 %43 to i16
  br label %if.end30.i

if.end30.i:                                       ; preds = %__in6_dev_get.exit.i, %if.then24.i.if.end30.i_crit_edge
  %raw16.0.i = phi i16 [ %conv29.i, %__in6_dev_get.exit.i ], [ -1, %if.then24.i.if.end30.i_crit_edge ]
  %44 = ptrtoint ptr %data.0.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %raw16.0.i, ptr %data.0.i, align 2
  %add.ptr31.i = getelementptr i8, ptr %data.0.i, i32 2
  %45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %and.i403.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i403.i)
  %tobool.not.i404.i = icmp eq i32 %and.i403.i, 0
  br i1 %tobool.not.i404.i, label %if.end30.i.skb_dst.exit413.i_crit_edge, label %land.lhs.true.i407.i

if.end30.i.skb_dst.exit413.i_crit_edge:           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit413.i

land.lhs.true.i407.i:                             ; preds = %if.end30.i
  %call.i405.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i405.i)
  %tobool1.not.i406.i = icmp eq i32 %call.i405.i, 0
  br i1 %tobool1.not.i406.i, label %land.rhs.i410.i, label %land.lhs.true.i407.i.skb_dst.exit413.i_crit_edge

land.lhs.true.i407.i.skb_dst.exit413.i_crit_edge: ; preds = %land.lhs.true.i407.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit413.i

land.rhs.i410.i:                                  ; preds = %land.lhs.true.i407.i
  %call2.i408.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i408.i)
  %tobool3.not.i409.i = icmp eq i32 %call2.i408.i, 0
  br i1 %tobool3.not.i409.i, label %do.end.i411.i, label %land.rhs.i410.i.skb_dst.exit413.i_crit_edge, !prof !105

land.rhs.i410.i.skb_dst.exit413.i_crit_edge:      ; preds = %land.rhs.i410.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit413.i

do.end.i411.i:                                    ; preds = %land.rhs.i410.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit413.i

skb_dst.exit413.i:                                ; preds = %do.end.i411.i, %land.rhs.i410.i.skb_dst.exit413.i_crit_edge, %land.lhs.true.i407.i.skb_dst.exit413.i_crit_edge, %if.end30.i.skb_dst.exit413.i_crit_edge
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %45, align 8
  %and25.i412.i = and i32 %49, -2
  %50 = inttoptr i32 %and25.i412.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool34.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool34.not.i, label %if.else36.i, label %skb_dst.exit413.i.if.end43.i_crit_edge

skb_dst.exit413.i.if.end43.i_crit_edge:           ; preds = %skb_dst.exit413.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.else36.i:                                      ; preds = %skb_dst.exit413.i
  %and.i414.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i414.i)
  %tobool.not.i415.i = icmp eq i32 %and.i414.i, 0
  br i1 %tobool.not.i415.i, label %if.else36.i.skb_dst.exit424.i_crit_edge, label %land.lhs.true.i418.i

if.else36.i.skb_dst.exit424.i_crit_edge:          ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit424.i

land.lhs.true.i418.i:                             ; preds = %if.else36.i
  %call.i416.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416.i)
  %tobool1.not.i417.i = icmp eq i32 %call.i416.i, 0
  br i1 %tobool1.not.i417.i, label %land.rhs.i421.i, label %land.lhs.true.i418.i.skb_dst.exit424.i_crit_edge

land.lhs.true.i418.i.skb_dst.exit424.i_crit_edge: ; preds = %land.lhs.true.i418.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit424.i

land.rhs.i421.i:                                  ; preds = %land.lhs.true.i418.i
  %call2.i419.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i419.i)
  %tobool3.not.i420.i = icmp eq i32 %call2.i419.i, 0
  br i1 %tobool3.not.i420.i, label %do.end.i422.i, label %land.rhs.i421.i.skb_dst.exit424.i_crit_edge, !prof !105

land.rhs.i421.i.skb_dst.exit424.i_crit_edge:      ; preds = %land.rhs.i421.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit424.i

do.end.i422.i:                                    ; preds = %land.rhs.i421.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit424.i

skb_dst.exit424.i:                                ; preds = %do.end.i422.i, %land.rhs.i421.i.skb_dst.exit424.i_crit_edge, %land.lhs.true.i418.i.skb_dst.exit424.i_crit_edge, %if.else36.i.skb_dst.exit424.i_crit_edge
  %55 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %45, align 8
  %and25.i423.i = and i32 %56, -2
  %57 = inttoptr i32 %and25.i423.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %ip6_ptr.i425.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 80
  %60 = ptrtoint ptr %ip6_ptr.i425.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %ip6_ptr.i425.i, align 8
  %call.i426.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i426.i, label %skb_dst.exit424.i.__in6_dev_get.exit436.i_crit_edge, label %lor.lhs.false.i429.i

skb_dst.exit424.i.__in6_dev_get.exit436.i_crit_edge: ; preds = %skb_dst.exit424.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit436.i

lor.lhs.false.i429.i:                             ; preds = %skb_dst.exit424.i
  %call2.i427.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i427.i)
  %tobool.not.i428.i = icmp eq i32 %call2.i427.i, 0
  br i1 %tobool.not.i428.i, label %land.lhs.true.i432.i, label %lor.lhs.false.i429.i.__in6_dev_get.exit436.i_crit_edge

lor.lhs.false.i429.i.__in6_dev_get.exit436.i_crit_edge: ; preds = %lor.lhs.false.i429.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit436.i

land.lhs.true.i432.i:                             ; preds = %lor.lhs.false.i429.i
  %call3.i430.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i430.i)
  %tobool4.not.i431.i = icmp eq i32 %call3.i430.i, 0
  br i1 %tobool4.not.i431.i, label %land.lhs.true.i432.i.__in6_dev_get.exit436.i_crit_edge, label %land.lhs.true5.i434.i

land.lhs.true.i432.i.__in6_dev_get.exit436.i_crit_edge: ; preds = %land.lhs.true.i432.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit436.i

land.lhs.true5.i434.i:                            ; preds = %land.lhs.true.i432.i
  %.b10.i433.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i433.i, label %land.lhs.true5.i434.i.__in6_dev_get.exit436.i_crit_edge, label %if.then.i435.i

land.lhs.true5.i434.i.__in6_dev_get.exit436.i_crit_edge: ; preds = %land.lhs.true5.i434.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit436.i

if.then.i435.i:                                   ; preds = %land.lhs.true5.i434.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.1) #12
  br label %__in6_dev_get.exit436.i

__in6_dev_get.exit436.i:                          ; preds = %if.then.i435.i, %land.lhs.true5.i434.i.__in6_dev_get.exit436.i_crit_edge, %land.lhs.true.i432.i.__in6_dev_get.exit436.i_crit_edge, %lor.lhs.false.i429.i.__in6_dev_get.exit436.i_crit_edge, %skb_dst.exit424.i.__in6_dev_get.exit436.i_crit_edge
  %ioam6_id41.i = getelementptr inbounds %struct.inet6_dev, ptr %61, i32 0, i32 32, i32 53
  %62 = ptrtoint ptr %ioam6_id41.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ioam6_id41.i, align 4
  %conv42.i = trunc i32 %63 to i16
  br label %if.end43.i

if.end43.i:                                       ; preds = %__in6_dev_get.exit436.i, %skb_dst.exit413.i.if.end43.i_crit_edge
  %raw16.1.i = phi i16 [ %conv42.i, %__in6_dev_get.exit436.i ], [ -1, %skb_dst.exit413.i.if.end43.i_crit_edge ]
  %64 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %raw16.1.i, ptr %add.ptr31.i, align 2
  %add.ptr44.i = getelementptr i8, ptr %data.0.i, i32 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end43.i, %if.end19.i.if.end45.i_crit_edge
  %data.1.i = phi ptr [ %add.ptr44.i, %if.end43.i ], [ %data.0.i, %if.end19.i.if.end45.i_crit_edge ]
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %bf.load46.i = load i32, ptr %4, align 1
  %66 = and i32 %bf.load46.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool49.not.i = icmp eq i32 %66, 0
  br i1 %tobool49.not.i, label %if.end45.i.if.end60.i_crit_edge, label %if.then50.i

if.end45.i.if.end60.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.then50.i:                                      ; preds = %if.end45.i
  %67 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %tobool51.not.i = icmp eq ptr %69, null
  br i1 %tobool51.not.i, label %if.then50.i.if.end58.i_crit_edge, label %if.else53.i

if.then50.i.if.end58.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

if.else53.i:                                      ; preds = %if.then50.i
  %70 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %70, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %tobool54.not.i = icmp eq i64 %72, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %if.else53.i.if.end56.i_crit_edge

if.else53.i.if.end56.i_crit_edge:                 ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then55.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #12
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %call.i.i.i, ptr %70, align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %if.else53.i.if.end56.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #12
  %74 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %70, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i.i, i64 noundef %76) #12
  %77 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ts.i.i, align 8
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = sdiv i32 %80, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #12
  %conv57.i = trunc i64 %78 to i32
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end56.i, %if.then50.i.if.end58.i_crit_edge
  %ts.sroa.6.0.off0.i = phi i32 [ -1, %if.then50.i.if.end58.i_crit_edge ], [ %div.i.i, %if.end56.i ]
  %storemerge397.i = phi i32 [ -1, %if.then50.i.if.end58.i_crit_edge ], [ %conv57.i, %if.end56.i ]
  %81 = ptrtoint ptr %data.1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %storemerge397.i, ptr %data.1.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %data.1.i, i32 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end58.i, %if.end45.i.if.end60.i_crit_edge
  %ts.sroa.6.1.off0.i = phi i32 [ -1, %if.end45.i.if.end60.i_crit_edge ], [ %ts.sroa.6.0.off0.i, %if.end58.i ]
  %data.2.i = phi ptr [ %data.1.i, %if.end45.i.if.end60.i_crit_edge ], [ %add.ptr59.i, %if.end58.i ]
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %bf.load61.i = load i32, ptr %4, align 1
  %83 = and i32 %bf.load61.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool64.not.i = icmp eq i32 %83, 0
  br i1 %tobool64.not.i, label %if.end60.i.if.end81.i_crit_edge, label %if.then65.i

if.end60.i.if.end81.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.then65.i:                                      ; preds = %if.end60.i
  %84 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %tobool66.not.i = icmp eq ptr %86, null
  br i1 %tobool66.not.i, label %if.then65.i.if.end79.i_crit_edge, label %if.else68.i

if.then65.i.if.end79.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

if.else68.i:                                      ; preds = %if.then65.i
  %87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %87, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool69.not.i = icmp eq i64 %89, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %if.else68.i.if.end71.i_crit_edge

if.else68.i.if.end71.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then70.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i437.i = call i64 @ktime_get_with_offset(i32 noundef 0) #12
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %call.i.i437.i, ptr %87, align 8
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then70.i, %if.else68.i.if.end71.i_crit_edge
  %91 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %bf.load72.i = load i32, ptr %4, align 1
  %92 = and i32 %bf.load72.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool75.not.i = icmp eq i32 %92, 0
  br i1 %tobool75.not.i, label %if.then76.i, label %if.end71.i.if.end79.i_crit_edge

if.end71.i.if.end79.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

if.then76.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i438.i) #12
  %93 = call ptr @memset(ptr %ts.i438.i, i32 255, i32 16)
  %94 = ptrtoint ptr %87 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %87, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i438.i, i64 noundef %95) #12
  %tv_nsec.i439.i = getelementptr inbounds %struct.timespec64, ptr %ts.i438.i, i32 0, i32 1
  %96 = ptrtoint ptr %tv_nsec.i439.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tv_nsec.i439.i, align 8
  %div.i440.i = sdiv i32 %97, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i438.i) #12
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then76.i, %if.end71.i.if.end79.i_crit_edge, %if.then65.i.if.end79.i_crit_edge
  %storemerge396.i = phi i32 [ -1, %if.then65.i.if.end79.i_crit_edge ], [ %div.i440.i, %if.then76.i ], [ %ts.sroa.6.1.off0.i, %if.end71.i.if.end79.i_crit_edge ]
  %98 = ptrtoint ptr %data.2.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge396.i, ptr %data.2.i, align 4
  %add.ptr80.i = getelementptr i8, ptr %data.2.i, i32 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end79.i, %if.end60.i.if.end81.i_crit_edge
  %data.3.i = phi ptr [ %add.ptr80.i, %if.end79.i ], [ %data.2.i, %if.end60.i.if.end81.i_crit_edge ]
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %bf.load82.i = load i32, ptr %4, align 1
  %100 = and i32 %bf.load82.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool85.not.i = icmp eq i32 %100, 0
  br i1 %tobool85.not.i, label %if.end81.i.if.end88.i_crit_edge, label %if.then86.i

if.end81.i.if.end88.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.then86.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %data.3.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %data.3.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %data.3.i, i32 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then86.i, %if.end81.i.if.end88.i_crit_edge
  %data.4.i = phi ptr [ %add.ptr87.i, %if.then86.i ], [ %data.3.i, %if.end81.i.if.end88.i_crit_edge ]
  %102 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %bf.load89.i = load i32, ptr %4, align 1
  %103 = and i32 %bf.load89.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool92.not.i = icmp eq i32 %103, 0
  br i1 %tobool92.not.i, label %if.end88.i.if.end96.i_crit_edge, label %if.then93.i

if.end88.i.if.end96.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.i

if.then93.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  %data94.i = getelementptr inbounds %struct.ioam6_namespace, ptr %ns, i32 0, i32 4
  %104 = ptrtoint ptr %data94.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data94.i, align 4
  %106 = ptrtoint ptr %data.4.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %data.4.i, align 4
  %add.ptr95.i = getelementptr i8, ptr %data.4.i, i32 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then93.i, %if.end88.i.if.end96.i_crit_edge
  %data.5.i = phi ptr [ %add.ptr95.i, %if.then93.i ], [ %data.4.i, %if.end88.i.if.end96.i_crit_edge ]
  %107 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %bf.load97.i = load i32, ptr %4, align 1
  %108 = and i32 %bf.load97.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool100.not.i = icmp eq i32 %108, 0
  br i1 %tobool100.not.i, label %if.end96.i.if.end127.i_crit_edge, label %if.then101.i

if.end96.i.if.end127.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

if.then101.i:                                     ; preds = %if.end96.i
  %109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %and.i443.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i443.i)
  %tobool.not.i444.i = icmp eq i32 %and.i443.i, 0
  br i1 %tobool.not.i444.i, label %if.then101.i.skb_dst.exit453.i_crit_edge, label %land.lhs.true.i447.i

if.then101.i.skb_dst.exit453.i_crit_edge:         ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit453.i

land.lhs.true.i447.i:                             ; preds = %if.then101.i
  %call.i445.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i445.i)
  %tobool1.not.i446.i = icmp eq i32 %call.i445.i, 0
  br i1 %tobool1.not.i446.i, label %land.rhs.i450.i, label %land.lhs.true.i447.i.skb_dst.exit453.i_crit_edge

land.lhs.true.i447.i.skb_dst.exit453.i_crit_edge: ; preds = %land.lhs.true.i447.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit453.i

land.rhs.i450.i:                                  ; preds = %land.lhs.true.i447.i
  %call2.i448.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i448.i)
  %tobool3.not.i449.i = icmp eq i32 %call2.i448.i, 0
  br i1 %tobool3.not.i449.i, label %do.end.i451.i, label %land.rhs.i450.i.skb_dst.exit453.i_crit_edge, !prof !105

land.rhs.i450.i.skb_dst.exit453.i_crit_edge:      ; preds = %land.rhs.i450.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit453.i

do.end.i451.i:                                    ; preds = %land.rhs.i450.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit453.i

skb_dst.exit453.i:                                ; preds = %do.end.i451.i, %land.rhs.i450.i.skb_dst.exit453.i_crit_edge, %land.lhs.true.i447.i.skb_dst.exit453.i_crit_edge, %if.then101.i.skb_dst.exit453.i_crit_edge
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %109, align 8
  %and25.i452.i = and i32 %113, -2
  %114 = inttoptr i32 %and25.i452.i to ptr
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %flags104.i = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 14
  %117 = ptrtoint ptr %flags104.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags104.i, align 8
  %and105.i = and i32 %118, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %if.else108.i, label %skb_dst.exit453.i.if.end125.i_crit_edge

skb_dst.exit453.i.if.end125.i_crit_edge:          ; preds = %skb_dst.exit453.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125.i

if.else108.i:                                     ; preds = %skb_dst.exit453.i
  %and.i454.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i454.i)
  %tobool.not.i455.i = icmp eq i32 %and.i454.i, 0
  br i1 %tobool.not.i455.i, label %if.else108.i.skb_dst.exit464.i_crit_edge, label %land.lhs.true.i458.i

if.else108.i.skb_dst.exit464.i_crit_edge:         ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit464.i

land.lhs.true.i458.i:                             ; preds = %if.else108.i
  %call.i456.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i456.i)
  %tobool1.not.i457.i = icmp eq i32 %call.i456.i, 0
  br i1 %tobool1.not.i457.i, label %land.rhs.i461.i, label %land.lhs.true.i458.i.skb_dst.exit464.i_crit_edge

land.lhs.true.i458.i.skb_dst.exit464.i_crit_edge: ; preds = %land.lhs.true.i458.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit464.i

land.rhs.i461.i:                                  ; preds = %land.lhs.true.i458.i
  %call2.i459.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i459.i)
  %tobool3.not.i460.i = icmp eq i32 %call2.i459.i, 0
  br i1 %tobool3.not.i460.i, label %do.end.i462.i, label %land.rhs.i461.i.skb_dst.exit464.i_crit_edge, !prof !105

land.rhs.i461.i.skb_dst.exit464.i_crit_edge:      ; preds = %land.rhs.i461.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit464.i

do.end.i462.i:                                    ; preds = %land.rhs.i461.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit464.i

skb_dst.exit464.i:                                ; preds = %do.end.i462.i, %land.rhs.i461.i.skb_dst.exit464.i_crit_edge, %land.lhs.true.i458.i.skb_dst.exit464.i_crit_edge, %if.else108.i.skb_dst.exit464.i_crit_edge
  %119 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %109, align 8
  %and25.i463.i = and i32 %120, -2
  %121 = inttoptr i32 %and25.i463.i to ptr
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %queue_mapping.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %124 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %queue_mapping.i.i.i, align 8
  %conv.i465.i = zext i16 %125 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 103
  %126 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %_tx.i.i.i, align 128
  %qdisc112.i = getelementptr %struct.netdev_queue, ptr %127, i32 %conv.i465.i, i32 2
  %128 = ptrtoint ptr %qdisc112.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %qdisc112.i, align 8
  %call114.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %land.lhs.true.i, label %skb_dst.exit464.i.do.end123.i_crit_edge

skb_dst.exit464.i.do.end123.i_crit_edge:          ; preds = %skb_dst.exit464.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123.i

land.lhs.true.i:                                  ; preds = %skb_dst.exit464.i
  %call116.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %tobool117.not.i = icmp eq i32 %call116.i, 0
  br i1 %tobool117.not.i, label %land.lhs.true.i.do.end123.i_crit_edge, label %land.lhs.true118.i

land.lhs.true.i.do.end123.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123.i

land.lhs.true118.i:                               ; preds = %land.lhs.true.i
  %.b395.i = load i1, ptr @__ioam6_fill_trace_data.__warned, align 1
  br i1 %.b395.i, label %land.lhs.true118.i.do.end123.i_crit_edge, label %if.then120.i

land.lhs.true118.i.do.end123.i_crit_edge:         ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123.i

if.then120.i:                                     ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ioam6_fill_trace_data.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 730, ptr noundef nonnull @.str.1) #12
  br label %do.end123.i

do.end123.i:                                      ; preds = %if.then120.i, %land.lhs.true118.i.do.end123.i_crit_edge, %land.lhs.true.i.do.end123.i_crit_edge, %skb_dst.exit464.i.do.end123.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #12
  %130 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %129, i32 0, i32 12
  %131 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %129, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %132, ptr noundef %qstats1.i.i) #12
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  %133 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #12
  br label %if.end125.i

if.end125.i:                                      ; preds = %do.end123.i, %skb_dst.exit453.i.if.end125.i_crit_edge
  %storemerge.i = phi i32 [ %134, %do.end123.i ], [ -1, %skb_dst.exit453.i.if.end125.i_crit_edge ]
  %135 = ptrtoint ptr %data.5.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %storemerge.i, ptr %data.5.i, align 4
  %add.ptr126.i = getelementptr i8, ptr %data.5.i, i32 4
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.end125.i, %if.end96.i.if.end127.i_crit_edge
  %data.6.i = phi ptr [ %add.ptr126.i, %if.end125.i ], [ %data.5.i, %if.end96.i.if.end127.i_crit_edge ]
  %136 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %bf.load128.i = load i32, ptr %4, align 1
  %137 = and i32 %bf.load128.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool131.not.i = icmp eq i32 %137, 0
  br i1 %tobool131.not.i, label %if.end127.i.if.end134.i_crit_edge, label %if.then132.i

if.end127.i.if.end134.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134.i

if.then132.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %data.6.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %data.6.i, align 4
  %add.ptr133.i = getelementptr i8, ptr %data.6.i, i32 4
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then132.i, %if.end127.i.if.end134.i_crit_edge
  %data.7.i = phi ptr [ %add.ptr133.i, %if.then132.i ], [ %data.6.i, %if.end127.i.if.end134.i_crit_edge ]
  %139 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %bf.load135.i = load i32, ptr %4, align 1
  %140 = and i32 %bf.load135.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool138.not.i = icmp eq i32 %140, 0
  br i1 %tobool138.not.i, label %if.end134.i.if.end155.i_crit_edge, label %if.then139.i

if.end134.i.if.end155.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155.i

if.then139.i:                                     ; preds = %if.end134.i
  %head.i.i466.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %141 = ptrtoint ptr %head.i.i466.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %head.i.i466.i, align 8
  %network_header.i.i467.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %143 = ptrtoint ptr %network_header.i.i467.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %network_header.i.i467.i, align 4
  %conv.i.i468.i = zext i16 %144 to i32
  %add.ptr.i.i469.i = getelementptr i8, ptr %142, i32 %conv.i.i468.i
  %hop_limit141.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i469.i, i32 0, i32 4
  %145 = ptrtoint ptr %hop_limit141.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %hop_limit141.i, align 1
  %dec144.i = sext i1 %is_input to i8
  %spec.select398.i = add i8 %146, %dec144.i
  %147 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 8
  %and.i470.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i470.i)
  %tobool.not.i471.i = icmp eq i32 %and.i470.i, 0
  br i1 %tobool.not.i471.i, label %if.then139.i.skb_dst.exit480.i_crit_edge, label %land.lhs.true.i474.i

if.then139.i.skb_dst.exit480.i_crit_edge:         ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit480.i

land.lhs.true.i474.i:                             ; preds = %if.then139.i
  %call.i472.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i472.i)
  %tobool1.not.i473.i = icmp eq i32 %call.i472.i, 0
  br i1 %tobool1.not.i473.i, label %land.rhs.i477.i, label %land.lhs.true.i474.i.skb_dst.exit480.i_crit_edge

land.lhs.true.i474.i.skb_dst.exit480.i_crit_edge: ; preds = %land.lhs.true.i474.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit480.i

land.rhs.i477.i:                                  ; preds = %land.lhs.true.i474.i
  %call2.i475.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i475.i)
  %tobool3.not.i476.i = icmp eq i32 %call2.i475.i, 0
  br i1 %tobool3.not.i476.i, label %do.end.i478.i, label %land.rhs.i477.i.skb_dst.exit480.i_crit_edge, !prof !105

land.rhs.i477.i.skb_dst.exit480.i_crit_edge:      ; preds = %land.rhs.i477.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit480.i

do.end.i478.i:                                    ; preds = %land.rhs.i477.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit480.i

skb_dst.exit480.i:                                ; preds = %do.end.i478.i, %land.rhs.i477.i.skb_dst.exit480.i_crit_edge, %land.lhs.true.i474.i.skb_dst.exit480.i_crit_edge, %if.then139.i.skb_dst.exit480.i_crit_edge
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %147, align 8
  %and25.i479.i = and i32 %151, -2
  %152 = inttoptr i32 %and25.i479.i to ptr
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %nd_net.i481.i = getelementptr inbounds %struct.net_device, ptr %154, i32 0, i32 127
  %155 = ptrtoint ptr %nd_net.i481.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %nd_net.i481.i, align 4
  %ioam6_id_wide.i = getelementptr inbounds %struct.net, ptr %156, i32 0, i32 36, i32 1, i32 37
  %157 = ptrtoint ptr %ioam6_id_wide.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %ioam6_id_wide.i, align 16
  %conv151.i = zext i8 %spec.select398.i to i64
  %shl152.i = shl nuw i64 %conv151.i, 56
  %or153.i = or i64 %158, %shl152.i
  %159 = ptrtoint ptr %data.7.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %or153.i, ptr %data.7.i, align 8
  %add.ptr154.i = getelementptr i8, ptr %data.7.i, i32 8
  br label %if.end155.i

if.end155.i:                                      ; preds = %skb_dst.exit480.i, %if.end134.i.if.end155.i_crit_edge
  %data.8.i = phi ptr [ %add.ptr154.i, %skb_dst.exit480.i ], [ %data.7.i, %if.end134.i.if.end155.i_crit_edge ]
  %160 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %bf.load156.i = load i32, ptr %4, align 1
  %161 = and i32 %bf.load156.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool159.not.i = icmp eq i32 %161, 0
  br i1 %tobool159.not.i, label %if.end155.i.if.end183.i_crit_edge, label %if.then160.i

if.end155.i.if.end183.i_crit_edge:                ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i

if.then160.i:                                     ; preds = %if.end155.i
  %162 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 8
  %tobool161.not.i = icmp eq ptr %164, null
  br i1 %tobool161.not.i, label %if.then160.i.if.end167.i_crit_edge, label %if.else163.i

if.then160.i.if.end167.i_crit_edge:               ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167.i

if.else163.i:                                     ; preds = %if.then160.i
  %ip6_ptr.i482.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 80
  %165 = ptrtoint ptr %ip6_ptr.i482.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile ptr, ptr %ip6_ptr.i482.i, align 8
  %call.i483.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i483.i, label %if.else163.i.__in6_dev_get.exit493.i_crit_edge, label %lor.lhs.false.i486.i

if.else163.i.__in6_dev_get.exit493.i_crit_edge:   ; preds = %if.else163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit493.i

lor.lhs.false.i486.i:                             ; preds = %if.else163.i
  %call2.i484.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i484.i)
  %tobool.not.i485.i = icmp eq i32 %call2.i484.i, 0
  br i1 %tobool.not.i485.i, label %land.lhs.true.i489.i, label %lor.lhs.false.i486.i.__in6_dev_get.exit493.i_crit_edge

lor.lhs.false.i486.i.__in6_dev_get.exit493.i_crit_edge: ; preds = %lor.lhs.false.i486.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit493.i

land.lhs.true.i489.i:                             ; preds = %lor.lhs.false.i486.i
  %call3.i487.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i487.i)
  %tobool4.not.i488.i = icmp eq i32 %call3.i487.i, 0
  br i1 %tobool4.not.i488.i, label %land.lhs.true.i489.i.__in6_dev_get.exit493.i_crit_edge, label %land.lhs.true5.i491.i

land.lhs.true.i489.i.__in6_dev_get.exit493.i_crit_edge: ; preds = %land.lhs.true.i489.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit493.i

land.lhs.true5.i491.i:                            ; preds = %land.lhs.true.i489.i
  %.b10.i490.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i490.i, label %land.lhs.true5.i491.i.__in6_dev_get.exit493.i_crit_edge, label %if.then.i492.i

land.lhs.true5.i491.i.__in6_dev_get.exit493.i_crit_edge: ; preds = %land.lhs.true5.i491.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit493.i

if.then.i492.i:                                   ; preds = %land.lhs.true5.i491.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.1) #12
  br label %__in6_dev_get.exit493.i

__in6_dev_get.exit493.i:                          ; preds = %if.then.i492.i, %land.lhs.true5.i491.i.__in6_dev_get.exit493.i_crit_edge, %land.lhs.true.i489.i.__in6_dev_get.exit493.i_crit_edge, %lor.lhs.false.i486.i.__in6_dev_get.exit493.i_crit_edge, %if.else163.i.__in6_dev_get.exit493.i_crit_edge
  %ioam6_id_wide166.i = getelementptr inbounds %struct.inet6_dev, ptr %166, i32 0, i32 32, i32 54
  %167 = ptrtoint ptr %ioam6_id_wide166.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ioam6_id_wide166.i, align 4
  br label %if.end167.i

if.end167.i:                                      ; preds = %__in6_dev_get.exit493.i, %if.then160.i.if.end167.i_crit_edge
  %raw32.0.i = phi i32 [ %168, %__in6_dev_get.exit493.i ], [ -1, %if.then160.i.if.end167.i_crit_edge ]
  %169 = ptrtoint ptr %data.8.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %raw32.0.i, ptr %data.8.i, align 4
  %add.ptr168.i = getelementptr i8, ptr %data.8.i, i32 4
  %170 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 8
  %and.i494.i = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i494.i)
  %tobool.not.i495.i = icmp eq i32 %and.i494.i, 0
  br i1 %tobool.not.i495.i, label %if.end167.i.skb_dst.exit504.i_crit_edge, label %land.lhs.true.i498.i

if.end167.i.skb_dst.exit504.i_crit_edge:          ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit504.i

land.lhs.true.i498.i:                             ; preds = %if.end167.i
  %call.i496.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i496.i)
  %tobool1.not.i497.i = icmp eq i32 %call.i496.i, 0
  br i1 %tobool1.not.i497.i, label %land.rhs.i501.i, label %land.lhs.true.i498.i.skb_dst.exit504.i_crit_edge

land.lhs.true.i498.i.skb_dst.exit504.i_crit_edge: ; preds = %land.lhs.true.i498.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit504.i

land.rhs.i501.i:                                  ; preds = %land.lhs.true.i498.i
  %call2.i499.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i499.i)
  %tobool3.not.i500.i = icmp eq i32 %call2.i499.i, 0
  br i1 %tobool3.not.i500.i, label %do.end.i502.i, label %land.rhs.i501.i.skb_dst.exit504.i_crit_edge, !prof !105

land.rhs.i501.i.skb_dst.exit504.i_crit_edge:      ; preds = %land.rhs.i501.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit504.i

do.end.i502.i:                                    ; preds = %land.rhs.i501.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit504.i

skb_dst.exit504.i:                                ; preds = %do.end.i502.i, %land.rhs.i501.i.skb_dst.exit504.i_crit_edge, %land.lhs.true.i498.i.skb_dst.exit504.i_crit_edge, %if.end167.i.skb_dst.exit504.i_crit_edge
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %170, align 8
  %and25.i503.i = and i32 %174, -2
  %175 = inttoptr i32 %and25.i503.i to ptr
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %flags171.i = getelementptr inbounds %struct.net_device, ptr %177, i32 0, i32 14
  %178 = ptrtoint ptr %flags171.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flags171.i, align 8
  %and172.i = and i32 %179, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172.i)
  %tobool173.not.i = icmp eq i32 %and172.i, 0
  br i1 %tobool173.not.i, label %if.else175.i, label %skb_dst.exit504.i.if.end181.i_crit_edge

skb_dst.exit504.i.if.end181.i_crit_edge:          ; preds = %skb_dst.exit504.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181.i

if.else175.i:                                     ; preds = %skb_dst.exit504.i
  %and.i505.i = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i505.i)
  %tobool.not.i506.i = icmp eq i32 %and.i505.i, 0
  br i1 %tobool.not.i506.i, label %if.else175.i.skb_dst.exit515.i_crit_edge, label %land.lhs.true.i509.i

if.else175.i.skb_dst.exit515.i_crit_edge:         ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit515.i

land.lhs.true.i509.i:                             ; preds = %if.else175.i
  %call.i507.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i507.i)
  %tobool1.not.i508.i = icmp eq i32 %call.i507.i, 0
  br i1 %tobool1.not.i508.i, label %land.rhs.i512.i, label %land.lhs.true.i509.i.skb_dst.exit515.i_crit_edge

land.lhs.true.i509.i.skb_dst.exit515.i_crit_edge: ; preds = %land.lhs.true.i509.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit515.i

land.rhs.i512.i:                                  ; preds = %land.lhs.true.i509.i
  %call2.i510.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i510.i)
  %tobool3.not.i511.i = icmp eq i32 %call2.i510.i, 0
  br i1 %tobool3.not.i511.i, label %do.end.i513.i, label %land.rhs.i512.i.skb_dst.exit515.i_crit_edge, !prof !105

land.rhs.i512.i.skb_dst.exit515.i_crit_edge:      ; preds = %land.rhs.i512.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit515.i

do.end.i513.i:                                    ; preds = %land.rhs.i512.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit515.i

skb_dst.exit515.i:                                ; preds = %do.end.i513.i, %land.rhs.i512.i.skb_dst.exit515.i_crit_edge, %land.lhs.true.i509.i.skb_dst.exit515.i_crit_edge, %if.else175.i.skb_dst.exit515.i_crit_edge
  %180 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %170, align 8
  %and25.i514.i = and i32 %181, -2
  %182 = inttoptr i32 %and25.i514.i to ptr
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %ip6_ptr.i516.i = getelementptr inbounds %struct.net_device, ptr %184, i32 0, i32 80
  %185 = ptrtoint ptr %ip6_ptr.i516.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile ptr, ptr %ip6_ptr.i516.i, align 8
  %call.i517.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i517.i, label %skb_dst.exit515.i.__in6_dev_get.exit527.i_crit_edge, label %lor.lhs.false.i520.i

skb_dst.exit515.i.__in6_dev_get.exit527.i_crit_edge: ; preds = %skb_dst.exit515.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit527.i

lor.lhs.false.i520.i:                             ; preds = %skb_dst.exit515.i
  %call2.i518.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i518.i)
  %tobool.not.i519.i = icmp eq i32 %call2.i518.i, 0
  br i1 %tobool.not.i519.i, label %land.lhs.true.i523.i, label %lor.lhs.false.i520.i.__in6_dev_get.exit527.i_crit_edge

lor.lhs.false.i520.i.__in6_dev_get.exit527.i_crit_edge: ; preds = %lor.lhs.false.i520.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit527.i

land.lhs.true.i523.i:                             ; preds = %lor.lhs.false.i520.i
  %call3.i521.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i521.i)
  %tobool4.not.i522.i = icmp eq i32 %call3.i521.i, 0
  br i1 %tobool4.not.i522.i, label %land.lhs.true.i523.i.__in6_dev_get.exit527.i_crit_edge, label %land.lhs.true5.i525.i

land.lhs.true.i523.i.__in6_dev_get.exit527.i_crit_edge: ; preds = %land.lhs.true.i523.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit527.i

land.lhs.true5.i525.i:                            ; preds = %land.lhs.true.i523.i
  %.b10.i524.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i524.i, label %land.lhs.true5.i525.i.__in6_dev_get.exit527.i_crit_edge, label %if.then.i526.i

land.lhs.true5.i525.i.__in6_dev_get.exit527.i_crit_edge: ; preds = %land.lhs.true5.i525.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit527.i

if.then.i526.i:                                   ; preds = %land.lhs.true5.i525.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.1) #12
  br label %__in6_dev_get.exit527.i

__in6_dev_get.exit527.i:                          ; preds = %if.then.i526.i, %land.lhs.true5.i525.i.__in6_dev_get.exit527.i_crit_edge, %land.lhs.true.i523.i.__in6_dev_get.exit527.i_crit_edge, %lor.lhs.false.i520.i.__in6_dev_get.exit527.i_crit_edge, %skb_dst.exit515.i.__in6_dev_get.exit527.i_crit_edge
  %ioam6_id_wide180.i = getelementptr inbounds %struct.inet6_dev, ptr %186, i32 0, i32 32, i32 54
  %187 = ptrtoint ptr %ioam6_id_wide180.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %ioam6_id_wide180.i, align 4
  br label %if.end181.i

if.end181.i:                                      ; preds = %__in6_dev_get.exit527.i, %skb_dst.exit504.i.if.end181.i_crit_edge
  %raw32.1.i = phi i32 [ %188, %__in6_dev_get.exit527.i ], [ -1, %skb_dst.exit504.i.if.end181.i_crit_edge ]
  %189 = ptrtoint ptr %add.ptr168.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %raw32.1.i, ptr %add.ptr168.i, align 4
  %add.ptr182.i = getelementptr i8, ptr %data.8.i, i32 8
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.end181.i, %if.end155.i.if.end183.i_crit_edge
  %data.9.i = phi ptr [ %add.ptr182.i, %if.end181.i ], [ %data.8.i, %if.end155.i.if.end183.i_crit_edge ]
  %190 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %bf.load184.i = load i32, ptr %4, align 1
  %191 = and i32 %bf.load184.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool187.not.i = icmp eq i32 %191, 0
  br i1 %tobool187.not.i, label %if.end183.i.if.end190.i_crit_edge, label %if.then188.i

if.end183.i.if.end190.i_crit_edge:                ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.i

if.then188.i:                                     ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #14
  %data_wide.i = getelementptr inbounds %struct.ioam6_namespace, ptr %ns, i32 0, i32 5
  %192 = ptrtoint ptr %data_wide.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %data_wide.i, align 8
  %194 = ptrtoint ptr %data.9.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %data.9.i, align 8
  %add.ptr189.i = getelementptr i8, ptr %data.9.i, i32 8
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then188.i, %if.end183.i.if.end190.i_crit_edge
  %data.10.i = phi ptr [ %add.ptr189.i, %if.then188.i ], [ %data.9.i, %if.end183.i.if.end190.i_crit_edge ]
  %195 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %bf.load191.i = load i32, ptr %4, align 1
  %196 = and i32 %bf.load191.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool194.not.i = icmp eq i32 %196, 0
  br i1 %tobool194.not.i, label %if.end190.i.if.end197.i_crit_edge, label %if.then195.i

if.end190.i.if.end197.i_crit_edge:                ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end197.i

if.then195.i:                                     ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %data.10.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1, ptr %data.10.i, align 4
  %add.ptr196.i = getelementptr i8, ptr %data.10.i, i32 4
  br label %if.end197.i

if.end197.i:                                      ; preds = %if.then195.i, %if.end190.i.if.end197.i_crit_edge
  %data.11.i = phi ptr [ %add.ptr196.i, %if.then195.i ], [ %data.10.i, %if.end190.i.if.end197.i_crit_edge ]
  %198 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %bf.load198.i = load i32, ptr %4, align 1
  %199 = and i32 %bf.load198.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool201.not.i = icmp eq i32 %199, 0
  br i1 %tobool201.not.i, label %if.end197.i.if.end204.i_crit_edge, label %if.then202.i

if.end197.i.if.end204.i_crit_edge:                ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204.i

if.then202.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %data.11.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %data.11.i, align 4
  %add.ptr203.i = getelementptr i8, ptr %data.11.i, i32 4
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.then202.i, %if.end197.i.if.end204.i_crit_edge
  %data.12.i = phi ptr [ %add.ptr203.i, %if.then202.i ], [ %data.11.i, %if.end197.i.if.end204.i_crit_edge ]
  %201 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %bf.load205.i = load i32, ptr %4, align 1
  %202 = and i32 %bf.load205.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool208.not.i = icmp eq i32 %202, 0
  br i1 %tobool208.not.i, label %if.end204.i.if.end211.i_crit_edge, label %if.then209.i

if.end204.i.if.end211.i_crit_edge:                ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end211.i

if.then209.i:                                     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #14
  %203 = ptrtoint ptr %data.12.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -1, ptr %data.12.i, align 4
  %add.ptr210.i = getelementptr i8, ptr %data.12.i, i32 4
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then209.i, %if.end204.i.if.end211.i_crit_edge
  %data.13.i = phi ptr [ %add.ptr210.i, %if.then209.i ], [ %data.12.i, %if.end204.i.if.end211.i_crit_edge ]
  %204 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %bf.load212.i = load i32, ptr %4, align 1
  %205 = and i32 %bf.load212.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool215.not.i = icmp eq i32 %205, 0
  br i1 %tobool215.not.i, label %if.end211.i.if.end218.i_crit_edge, label %if.then216.i

if.end211.i.if.end218.i_crit_edge:                ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218.i

if.then216.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %data.13.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 -1, ptr %data.13.i, align 4
  %add.ptr217.i = getelementptr i8, ptr %data.13.i, i32 4
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.then216.i, %if.end211.i.if.end218.i_crit_edge
  %data.14.i = phi ptr [ %add.ptr217.i, %if.then216.i ], [ %data.13.i, %if.end211.i.if.end218.i_crit_edge ]
  %207 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %bf.load219.i = load i32, ptr %4, align 1
  %208 = and i32 %bf.load219.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool222.not.i = icmp eq i32 %208, 0
  br i1 %tobool222.not.i, label %if.end218.i.if.end225.i_crit_edge, label %if.then223.i

if.end218.i.if.end225.i_crit_edge:                ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225.i

if.then223.i:                                     ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #14
  %209 = ptrtoint ptr %data.14.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 -1, ptr %data.14.i, align 4
  %add.ptr224.i = getelementptr i8, ptr %data.14.i, i32 4
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then223.i, %if.end218.i.if.end225.i_crit_edge
  %data.15.i = phi ptr [ %add.ptr224.i, %if.then223.i ], [ %data.14.i, %if.end218.i.if.end225.i_crit_edge ]
  %210 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %bf.load226.i = load i32, ptr %4, align 1
  %211 = and i32 %bf.load226.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool229.not.i = icmp eq i32 %211, 0
  br i1 %tobool229.not.i, label %if.end225.i.if.end232.i_crit_edge, label %if.then230.i

if.end225.i.if.end232.i_crit_edge:                ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232.i

if.then230.i:                                     ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %data.15.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -1, ptr %data.15.i, align 4
  %add.ptr231.i = getelementptr i8, ptr %data.15.i, i32 4
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.then230.i, %if.end225.i.if.end232.i_crit_edge
  %data.16.i = phi ptr [ %add.ptr231.i, %if.then230.i ], [ %data.15.i, %if.end225.i.if.end232.i_crit_edge ]
  %213 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %bf.load233.i = load i32, ptr %4, align 1
  %214 = and i32 %bf.load233.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool236.not.i = icmp eq i32 %214, 0
  br i1 %tobool236.not.i, label %if.end232.i.if.end239.i_crit_edge, label %if.then237.i

if.end232.i.if.end239.i_crit_edge:                ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239.i

if.then237.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #14
  %215 = ptrtoint ptr %data.16.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 -1, ptr %data.16.i, align 4
  %add.ptr238.i = getelementptr i8, ptr %data.16.i, i32 4
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.then237.i, %if.end232.i.if.end239.i_crit_edge
  %data.17.i = phi ptr [ %add.ptr238.i, %if.then237.i ], [ %data.16.i, %if.end232.i.if.end239.i_crit_edge ]
  %216 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %bf.load240.i = load i32, ptr %4, align 1
  %217 = and i32 %bf.load240.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool243.not.i = icmp eq i32 %217, 0
  br i1 %tobool243.not.i, label %if.end239.i.if.end246.i_crit_edge, label %if.then244.i

if.end239.i.if.end246.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end246.i

if.then244.i:                                     ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #14
  %218 = ptrtoint ptr %data.17.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -1, ptr %data.17.i, align 4
  %add.ptr245.i = getelementptr i8, ptr %data.17.i, i32 4
  br label %if.end246.i

if.end246.i:                                      ; preds = %if.then244.i, %if.end239.i.if.end246.i_crit_edge
  %data.18.i = phi ptr [ %add.ptr245.i, %if.then244.i ], [ %data.17.i, %if.end239.i.if.end246.i_crit_edge ]
  %219 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %bf.load247.i = load i32, ptr %4, align 1
  %220 = and i32 %bf.load247.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool250.not.i = icmp eq i32 %220, 0
  br i1 %tobool250.not.i, label %if.end246.i.if.end253.i_crit_edge, label %if.then251.i

if.end246.i.if.end253.i_crit_edge:                ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end253.i

if.then251.i:                                     ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #14
  %221 = ptrtoint ptr %data.18.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %data.18.i, align 4
  %add.ptr252.i = getelementptr i8, ptr %data.18.i, i32 4
  br label %if.end253.i

if.end253.i:                                      ; preds = %if.then251.i, %if.end246.i.if.end253.i_crit_edge
  %data.19.i = phi ptr [ %add.ptr252.i, %if.then251.i ], [ %data.18.i, %if.end246.i.if.end253.i_crit_edge ]
  %222 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %bf.load254.i = load i32, ptr %4, align 1
  %223 = and i32 %bf.load254.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool257.not.i = icmp eq i32 %223, 0
  br i1 %tobool257.not.i, label %if.end253.i.if.end260.i_crit_edge, label %if.then258.i

if.end253.i.if.end260.i_crit_edge:                ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end260.i

if.then258.i:                                     ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #14
  %224 = ptrtoint ptr %data.19.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %data.19.i, align 4
  %add.ptr259.i = getelementptr i8, ptr %data.19.i, i32 4
  br label %if.end260.i

if.end260.i:                                      ; preds = %if.then258.i, %if.end253.i.if.end260.i_crit_edge
  %data.20.i = phi ptr [ %add.ptr259.i, %if.then258.i ], [ %data.19.i, %if.end253.i.if.end260.i_crit_edge ]
  %225 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 4)
  %bf.load261.i = load i32, ptr %4, align 1
  %226 = and i32 %bf.load261.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool264.not.i = icmp eq i32 %226, 0
  br i1 %tobool264.not.i, label %if.end260.i.if.end267.i_crit_edge, label %if.then265.i

if.end260.i.if.end267.i_crit_edge:                ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end267.i

if.then265.i:                                     ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %data.20.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 -1, ptr %data.20.i, align 4
  %add.ptr266.i = getelementptr i8, ptr %data.20.i, i32 4
  br label %if.end267.i

if.end267.i:                                      ; preds = %if.then265.i, %if.end260.i.if.end267.i_crit_edge
  %data.21.i = phi ptr [ %add.ptr266.i, %if.then265.i ], [ %data.20.i, %if.end260.i.if.end267.i_crit_edge ]
  %228 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %bf.load268.i = load i32, ptr %4, align 1
  %229 = and i32 %bf.load268.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool271.not.i = icmp eq i32 %229, 0
  br i1 %tobool271.not.i, label %if.end267.i.__ioam6_fill_trace_data.exit_crit_edge, label %if.then272.i

if.end267.i.__ioam6_fill_trace_data.exit_crit_edge: ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ioam6_fill_trace_data.exit

if.then272.i:                                     ; preds = %if.end267.i
  %tobool273.not.i = icmp eq ptr %3, null
  br i1 %tobool273.not.i, label %if.then274.i, label %if.else275.i

if.then274.i:                                     ; preds = %if.then272.i
  call void @__sanitizer_cov_trace_pc() #14
  %230 = ptrtoint ptr %data.21.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 16777215, ptr %data.21.i, align 4
  br label %__ioam6_fill_trace_data.exit

if.else275.i:                                     ; preds = %if.then272.i
  call void @__sanitizer_cov_trace_pc() #14
  %hdr.i = getelementptr inbounds %struct.ioam6_schema, ptr %3, i32 0, i32 5
  %231 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %hdr.i, align 4
  %233 = ptrtoint ptr %data.21.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %data.21.i, align 4
  %add.ptr276.i = getelementptr i8, ptr %data.21.i, i32 4
  %data277.i = getelementptr inbounds %struct.ioam6_schema, ptr %3, i32 0, i32 6
  %len.i = getelementptr inbounds %struct.ioam6_schema, ptr %3, i32 0, i32 4
  %234 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %len.i, align 4
  %236 = call ptr @memcpy(ptr %add.ptr276.i, ptr %data277.i, i32 %235)
  br label %__ioam6_fill_trace_data.exit

__ioam6_fill_trace_data.exit:                     ; preds = %if.else275.i, %if.then274.i, %if.end267.i.__ioam6_fill_trace_data.exit_crit_edge
  %237 = ptrtoint ptr %overflow to i32
  call void @__asan_loadN_noabort(i32 %237, i32 2)
  %bf.load45 = load i16, ptr %overflow, align 1
  %bf.lshr46 = lshr i16 %bf.load45, 11
  %bf.cast47 = trunc i16 %bf.lshr46 to i8
  %238 = trunc i16 %bf.load45 to i8
  %239 = add i8 %sclen.0, %bf.cast47
  %sub = sub i8 %238, %239
  %240 = and i8 %sub, 127
  %bf.value = zext i8 %240 to i16
  %bf.clear58 = and i16 %bf.load45, -128
  %bf.set59 = or i16 %bf.clear58, %bf.value
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__ioam6_fill_trace_data.exit, %if.then38
  %bf.set59.sink = phi i16 [ %bf.set59, %__ioam6_fill_trace_data.exit ], [ %bf.set, %if.then38 ]
  %241 = ptrtoint ptr %overflow to i32
  call void @__asan_storeN_noabort(i32 %241, i32 2)
  store i16 %bf.set59.sink, ptr %overflow, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ioam6_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ioam6_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @ioam6_genl_family) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unregister_pernet_subsys_crit_edge

if.end.out_unregister_pernet_subsys_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unregister_pernet_subsys

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ioam6_iptunnel_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %out_unregister_genl

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #16
  br label %out

out:                                              ; preds = %out_unregister_pernet_subsys, %do.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.1, %out_unregister_pernet_subsys ], [ 0, %do.end ]
  ret i32 %err.0

out_unregister_genl:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 @genl_unregister_family(ptr noundef nonnull @ioam6_genl_family) #12
  br label %out_unregister_pernet_subsys

out_unregister_pernet_subsys:                     ; preds = %out_unregister_genl, %if.end.out_unregister_pernet_subsys_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.out_unregister_pernet_subsys_crit_edge ], [ %call5, %out_unregister_genl ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ioam6_net_ops) #12
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ioam6_iptunnel_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ioam6_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ioam6_iptunnel_exit() #12
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @ioam6_genl_family) #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ioam6_net_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioam6_iptunnel_exit() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ioam6_ns_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ioam6_namespace, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 8
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %5)
  %cmp = icmp ne i16 %1, %5
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_net_init(ptr nocapture noundef writeonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 548) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @ioam6_net_init.__key) #12
  %ioam6_data = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 39
  %1 = ptrtoint ptr %ioam6_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ioam6_data, align 4
  %namespaces = getelementptr inbounds %struct.ioam6_pernet_data, ptr %call7.i.i, i32 0, i32 1
  %call1 = tail call i32 @rhashtable_init(ptr noundef %namespaces, ptr noundef nonnull @rht_ns_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.body.free_nsdata_crit_edge

do.body.free_nsdata_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_nsdata

if.end4:                                          ; preds = %do.body
  %schemas = getelementptr inbounds %struct.ioam6_pernet_data, ptr %call7.i.i, i32 0, i32 2
  %call5 = tail call i32 @rhashtable_init(ptr noundef %schemas, ptr noundef nonnull @rht_sc_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %free_rht_ns

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %free_nsdata, %if.end4.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %err.1, %free_nsdata ], [ 0, %if.end4.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  ret i32 %err.0

free_rht_ns:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rhashtable_destroy(ptr noundef %namespaces) #12
  br label %free_nsdata

free_nsdata:                                      ; preds = %free_rht_ns, %do.body.free_nsdata_crit_edge
  %err.1 = phi i32 [ %call1, %do.body.free_nsdata_crit_edge ], [ %call5, %free_rht_ns ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %2 = ptrtoint ptr %ioam6_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ioam6_data, align 4
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioam6_net_exit(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 39
  %0 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioam6_data.i, align 4
  %namespaces = getelementptr inbounds %struct.ioam6_pernet_data, ptr %1, i32 0, i32 1
  tail call void @rhashtable_free_and_destroy(ptr noundef %namespaces, ptr noundef nonnull @ioam6_free_ns, ptr noundef null) #12
  %schemas = getelementptr inbounds %struct.ioam6_pernet_data, ptr %1, i32 0, i32 2
  tail call void @rhashtable_free_and_destroy(ptr noundef %schemas, ptr noundef nonnull @ioam6_free_sc, ptr noundef null) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ioam6_sc_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ioam6_schema, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp ne i32 %1, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioam6_free_ns(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %ioam6_ns_release.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

ioam6_ns_release.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i = getelementptr inbounds %struct.ioam6_namespace, ptr %ptr, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %if.end

if.end:                                           ; preds = %ioam6_ns_release.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioam6_free_sc(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %ioam6_sc_release.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

ioam6_sc_release.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i = getelementptr inbounds %struct.ioam6_schema, ptr %ptr, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %if.end

if.end:                                           ; preds = %ioam6_sc_release.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_addns(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id) #12
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %id, align 2
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_net.i, align 4
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 36, i32 39
  %9 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioam6_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #12
  %namespaces = getelementptr inbounds %struct.ioam6_pernet_data, ptr %10, i32 0, i32 1
  %call5 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %namespaces, ptr noundef nonnull %id, [7 x i32] [i32 2, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 32) #17
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.out_unlock_crit_edge, label %if.end12

if.end8.out_unlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end12:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id, align 2
  %id13 = getelementptr inbounds %struct.ioam6_namespace, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %id13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %id13, align 8
  %15 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attrs, align 4
  %arrayidx15 = getelementptr ptr, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %if.end12.if.end21_crit_edge, label %if.else

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i72 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i72, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end12.if.end21_crit_edge
  %data32.0 = phi i32 [ %20, %if.else ], [ -1, %if.end12.if.end21_crit_edge ]
  %arrayidx23 = getelementptr ptr, ptr %16, i32 3
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %22, null
  br i1 %tobool24.not, label %if.end21.if.end30_crit_edge, label %if.else26

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.else26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #12
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %tmp.i, align 8, !annotation !106
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %22, i32 noundef 8) #12
  %24 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #12
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.end21.if.end30_crit_edge
  %data64.0 = phi i64 [ %25, %if.else26 ], [ -1, %if.end21.if.end30_crit_edge ]
  %data = getelementptr inbounds %struct.ioam6_namespace, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %data32.0, ptr %data, align 4
  %data_wide = getelementptr inbounds %struct.ioam6_namespace, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %data_wide to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %data64.0, ptr %data_wide, align 8
  %call32 = call fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %namespaces, ptr noundef nonnull %call7.i.i, [7 x i32] [i32 2, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.out_unlock_crit_edge, label %if.then34

if.end30.out_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.then34, %if.end30.out_unlock_crit_edge, %if.end8.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %err.0 = phi i32 [ %call32, %if.then34 ], [ 0, %if.end30.out_unlock_crit_edge ], [ -17, %if.end.out_unlock_crit_edge ], [ -12, %if.end8.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_delns(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id) #12
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %id, align 2
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_net.i, align 4
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 36, i32 39
  %9 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioam6_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #12
  %namespaces = getelementptr inbounds %struct.ioam6_pernet_data, ptr %10, i32 0, i32 1
  %call5 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %namespaces, ptr noundef nonnull %id, [7 x i32] [i32 2, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.out_unlock_crit_edge, label %do.body

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

do.body:                                          ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.mutex, ptr %10, i32 0, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b95 = load i1, ptr @ioam6_genl_delns.__warned, align 1
  br i1 %.b95, label %land.lhs.true14.do.end_crit_edge, label %if.then16

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ioam6_genl_delns.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 184, ptr noundef nonnull @.str.13) #12
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %schema = getelementptr inbounds %struct.ioam6_namespace, ptr %call5, i32 0, i32 2
  %11 = ptrtoint ptr %schema to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %schema, align 4
  %call19 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %namespaces, ptr noundef nonnull %call5, [7 x i32] [i32 2, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end22:                                         ; preds = %do.end
  %tobool23.not = icmp eq ptr %12, null
  br i1 %tobool23.not, label %if.end22.ioam6_ns_release.exit_crit_edge, label %do.body31

if.end22.ioam6_ns_release.exit_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %ioam6_ns_release.exit

do.body31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %ns32 = getelementptr inbounds %struct.ioam6_schema, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ns32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %ns32, align 4
  br label %ioam6_ns_release.exit

ioam6_ns_release.exit:                            ; preds = %do.body31, %if.end22.ioam6_ns_release.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.ioam6_namespace, ptr %call5, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %out_unlock

out_unlock:                                       ; preds = %ioam6_ns_release.exit, %do.end.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %err.0 = phi i32 [ %call19, %do.end.out_unlock_crit_edge ], [ 0, %ioam6_ns_release.exit ], [ -2, %if.end.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpns_start(ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 36, i32 39
  %7 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioam6_data.i, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = inttoptr i32 %11 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 36) #17
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call7.i to i32
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %9, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %iter.0 = phi ptr [ %12, %entry.if.end6_crit_edge ], [ %call7.i, %if.end ]
  %namespaces = getelementptr inbounds %struct.ioam6_pernet_data, ptr %8, i32 0, i32 1
  tail call void @rhashtable_walk_enter(ptr noundef %namespaces, ptr noundef %iter.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpns(ptr noundef %skb, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  %tmp.i7.i = alloca i32, align 4
  %tmp.i5.i = alloca i64, align 8
  %tmp.i3.i = alloca i32, align 4
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  %call.i = tail call i32 @rhashtable_walk_start_check(ptr noundef %3) #12
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = call ptr @rhashtable_walk_next(ptr noundef %3) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %cmp = icmp eq ptr %call, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.then.for.cond.backedge_crit_edge, label %done.loopexit.split.loop.exit

if.then.for.cond.backedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %__ioam6_genl_dumpns_element.exit, %if.then.for.cond.backedge_crit_edge
  br label %for.cond

if.else:                                          ; preds = %for.cond
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end, label %if.end7

if.end7:                                          ; preds = %if.else
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portid, align 4
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq, align 4
  %call.i24 = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %7, i32 noundef %11, ptr noundef nonnull @ioam6_genl_family, i32 noundef 2, i8 noundef zeroext 3) #12
  %tobool.not.i = icmp eq ptr %call.i24, null
  br i1 %tobool.not.i, label %if.end7.done_crit_edge, label %if.end.i

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end.i:                                         ; preds = %if.end7
  %data.i = getelementptr inbounds %struct.ioam6_namespace, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i, align 4
  %data_wide.i = getelementptr inbounds %struct.ioam6_namespace, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %data_wide.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data_wide.i, align 8
  %id.i = getelementptr inbounds %struct.ioam6_namespace, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #12
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %tmp.i.i, align 2
  %call.i2.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool2.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i31.i_crit_edge

if.end.i.if.then.i31.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i31.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, -1
  br i1 %cmp.not.i, label %lor.lhs.false.i.lor.lhs.false5.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.lhs.false5.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false5.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3.i) #12
  %19 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %tmp.i3.i, align 4
  %call.i4.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i3.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool4.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.lor.lhs.false5.i_crit_edge, label %land.lhs.true.i.if.then.i31.i_crit_edge

land.lhs.true.i.if.then.i31.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i31.i

land.lhs.true.i.lor.lhs.false5.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false5.i

lor.lhs.false5.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false5.i_crit_edge, %lor.lhs.false.i.lor.lhs.false5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %15)
  %cmp6.not.i = icmp eq i64 %15, -1
  br i1 %cmp6.not.i, label %lor.lhs.false5.i.if.end11.i_crit_edge, label %land.lhs.true7.i

lor.lhs.false5.i.if.end11.i_crit_edge:            ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false5.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i5.i) #12
  %20 = ptrtoint ptr %tmp.i5.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %15, ptr %tmp.i5.i, align 8
  %call.i6.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i5.i, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i5.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool9.not.i = icmp eq i32 %call.i6.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.end11.i_crit_edge, label %land.lhs.true7.i.if.then.i31.i_crit_edge

land.lhs.true7.i.if.then.i31.i_crit_edge:         ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i31.i

land.lhs.true7.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true7.i.if.end11.i_crit_edge, %lor.lhs.false5.i.if.end11.i_crit_edge
  %21 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end11.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end11.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end11.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end11.i.rcu_read_lock.exit.i_crit_edge
  %schema.i = getelementptr inbounds %struct.ioam6_namespace, ptr %call, i32 0, i32 2
  %25 = ptrtoint ptr %schema.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %schema.i, align 4
  %call13.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true15.i, label %rcu_read_lock.exit.i.do.end23.i_crit_edge

rcu_read_lock.exit.i.do.end23.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23.i

land.lhs.true15.i:                                ; preds = %rcu_read_lock.exit.i
  %call16.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true15.i.do.end23.i_crit_edge, label %land.lhs.true18.i

land.lhs.true15.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23.i

land.lhs.true18.i:                                ; preds = %land.lhs.true15.i
  %.b1.i = load i1, ptr @__ioam6_genl_dumpns_element.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true18.i.do.end23.i_crit_edge, label %if.then20.i

land.lhs.true18.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23.i

if.then20.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ioam6_genl_dumpns_element.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #12
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then20.i, %land.lhs.true18.i.do.end23.i_crit_edge, %land.lhs.true15.i.do.end23.i_crit_edge, %rcu_read_lock.exit.i.do.end23.i_crit_edge
  %tobool25.not.i = icmp eq ptr %26, null
  br i1 %tobool25.not.i, label %do.end23.i.if.end31.i_crit_edge, label %land.lhs.true26.i

do.end23.i.if.end31.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

land.lhs.true26.i:                                ; preds = %do.end23.i
  %id27.i = getelementptr inbounds %struct.ioam6_schema, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %id27.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id27.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7.i) #12
  %29 = ptrtoint ptr %tmp.i7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i7.i, align 4
  %call.i8.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i7.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool29.not.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true26.i.if.end31.i_crit_edge, label %if.then30.i

land.lhs.true26.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then30.i:                                      ; preds = %land.lhs.true26.i
  %call.i9.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i9.i, label %if.then30.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i12.i

if.then30.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i12.i:                              ; preds = %if.then30.i
  %call1.i10.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i14.i

land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i14.i:                             ; preds = %land.lhs.true.i12.i
  %.b4.i13.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i, label %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i15.i

land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i15.i:                                    ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, %if.then30.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %30 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i16.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i16.i to ptr
  %preempt_count.i.i.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i17.i, align 4
  %sub.i.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i17.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.then.i31.i

if.end31.i:                                       ; preds = %land.lhs.true26.i.if.end31.i_crit_edge, %do.end23.i.if.end31.i_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i18.i, label %if.end31.i.__ioam6_genl_dumpns_element.exit_crit_edge, label %land.lhs.true.i21.i

if.end31.i.__ioam6_genl_dumpns_element.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ioam6_genl_dumpns_element.exit

land.lhs.true.i21.i:                              ; preds = %if.end31.i
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.__ioam6_genl_dumpns_element.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.__ioam6_genl_dumpns_element.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ioam6_genl_dumpns_element.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.__ioam6_genl_dumpns_element.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.__ioam6_genl_dumpns_element.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ioam6_genl_dumpns_element.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %__ioam6_genl_dumpns_element.exit

if.then.i31.i:                                    ; preds = %rcu_read_unlock.exit.i, %land.lhs.true7.i.if.then.i31.i_crit_edge, %land.lhs.true.i.if.then.i31.i_crit_edge, %if.end.i.if.then.i31.i_crit_edge
  %add.ptr1.i30.i = getelementptr i8, ptr %call.i24, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i30.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i31.i.done_crit_edge, label %if.then.i.i.i.i

if.then.i31.i.done_crit_edge:                     ; preds = %if.then.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then.i.i.i.i:                                  ; preds = %if.then.i31.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %35, %add.ptr1.i30.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !105

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %36 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i30.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  br label %done

__ioam6_genl_dumpns_element.exit:                 ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.__ioam6_genl_dumpns_element.exit_crit_edge, %land.lhs.true.i21.i.__ioam6_genl_dumpns_element.exit_crit_edge, %if.end31.i.__ioam6_genl_dumpns_element.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %38 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i25.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i27.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i27.i, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %add.ptr1.i.i = getelementptr i8, ptr %call.i24, i32 -20
  %42 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %44 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %for.cond.backedge

for.end:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  br label %done

done.loopexit.split.loop.exit:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %call to i32
  br label %done

done:                                             ; preds = %done.loopexit.split.loop.exit, %for.end, %if.end.i.i.i.i, %if.then.i31.i.done_crit_edge, %if.end7.done_crit_edge
  %err.0 = phi i32 [ %46, %for.end ], [ -90, %if.end.i.i.i.i ], [ -90, %if.then.i31.i.done_crit_edge ], [ %47, %done.loopexit.split.loop.exit ], [ -12, %if.end7.done_crit_edge ]
  call void @rhashtable_walk_stop(ptr noundef %3) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpns_done(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  tail call void @rhashtable_walk_exit(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_addsc(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #12
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 5
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %id, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %9 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_net.i, align 4
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 39
  %11 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioam6_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #12
  %schemas = getelementptr inbounds %struct.ioam6_pernet_data, ptr %12, i32 0, i32 2
  %call8 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %schemas, ptr noundef nonnull %id, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end11, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end11:                                         ; preds = %if.end
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %arrayidx13 = getelementptr ptr, ptr %14, i32 5
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %conv.i = zext i16 %18 to i32
  %add = add nsw i32 %conv.i, -1
  %and = and i32 %add, -4
  %add15 = add nsw i32 %and, 28
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add15, i32 noundef 3520) #18
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end11.out_unlock_crit_edge, label %if.end19

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end19:                                         ; preds = %if.end11
  %sub.i = add nsw i32 %conv.i, -4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %id20 = getelementptr inbounds %struct.ioam6_schema, ptr %call9.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %id20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %id20, align 16
  %len21 = getelementptr inbounds %struct.ioam6_schema, ptr %call9.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and, ptr %len21, align 4
  %div = sdiv i32 %and, 4
  %shl = shl i32 %div, 24
  %or = or i32 %20, %shl
  %hdr = getelementptr inbounds %struct.ioam6_schema, ptr %call9.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %hdr, align 8
  %data = getelementptr inbounds %struct.ioam6_schema, ptr %call9.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %attrs, align 4
  %arrayidx26 = getelementptr ptr, ptr %25, i32 5
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx26, align 4
  %call27 = call i32 @nla_memcpy(ptr noundef %data, ptr noundef %27, i32 noundef %sub.i) #12
  %call29 = call fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %schemas, ptr noundef nonnull %call9.i.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end19.out_unlock_crit_edge, label %free_sc

if.end19.out_unlock_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

out_unlock:                                       ; preds = %free_sc, %if.end19.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %err.0 = phi i32 [ %call29, %free_sc ], [ 0, %if.end19.out_unlock_crit_edge ], [ -17, %if.end.out_unlock_crit_edge ], [ -12, %if.end11.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %12) #12
  br label %cleanup

free_sc:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %out_unlock

cleanup:                                          ; preds = %out_unlock, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_delsc(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #12
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_net.i, align 4
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 36, i32 39
  %9 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioam6_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #12
  %schemas = getelementptr inbounds %struct.ioam6_pernet_data, ptr %10, i32 0, i32 2
  %call5 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %schemas, ptr noundef nonnull %id, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.out_unlock_crit_edge, label %do.body

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

do.body:                                          ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.mutex, ptr %10, i32 0, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b95 = load i1, ptr @ioam6_genl_delsc.__warned, align 1
  br i1 %.b95, label %land.lhs.true14.do.end_crit_edge, label %if.then16

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ioam6_genl_delsc.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 382, ptr noundef nonnull @.str.13) #12
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %ns18 = getelementptr inbounds %struct.ioam6_schema, ptr %call5, i32 0, i32 2
  %11 = ptrtoint ptr %ns18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns18, align 4
  %call20 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %schemas, ptr noundef nonnull %call5, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end23:                                         ; preds = %do.end
  %tobool24.not = icmp eq ptr %12, null
  br i1 %tobool24.not, label %if.end23.ioam6_sc_release.exit_crit_edge, label %do.body32

if.end23.ioam6_sc_release.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %ioam6_sc_release.exit

do.body32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %schema = getelementptr inbounds %struct.ioam6_namespace, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %schema to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %schema, align 4
  br label %ioam6_sc_release.exit

ioam6_sc_release.exit:                            ; preds = %do.body32, %if.end23.ioam6_sc_release.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.ioam6_schema, ptr %call5, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %out_unlock

out_unlock:                                       ; preds = %ioam6_sc_release.exit, %do.end.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %err.0 = phi i32 [ %call20, %do.end.out_unlock_crit_edge ], [ 0, %ioam6_sc_release.exit ], [ -2, %if.end.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpsc_start(ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 36, i32 39
  %7 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioam6_data.i, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = inttoptr i32 %11 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 36) #17
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call7.i to i32
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %9, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %iter.0 = phi ptr [ %12, %entry.if.end6_crit_edge ], [ %call7.i, %if.end ]
  %schemas = getelementptr inbounds %struct.ioam6_pernet_data, ptr %8, i32 0, i32 2
  tail call void @rhashtable_walk_enter(ptr noundef %schemas, ptr noundef %iter.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpsc(ptr noundef %skb, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  %tmp.i3.i = alloca i16, align 2
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  %call.i = tail call i32 @rhashtable_walk_start_check(ptr noundef %3) #12
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = call ptr @rhashtable_walk_next(ptr noundef %3) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %cmp = icmp eq ptr %call, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.then.for.cond.backedge_crit_edge, label %done.loopexit.split.loop.exit

if.then.for.cond.backedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %__ioam6_genl_dumpsc_element.exit, %if.then.for.cond.backedge_crit_edge
  br label %for.cond

if.else:                                          ; preds = %for.cond
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end, label %if.end7

if.end7:                                          ; preds = %if.else
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portid, align 4
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq, align 4
  %call.i24 = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %7, i32 noundef %11, ptr noundef nonnull @ioam6_genl_family, i32 noundef 2, i8 noundef zeroext 6) #12
  %tobool.not.i = icmp eq ptr %call.i24, null
  br i1 %tobool.not.i, label %if.end7.done_crit_edge, label %if.end.i

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end.i:                                         ; preds = %if.end7
  %id.i = getelementptr inbounds %struct.ioam6_schema, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %14 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i.i, align 4
  %call.i2.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool2.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i27.i_crit_edge

if.end.i.if.then.i27.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i27.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.ioam6_schema, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.ioam6_schema, ptr %call, i32 0, i32 6
  %call3.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef %16, ptr noundef %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %lor.lhs.false.i.if.then.i27.i_crit_edge

lor.lhs.false.i.if.then.i27.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i27.i

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %17 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end6.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end6.i.rcu_read_lock.exit.i_crit_edge
  %ns7.i = getelementptr inbounds %struct.ioam6_schema, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %ns7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ns7.i, align 4
  %call9.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end18.i_crit_edge

rcu_read_lock.exit.i.do.end18.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call11.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.do.end18.i_crit_edge, label %land.lhs.true13.i

land.lhs.true.i.do.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @__ioam6_genl_dumpsc_element.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true13.i.do.end18.i_crit_edge, label %if.then15.i

land.lhs.true13.i.do.end18.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18.i

if.then15.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ioam6_genl_dumpsc_element.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @.str.1) #12
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.then15.i, %land.lhs.true13.i.do.end18.i_crit_edge, %land.lhs.true.i.do.end18.i_crit_edge, %rcu_read_lock.exit.i.do.end18.i_crit_edge
  %tobool20.not.i = icmp eq ptr %22, null
  br i1 %tobool20.not.i, label %do.end18.i.if.end26.i_crit_edge, label %land.lhs.true21.i

do.end18.i.if.end26.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true21.i:                                ; preds = %do.end18.i
  %id22.i = getelementptr inbounds %struct.ioam6_namespace, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %id22.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id22.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i3.i) #12
  %25 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %tmp.i3.i, align 2
  %call.i4.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i3.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i3.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool24.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true21.i.if.end26.i_crit_edge, label %if.then25.i

land.lhs.true21.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then25.i:                                      ; preds = %land.lhs.true21.i
  %call.i5.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i5.i, label %if.then25.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i8.i

if.then25.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i8.i:                               ; preds = %if.then25.i
  %call1.i6.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge, %if.then25.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %26 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i12.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.then.i27.i

if.end26.i:                                       ; preds = %land.lhs.true21.i.if.end26.i_crit_edge, %do.end18.i.if.end26.i_crit_edge
  %call.i14.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i14.i, label %if.end26.i.__ioam6_genl_dumpsc_element.exit_crit_edge, label %land.lhs.true.i17.i

if.end26.i.__ioam6_genl_dumpsc_element.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ioam6_genl_dumpsc_element.exit

land.lhs.true.i17.i:                              ; preds = %if.end26.i
  %call1.i15.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call1.i15.i, 0
  br i1 %tobool.not.i16.i, label %land.lhs.true.i17.i.__ioam6_genl_dumpsc_element.exit_crit_edge, label %land.lhs.true2.i19.i

land.lhs.true.i17.i.__ioam6_genl_dumpsc_element.exit_crit_edge: ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ioam6_genl_dumpsc_element.exit

land.lhs.true2.i19.i:                             ; preds = %land.lhs.true.i17.i
  %.b4.i18.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18.i, label %land.lhs.true2.i19.i.__ioam6_genl_dumpsc_element.exit_crit_edge, label %if.then.i20.i

land.lhs.true2.i19.i.__ioam6_genl_dumpsc_element.exit_crit_edge: ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ioam6_genl_dumpsc_element.exit

if.then.i20.i:                                    ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %__ioam6_genl_dumpsc_element.exit

if.then.i27.i:                                    ; preds = %rcu_read_unlock.exit.i, %lor.lhs.false.i.if.then.i27.i_crit_edge, %if.end.i.if.then.i27.i_crit_edge
  %add.ptr1.i26.i = getelementptr i8, ptr %call.i24, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i26.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i27.i.done_crit_edge, label %if.then.i.i.i.i

if.then.i27.i.done_crit_edge:                     ; preds = %if.then.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then.i.i.i.i:                                  ; preds = %if.then.i27.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %31, %add.ptr1.i26.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !105

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %32 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i26.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  br label %done

__ioam6_genl_dumpsc_element.exit:                 ; preds = %if.then.i20.i, %land.lhs.true2.i19.i.__ioam6_genl_dumpsc_element.exit_crit_edge, %land.lhs.true.i17.i.__ioam6_genl_dumpsc_element.exit_crit_edge, %if.end26.i.__ioam6_genl_dumpsc_element.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %34 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i21.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i21.i to ptr
  %preempt_count.i.i.i.i22.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i22.i, align 4
  %sub.i.i.i23.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i23.i, ptr %preempt_count.i.i.i.i22.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %add.ptr1.i.i = getelementptr i8, ptr %call.i24, i32 -20
  %38 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %40 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %for.cond.backedge

for.end:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  br label %done

done.loopexit.split.loop.exit:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %call to i32
  br label %done

done:                                             ; preds = %done.loopexit.split.loop.exit, %for.end, %if.end.i.i.i.i, %if.then.i27.i.done_crit_edge, %if.end7.done_crit_edge
  %err.0 = phi i32 [ %42, %for.end ], [ -90, %if.end.i.i.i.i ], [ -90, %if.then.i27.i.done_crit_edge ], [ %43, %done.loopexit.split.loop.exit ], [ -12, %if.end7.done_crit_edge ]
  call void @rhashtable_walk_stop(ptr noundef %3) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpsc_done(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  tail call void @rhashtable_walk_exit(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_genl_ns_set_schema(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %ns_id = alloca i16, align 2
  %sc_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ns_id) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sc_id) #12
  %0 = ptrtoint ptr %sc_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sc_id, align 4, !annotation !106
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %2, i32 4
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr ptr, ptr %2, i32 6
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %11 = ptrtoint ptr %ns_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %ns_id, align 2
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %12 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_net.i, align 4
  %ioam6_data.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 36, i32 39
  %14 = ptrtoint ptr %ioam6_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioam6_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %15, i32 noundef 0) #12
  %namespaces = getelementptr inbounds %struct.ioam6_pernet_data, ptr %15, i32 0, i32 1
  %call11 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %namespaces, ptr noundef nonnull %ns_id, [7 x i32] [i32 2, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end.out_unlock_crit_edge, label %if.end14

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end14:                                         ; preds = %if.end
  %16 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attrs, align 4
  %arrayidx16 = getelementptr ptr, ptr %17, i32 6
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.else, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.else:                                          ; preds = %if.end14
  %arrayidx20 = getelementptr ptr, ptr %17, i32 4
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx20, align 4
  %add.ptr.i.i272 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i272 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i272, align 4
  %24 = ptrtoint ptr %sc_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sc_id, align 4
  %schemas = getelementptr inbounds %struct.ioam6_pernet_data, ptr %15, i32 0, i32 2
  %call22 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %schemas, ptr noundef nonnull %sc_id, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.else.out_unlock_crit_edge, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.end14.do.body_crit_edge
  %sc.0 = phi ptr [ %call22, %if.else.do.body_crit_edge ], [ null, %if.end14.do.body_crit_edge ]
  %dep_map = getelementptr inbounds %struct.mutex, ptr %15, i32 0, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true30:                                  ; preds = %do.body
  %call31 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.do.end_crit_edge, label %land.lhs.true33

land.lhs.true30.do.end_crit_edge:                 ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %.b271 = load i1, ptr @ioam6_genl_ns_set_schema.__warned, align 1
  br i1 %.b271, label %land.lhs.true33.do.end_crit_edge, label %if.then35

land.lhs.true33.do.end_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ioam6_genl_ns_set_schema.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 536, ptr noundef nonnull @.str.13) #12
  br label %do.end

do.end:                                           ; preds = %if.then35, %land.lhs.true33.do.end_crit_edge, %land.lhs.true30.do.end_crit_edge, %do.body.do.end_crit_edge
  %schema = getelementptr inbounds %struct.ioam6_namespace, ptr %call11, i32 0, i32 2
  %25 = ptrtoint ptr %schema to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %schema, align 4
  %tobool37.not = icmp eq ptr %26, null
  br i1 %tobool37.not, label %do.end.do.body78_crit_edge, label %do.body45

do.end.do.body78_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body78

do.body45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %ns46 = getelementptr inbounds %struct.ioam6_schema, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ns46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr null, ptr %ns46, align 4
  br label %do.body78

do.body78:                                        ; preds = %do.body45, %do.end.do.body78_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !107
  %28 = ptrtoint ptr %schema to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %sc.0, ptr %schema, align 4
  %tobool119.not = icmp eq ptr %sc.0, null
  br i1 %tobool119.not, label %do.body78.out_unlock_crit_edge, label %do.body121

do.body78.out_unlock_crit_edge:                   ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

do.body121:                                       ; preds = %do.body78
  %call.i273 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool125.not = icmp eq i32 %call.i273, 0
  br i1 %tobool125.not, label %land.lhs.true126, label %do.body121.do.end134_crit_edge

do.body121.do.end134_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end134

land.lhs.true126:                                 ; preds = %do.body121
  %call127 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %land.lhs.true126.do.end134_crit_edge, label %land.lhs.true129

land.lhs.true126.do.end134_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end134

land.lhs.true129:                                 ; preds = %land.lhs.true126
  %.b257270 = load i1, ptr @ioam6_genl_ns_set_schema.__warned.21, align 1
  br i1 %.b257270, label %land.lhs.true129.do.end134_crit_edge, label %if.then131

land.lhs.true129.do.end134_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end134

if.then131:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ioam6_genl_ns_set_schema.__warned.21, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 543, ptr noundef nonnull @.str.13) #12
  br label %do.end134

do.end134:                                        ; preds = %if.then131, %land.lhs.true129.do.end134_crit_edge, %land.lhs.true126.do.end134_crit_edge, %do.body121.do.end134_crit_edge
  %ns136 = getelementptr inbounds %struct.ioam6_schema, ptr %sc.0, i32 0, i32 2
  %29 = ptrtoint ptr %ns136 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ns136, align 4
  %tobool137.not = icmp eq ptr %30, null
  br i1 %tobool137.not, label %do.end134.do.body180_crit_edge, label %do.body147

do.end134.do.body180_crit_edge:                   ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body180

do.body147:                                       ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #14
  %schema148 = getelementptr inbounds %struct.ioam6_namespace, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %schema148 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %schema148, align 4
  br label %do.body180

do.body180:                                       ; preds = %do.body147, %do.end134.do.body180_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %32 = ptrtoint ptr %ns136 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call11, ptr %ns136, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %do.body180, %do.body78.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %err.0 = phi i32 [ -2, %if.end.out_unlock_crit_edge ], [ -2, %if.else.out_unlock_crit_edge ], [ 0, %do.body180 ], [ 0, %do.body78.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc_id) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ns_id) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %head_offset.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %obj_hashfn = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %obj_hashfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj_hashfn, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !101

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #12, !srcloc !109
  unreachable

do.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %head_offset.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %head_offset.i, align 2
  %conv.i = zext i16 %3 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %obj, i32 %idx.neg.i
  %key_offset = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %key_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %key_offset, align 4
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %conv
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %6 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #12
  %7 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %8 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ht, ptr %arg.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %7, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %do.end8.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.end8.rcu_read_lock.exit.i_crit_edge:           ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.end8
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.end8.rcu_read_lock.exit.i_crit_edge
  %14 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 715, ptr noundef nonnull @.str.1) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %16 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %17 = ptrtoint ptr %head_offset.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %head_offset.i, align 2
  %conv.i.i.i = zext i16 %18 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i4.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i4.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !105

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %20 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %22) #12
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %15, i32 0, i32 2
  %23 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %25 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %27 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %26(ptr noundef %add.ptr.i.i, i32 noundef %28, i32 noundef %24) #12
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %15, align 128
  %sub.i.i.i.i = add i32 %30, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %15, i32 0, i32 1
  %31 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i5.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i5.i, label %cond.false.i8.i, label %cond.true.i7.i, !prof !101

cond.true.i7.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i6.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %15, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket_insert.exit.i

cond.false.i8.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %15, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i8.i, %cond.true.i7.i
  %cond.i9.i = phi ptr [ %call.i6.i, %cond.true.i7.i ], [ %arrayidx.i.i, %cond.false.i8.i ]
  %tobool17.not.i = icmp eq ptr %cond.i9.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %15, ptr noundef nonnull %cond.i9.i) #12
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %15, i32 0, i32 5
  %33 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %34, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !101

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %15, ptr noundef nonnull %cond.i9.i) #12
  %call.i11.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i11.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i14.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i14.i:                              ; preds = %slow_path.i
  %call1.i12.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %35 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i18.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i20.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i20.i, ptr %preempt_count.i.i.i.i19.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %add.ptr, ptr noundef %obj) #12
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i21.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %15, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i24.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true.i24.i:                              ; preds = %if.end30.i
  %call1.i23.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i23.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i24.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i24.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i24.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i25.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

if.then.i25.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 377, ptr noundef nonnull @.str.13) #12
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i25.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i24.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %39 = ptrtoint ptr %cond.i9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cond.i9.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %and.i.i.i = and i32 %41, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %42 = ptrtoint ptr %cond.i9.i to i32
  %or.i.i.i = or i32 %42, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i84.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i)
  %tobool.i.not85.i = icmp eq i32 %and.i84.i, 0
  br i1 %tobool.i.not85.i, label %for.body.lr.ph.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.body.lr.ph.i:                                 ; preds = %rht_ptr.exit.i
  %43 = inttoptr i32 %cond.i.i.i to ptr
  %tobool35.not.i = icmp eq ptr %add.ptr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool37.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %head.087.i = phi ptr [ %43, %for.body.lr.ph.i ], [ %57, %do.end147.i.for.body.i_crit_edge ]
  %elasticity.086.i = phi i32 [ 16, %for.body.lr.ph.i ], [ %dec.i, %do.end147.i.for.body.i_crit_edge ]
  %dec.i = add i32 %elasticity.086.i, -1
  br i1 %tobool35.not.i, label %for.body.i.do.body136.i_crit_edge, label %lor.lhs.false36.i

for.body.i.do.body136.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136.i

lor.lhs.false36.i:                                ; preds = %for.body.i
  %44 = ptrtoint ptr %head_offset.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %head_offset.i, align 2
  %conv.i29.i = zext i16 %45 to i32
  %idx.neg.i30.i = sub nsw i32 0, %conv.i29.i
  %add.ptr.i31.i = getelementptr i8, ptr %head.087.i, i32 %idx.neg.i30.i
  br i1 %tobool37.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %lor.lhs.false36.i
  %call40.i = call i32 %6(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i31.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %cond.true.i.cleanup.i_crit_edge, label %cond.true.i.do.body136.i_crit_edge

cond.true.i.do.body136.i_crit_edge:               ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136.i

cond.true.i.cleanup.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cond.false.i:                                     ; preds = %lor.lhs.false36.i
  %46 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %47, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %key_offset.i.i, align 4
  %conv.i32.i = zext i16 %49 to i32
  %add.ptr.i33.i = getelementptr i8, ptr %add.ptr.i31.i, i32 %conv.i32.i
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %7, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %47, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %53 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i33.i, ptr %51, i32 %conv3.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool44.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool44.not.i, label %cond.false.i.cleanup.i_crit_edge, label %cond.false.i.do.body136.i_crit_edge

cond.false.i.do.body136.i_crit_edge:              ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136.i

cond.false.i.cleanup.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %cond.false.i.cleanup.i_crit_edge, %cond.true.i.cleanup.i_crit_edge
  %54 = ptrtoint ptr %head_offset.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %head_offset.i, align 2
  %conv.i36.i = zext i16 %55 to i32
  %idx.neg.i37.i = sub nsw i32 0, %conv.i36.i
  %add.ptr.i38.i = getelementptr i8, ptr %head.087.i, i32 %idx.neg.i37.i
  br label %out_unlock.i

do.body136.i:                                     ; preds = %cond.false.i.do.body136.i_crit_edge, %cond.true.i.do.body136.i_crit_edge, %for.body.i.do.body136.i_crit_edge
  %call137.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %15, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %do.body136.i.do.end147.i_crit_edge

do.body136.i.do.end147.i_crit_edge:               ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %do.body136.i
  %call140.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.14, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.14, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 732, ptr noundef nonnull @.str.13) #12
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %do.body136.i.do.end147.i_crit_edge
  %56 = ptrtoint ptr %head.087.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.087.i, align 4
  %58 = ptrtoint ptr %57 to i32
  %and.i.i = and i32 %58, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i39.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %59 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %61 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.i.not.i = icmp ult i32 %60, %62
  br i1 %cmp.i.not.i, label %if.end162.i, label %if.end152.i.out_unlock.i_crit_edge, !prof !101

if.end152.i.out_unlock.i_crit_edge:               ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.i

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i41.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %63 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %nelems.i.i, align 4
  %65 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %15, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp.i42.i = icmp ugt i32 %64, %66
  br i1 %cmp.i42.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %67 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i43.i = icmp eq i32 %68, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp4.i.i = icmp ult i32 %66, %68
  %spec.select.i.i = select i1 %tobool.not.i43.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !105

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i44.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %15, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i45.i, label %land.lhs.true.i48.i, label %if.end171.i.rht_ptr.exit56.i_crit_edge

if.end171.i.rht_ptr.exit56.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56.i

land.lhs.true.i48.i:                              ; preds = %if.end171.i
  %call1.i46.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i)
  %tobool2.not.i47.i = icmp eq i32 %call1.i46.i, 0
  br i1 %tobool2.not.i47.i, label %land.lhs.true.i48.i.rht_ptr.exit56.i_crit_edge, label %land.lhs.true3.i50.i

land.lhs.true.i48.i.rht_ptr.exit56.i_crit_edge:   ; preds = %land.lhs.true.i48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56.i

land.lhs.true3.i50.i:                             ; preds = %land.lhs.true.i48.i
  %.b7.i49.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i, label %land.lhs.true3.i50.i.rht_ptr.exit56.i_crit_edge, label %if.then.i51.i

land.lhs.true3.i50.i.rht_ptr.exit56.i_crit_edge:  ; preds = %land.lhs.true3.i50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56.i

if.then.i51.i:                                    ; preds = %land.lhs.true3.i50.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 377, ptr noundef nonnull @.str.13) #12
  br label %rht_ptr.exit56.i

rht_ptr.exit56.i:                                 ; preds = %if.then.i51.i, %land.lhs.true3.i50.i.rht_ptr.exit56.i_crit_edge, %land.lhs.true.i48.i.rht_ptr.exit56.i_crit_edge, %if.end171.i.rht_ptr.exit56.i_crit_edge
  %69 = ptrtoint ptr %cond.i9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cond.i9.i, align 4
  %71 = ptrtoint ptr %70 to i32
  %and.i.i52.i = and i32 %71, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i)
  %tobool.not.i.i53.i = icmp eq i32 %and.i.i52.i, 0
  %cond.i.i55.i = select i1 %tobool.not.i.i53.i, i32 %or.i.i.i, i32 %and.i.i52.i
  %72 = inttoptr i32 %cond.i.i55.i to ptr
  %73 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %72, ptr %obj, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %74 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !110
  call fastcc void @rht_assign_unlock(ptr noundef %15, ptr noundef nonnull %cond.i9.i, ptr noundef %obj) #12
  %call.i.i.i58.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %75 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %nelems.i.i, align 4
  %77 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %15, align 128
  %div8.i.i = lshr i32 %78, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %mul.i.i)
  %cmp.i59.i = icmp ugt i32 %76, %mul.i.i
  br i1 %cmp.i59.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit56.i.out.i_crit_edge

rht_ptr.exit56.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit56.i
  %max_size.i60.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %79 = ptrtoint ptr %max_size.i60.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_size.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i61.i = icmp eq i32 %80, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp4.i62.i = icmp ult i32 %78, %80
  %spec.select.i63.i = select i1 %tobool.not.i61.i, i1 true, i1 %cmp4.i62.i
  br i1 %spec.select.i63.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %run_work.i) #12
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit56.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ %data.3.i, %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit56.i.out.i_crit_edge ]
  %call.i66.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i66.i, label %out.i.rcu_read_unlock.exit76.i_crit_edge, label %land.lhs.true.i69.i

out.i.rcu_read_unlock.exit76.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76.i

land.lhs.true.i69.i:                              ; preds = %out.i
  %call1.i67.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i)
  %tobool.not.i68.i = icmp eq i32 %call1.i67.i, 0
  br i1 %tobool.not.i68.i, label %land.lhs.true.i69.i.rcu_read_unlock.exit76.i_crit_edge, label %land.lhs.true2.i71.i

land.lhs.true.i69.i.rcu_read_unlock.exit76.i_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76.i

land.lhs.true2.i71.i:                             ; preds = %land.lhs.true.i69.i
  %.b4.i70.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i, label %land.lhs.true2.i71.i.rcu_read_unlock.exit76.i_crit_edge, label %if.then.i72.i

land.lhs.true2.i71.i.rcu_read_unlock.exit76.i_crit_edge: ; preds = %land.lhs.true2.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76.i

if.then.i72.i:                                    ; preds = %land.lhs.true2.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit76.i

rcu_read_unlock.exit76.i:                         ; preds = %if.then.i72.i, %land.lhs.true2.i71.i.rcu_read_unlock.exit76.i_crit_edge, %land.lhs.true.i69.i.rcu_read_unlock.exit76.i_crit_edge, %out.i.rcu_read_unlock.exit76.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %82 = call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i73.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i73.i to ptr
  %preempt_count.i.i.i.i74.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i74.i, align 4
  %sub.i.i.i75.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i75.i, ptr %preempt_count.i.i.i.i74.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i.out_unlock.i_crit_edge, %cleanup.i
  %data.3.i = phi ptr [ %add.ptr.i38.i, %cleanup.i ], [ inttoptr (i32 -7 to ptr), %if.end152.i.out_unlock.i_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %15, ptr noundef nonnull %cond.i9.i) #12
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit76.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit76.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #12
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %86 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %86, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !112

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !113
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !101

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %7 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !117
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !105

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !119
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !121
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !122
  %3 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %2 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1076, ptr noundef nonnull @.str.1) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !105

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !101

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 377, ptr noundef nonnull @.str.13) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1032, ptr noundef nonnull @.str.13) #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !125
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #12
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.19, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1004, ptr noundef nonnull @.str.13) #12
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !126
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !105

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.15, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1085, ptr noundef nonnull @.str.1) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %46 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %retval.0.i15.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !36, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv6/ioam6.c", i32 878, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv6/ioam6.c", i32 959, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ioam6_init._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @ioam6_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rht_ns_params, !24, !"rht_ns_params", i1 false, i1 false}
!24 = !{!"../net/ipv6/ioam6.c", i32 63, i32 39}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/ipv6/ioam6.c", i32 730, i32 12}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ioam6_net_ops, !33, !"ioam6_net_ops", i1 false, i1 false}
!33 = !{!"../net/ipv6/ioam6.c", i32 938, i32 33}
!34 = !{ptr @ioam6_net_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../net/ipv6/ioam6.c", i32 907, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rht_sc_params, !38, !"rht_sc_params", i1 false, i1 false}
!38 = !{!"../net/ipv6/ioam6.c", i32 71, i32 39}
!39 = !{ptr @ioam6_genl_family, !40, !"ioam6_genl_family", i1 false, i1 false}
!40 = !{!"../net/ipv6/ioam6.c", i32 615, i32 27}
!41 = !{ptr @ioam6_genl_ops, !42, !"ioam6_genl_ops", i1 false, i1 false}
!42 = !{!"../net/ipv6/ioam6.c", i32 556, i32 30}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!52 = !{ptr @ioam6_genl_policy_addns, !53, !"ioam6_genl_policy_addns", i1 false, i1 false}
!53 = !{!"../net/ipv6/ioam6.c", i32 81, i32 32}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/ipv6/ioam6.c", i32 183, i32 7}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!70 = !{ptr @ioam6_genl_policy_delns, !71, !"ioam6_genl_policy_delns", i1 false, i1 false}
!71 = !{!"../net/ipv6/ioam6.c", i32 87, i32 32}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/ipv6/ioam6.c", i32 230, i32 7}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/net/netlink.h", i32 991, i32 3}
!76 = !{ptr @ioam6_genl_policy_addsc, !77, !"ioam6_genl_policy_addsc", i1 false, i1 false}
!77 = !{!"../net/ipv6/ioam6.c", i32 91, i32 32}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/ipv6/ioam6.c", i32 382, i32 7}
!80 = !{ptr @ioam6_genl_policy_delsc, !81, !"ioam6_genl_policy_delsc", i1 false, i1 false}
!81 = !{!"../net/ipv6/ioam6.c", i32 97, i32 32}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../net/ipv6/ioam6.c", i32 416, i32 7}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/ipv6/ioam6.c", i32 535, i32 11}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../net/ipv6/ioam6.c", i32 542, i32 12}
!88 = !{ptr @ioam6_genl_policy_ns_sc, !89, !"ioam6_genl_policy_ns_sc", i1 false, i1 false}
!89 = !{!"../net/ipv6/ioam6.c", i32 101, i32 32}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2149408524}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2153507198}
!103 = !{i64 2153510632}
!104 = !{i64 2149408790}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{!"auto-init"}
!107 = !{i64 2157588847}
!108 = !{i64 2157604395}
!109 = !{i64 2153552715, i64 2153553206, i64 2153552752, i64 2153552808, i64 2153552842, i64 2153552866, i64 2153552907, i64 2153552928, i64 2153552956, i64 2153552990}
!110 = !{i64 2148231778, i64 2148231804, i64 2148231833, i64 2148231867, i64 2148231898, i64 2148231921}
!111 = !{i64 2149761797}
!112 = !{!"branch_weights", i32 2146410443, i32 1073205}
!113 = !{i64 2148240636, i64 2148240668, i64 2148240697, i64 2148240731, i64 2148240762, i64 2148240785}
!114 = !{i64 2148329717}
!115 = !{i64 2149761957}
!116 = !{i64 2149762234}
!117 = !{i64 2149762076}
!118 = !{i64 2149762439}
!119 = !{i64 2149763502, i64 2149763994, i64 2149763539, i64 2149763595, i64 2149763629, i64 2149763653, i64 2149763694, i64 2149763715, i64 2149763743, i64 2149763777}
!120 = !{i64 2148328604}
!121 = !{i64 2148239023, i64 2148239055, i64 2148239084, i64 2148239118, i64 2148239149, i64 2148239172}
!122 = !{i64 2149764897}
!123 = !{i64 2153500271}
!124 = !{i64 2153502570}
!125 = !{i64 2153574574}
!126 = !{i64 2148234243, i64 2148234269, i64 2148234298, i64 2148234332, i64 2148234363, i64 2148234386}
!127 = !{i8 0, i8 2}
