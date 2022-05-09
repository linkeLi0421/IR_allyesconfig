; ModuleID = '/llk/IR_all_yes/net/ethtool/netlink.c_pt.bc'
source_filename = "../net/ethtool/netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ethtool_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_ethtool_notify\09\09\09\09"
module asm "\09.long\09__crc_ethtool_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_notify\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.41, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.sock_common = type { %union.anon.5, %union.anon.7, %union.anon.8, i16, i8, i8, i32, %union.anon.10, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.5 = type { i64 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }
%union.anon.10 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }

@ethnl_header_policy = dso_local constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 127, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 5, i16 0, %union.anon { i32 3 } }], [32 x i8] zeroinitializer }, align 32
@ethnl_header_policy_stats = dso_local constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 127, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 5, i16 0, %union.anon { i32 7 } }], [32 x i8] zeroinitializer }, align 32
@ethnl_parse_header_dev_get.__msg = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request header missing\00", [41 x i8] zeroinitializer }, align 32
@ethnl_parse_header_dev_get.__msg.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no device matches ifindex\00", [38 x i8] zeroinitializer }, align 32
@ethnl_parse_header_dev_get.__msg.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ifindex and name do not match\00", [34 x i8] zeroinitializer }, align 32
@ethnl_parse_header_dev_get.__msg.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no device matches name\00", [41 x i8] zeroinitializer }, align 32
@ethnl_parse_header_dev_get.__msg.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"neither ifindex nor name specified\00", [61 x i8] zeroinitializer }, align 32
@ethtool_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"ethtool\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 -64, i8 35, i8 0, i8 1, ptr null, ptr null, ptr null, ptr @ethtool_genl_ops, ptr null, ptr @ethtool_nl_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@ethnl_reply_init.__msg = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup reply message\00", [34 x i8] zeroinitializer }, align 32
@ethnl_bcast_seq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ethnl_ok = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@ethtool_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ethtool/netlink.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ethnl_notify_handlers = internal constant { [37 x ptr], [44 x i8] } { [37 x ptr] [ptr null, ptr null, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethnl_default_notify, ptr null, ptr null, ptr null, ptr null, ptr @ethnl_default_notify], [44 x i8] zeroinitializer }, align 32
@ethtool_notify.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"notification %u not implemented (dev=%s)\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_ethtool_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_notify to i32), ptr @__kstrtab_ethtool_notify, ptr @__kstrtabns_ethtool_notify }, section "___ksymtab+ethtool_notify", align 4
@__initcall__kmod_ethtool_nl__459_1056_ethnl_init4 = internal global ptr @ethnl_init, section ".initcall4.init", align 4
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@ethnl_default_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethnl_default_notify_ops = internal constant { [37 x ptr], [44 x i8] } { [37 x ptr] [ptr null, ptr null, ptr null, ptr @ethnl_linkinfo_request_ops, ptr null, ptr @ethnl_linkmodes_request_ops, ptr null, ptr null, ptr @ethnl_debug_request_ops, ptr null, ptr @ethnl_wol_request_ops, ptr null, ptr null, ptr @ethnl_features_request_ops, ptr null, ptr @ethnl_privflags_request_ops, ptr null, ptr @ethnl_rings_request_ops, ptr null, ptr @ethnl_channels_request_ops, ptr null, ptr @ethnl_coalesce_request_ops, ptr null, ptr @ethnl_pause_request_ops, ptr null, ptr @ethnl_eee_request_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethnl_fec_request_ops, ptr null, ptr null, ptr null, ptr null, ptr @ethnl_module_request_ops], [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unexpected notification type %u\0A\00", [63 x i8] zeroinitializer }, align 32
@ethnl_default_notify.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"calculated message payload length (%d) not sufficient\0A\00", [41 x i8] zeroinitializer }, align 32
@ethnl_linkinfo_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_linkmodes_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_debug_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_wol_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_features_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_privflags_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_rings_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_channels_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_coalesce_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_pause_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_eee_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_fec_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_module_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@ethtool_genl_ops = internal constant { [35 x %struct.genl_ops], [236 x i8] } { [35 x %struct.genl_ops] [%struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_strset_get_policy, i32 3, i8 1, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_linkinfo_get_policy, i32 1, i8 2, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_linkinfo, ptr null, ptr null, ptr null, ptr @ethnl_linkinfo_set_policy, i32 5, i8 3, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_linkmodes_get_policy, i32 1, i8 4, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_linkmodes, ptr null, ptr null, ptr null, ptr @ethnl_linkmodes_set_policy, i32 9, i8 5, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_linkstate_get_policy, i32 1, i8 6, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_debug_get_policy, i32 1, i8 7, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_debug, ptr null, ptr null, ptr null, ptr @ethnl_debug_set_policy, i32 2, i8 8, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_wol_get_policy, i32 1, i8 9, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_set_wol, ptr null, ptr null, ptr null, ptr @ethnl_wol_set_policy, i32 3, i8 10, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_features_get_policy, i32 1, i8 11, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_features, ptr null, ptr null, ptr null, ptr @ethnl_features_set_policy, i32 3, i8 12, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_privflags_get_policy, i32 1, i8 13, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_privflags, ptr null, ptr null, ptr null, ptr @ethnl_privflags_set_policy, i32 2, i8 14, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_rings_get_policy, i32 1, i8 15, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_rings, ptr null, ptr null, ptr null, ptr @ethnl_rings_set_policy, i32 10, i8 16, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_channels_get_policy, i32 1, i8 17, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_channels, ptr null, ptr null, ptr null, ptr @ethnl_channels_set_policy, i32 9, i8 18, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_coalesce_get_policy, i32 1, i8 19, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_coalesce, ptr null, ptr null, ptr null, ptr @ethnl_coalesce_set_policy, i32 25, i8 20, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_pause_get_policy, i32 1, i8 21, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_pause, ptr null, ptr null, ptr null, ptr @ethnl_pause_set_policy, i32 4, i8 22, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_eee_get_policy, i32 1, i8 23, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_eee, ptr null, ptr null, ptr null, ptr @ethnl_eee_set_policy, i32 7, i8 24, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_tsinfo_get_policy, i32 1, i8 25, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_act_cable_test, ptr null, ptr null, ptr null, ptr @ethnl_cable_test_act_policy, i32 1, i8 26, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_act_cable_test_tdr, ptr null, ptr null, ptr null, ptr @ethnl_cable_test_tdr_act_policy, i32 2, i8 27, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_tunnel_info_doit, ptr @ethnl_tunnel_info_start, ptr @ethnl_tunnel_info_dumpit, ptr null, ptr @ethnl_tunnel_info_get_policy, i32 1, i8 28, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_fec_get_policy, i32 1, i8 29, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_fec, ptr null, ptr null, ptr null, ptr @ethnl_fec_set_policy, i32 3, i8 30, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_module_eeprom_get_policy, i32 6, i8 31, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_stats_get_policy, i32 3, i8 32, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_phc_vclocks_get_policy, i32 1, i8 33, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_module_get_policy, i32 1, i8 34, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_module, ptr null, ptr null, ptr null, ptr @ethnl_module_set_policy, i32 2, i8 35, i8 0, i8 16, i8 0 }], [236 x i8] zeroinitializer }, align 32
@ethtool_nl_mcgrps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"monitor\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@ethnl_strset_get_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_linkinfo_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_linkinfo_set_policy = external dso_local constant [6 x %struct.nla_policy], align 4
@ethnl_linkmodes_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_linkmodes_set_policy = external dso_local constant [10 x %struct.nla_policy], align 4
@ethnl_linkstate_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_debug_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_debug_set_policy = external dso_local constant [3 x %struct.nla_policy], align 4
@ethnl_wol_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_wol_set_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_features_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_features_set_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_privflags_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_privflags_set_policy = external dso_local constant [3 x %struct.nla_policy], align 4
@ethnl_rings_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_rings_set_policy = external dso_local constant [11 x %struct.nla_policy], align 4
@ethnl_channels_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_channels_set_policy = external dso_local constant [10 x %struct.nla_policy], align 4
@ethnl_coalesce_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_coalesce_set_policy = external dso_local constant [26 x %struct.nla_policy], align 4
@ethnl_pause_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_pause_set_policy = external dso_local constant [5 x %struct.nla_policy], align 4
@ethnl_eee_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_eee_set_policy = external dso_local constant [8 x %struct.nla_policy], align 4
@ethnl_tsinfo_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_cable_test_act_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_cable_test_tdr_act_policy = external dso_local constant [3 x %struct.nla_policy], align 4
@ethnl_tunnel_info_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_fec_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_fec_set_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_module_eeprom_get_policy = external dso_local constant [7 x %struct.nla_policy], align 4
@ethnl_stats_get_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_phc_vclocks_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_module_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_module_set_policy = external dso_local constant [3 x %struct.nla_policy], align 4
@ethnl_default_requests = internal constant { [36 x ptr], [48 x i8] } { [36 x ptr] [ptr null, ptr @ethnl_strset_request_ops, ptr @ethnl_linkinfo_request_ops, ptr null, ptr @ethnl_linkmodes_request_ops, ptr null, ptr @ethnl_linkstate_request_ops, ptr @ethnl_debug_request_ops, ptr null, ptr @ethnl_wol_request_ops, ptr null, ptr @ethnl_features_request_ops, ptr null, ptr @ethnl_privflags_request_ops, ptr null, ptr @ethnl_rings_request_ops, ptr null, ptr @ethnl_channels_request_ops, ptr null, ptr @ethnl_coalesce_request_ops, ptr null, ptr @ethnl_pause_request_ops, ptr null, ptr @ethnl_eee_request_ops, ptr null, ptr @ethnl_tsinfo_request_ops, ptr null, ptr null, ptr null, ptr @ethnl_fec_request_ops, ptr null, ptr @ethnl_module_eeprom_request_ops, ptr @ethnl_stats_request_ops, ptr @ethnl_phc_vclocks_request_ops, ptr @ethnl_module_request_ops, ptr null], [48 x i8] zeroinitializer }, align 32
@ethnl_default_doit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cmd %u has no ethnl_request_ops\0A\00", [63 x i8] zeroinitializer }, align 32
@ethnl_default_doit.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ethnl cmd %d: calculated reply length %d, but consumed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ethnl_default_doit.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethnl_strset_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_linkstate_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_tsinfo_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_module_eeprom_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_stats_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_phc_vclocks_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_default_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ethtool: genetlink family registration failed\00", [50 x i8] zeroinitializer }, align 32
@ethnl_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ethnl_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ethtool: net device notifier registration failed\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"ethnl_header_policy\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 17, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"ethnl_header_policy_stats\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 25, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 99, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 118, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 127, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 134, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 139, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 224, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"ethnl_bcast_seq\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 11, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 700, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"ethnl_notify_handlers\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 680, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 706, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1208, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 991, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 308, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"ethnl_default_notify_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 587, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 615, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 662, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 4963, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"ethtool_genl_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 736, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"ethtool_nl_mcgrps\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1025, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"ethnl_default_requests\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 269, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 362, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 398, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1047, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"ethnl_netdev_notifier\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 730, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [25 x i8] c"../net/ethtool/netlink.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1052, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__initcall__kmod_ethtool_nl__459_1056_ethnl_init4, ptr @__ksymtab_ethtool_notify, ptr @ethnl_header_policy, ptr @ethnl_header_policy_stats, ptr @ethnl_parse_header_dev_get.__msg, ptr @ethnl_parse_header_dev_get.__msg.1, ptr @ethnl_parse_header_dev_get.__msg.2, ptr @ethnl_parse_header_dev_get.__msg.3, ptr @ethnl_parse_header_dev_get.__msg.4, ptr @ethnl_reply_init.__msg, ptr @ethnl_bcast_seq, ptr @.str, ptr @.str.5, ptr @ethnl_notify_handlers, ptr @.str.7, ptr @nla_parse_nested.__msg, ptr @.str.8, ptr @.str.9, ptr @ethnl_default_notify_ops, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @ethtool_genl_ops, ptr @ethtool_nl_mcgrps, ptr @ethnl_default_requests, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @ethnl_netdev_notifier, ptr @.str.19], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_header_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_header_policy_stats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_header_dev_get.__msg to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_header_dev_get.__msg.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_header_dev_get.__msg.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_header_dev_get.__msg.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_parse_header_dev_get.__msg.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_reply_init.__msg to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_bcast_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_notify_handlers to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_default_notify_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_genl_ops to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_nl_mcgrps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_default_requests to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_ops_begin(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %1, i32 noundef 4) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end6.err_crit_edge, label %lor.lhs.false

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

lor.lhs.false:                                    ; preds = %if.end6
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %5 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 2
  br i1 %cmp, label %lor.lhs.false.err_crit_edge, label %if.end9

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end9:                                          ; preds = %lor.lhs.false
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ethtool_ops, align 16
  %begin = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %begin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %begin, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %call14 = tail call i32 %9(ptr noundef nonnull %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.cleanup_crit_edge, label %if.then11.err_crit_edge

if.then11.err_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err:                                              ; preds = %if.then11.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end6.err_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then11.err_crit_edge ], [ -19, %lor.lhs.false.err_crit_edge ], [ -19, %if.end6.err_crit_edge ]
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %tobool21.not = icmp eq ptr %11, null
  br i1 %tobool21.not, label %err.cleanup_crit_edge, label %if.then22

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  %call.i39 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %11, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %err.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %ret.0, %if.then22 ], [ %ret.0, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ethnl_ops_complete(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_ops, align 16
  %complete = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %5, i32 noundef 5) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_parse_header_dev_get(ptr noundef %req_info, ptr noundef %header, ptr noundef %net, ptr noundef %extack, i1 noundef zeroext %require_dev) local_unnamed_addr #0 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #8
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %tobool.not = icmp eq ptr %header, null
  %3 = call ptr @memset(ptr %tb, i32 255, i32 16)
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg) #8
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup85_crit_edge, label %if.then2

do.body.cleanup85_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ethnl_parse_header_dev_get.__msg, ptr %extack, align 4
  br label %cleanup85

if.end3:                                          ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %header, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup85_crit_edge, label %if.then2.i

do.body.i.cleanup85_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %8 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %header, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %9 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup85

nla_parse_nested.exit:                            ; preds = %if.end3
  %add.ptr.i.i = getelementptr i8, ptr %header, i32 4
  %10 = ptrtoint ptr %header to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %header, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 31, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup85_crit_edge, label %if.end5

nla_parse_nested.exit.cleanup85_crit_edge:        ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end5:                                          ; preds = %nla_parse_nested.exit
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i130 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i130 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i130, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %flags.0 = phi i32 [ %15, %if.then7 ], [ 0, %if.end5.if.end10_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end10
  %add.ptr.i.i131 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i131 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i131, align 4
  %call17 = call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %21) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.body20, label %if.end29

do.body20:                                        ; preds = %if.then14
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg.1) #8
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.cleanup85_crit_edge, label %if.then23

do.body20.cleanup85_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ethnl_parse_header_dev_get.__msg.1, ptr %extack, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %0, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %25 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %26 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %policy, align 4
  br label %cleanup85

if.end29:                                         ; preds = %if.then14
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %if.end29.if.then82_crit_edge, label %land.lhs.true

if.end29.if.then82_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82

land.lhs.true:                                    ; preds = %if.end29
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %call33 = call i32 @strncmp(ptr noundef nonnull %call17, ptr noundef %add.ptr.i, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true.if.then82_crit_edge, label %do.body1.i

land.lhs.true.if.then82_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82

do.body1.i:                                       ; preds = %land.lhs.true
  %27 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 118
  %28 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcpu_refcnt.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %36, %30
  %37 = inttoptr i32 %add.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add13.i = add i32 %39, -1
  store i32 %add13.i, ptr %37, align 4
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !85
  %and.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !86

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #8, !srcloc !87
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg.2) #8
  %tobool38.not = icmp eq ptr %extack, null
  br i1 %tobool38.not, label %dev_put.exit.cleanup85_crit_edge, label %if.then39

dev_put.exit.cleanup85_crit_edge:                 ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then39:                                        ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ethnl_parse_header_dev_get.__msg.2, ptr %extack, align 4
  %bad_attr41 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %42 = ptrtoint ptr %bad_attr41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %header, ptr %bad_attr41, align 4
  %policy42 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %43 = ptrtoint ptr %policy42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %policy42, align 4
  br label %cleanup85

if.else:                                          ; preds = %if.end10
  %tobool47.not = icmp eq ptr %17, null
  br i1 %tobool47.not, label %if.else64, label %if.then48

if.then48:                                        ; preds = %if.else
  %add.ptr.i133 = getelementptr i8, ptr %17, i32 4
  %call50 = call ptr @dev_get_by_name(ptr noundef %net, ptr noundef %add.ptr.i133) #8
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %do.body53, label %if.then48.if.then82_crit_edge

if.then48.if.then82_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82

do.body53:                                        ; preds = %if.then48
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg.3) #8
  %tobool55.not = icmp eq ptr %extack, null
  br i1 %tobool55.not, label %do.body53.cleanup85_crit_edge, label %if.then56

do.body53.cleanup85_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then56:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @ethnl_parse_header_dev_get.__msg.3, ptr %extack, align 4
  %bad_attr58 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %45 = ptrtoint ptr %bad_attr58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %17, ptr %bad_attr58, align 4
  %policy59 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %46 = ptrtoint ptr %policy59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %policy59, align 4
  br label %cleanup85

if.else64:                                        ; preds = %if.else
  br i1 %require_dev, label %do.body67, label %if.end79

do.body67:                                        ; preds = %if.else64
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg.4) #8
  %tobool69.not = icmp eq ptr %extack, null
  br i1 %tobool69.not, label %do.body67.cleanup85_crit_edge, label %if.then70

do.body67.cleanup85_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then70:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ethnl_parse_header_dev_get.__msg.4, ptr %extack, align 4
  %bad_attr72 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %48 = ptrtoint ptr %bad_attr72 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %header, ptr %bad_attr72, align 4
  %policy73 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %49 = ptrtoint ptr %policy73 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %policy73, align 4
  br label %cleanup85

if.end79:                                         ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %req_info to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %req_info, align 4
  br label %if.end83

if.then82:                                        ; preds = %if.then48.if.then82_crit_edge, %land.lhs.true.if.then82_crit_edge, %if.end29.if.then82_crit_edge
  %dev.0.ph = phi ptr [ %call17, %land.lhs.true.if.then82_crit_edge ], [ %call17, %if.end29.if.then82_crit_edge ], [ %call50, %if.then48.if.then82_crit_edge ]
  %51 = ptrtoint ptr %req_info to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev.0.ph, ptr %req_info, align 4
  %dev_tracker = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev.0.ph, i32 0, i32 119
  %call.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %dev_tracker, i32 noundef 3264) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end79
  %flags84 = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 2
  %52 = ptrtoint ptr %flags84 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %flags.0, ptr %flags84, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %if.end83, %if.then70, %do.body67.cleanup85_crit_edge, %if.then56, %do.body53.cleanup85_crit_edge, %if.then39, %dev_put.exit.cleanup85_crit_edge, %if.then23, %do.body20.cleanup85_crit_edge, %nla_parse_nested.exit.cleanup85_crit_edge, %if.then2.i, %do.body.i.cleanup85_crit_edge, %if.then2, %do.body.cleanup85_crit_edge
  %retval.1 = phi i32 [ 0, %if.end83 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup85_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup85_crit_edge ], [ -19, %if.then23 ], [ -19, %if.then39 ], [ -19, %if.then56 ], [ -19, %do.body53.cleanup85_crit_edge ], [ -22, %if.then70 ], [ -22, %do.body67.cleanup85_crit_edge ], [ -19, %do.body20.cleanup85_crit_edge ], [ -19, %dev_put.exit.cleanup85_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup85_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_fill_reply_header(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %attrtype) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = or i16 %attrtype, -32768
  %or.i = zext i16 %0 to i32
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %1 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool1.not21 = icmp eq ptr %2, null
  %tobool1.not = select i1 %cmp.i.i, i1 true, i1 %tobool1.not21
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end3.if.then.i.i_crit_edge

if.end3.if.then.i.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end3
  %call.i19 = call i32 @strlen(ptr noundef nonnull %dev) #11
  %add.i = add i32 %call.i19, 1
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i, ptr noundef nonnull %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %2, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false.if.then.i.i_crit_edge, %if.end3.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i20 = icmp ugt ptr %10, %2
  br i1 %cmp.i.i20, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !86

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ethnl_reply_init(i32 noundef %payload, ptr noundef %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %hdr_attrtype, ptr noundef readonly %info, ptr nocapture noundef writeonly %ehdrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i.i = add i32 %payload, 7
  %and.i.i = and i32 %sub.i.i, -4
  %sub.i.i.i = add i32 %and.i.i, 19
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid.i, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @ethtool_genl_family, i32 noundef 0, i8 noundef zeroext %cmd) #8
  %4 = ptrtoint ptr %ehdrp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %ehdrp, align 4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.err_free_crit_edge, label %if.end4

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %dev, null
  br i1 %tobool5.not, label %if.end4.cleanup17_crit_edge, label %if.then6

if.end4.cleanup17_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @ethnl_fill_reply_header(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %dev, i16 noundef zeroext %hdr_attrtype)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then6.err_free_crit_edge, label %if.then6.cleanup17_crit_edge

if.then6.cleanup17_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.then6.err_free_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

err_free:                                         ; preds = %if.then6.err_free_crit_edge, %if.end.err_free_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %err

err:                                              ; preds = %err_free, %entry.err_crit_edge
  %tobool11.not = icmp eq ptr %info, null
  br i1 %tobool11.not, label %err.cleanup17_crit_edge, label %do.body

err.cleanup17_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

do.body:                                          ; preds = %err
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_reply_init.__msg) #8
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %do.body.cleanup17_crit_edge, label %if.then14

do.body.cleanup17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ethnl_reply_init.__msg, ptr %6, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %if.then14, %do.body.cleanup17_crit_edge, %err.cleanup17_crit_edge, %if.then6.cleanup17_crit_edge, %if.end4.cleanup17_crit_edge
  %retval.0 = phi ptr [ %call.i.i.i, %if.then6.cleanup17_crit_edge ], [ %call.i.i.i, %if.end4.cleanup17_crit_edge ], [ null, %do.body.cleanup17_crit_edge ], [ null, %if.then14 ], [ null, %err.cleanup17_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ethnl_dump_put(ptr noundef %skb, ptr nocapture noundef readonly %cb, i8 noundef zeroext %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %4 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %3, i32 noundef %7, ptr noundef nonnull @ethtool_genl_family, i32 noundef 0, i8 noundef zeroext %cmd) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ethnl_bcastmsg_put(ptr noundef %skb, i8 noundef zeroext %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ethnl_bcast_seq, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @ethnl_bcast_seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef 0, i32 noundef %inc, ptr noundef nonnull @ethtool_genl_family, i32 noundef 0, i8 noundef zeroext %cmd) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_multicast(ptr noundef %skb, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @ethtool_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i = icmp eq i8 %0, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge, label %if.then.i, !prof !88

land.rhs.i.genlmsg_multicast_netns.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %genlmsg_multicast_netns.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %genlmsg_multicast_netns.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @ethtool_genl_family, i32 0, i32 5), align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 21
  %4 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %6 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %dst_group.i.i, align 8
  %call.i.i = tail call i32 @netlink_broadcast(ptr noundef %5, ptr noundef %skb, i32 noundef 0, i32 noundef %3, i32 noundef 3264) #8
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  br label %genlmsg_multicast_netns.exit

genlmsg_multicast_netns.exit:                     ; preds = %if.end39.i, %if.then.i, %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end39.i ], [ -22, %if.then.i ], [ -22, %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ethtool_notify(ptr noundef %dev, i32 noundef %cmd, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b123 = load i1, ptr @ethnl_ok, align 1
  br i1 %.b123, label %if.end, label %entry.if.end111_crit_edge, !prof !88

entry.if.end111_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.end:                                           ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.rhs, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.rhs:                                         ; preds = %if.end
  %.b121125 = load i1, ptr @ethtool_notify.__already_done, align 1
  br i1 %.b121125, label %land.rhs.if.end43_crit_edge, label %if.then21, !prof !88

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ethtool_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 700) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then21, %land.rhs.if.end43_crit_edge, %if.end.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %cmd)
  %cmp = icmp ult i32 %cmd, 37
  br i1 %cmp, label %land.rhs51, label %if.end43.land.end68_crit_edge, !prof !88

if.end43.land.end68_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end68

land.rhs51:                                       ; preds = %if.end43
  %arrayidx = getelementptr [37 x ptr], ptr @ethnl_notify_handlers, i32 0, i32 %cmd
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool52.not = icmp eq ptr %1, null
  br i1 %tobool52.not, label %land.rhs51.land.end68_crit_edge, label %if.then60, !prof !86

land.rhs51.land.end68_crit_edge:                  ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end68

if.then60:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1(ptr noundef %dev, i32 noundef %cmd, ptr noundef %data) #8
  br label %if.end111

land.end68:                                       ; preds = %land.rhs51.land.end68_crit_edge, %if.end43.land.end68_crit_edge
  %.b122124 = load i1, ptr @ethtool_notify.__already_done.6, align 1
  br i1 %.b122124, label %land.end68.if.end111_crit_edge, label %if.then75, !prof !88

land.end68.if.end111_crit_edge:                   ; preds = %land.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then75:                                        ; preds = %land.end68
  store i1 true, ptr @ethtool_notify.__already_done.6, align 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then75.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then75.netdev_name.exit_crit_edge:             ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @strchr(ptr noundef %dev, i32 noundef 37) #8
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %dev, ptr @.str.13
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then75.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %if.then75.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 707, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %cmd, ptr noundef %retval.0.i) #8
  br label %if.end111

if.end111:                                        ; preds = %netdev_name.exit, %land.end68.if.end111_crit_edge, %if.then60, %entry.if.end111_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ethnl_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @ethtool_genl_family) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end21, !prof !86

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1047, i32 noundef 9, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end21:                                         ; preds = %entry
  store i1 true, ptr @ethnl_ok, align 1
  %call22 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ethnl_netdev_notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp24 = icmp slt i32 %call22, 0
  br i1 %cmp24, label %do.end40, label %if.end21.cleanup_crit_edge, !prof !86

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1052, i32 noundef 9, ptr noundef nonnull @.str.19) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call22, %do.end40 ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ethnl_default_notify(ptr noundef %dev, i32 noundef %cmd, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %cmd)
  %cmp = icmp ugt i32 %cmd, 36
  br i1 %cmp, label %entry.land.rhs_crit_edge, label %lor.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %arrayidx = getelementptr [37 x ptr], ptr @ethnl_default_notify_ops, i32 0, i32 %cmd
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.rhs.land.rhs_crit_edge, label %if.end8.i.i

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b201 = load i1, ptr @ethnl_default_notify.__already_done, align 1
  br i1 %.b201, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !88

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ethnl_default_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 617, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %cmd) #8
  br label %cleanup

if.end8.i.i:                                      ; preds = %lor.rhs
  %req_info_size = getelementptr inbounds %struct.ethnl_request_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %req_info_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_info_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #12
  %tobool41.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool41.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end43

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end8.i.i
  %reply_data_size = getelementptr inbounds %struct.ethnl_request_ops, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %reply_data_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reply_data_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #12
  %tobool45.not = icmp eq ptr %call9.i, null
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call9.i.i, align 128
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %call9.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or = or i32 %8, 1
  store i32 %or, ptr %flags, align 8
  %9 = ptrtoint ptr %reply_data_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reply_data_size, align 4
  %11 = call ptr @memset(ptr %call9.i, i32 0, i32 %10)
  %12 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %call9.i, align 128
  %prepare_data = getelementptr inbounds %struct.ethnl_request_ops, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %prepare_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prepare_data, align 4
  %call49 = tail call i32 %14(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end47.err_cleanup_crit_edge, label %if.end52

if.end47.err_cleanup_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

if.end52:                                         ; preds = %if.end47
  %reply_size = getelementptr inbounds %struct.ethnl_request_ops, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %reply_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reply_size, align 4
  %call53 = tail call i32 %16(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.err_cleanup_crit_edge, label %if.end56

if.end52.err_cleanup_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

if.end56:                                         ; preds = %if.end52
  %add = add nuw i32 %call53, 32
  %sub.i.i = add nuw i32 %call53, 39
  %and.i.i = and i32 %sub.i.i, -4
  %sub.i.i.i206 = add nuw i32 %and.i.i, 19
  %and.i.i.i = and i32 %sub.i.i.i206, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool59.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool59.not, label %if.end56.err_cleanup_crit_edge, label %if.end61

if.end56.err_cleanup_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

if.end61:                                         ; preds = %if.end56
  %conv = trunc i32 %cmd to i8
  %17 = load i32, ptr @ethnl_bcast_seq, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr @ethnl_bcast_seq, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %inc.i, ptr noundef nonnull @ethtool_genl_family, i32 noundef 0, i8 noundef zeroext %conv) #8
  %tobool63.not = icmp eq ptr %call.i, null
  br i1 %tobool63.not, label %if.end61.err_skb_crit_edge, label %if.end65

if.end61.err_skb_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_skb

if.end65:                                         ; preds = %if.end61
  %hdr_attr = getelementptr inbounds %struct.ethnl_request_ops, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %hdr_attr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hdr_attr, align 2
  %call66 = tail call i32 @ethnl_fill_reply_header(ptr noundef nonnull %call.i.i.i, ptr noundef %dev, i16 noundef zeroext %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.err_msg_crit_edge, label %if.end70

if.end65.err_msg_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_msg

if.end70:                                         ; preds = %if.end65
  %fill_reply = getelementptr inbounds %struct.ethnl_request_ops, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %fill_reply to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fill_reply, align 4
  %call71 = tail call i32 %21(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.err_msg_crit_edge, label %if.end75

if.end70.err_msg_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_msg

if.end75:                                         ; preds = %if.end70
  %cleanup_data = getelementptr inbounds %struct.ethnl_request_ops, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %cleanup_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cleanup_data, align 4
  %tobool76.not = icmp eq ptr %23, null
  br i1 %tobool76.not, label %if.end75.if.end79_crit_edge, label %if.then77

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef nonnull %call9.i) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75.if.end79_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  %call80 = tail call i32 @ethnl_multicast(ptr noundef nonnull %call.i.i.i, ptr noundef %dev)
  br label %cleanup

err_msg:                                          ; preds = %if.end70.err_msg_crit_edge, %if.end65.err_msg_crit_edge
  %ret.0 = phi i32 [ %call66, %if.end65.err_msg_crit_edge ], [ %call71, %if.end70.err_msg_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %ret.0)
  %cmp82 = icmp eq i32 %ret.0, -90
  br i1 %cmp82, label %land.rhs91, label %err_msg.err_skb_crit_edge

err_msg.err_skb_crit_edge:                        ; preds = %err_msg
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_skb

land.rhs91:                                       ; preds = %err_msg
  %.b199200 = load i1, ptr @ethnl_default_notify.__already_done.11, align 1
  br i1 %.b199200, label %land.rhs91.err_skb_crit_edge, label %if.then102, !prof !88

land.rhs91.err_skb_crit_edge:                     ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_skb

if.then102:                                       ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ethnl_default_notify.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 664, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %add) #8
  br label %err_skb

err_skb:                                          ; preds = %if.then102, %land.rhs91.err_skb_crit_edge, %err_msg.err_skb_crit_edge, %if.end61.err_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %err_cleanup

err_cleanup:                                      ; preds = %err_skb, %if.end56.err_cleanup_crit_edge, %if.end52.err_cleanup_crit_edge, %if.end47.err_cleanup_crit_edge
  %cleanup_data137 = getelementptr inbounds %struct.ethnl_request_ops, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %cleanup_data137 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cleanup_data137, align 4
  %tobool138.not = icmp eq ptr %28, null
  br i1 %tobool138.not, label %err_cleanup.if.end141_crit_edge, label %if.then139

err_cleanup.if.end141_crit_edge:                  ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then139:                                       ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %28(ptr noundef nonnull %call9.i) #8
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %err_cleanup.if.end141_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.end79, %if.then46, %if.end8.i.i.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethnl_default_doit(ptr nocapture noundef readnone %skb, ptr noundef %info) #0 align 64 {
entry:
  %reply_payload = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %genlhdr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply_payload) #8
  %4 = ptrtoint ptr %reply_payload to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %reply_payload, align 4, !annotation !89
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [36 x ptr], ptr @ethnl_default_requests, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.rhs, label %if.end8.i.i

land.rhs:                                         ; preds = %entry
  %.b285 = load i1, ptr @ethnl_default_doit.__already_done, align 1
  br i1 %.b285, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !88

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ethnl_default_doit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %idxprom) #8
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %req_info_size = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %req_info_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req_info_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #12
  %tobool41.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool41.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end43

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end8.i.i
  %reply_data_size = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %reply_data_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reply_data_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #12
  %tobool45.not = icmp eq ptr %call9.i, null
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %13 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extack, align 4
  %allow_nodev_do = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 5
  %17 = ptrtoint ptr %allow_nodev_do to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %allow_nodev_do, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool49.not = icmp eq i8 %18, 0
  %hdr_attr.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 2
  %19 = ptrtoint ptr %hdr_attr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdr_attr.i, align 2
  %idxprom.i = zext i16 %20 to i32
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %call9.i.i, ptr noundef %22, ptr noundef %14, ptr noundef %16, i1 noundef zeroext %tobool49.not) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i290 = icmp slt i32 %call.i, 0
  br i1 %cmp.i290, label %if.end47.err_dev_crit_edge, label %if.end.i291

if.end47.err_dev_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dev

if.end.i291:                                      ; preds = %if.end47
  %parse_request.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 6
  %23 = ptrtoint ptr %parse_request.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parse_request.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.end.i291.if.end55_crit_edge, label %if.then2.i

if.end.i291.if.end55_crit_edge:                   ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then2.i:                                       ; preds = %if.end.i291
  %call4.i = tail call i32 %24(ptr noundef nonnull %call9.i.i, ptr noundef %12, ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.err_dev_crit_edge, label %if.then2.i.if.end55_crit_edge

if.then2.i.if.end55_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then2.i.err_dev_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dev

if.end55:                                         ; preds = %if.then2.i.if.end55_crit_edge, %if.end.i291.if.end55_crit_edge
  %25 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call9.i.i, align 128
  %27 = ptrtoint ptr %reply_data_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reply_data_size, align 4
  %29 = call ptr @memset(ptr %call9.i, i32 0, i32 %28)
  %30 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %call9.i, align 128
  tail call void @rtnl_lock() #8
  %prepare_data = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 7
  %31 = ptrtoint ptr %prepare_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prepare_data, align 4
  %call56 = tail call i32 %32(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i, ptr noundef %info) #8
  tail call void @rtnl_unlock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.err_cleanup_crit_edge, label %if.end60

if.end55.err_cleanup_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

if.end60:                                         ; preds = %if.end55
  %reply_size = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 8
  %33 = ptrtoint ptr %reply_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reply_size, align 4
  %call61 = tail call i32 %34(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end60.err_cleanup_crit_edge, label %if.end65

if.end60.err_cleanup_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

if.end65:                                         ; preds = %if.end60
  %add = add nuw i32 %call61, 32
  %35 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call9.i.i, align 128
  %reply_cmd = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 1
  %37 = ptrtoint ptr %reply_cmd to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reply_cmd, align 1
  %39 = ptrtoint ptr %hdr_attr.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdr_attr.i, align 2
  %call68 = call ptr @ethnl_reply_init(i32 noundef %add, ptr noundef %36, i8 noundef zeroext %38, i16 noundef zeroext %40, ptr noundef %info, ptr noundef nonnull %reply_payload)
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.end65.err_cleanup_crit_edge, label %if.end71

if.end65.err_cleanup_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

if.end71:                                         ; preds = %if.end65
  %len = getelementptr inbounds %struct.sk_buff, ptr %call68, i32 0, i32 6
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %fill_reply = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 9
  %43 = ptrtoint ptr %fill_reply to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fill_reply, align 4
  %call72 = tail call i32 %44(ptr noundef nonnull %call68, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %err_msg, label %if.end76

if.end76:                                         ; preds = %if.end71
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %sub = sub i32 %46, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %call61)
  %cmp79 = icmp ugt i32 %sub, %call61
  br i1 %cmp79, label %land.rhs88, label %if.end76.if.end129_crit_edge

if.end76.if.end129_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

land.rhs88:                                       ; preds = %if.end76
  %.b281283 = load i1, ptr @ethnl_default_doit.__already_done.15, align 1
  br i1 %.b281283, label %land.rhs88.if.end129_crit_edge, label %if.then99, !prof !88

land.rhs88.if.end129_crit_edge:                   ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then99:                                        ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ethnl_default_doit.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 400, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %idxprom, i32 noundef %call61, i32 noundef %sub) #8
  br label %if.end129

if.end129:                                        ; preds = %if.then99, %land.rhs88.if.end129_crit_edge, %if.end76.if.end129_crit_edge
  %cleanup_data = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 10
  %47 = ptrtoint ptr %cleanup_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cleanup_data, align 4
  %tobool137.not = icmp eq ptr %48, null
  br i1 %tobool137.not, label %if.end129.if.end140_crit_edge, label %if.then138

if.end129.if.end140_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then138:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %48(ptr noundef nonnull %call9.i) #8
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end129.if.end140_crit_edge
  %49 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reply_payload, align 4
  %add.ptr1.i = getelementptr i8, ptr %50, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call68, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %53 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %54 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call9.i.i, align 128
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.end140.dev_put_track.exit_crit_edge, label %do.body1.i.i

if.end140.dev_put_track.exit_crit_edge:           ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %if.end140
  %dev_tracker = getelementptr inbounds %struct.ethnl_req_info, ptr %call9.i.i, i32 0, i32 1
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #8
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 118
  %57 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = tail call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %65, %59
  %66 = inttoptr i32 %add.i.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add13.i.i = add i32 %68, -1
  store i32 %add13.i.i, ptr %66, align 4
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !85
  %and.i.i.i.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !86

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #8, !srcloc !87
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.end140.dev_put_track.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  %70 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_net.i, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %72 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %71, i32 0, i32 21
  %74 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %75, ptr noundef nonnull %call68, i32 noundef %73, i32 noundef 64) #8
  %76 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

err_msg:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call72)
  %cmp144 = icmp eq i32 %call72, -90
  br i1 %cmp144, label %land.rhs153, label %err_msg.if.end191_crit_edge

err_msg.if.end191_crit_edge:                      ; preds = %err_msg
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

land.rhs153:                                      ; preds = %err_msg
  %.b282284 = load i1, ptr @ethnl_default_doit.__already_done.17, align 1
  br i1 %.b282284, label %land.rhs153.if.end191_crit_edge, label %if.then164, !prof !88

land.rhs153.if.end191_crit_edge:                  ; preds = %land.rhs153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.then164:                                       ; preds = %land.rhs153
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ethnl_default_doit.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 411, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %call61) #8
  br label %if.end191

if.end191:                                        ; preds = %if.then164, %land.rhs153.if.end191_crit_edge, %err_msg.if.end191_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call68, i32 noundef 0) #8
  br label %err_cleanup

err_cleanup:                                      ; preds = %if.end191, %if.end65.err_cleanup_crit_edge, %if.end60.err_cleanup_crit_edge, %if.end55.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call56, %if.end55.err_cleanup_crit_edge ], [ %call61, %if.end60.err_cleanup_crit_edge ], [ %call72, %if.end191 ], [ -12, %if.end65.err_cleanup_crit_edge ]
  %cleanup_data199 = getelementptr inbounds %struct.ethnl_request_ops, ptr %6, i32 0, i32 10
  %77 = ptrtoint ptr %cleanup_data199 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cleanup_data199, align 4
  %tobool200.not = icmp eq ptr %78, null
  br i1 %tobool200.not, label %err_cleanup.err_dev_crit_edge, label %if.then201

err_cleanup.err_dev_crit_edge:                    ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dev

if.then201:                                       ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %78(ptr noundef nonnull %call9.i) #8
  br label %err_dev

err_dev:                                          ; preds = %if.then201, %err_cleanup.err_dev_crit_edge, %if.then2.i.err_dev_crit_edge, %if.end47.err_dev_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then201 ], [ %ret.0, %err_cleanup.err_dev_crit_edge ], [ %call4.i, %if.then2.i.err_dev_crit_edge ], [ %call.i, %if.end47.err_dev_crit_edge ]
  %79 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call9.i.i, align 128
  %tobool.not.i294 = icmp eq ptr %80, null
  br i1 %tobool.not.i294, label %err_dev.dev_put_track.exit309_crit_edge, label %do.body1.i.i305

err_dev.dev_put_track.exit309_crit_edge:          ; preds = %err_dev
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put_track.exit309

do.body1.i.i305:                                  ; preds = %err_dev
  %dev_tracker205 = getelementptr inbounds %struct.ethnl_req_info, ptr %call9.i.i, i32 0, i32 1
  %refcnt_tracker.i.i295 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 119
  %call.i.i296 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i295, ptr noundef %dev_tracker205) #8
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %pcpu_refcnt.i.i297 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 118
  %82 = ptrtoint ptr %pcpu_refcnt.i.i297 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pcpu_refcnt.i.i297, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = tail call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i.i298 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i298 to ptr
  %cpu.i.i299 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %cpu.i.i299 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu.i.i299, align 4
  %arrayidx.i.i300 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx.i.i300 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i300, align 4
  %add.i.i301 = add i32 %90, %84
  %91 = inttoptr i32 %add.i.i301 to ptr
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %add13.i.i302 = add i32 %93, -1
  store i32 %add13.i.i302, ptr %91, align 4
  %94 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !85
  %and.i.i.i.i303 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i303)
  %tobool24.not.i.i304 = icmp eq i32 %and.i.i.i.i303, 0
  br i1 %tobool24.not.i.i304, label %if.then28.i.i306, label %do.body1.i.i305.dev_put.exit.i307_crit_edge, !prof !86

do.body1.i.i305.dev_put.exit.i307_crit_edge:      ; preds = %do.body1.i.i305
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i307

if.then28.i.i306:                                 ; preds = %do.body1.i.i305
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i307

dev_put.exit.i307:                                ; preds = %if.then28.i.i306, %do.body1.i.i305.dev_put.exit.i307_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %81) #8, !srcloc !87
  br label %dev_put_track.exit309

dev_put_track.exit309:                            ; preds = %dev_put.exit.i307, %err_dev.dev_put_track.exit309_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %dev_put_track.exit309, %dev_put_track.exit, %if.then46, %if.end8.i.i.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %dev_put_track.exit309 ], [ %76, %dev_put_track.exit ], [ -12, %if.then46 ], [ -95, %if.then ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -95, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply_payload) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethnl_default_start(ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %3 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 2
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [36 x ptr], ptr @ethnl_default_requests, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.rhs, label %if.end8.i.i

land.rhs:                                         ; preds = %entry
  %.b98 = load i1, ptr @ethnl_default_start.__already_done, align 1
  br i1 %.b98, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !88

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ethnl_default_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 535, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %idxprom) #8
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %req_info_size = getelementptr inbounds %struct.ethnl_request_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %req_info_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %req_info_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #12
  %tobool47.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool47.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end8.i.i
  %reply_data_size = getelementptr inbounds %struct.ethnl_request_ops, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %reply_data_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reply_data_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #12
  %tobool51.not = icmp eq ptr %call9.i, null
  br i1 %tobool51.not, label %if.end8.i.free_req_info_crit_edge, label %if.end53

if.end8.i.free_req_info_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_req_info

if.end53:                                         ; preds = %if.end8.i
  %attrs = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cb, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_net.i, align 4
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %extack, align 4
  %hdr_attr.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %8, i32 0, i32 2
  %24 = ptrtoint ptr %hdr_attr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hdr_attr.i, align 2
  %idxprom.i = zext i16 %25 to i32
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %call9.i.i, ptr noundef %27, ptr noundef %21, ptr noundef %23, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i103 = icmp slt i32 %call.i, 0
  br i1 %cmp.i103, label %if.end53.ethnl_default_parse.exit_crit_edge, label %if.end.i104

if.end53.ethnl_default_parse.exit_crit_edge:      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %ethnl_default_parse.exit

if.end.i104:                                      ; preds = %if.end53
  %parse_request.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %8, i32 0, i32 6
  %28 = ptrtoint ptr %parse_request.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parse_request.i, align 4
  %tobool1.not.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i, label %if.end.i104.if.end8.i105_crit_edge, label %if.then2.i

if.end.i104.if.end8.i105_crit_edge:               ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i105

if.then2.i:                                       ; preds = %if.end.i104
  %call4.i = tail call i32 %29(ptr noundef nonnull %call9.i.i, ptr noundef %14, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.ethnl_default_parse.exit_crit_edge, label %if.then2.i.if.end8.i105_crit_edge

if.then2.i.if.end8.i105_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i105

if.then2.i.ethnl_default_parse.exit_crit_edge:    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ethnl_default_parse.exit

if.end8.i105:                                     ; preds = %if.then2.i.if.end8.i105_crit_edge, %if.end.i104.if.end8.i105_crit_edge
  br label %ethnl_default_parse.exit

ethnl_default_parse.exit:                         ; preds = %if.end8.i105, %if.then2.i.ethnl_default_parse.exit_crit_edge, %if.end53.ethnl_default_parse.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end8.i105 ], [ %call.i, %if.end53.ethnl_default_parse.exit_crit_edge ], [ %call4.i, %if.then2.i.ethnl_default_parse.exit_crit_edge ]
  %30 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call9.i.i, align 128
  %tobool56.not = icmp eq ptr %31, null
  br i1 %tobool56.not, label %ethnl_default_parse.exit.if.end60_crit_edge, label %do.body1.i.i

ethnl_default_parse.exit.if.end60_crit_edge:      ; preds = %ethnl_default_parse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.body1.i.i:                                     ; preds = %ethnl_default_parse.exit
  %dev_tracker = getelementptr inbounds %struct.ethnl_req_info, ptr %call9.i.i, i32 0, i32 1
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #8
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 118
  %33 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add13.i.i = add i32 %44, -1
  store i32 %add13.i.i, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !85
  %and.i.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put_track.exit_crit_edge, !prof !86

do.body1.i.i.dev_put_track.exit_crit_edge:        ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put_track.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %if.then28.i.i, %do.body1.i.i.dev_put_track.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #8, !srcloc !87
  %46 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %call9.i.i, align 128
  br label %if.end60

if.end60:                                         ; preds = %dev_put_track.exit, %ethnl_default_parse.exit.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %free_reply_data, label %if.end63

if.end63:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %8, ptr %2, align 4
  %req_info65 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %48 = ptrtoint ptr %req_info65 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i.i, ptr %req_info65, align 4
  %reply_data66 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %49 = ptrtoint ptr %reply_data66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i, ptr %reply_data66, align 4
  %pos_hash = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %50 = ptrtoint ptr %pos_hash to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %pos_hash, align 4
  %pos_idx = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %51 = ptrtoint ptr %pos_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %pos_idx, align 4
  br label %cleanup

free_reply_data:                                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %free_req_info

free_req_info:                                    ; preds = %free_reply_data, %if.end8.i.free_req_info_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %free_reply_data ], [ -12, %if.end8.i.free_req_info_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_req_info, %if.end63, %if.end8.i.i.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_req_info ], [ 0, %if.end63 ], [ -95, %if.then ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -95, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethnl_default_dumpit(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %pos_idx = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %6 = ptrtoint ptr %pos_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos_idx, align 4
  tail call void @rtnl_lock() #8
  %pos_hash = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %8 = ptrtoint ptr %pos_hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pos_hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp128 = icmp slt i32 %9, 256
  br i1 %cmp128, label %for.body.lr.ph, label %entry.for.end39_crit_edge

entry.for.end39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end39

for.body.lr.ph:                                   ; preds = %entry
  %dev_index_head = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 24
  %dev_base_seq = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 3
  %seq2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %reply_data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %req_info.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc37.for.body_crit_edge, %for.body.lr.ph
  %s_idx.0133 = phi i32 [ %7, %for.body.lr.ph ], [ 0, %for.inc37.for.body_crit_edge ]
  %h.0130 = phi i32 [ %9, %for.body.lr.ph ], [ %inc38, %for.inc37.for.body_crit_edge ]
  %ret.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2.lcssa, %for.inc37.for.body_crit_edge ]
  %10 = ptrtoint ptr %dev_index_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_index_head, align 16
  %arrayidx = getelementptr %struct.hlist_head, ptr %11, i32 %h.0130
  %12 = ptrtoint ptr %dev_base_seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_base_seq, align 4
  %14 = ptrtoint ptr %seq2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %seq2, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not119 = icmp eq ptr %16, null
  %add.ptr120 = getelementptr i8, ptr %16, i32 -664
  %tobool5.not110122142 = icmp eq ptr %add.ptr120, null
  %tobool5.not110122 = or i1 %tobool.not119, %tobool5.not110122142
  br i1 %tobool5.not110122, label %for.body.for.inc37_crit_edge, label %for.body.for.body6.lr.ph_crit_edge

for.body.for.body6.lr.ph_crit_edge:               ; preds = %for.body
  br label %for.body6.lr.ph

for.body.for.inc37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37

for.body6.lr.ph:                                  ; preds = %if.then23.for.body6.lr.ph_crit_edge, %for.body.for.body6.lr.ph_crit_edge
  %spec.select125 = phi ptr [ %add.ptr, %if.then23.for.body6.lr.ph_crit_edge ], [ %add.ptr120, %for.body.for.body6.lr.ph_crit_edge ]
  %17 = phi i32 [ %105, %if.then23.for.body6.lr.ph_crit_edge ], [ %13, %for.body.for.body6.lr.ph_crit_edge ]
  %s_idx.1124 = phi i32 [ %add, %if.then23.for.body6.lr.ph_crit_edge ], [ %s_idx.0133, %for.body.for.body6.lr.ph_crit_edge ]
  %ret.1123 = phi i32 [ %retval.0.i, %if.then23.for.body6.lr.ph_crit_edge ], [ %ret.0129, %for.body.for.body6.lr.ph_crit_edge ]
  br label %for.body6

for.body6:                                        ; preds = %cont.for.body6_crit_edge, %for.body6.lr.ph
  %idx.1114 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %cont.for.body6_crit_edge ]
  %dev.0112 = phi ptr [ %spec.select125, %for.body6.lr.ph ], [ %add.ptr31, %cont.for.body6_crit_edge ]
  %ret.2111 = phi i32 [ %ret.1123, %for.body6.lr.ph ], [ %ret.4, %cont.for.body6_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1114, i32 %s_idx.1124)
  %cmp7 = icmp slt i32 %idx.1114, %s_idx.1124
  br i1 %cmp7, label %for.body6.cont_crit_edge, label %do.body1.i

for.body6.cont_crit_edge:                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cont

do.body1.i:                                       ; preds = %for.body6
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 118
  %19 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcpu_refcnt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add13.i = add i32 %30, 1
  store i32 %add13.i, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !85
  %and.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !86

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #8, !srcloc !87
  tail call void @rtnl_unlock() #8
  %32 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %portid.i, align 4
  %36 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nlmsg_seq.i, align 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %0, align 4
  %reply_cmd.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %reply_cmd.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reply_cmd.i, align 1
  %call.i = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %35, i32 noundef %39, ptr noundef nonnull @ethtool_genl_family, i32 noundef 2, i8 noundef zeroext %43) #8
  %tobool.not.i81 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i81, label %dev_hold.exit.do.body1.i91_crit_edge, label %if.end.i

dev_hold.exit.do.body1.i91_crit_edge:             ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i91

if.end.i:                                         ; preds = %dev_hold.exit
  %44 = ptrtoint ptr %reply_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reply_data.i, align 4
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %0, align 4
  %reply_data_size.i.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %reply_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reply_data_size.i.i, align 4
  %50 = call ptr @memset(ptr %45, i32 0, i32 %49)
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev.0112, ptr %45, align 4
  tail call void @rtnl_lock() #8
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %0, align 4
  %prepare_data.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %prepare_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prepare_data.i, align 4
  %56 = ptrtoint ptr %req_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %req_info.i, align 4
  %58 = ptrtoint ptr %reply_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reply_data.i, align 4
  %call6.i = tail call i32 %55(ptr noundef %57, ptr noundef %59, ptr noundef null) #8
  tail call void @rtnl_unlock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end.i.out.i_crit_edge, label %if.end8.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end8.i:                                        ; preds = %if.end.i
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %0, align 4
  %hdr_attr.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %hdr_attr.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %hdr_attr.i, align 2
  %call10.i = tail call i32 @ethnl_fill_reply_header(ptr noundef %skb, ptr noundef nonnull %dev.0112, i16 noundef zeroext %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end8.i.out.i_crit_edge, label %if.end13.i

if.end8.i.out.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %0, align 4
  %fill_reply.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %fill_reply.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fill_reply.i, align 4
  %68 = ptrtoint ptr %req_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %req_info.i, align 4
  %70 = ptrtoint ptr %reply_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reply_data.i, align 4
  %call17.i = tail call i32 %67(ptr noundef %skb, ptr noundef %69, ptr noundef %71) #8
  br label %out.i

out.i:                                            ; preds = %if.end13.i, %if.end8.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call6.i, %if.end.i.out.i_crit_edge ], [ %call10.i, %if.end8.i.out.i_crit_edge ], [ %call17.i, %if.end13.i ]
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %0, align 4
  %cleanup_data.i = getelementptr inbounds %struct.ethnl_request_ops, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %cleanup_data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cleanup_data.i, align 4
  %tobool19.not.i = icmp eq ptr %75, null
  br i1 %tobool19.not.i, label %out.i.if.end24.i_crit_edge, label %if.then20.i

out.i.if.end24.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then20.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %reply_data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reply_data.i, align 4
  tail call void %75(ptr noundef %77) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %out.i.if.end24.i_crit_edge
  %78 = ptrtoint ptr %reply_data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reply_data.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp27.i = icmp slt i32 %ret.0.i, 0
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  br i1 %cmp27.i, label %if.then.i.i, label %if.else.i

if.then.i.i:                                      ; preds = %if.end24.i
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.do.body1.i91_crit_edge, label %if.then.i.i.i.i

if.then.i.i.do.body1.i91_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i91

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %81 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %82, %add.ptr1.i.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !86

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %83 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %do.body1.i91

if.else.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %86 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %87 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %do.body1.i91

do.body1.i91:                                     ; preds = %if.else.i, %if.end.i.i.i.i, %if.then.i.i.do.body1.i91_crit_edge, %dev_hold.exit.do.body1.i91_crit_edge
  %retval.0.i = phi i32 [ -90, %dev_hold.exit.do.body1.i91_crit_edge ], [ %ret.0.i, %if.else.i ], [ %ret.0.i, %if.then.i.i.do.body1.i91_crit_edge ], [ %ret.0.i, %if.end.i.i.i.i ]
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %89 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcpu_refcnt.i, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = tail call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i84 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i84 to ptr
  %cpu.i85 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %cpu.i85 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cpu.i85, align 4
  %arrayidx.i86 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i86, align 4
  %add.i87 = add i32 %97, %91
  %98 = inttoptr i32 %add.i87 to ptr
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add13.i88 = add i32 %100, -1
  store i32 %add13.i88, ptr %98, align 4
  %101 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !85
  %and.i.i.i89 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i89)
  %tobool24.not.i90 = icmp eq i32 %and.i.i.i89, 0
  br i1 %tobool24.not.i90, label %if.then28.i92, label %do.body1.i91.dev_put.exit_crit_edge, !prof !86

do.body1.i91.dev_put.exit_crit_edge:              ; preds = %do.body1.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i92:                                    ; preds = %do.body1.i91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i92, %do.body1.i91.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #8, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp9 = icmp sgt i32 %retval.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %retval.0.i)
  %cmp11 = icmp eq i32 %retval.0.i, -95
  %or.cond = or i1 %cmp9, %cmp11
  br i1 %or.cond, label %lock_and_cont, label %cleanup

lock_and_cont:                                    ; preds = %dev_put.exit
  tail call void @rtnl_lock() #8
  %102 = ptrtoint ptr %dev_base_seq to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dev_base_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %17)
  %cmp22.not = icmp eq i32 %103, %17
  br i1 %cmp22.not, label %lock_and_cont.cont_crit_edge, label %if.then23

lock_and_cont.cont_crit_edge:                     ; preds = %lock_and_cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %cont

if.then23:                                        ; preds = %lock_and_cont
  %add = add i32 %idx.1114, 1
  %104 = ptrtoint ptr %dev_base_seq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dev_base_seq, align 4
  %106 = ptrtoint ptr %seq2 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %seq2, align 4
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %108, null
  %add.ptr = getelementptr i8, ptr %108, i32 -664
  %tobool5.not110148 = icmp eq ptr %add.ptr, null
  %tobool5.not110 = or i1 %tobool.not, %tobool5.not110148
  br i1 %tobool5.not110, label %if.then23.for.inc37_crit_edge, label %if.then23.for.body6.lr.ph_crit_edge

if.then23.for.body6.lr.ph_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.lr.ph

if.then23.for.inc37_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37

cont:                                             ; preds = %lock_and_cont.cont_crit_edge, %for.body6.cont_crit_edge
  %ret.4 = phi i32 [ %ret.2111, %for.body6.cont_crit_edge ], [ %retval.0.i, %lock_and_cont.cont_crit_edge ]
  %inc = add i32 %idx.1114, 1
  %index_hlist = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 101
  %109 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %index_hlist, align 8
  %tobool27.not = icmp eq ptr %110, null
  %add.ptr31 = getelementptr i8, ptr %110, i32 -664
  %tobool5.not149 = icmp eq ptr %add.ptr31, null
  %tobool5.not = or i1 %tobool27.not, %tobool5.not149
  br i1 %tobool5.not, label %cont.for.inc37_crit_edge, label %cont.for.body6_crit_edge

cont.for.body6_crit_edge:                         ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

cont.for.inc37_crit_edge:                         ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37

cleanup:                                          ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %111 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool14.not = icmp eq i32 %112, 0
  %spec.select79 = select i1 %tobool14.not, i32 %retval.0.i, i32 %112, !prof !86
  br label %out

for.inc37:                                        ; preds = %cont.for.inc37_crit_edge, %if.then23.for.inc37_crit_edge, %for.body.for.inc37_crit_edge
  %ret.2.lcssa = phi i32 [ %ret.0129, %for.body.for.inc37_crit_edge ], [ %ret.4, %cont.for.inc37_crit_edge ], [ %retval.0.i, %if.then23.for.inc37_crit_edge ]
  %idx.1.lcssa = phi i32 [ 0, %for.body.for.inc37_crit_edge ], [ %inc, %cont.for.inc37_crit_edge ], [ 0, %if.then23.for.inc37_crit_edge ]
  %inc38 = add nsw i32 %h.0130, 1
  %exitcond.not = icmp eq i32 %inc38, 256
  br i1 %exitcond.not, label %for.inc37.for.end39_crit_edge, label %for.inc37.for.body_crit_edge

for.inc37.for.body_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc37.for.end39_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end39

for.end39:                                        ; preds = %for.inc37.for.end39_crit_edge, %entry.for.end39_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end39_crit_edge ], [ %ret.2.lcssa, %for.inc37.for.end39_crit_edge ]
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end39_crit_edge ], [ %idx.1.lcssa, %for.inc37.for.end39_crit_edge ]
  %h.0.lcssa = phi i32 [ %9, %entry.for.end39_crit_edge ], [ 256, %for.inc37.for.end39_crit_edge ]
  tail call void @rtnl_unlock() #8
  br label %out

out:                                              ; preds = %for.end39, %cleanup
  %h.0107 = phi i32 [ %h.0130, %cleanup ], [ %h.0.lcssa, %for.end39 ]
  %ret.6 = phi i32 [ %spec.select79, %cleanup ], [ %ret.0.lcssa, %for.end39 ]
  %idx.2 = phi i32 [ %idx.1114, %cleanup ], [ %idx.0.lcssa, %for.end39 ]
  %113 = ptrtoint ptr %pos_hash to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %h.0107, ptr %pos_hash, align 4
  %114 = ptrtoint ptr %pos_idx to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %idx.2, ptr %pos_idx, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %115 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i, align 4
  %prev_seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %117 = ptrtoint ptr %prev_seq.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %prev_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i94 = icmp eq i32 %118, 0
  br i1 %tobool.not.i94, label %out.cleanup43_crit_edge, label %land.lhs.true.i

out.cleanup43_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

land.lhs.true.i:                                  ; preds = %out
  %seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %119 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %118)
  %cmp.not.i = icmp eq i32 %120, %118
  br i1 %cmp.not.i, label %land.lhs.true.i.cleanup43_crit_edge, label %if.then.i

land.lhs.true.i.cleanup43_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %116, i32 0, i32 2
  %121 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %nlmsg_flags.i, align 2
  %123 = or i16 %122, 16
  store i16 %123, ptr %nlmsg_flags.i, align 2
  br label %cleanup43

cleanup43:                                        ; preds = %if.then.i, %land.lhs.true.i.cleanup43_crit_edge, %out.cleanup43_crit_edge
  %seq3.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %124 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %seq3.i, align 4
  %126 = ptrtoint ptr %prev_seq.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %prev_seq.i, align 4
  ret i32 %ret.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethnl_default_done(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reply_data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %0 = ptrtoint ptr %reply_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_data, align 4
  tail call void @kfree(ptr noundef %1) #8
  %req_info = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %2 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_info, align 4
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_linkinfo(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_linkmodes(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_debug(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_wol(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_features(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_privflags(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_rings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_channels(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_coalesce(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_pause(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_eee(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_act_cable_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_act_cable_test_tdr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_tunnel_info_doit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_tunnel_info_start(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_tunnel_info_dumpit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_fec(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_module(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethnl_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %event)
  %cond = icmp eq i32 %event, 12
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  tail call void @ethtool_notify(ptr noundef %1, i32 noundef 13, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @ethnl_header_policy, !1, !"ethnl_header_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/netlink.c", i32 17, i32 25}
!2 = !{ptr @ethnl_header_policy_stats, !3, !"ethnl_header_policy_stats", i1 false, i1 false}
!3 = !{!"../net/ethtool/netlink.c", i32 25, i32 25}
!4 = !{ptr @ethnl_parse_header_dev_get.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../net/ethtool/netlink.c", i32 99, i32 3}
!6 = !{ptr @ethnl_parse_header_dev_get.__msg.1, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/netlink.c", i32 118, i32 4}
!8 = !{ptr @ethnl_parse_header_dev_get.__msg.2, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/netlink.c", i32 127, i32 4}
!10 = !{ptr @ethnl_parse_header_dev_get.__msg.3, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/ethtool/netlink.c", i32 134, i32 4}
!12 = !{ptr @ethnl_parse_header_dev_get.__msg.4, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/ethtool/netlink.c", i32 139, i32 3}
!14 = !{ptr @ethnl_reply_init.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/ethtool/netlink.c", i32 224, i32 3}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../net/ethtool/netlink.c", i32 700, i32 2}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../net/ethtool/netlink.c", i32 706, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__ksymtab_ethtool_notify, !24, !"__ksymtab_ethtool_notify", i1 false, i1 false}
!24 = !{!"../net/ethtool/netlink.c", i32 709, i32 1}
!25 = !{ptr @__initcall__kmod_ethtool_nl__459_1056_ethnl_init4, !26, !"__initcall__kmod_ethtool_nl__459_1056_ethnl_init4", i1 false, i1 false}
!26 = !{!"../net/ethtool/netlink.c", i32 1056, i32 1}
!27 = distinct !{null, !28, !"ethnl_ok", i1 false, i1 false}
!28 = !{!"../net/ethtool/netlink.c", i32 10, i32 13}
!29 = !{ptr @ethnl_bcast_seq, !30, !"ethnl_bcast_seq", i1 false, i1 false}
!30 = !{!"../net/ethtool/netlink.c", i32 11, i32 12}
!31 = !{ptr @nla_parse_nested.__msg, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/net/netlink.h", i32 991, i32 3}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ethnl_notify_handlers, !39, !"ethnl_notify_handlers", i1 false, i1 false}
!39 = !{!"../net/ethtool/netlink.c", i32 680, i32 37}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../net/ethtool/netlink.c", i32 615, i32 6}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../net/ethtool/netlink.c", i32 662, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ethnl_default_notify_ops, !47, !"ethnl_default_notify_ops", i1 false, i1 false}
!47 = !{!"../net/ethtool/netlink.c", i32 587, i32 1}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!50 = !{ptr @ethtool_genl_family, !51, !"ethtool_genl_family", i1 false, i1 false}
!51 = !{!"../net/ethtool/netlink.c", i32 1029, i32 27}
!52 = !{ptr @ethtool_genl_ops, !53, !"ethtool_genl_ops", i1 false, i1 false}
!53 = !{!"../net/ethtool/netlink.c", i32 736, i32 30}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../net/ethtool/netlink.c", i32 362, i32 6}
!56 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../net/ethtool/netlink.c", i32 398, i32 2}
!59 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../net/ethtool/netlink.c", i32 411, i32 2}
!62 = !{ptr @ethnl_default_requests, !63, !"ethnl_default_requests", i1 false, i1 false}
!63 = !{!"../net/ethtool/netlink.c", i32 269, i32 1}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../net/ethtool/netlink.c", i32 535, i32 6}
!66 = !{ptr @ethtool_nl_mcgrps, !67, !"ethtool_nl_mcgrps", i1 false, i1 false}
!67 = !{!"../net/ethtool/netlink.c", i32 1025, i32 42}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ethtool/netlink.c", i32 1047, i32 6}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ethtool/netlink.c", i32 1052, i32 2}
!72 = !{ptr @ethnl_netdev_notifier, !73, !"ethnl_netdev_notifier", i1 false, i1 false}
!73 = !{!"../net/ethtool/netlink.c", i32 730, i32 30}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 992147, i64 992208}
!85 = !{i64 994879}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 995164}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{!"auto-init"}
!90 = !{i8 0, i8 2}
