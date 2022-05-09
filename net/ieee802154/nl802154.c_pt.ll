; ModuleID = '/llk/IR_all_yes/net/ieee802154/nl802154.c_pt.bc'
source_filename = "../net/ieee802154/nl802154.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%union.anon.92 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.cfg802154_registered_device = type { ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, i32, i32, %struct.wpan_phy }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.124 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.nl802154_dump_wpan_phy_state = type { i64, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.cfg802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee802154_llsec_params = type { i8, i32, i8, %struct.ieee802154_llsec_key_id, i64, i16, i64, i64, i16 }
%struct.ieee802154_llsec_key_id = type { i8, i8, %union.anon.146 }
%union.anon.146 = type { %struct.ieee802154_addr }
%struct.ieee802154_addr = type { i8, i16, %union.anon.123 }
%union.anon.123 = type { i64 }
%struct.ieee802154_llsec_key_entry = type { %struct.list_head, %struct.ieee802154_llsec_key_id, ptr }
%struct.ieee802154_llsec_key = type { i8, i32, [16 x i8] }
%struct.ieee802154_llsec_table = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ieee802154_llsec_device = type { %struct.list_head, i16, i16, i64, i32, i8, i8, %struct.list_head }
%struct.ieee802154_llsec_device_key = type { %struct.list_head, %struct.ieee802154_llsec_key_id, i32 }
%struct.ieee802154_llsec_seclevel = type { %struct.list_head, i8, i8, i8, i32 }

@nl802154_fam = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"nl802154\00\00\00\00\00\00\00\00", i32 1, i32 37, i32 0, i8 -128, i8 29, i8 0, i8 1, ptr @nl802154_policy, ptr @nl802154_pre_doit, ptr @nl802154_post_doit, ptr @nl802154_ops, ptr null, ptr @nl802154_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@nl802154_policy = internal constant { [38 x %struct.nla_policy], [80 x i8] } { [38 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 19, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 12, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }], [80 x i8] zeroinitializer }, align 32
@nl802154_ops = internal constant { [29 x %struct.genl_ops], [212 x i8] } { [29 x %struct.genl_ops] [%struct.genl_ops { ptr @nl802154_get_wpan_phy, ptr null, ptr @nl802154_dump_wpan_phy, ptr @nl802154_dump_wpan_phy_done, ptr null, i32 0, i8 1, i8 5, i8 0, i8 5 }, %struct.genl_ops { ptr @nl802154_get_interface, ptr null, ptr @nl802154_dump_interface, ptr null, ptr null, i32 0, i8 5, i8 20, i8 0, i8 3 }, %struct.genl_ops { ptr @nl802154_new_interface, ptr null, ptr null, ptr null, ptr null, i32 0, i8 7, i8 5, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_del_interface, ptr null, ptr null, ptr null, ptr null, i32 0, i8 8, i8 20, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_channel, ptr null, ptr null, ptr null, ptr null, i32 0, i8 9, i8 5, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_cca_mode, ptr null, ptr null, ptr null, ptr null, i32 0, i8 13, i8 5, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_cca_ed_level, ptr null, ptr null, ptr null, ptr null, i32 0, i8 14, i8 5, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_tx_power, ptr null, ptr null, ptr null, ptr null, i32 0, i8 12, i8 5, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_wpan_phy_netns, ptr null, ptr null, ptr null, ptr null, i32 0, i8 20, i8 5, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_pan_id, ptr null, ptr null, ptr null, ptr null, i32 0, i8 10, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_short_addr, ptr null, ptr null, ptr null, ptr null, i32 0, i8 11, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_backoff_exponent, ptr null, ptr null, ptr null, ptr null, i32 0, i8 16, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_max_csma_backoffs, ptr null, ptr null, ptr null, ptr null, i32 0, i8 17, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_max_frame_retries, ptr null, ptr null, ptr null, ptr null, i32 0, i8 15, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_lbt_mode, ptr null, ptr null, ptr null, ptr null, i32 0, i8 18, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_ackreq_default, ptr null, ptr null, ptr null, ptr null, i32 0, i8 19, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_set_llsec_params, ptr null, ptr null, ptr null, ptr null, i32 0, i8 21, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @nl802154_dump_llsec_key, ptr null, ptr null, i32 0, i8 22, i8 6, i8 1, i8 5 }, %struct.genl_ops { ptr @nl802154_add_llsec_key, ptr null, ptr null, ptr null, ptr null, i32 0, i8 23, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_del_llsec_key, ptr null, ptr null, ptr null, ptr null, i32 0, i8 24, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @nl802154_dump_llsec_dev, ptr null, ptr null, i32 0, i8 25, i8 6, i8 1, i8 5 }, %struct.genl_ops { ptr @nl802154_add_llsec_dev, ptr null, ptr null, ptr null, ptr null, i32 0, i8 26, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_del_llsec_dev, ptr null, ptr null, ptr null, ptr null, i32 0, i8 27, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @nl802154_dump_llsec_devkey, ptr null, ptr null, i32 0, i8 28, i8 6, i8 1, i8 5 }, %struct.genl_ops { ptr @nl802154_add_llsec_devkey, ptr null, ptr null, ptr null, ptr null, i32 0, i8 29, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_del_llsec_devkey, ptr null, ptr null, ptr null, ptr null, i32 0, i8 30, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @nl802154_dump_llsec_seclevel, ptr null, ptr null, i32 0, i8 31, i8 6, i8 1, i8 5 }, %struct.genl_ops { ptr @nl802154_add_llsec_seclevel, ptr null, ptr null, ptr null, ptr null, i32 0, i8 32, i8 6, i8 1, i8 3 }, %struct.genl_ops { ptr @nl802154_del_llsec_seclevel, ptr null, ptr null, ptr null, ptr null, i32 0, i8 33, i8 6, i8 1, i8 3 }], [212 x i8] zeroinitializer }, align 32
@nl802154_mcgrps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"config\00\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@nl802154_pre_doit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/ieee802154/nl802154.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__cfg802154_rdev_from_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cfg802154_wpan_dev_from_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg802154_rdev_list = external dso_local global %struct.list_head, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cfg802154_rdev_list_generation = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_net = external dso_local global %struct.net, align 128
@__tracepoint_802154_rdev_add_virtual_intf = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ieee802154/trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_802154_rdev_add_virtual_intf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_802154_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_del_virtual_intf = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_del_virtual_intf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_channel = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_cca_mode = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_cca_mode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_cca_ed_level = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_cca_ed_level.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_tx_power = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_tx_power.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_pan_id = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_pan_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_short_addr = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_short_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_backoff_exponent = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_backoff_exponent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_csma_backoffs = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_csma_backoffs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_max_frame_retries = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_max_frame_retries.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/cfg802154.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_802154_rdev_set_lbt_mode = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_lbt_mode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_802154_rdev_set_ackreq_default = external dso_local global %struct.tracepoint, align 4
@trace_802154_rdev_set_ackreq_default.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nl802154_key_id_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nl802154_dev_addr_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nl802154_key_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 32, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@nl802154_dev_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nl802154_devkey_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nl802154_seclevel_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967191, i64 4294967206]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 65279, i64 65535]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"nl802154_policy\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 177, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"nl802154_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 2239, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"nl802154_mcgrps\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 31, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 2181, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 991, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [26 x i8] c"../net/ieee802154/trace.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 66, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 108, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"../include/net/cfg802154.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 128, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"nl802154_key_id_policy\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 1324, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"nl802154_dev_addr_policy\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 1285, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"nl802154_key_policy\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 1542, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"nl802154_dev_policy\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 1721, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"nl802154_devkey_policy\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 1909, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"nl802154_seclevel_policy\00", align 1
@___asan_gen_.59 = private constant [29 x i8] c"../net/ieee802154/nl802154.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 2075, i32 32 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @nl802154_policy, ptr @nl802154_ops, ptr @nl802154_mcgrps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nl802154_key_id_policy, ptr @nl802154_dev_addr_policy, ptr @nl802154_key_policy, ptr @nl802154_dev_policy, ptr @nl802154_devkey_policy, ptr @nl802154_seclevel_policy], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_policy to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_ops to i32), i32 812, i32 1024, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_mcgrps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_key_id_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_dev_addr_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_key_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_dev_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_devkey_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl802154_seclevel_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nl802154_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @nl802154_fam) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nl802154_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @nl802154_fam) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_pre_doit(ptr nocapture noundef readonly %ops, ptr nocapture noundef readnone %skb, ptr nocapture noundef %info) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_flags = getelementptr inbounds %struct.genl_ops, ptr %ops, i32 0, i32 7
  %0 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %internal_flags, align 1
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_lock() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %internal_flags, align 1
  %conv3 = zext i8 %4 to i32
  %and4 = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_net.i, align 4
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attrs.i, align 4
  %call.i.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then6.if.end30.i.i_crit_edge

if.then6.if.end30.i.i_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %if.then6
  %.b168.i.i = load i1, ptr @__cfg802154_rdev_from_attrs.__already_done, align 1
  br i1 %.b168.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then.i.i, !prof !89

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__cfg802154_rdev_from_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 97) #10
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %if.then6.if.end30.i.i_crit_edge
  %arrayidx.i.i = getelementptr ptr, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool38.not.i.i = icmp eq ptr %10, null
  br i1 %tobool38.not.i.i, label %land.lhs.true.i.i, label %if.then49.i.i

land.lhs.true.i.i:                                ; preds = %if.end30.i.i
  %arrayidx39.i.i = getelementptr ptr, ptr %8, i32 3
  %11 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx39.i.i, align 4
  %tobool40.not.i.i = icmp eq ptr %12, null
  br i1 %tobool40.not.i.i, label %land.lhs.true41.i.i, label %land.lhs.true.i.i.if.end53.i.i_crit_edge

land.lhs.true.i.i.if.end53.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i.i

land.lhs.true41.i.i:                              ; preds = %land.lhs.true.i.i
  %arrayidx42.i.i = getelementptr ptr, ptr %8, i32 6
  %13 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx42.i.i, align 4
  %tobool43.not.i.i = icmp eq ptr %14, null
  br i1 %tobool43.not.i.i, label %land.lhs.true41.i.i.if.then9_crit_edge, label %land.lhs.true41.i.i.if.end53.i.i_crit_edge

land.lhs.true41.i.i.if.end53.i.i_crit_edge:       ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i.i

land.lhs.true41.i.i.if.then9_crit_edge:           ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then49.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %call52.i.i = tail call ptr @cfg802154_rdev_by_wpan_phy_idx(i32 noundef %16) #10
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.then49.i.i, %land.lhs.true41.i.i.if.end53.i.i_crit_edge, %land.lhs.true.i.i.if.end53.i.i_crit_edge
  %rdev.0.i.i = phi ptr [ %call52.i.i, %if.then49.i.i ], [ null, %land.lhs.true41.i.i.if.end53.i.i_crit_edge ], [ null, %land.lhs.true.i.i.if.end53.i.i_crit_edge ]
  %arrayidx54.i.i = getelementptr ptr, ptr %8, i32 6
  %17 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx54.i.i, align 4
  %tobool55.not.i.i = icmp eq ptr %18, null
  br i1 %tobool55.not.i.i, label %if.end53.i.i.if.end90.i.i_crit_edge, label %if.then56.i.i

if.end53.i.i.if.end90.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i.i

if.then56.i.i:                                    ; preds = %if.end53.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i.i) #10
  %19 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %tmp.i.i.i, align 8, !annotation !90
  %call.i.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i.i, ptr noundef nonnull %18, i32 noundef 8) #10
  %20 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tmp.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i.i) #10
  %shr.i.i = lshr i64 %21, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %call59.i.i = call ptr @cfg802154_rdev_by_wpan_phy_idx(i32 noundef %conv.i.i) #10
  %tobool60.not.i.i = icmp eq ptr %call59.i.i, null
  br i1 %tobool60.not.i.i, label %if.then56.i.i.if.end90.i.i_crit_edge, label %if.then61.i.i

if.then56.i.i.if.end90.i.i_crit_edge:             ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i.i

if.then61.i.i:                                    ; preds = %if.then56.i.i
  %wpan_dev_list.i.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call59.i.i, i32 0, i32 6
  %conv67.i.i = trunc i64 %21 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then61.i.i
  %.pn.in.i.i = phi ptr [ %wpan_dev_list.i.i, %if.then61.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %22 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %wpan_dev_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %identifier.i.i = getelementptr i8, ptr %.pn.i.i, i32 20
  %23 = ptrtoint ptr %identifier.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %identifier.i.i, align 4
  %cmp68.not.i.i = icmp eq i32 %24, %conv67.i.i
  br i1 %cmp68.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %spec.select.i.i = phi ptr [ %call59.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ null, %for.cond.i.i.for.end.i.i_crit_edge ]
  %tobool80.not.i.i = icmp eq ptr %rdev.0.i.i, null
  %cmp82.not.i.i = icmp eq ptr %spec.select.i.i, %rdev.0.i.i
  %or.cond.i.i = select i1 %tobool80.not.i.i, i1 true, i1 %cmp82.not.i.i
  br i1 %or.cond.i.i, label %for.end.i.i.if.end90.i.i_crit_edge, label %for.end.i.i.if.then9_crit_edge

for.end.i.i.if.then9_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

for.end.i.i.if.end90.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i.i

if.end90.i.i:                                     ; preds = %for.end.i.i.if.end90.i.i_crit_edge, %if.then56.i.i.if.end90.i.i_crit_edge, %if.end53.i.i.if.end90.i.i_crit_edge
  %rdev.3.i.i = phi ptr [ %rdev.0.i.i, %if.end53.i.i.if.end90.i.i_crit_edge ], [ %spec.select.i.i, %for.end.i.i.if.end90.i.i_crit_edge ], [ %rdev.0.i.i, %if.then56.i.i.if.end90.i.i_crit_edge ]
  %arrayidx91.i.i = getelementptr ptr, ptr %8, i32 3
  %25 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx91.i.i, align 4
  %tobool92.not.i.i = icmp eq ptr %26, null
  br i1 %tobool92.not.i.i, label %if.end90.i.i.if.end119.i.i_crit_edge, label %if.then93.i.i

if.end90.i.i.if.end119.i.i_crit_edge:             ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i.i

if.then93.i.i:                                    ; preds = %if.end90.i.i
  %add.ptr.i.i170.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i170.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i170.i.i, align 4
  %call96.i.i = call ptr @__dev_get_by_index(ptr noundef %6, i32 noundef %28) #10
  %tobool97.not.i.i = icmp eq ptr %call96.i.i, null
  br i1 %tobool97.not.i.i, label %if.then93.i.i.if.end119.i.i_crit_edge, label %if.then98.i.i

if.then93.i.i.if.end119.i.i_crit_edge:            ; preds = %if.then93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i.i

if.then98.i.i:                                    ; preds = %if.then93.i.i
  %ieee802154_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %call96.i.i, i32 0, i32 83
  %29 = ptrtoint ptr %ieee802154_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ieee802154_ptr.i.i, align 4
  %tobool99.not.i.i = icmp eq ptr %30, null
  br i1 %tobool99.not.i.i, label %if.then98.i.i.if.then9_crit_edge, label %if.then100.i.i

if.then98.i.i.if.then9_crit_edge:                 ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then100.i.i:                                   ; preds = %if.then98.i.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %if.end103.i.i, !prof !91

do.body4.i.i.i:                                   ; preds = %if.then100.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

if.end103.i.i:                                    ; preds = %if.then100.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 -96
  %tobool104.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool104.not.i.i, label %if.end103.i.i.if.then9_crit_edge, label %if.end107.i.i

if.end103.i.i.if.then9_crit_edge:                 ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.end107.i.i:                                    ; preds = %if.end103.i.i
  %tobool108.not.i.i = icmp eq ptr %rdev.3.i.i, null
  %cmp110.not.i.i = icmp eq ptr %add.ptr.i.i.i, %rdev.3.i.i
  %or.cond169.i.i = select i1 %tobool108.not.i.i, i1 true, i1 %cmp110.not.i.i
  br i1 %or.cond169.i.i, label %if.end107.i.i.if.end123.i.i_crit_edge, label %if.end107.i.i.if.then9_crit_edge

if.end107.i.i.if.then9_crit_edge:                 ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.end107.i.i.if.end123.i.i_crit_edge:            ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i.i

if.end119.i.i:                                    ; preds = %if.then93.i.i.if.end119.i.i_crit_edge, %if.end90.i.i.if.end119.i.i_crit_edge
  %tobool120.not.i.i = icmp eq ptr %rdev.3.i.i, null
  br i1 %tobool120.not.i.i, label %if.end119.i.i.if.then9_crit_edge, label %if.end119.i.i.if.end123.i.i_crit_edge

if.end119.i.i.if.end123.i.i_crit_edge:            ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i.i

if.end119.i.i.if.then9_crit_edge:                 ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.end123.i.i:                                    ; preds = %if.end119.i.i.if.end123.i.i_crit_edge, %if.end107.i.i.if.end123.i.i_crit_edge
  %rdev.6180.i.i = phi ptr [ %rdev.3.i.i, %if.end119.i.i.if.end123.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end107.i.i.if.end123.i.i_crit_edge ]
  %_net.i.i.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev.6180.i.i, i32 0, i32 9, i32 13
  %33 = ptrtoint ptr %_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_net.i.i.i, align 4
  %cmp126.not.i.i = icmp eq ptr %34, %6
  br i1 %cmp126.not.i.i, label %cfg802154_get_dev_from_info.exit, label %if.end123.i.i.if.then9_crit_edge

if.end123.i.i.if.then9_crit_edge:                 ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

cfg802154_get_dev_from_info.exit:                 ; preds = %if.end123.i.i
  %cmp.i = icmp ugt ptr %rdev.6180.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cfg802154_get_dev_from_info.exit.if.then9_crit_edge, label %if.end14

cfg802154_get_dev_from_info.exit.if.then9_crit_edge: ; preds = %cfg802154_get_dev_from_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %cfg802154_get_dev_from_info.exit.if.then9_crit_edge, %if.end123.i.i.if.then9_crit_edge, %if.end119.i.i.if.then9_crit_edge, %if.end107.i.i.if.then9_crit_edge, %if.end103.i.i.if.then9_crit_edge, %if.then98.i.i.if.then9_crit_edge, %for.end.i.i.if.then9_crit_edge, %land.lhs.true41.i.i.if.then9_crit_edge
  %retval.3.i.i148 = phi ptr [ %rdev.6180.i.i, %cfg802154_get_dev_from_info.exit.if.then9_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end123.i.i.if.then9_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end107.i.i.if.then9_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then98.i.i.if.then9_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end103.i.i.if.then9_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end119.i.i.if.then9_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.end.i.i.if.then9_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true41.i.i.if.then9_crit_edge ]
  br i1 %tobool.not, label %if.then9.if.end12_crit_edge, label %if.then11

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtnl_unlock() #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9.if.end12_crit_edge
  %35 = ptrtoint ptr %retval.3.i.i148 to i32
  br label %cleanup

if.end14:                                         ; preds = %cfg802154_get_dev_from_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %36 = ptrtoint ptr %user_ptr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rdev.6180.i.i, ptr %user_ptr, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %37 = and i32 %conv3, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %if.else.cleanup_crit_edge, label %if.then23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.else
  %call24 = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.rhs, label %if.then23.if.end58_crit_edge

if.then23.if.end58_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.rhs:                                         ; preds = %if.then23
  %.b142 = load i1, ptr @nl802154_pre_doit.__already_done, align 1
  br i1 %.b142, label %land.rhs.if.end58_crit_edge, label %if.then36, !prof !89

land.rhs.if.end58_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then36:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nl802154_pre_doit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2181, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2181) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then36, %land.rhs.if.end58_crit_edge, %if.then23.if.end58_crit_edge
  %_net.i143 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %39 = ptrtoint ptr %_net.i143 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_net.i143, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %41 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %attrs, align 4
  %call67 = tail call fastcc ptr @__cfg802154_wpan_dev_from_attrs(ptr noundef %40, ptr noundef %42)
  %cmp.i144 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then69, label %if.end74

if.then69:                                        ; preds = %if.end58
  br i1 %tobool.not, label %if.then69.if.end72_crit_edge, label %if.then71

if.then69.if.end72_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then71:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.then69.if.end72_crit_edge
  %43 = ptrtoint ptr %call67 to i32
  br label %cleanup

if.end74:                                         ; preds = %if.end58
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %call67, i32 0, i32 3
  %44 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev, align 8
  %46 = ptrtoint ptr %call67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call67, align 8
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %do.body4.i, label %wpan_phy_to_rdev.exit, !prof !91

do.body4.i:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

wpan_phy_to_rdev.exit:                            ; preds = %if.end74
  %add.ptr.i = getelementptr i8, ptr %47, i32 -96
  %48 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %internal_flags, align 1
  %50 = and i8 %49, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool79.not = icmp eq i8 %50, 0
  br i1 %tobool79.not, label %if.end92, label %if.then80

if.then80:                                        ; preds = %wpan_phy_to_rdev.exit
  %tobool81.not = icmp eq ptr %45, null
  br i1 %tobool81.not, label %if.then82, label %if.end92.thread

if.then82:                                        ; preds = %if.then80
  br i1 %tobool.not, label %if.then82.cleanup_crit_edge, label %if.then84

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  br label %cleanup

if.end92.thread:                                  ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx88 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %arrayidx88, align 4
  br label %if.then94

if.end92:                                         ; preds = %wpan_phy_to_rdev.exit
  %arrayidx91 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call67, ptr %arrayidx91, align 4
  %tobool93.not = icmp eq ptr %45, null
  br i1 %tobool93.not, label %if.end92.if.end105_crit_edge, label %if.end92.if.then94_crit_edge

if.end92.if.then94_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

if.end92.if.end105_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then94:                                        ; preds = %if.end92.if.then94_crit_edge, %if.end92.thread
  %53 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %internal_flags, align 1
  %55 = and i8 %54, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool98.not = icmp eq i8 %55, 0
  br i1 %tobool98.not, label %if.then94.do.body1.i_crit_edge, label %land.lhs.true

if.then94.do.body1.i_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

land.lhs.true:                                    ; preds = %if.then94
  %state.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 6
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then100, label %land.lhs.true.do.body1.i_crit_edge

land.lhs.true.do.body1.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

if.then100:                                       ; preds = %land.lhs.true
  br i1 %tobool.not, label %if.then100.cleanup_crit_edge, label %if.then102

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then102:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  br label %cleanup

do.body1.i:                                       ; preds = %land.lhs.true.do.body1.i_crit_edge, %if.then94.do.body1.i_crit_edge
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !93
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 118
  %59 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcpu_refcnt.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %67, %61
  %68 = inttoptr i32 %add.i to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add13.i = add i32 %70, 1
  store i32 %add13.i, ptr %68, align 4
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !94
  %and.i.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !91

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #10, !srcloc !95
  br label %if.end105

if.end105:                                        ; preds = %dev_hold.exit, %if.end92.if.end105_crit_edge
  %user_ptr106 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %72 = ptrtoint ptr %user_ptr106 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i, ptr %user_ptr106, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then102, %if.then100.cleanup_crit_edge, %if.then84, %if.then82.cleanup_crit_edge, %if.end72, %if.else.cleanup_crit_edge, %if.end14, %if.end12
  %retval.0 = phi i32 [ %35, %if.end12 ], [ %43, %if.end72 ], [ -22, %if.then84 ], [ -22, %if.then82.cleanup_crit_edge ], [ -100, %if.then102 ], [ -100, %if.then100.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end105 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nl802154_post_doit(ptr nocapture noundef readonly %ops, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %internal_flags = getelementptr inbounds %struct.genl_ops, ptr %ops, i32 0, i32 7
  %2 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %internal_flags, align 1
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %do.body1.i26, label %if.then2

if.then2:                                         ; preds = %if.then
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then2.if.end7_crit_edge, label %do.body1.i

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.body1.i:                                       ; preds = %if.then2
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !93
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 118
  %8 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i = add i32 %19, -1
  store i32 %add13.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !94
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !91

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #10, !srcloc !95
  br label %if.end7

do.body1.i26:                                     ; preds = %if.then
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !93
  %pcpu_refcnt.i18 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %22 = ptrtoint ptr %pcpu_refcnt.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcpu_refcnt.i18, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i19 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i19 to ptr
  %cpu.i20 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i20, align 4
  %arrayidx.i21 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i21, align 4
  %add.i22 = add i32 %30, %24
  %31 = inttoptr i32 %add.i22 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add13.i23 = add i32 %33, -1
  store i32 %add13.i23, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !94
  %and.i.i.i24 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i24)
  %tobool24.not.i25 = icmp eq i32 %and.i.i.i24, 0
  br i1 %tobool24.not.i25, label %if.then28.i27, label %do.body1.i26.dev_put.exit29_crit_edge, !prof !91

do.body1.i26.dev_put.exit29_crit_edge:            ; preds = %do.body1.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit29

if.then28.i27:                                    ; preds = %do.body1.i26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit29

dev_put.exit29:                                   ; preds = %if.then28.i27, %do.body1.i26.dev_put.exit29_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #10, !srcloc !95
  br label %if.end7

if.end7:                                          ; preds = %dev_put.exit29, %do.end30.i, %if.then2.if.end7_crit_edge, %entry.if.end7_crit_edge
  %internal_flags8 = getelementptr inbounds %struct.genl_ops, ptr %ops, i32 0, i32 7
  %35 = ptrtoint ptr %internal_flags8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %internal_flags8, align 1
  %37 = and i8 %36, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool11.not = icmp eq i8 %37, 0
  br i1 %tobool11.not, label %if.end7.if.end13_crit_edge, label %if.then12

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end7.if.end13_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__cfg802154_wpan_dev_from_attrs(ptr noundef readnone %netns, ptr nocapture noundef readonly %attrs) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %attrs, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %arrayidx1 = getelementptr ptr, ptr %attrs, i32 6
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.rhs, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.rhs:                                         ; preds = %entry
  %.b154 = load i1, ptr @__cfg802154_wpan_dev_from_attrs.__already_done, align 1
  br i1 %.b154, label %land.rhs.if.end34_crit_edge, label %if.then, !prof !89

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__cfg802154_wpan_dev_from_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 47) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then, %land.rhs.if.end34_crit_edge, %entry.if.end34_crit_edge
  %4 = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %4, label %if.end34.cleanup122_crit_edge, label %if.end46

if.end34.cleanup122_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup122

if.end46:                                         ; preds = %if.end34
  br i1 %tobool.not, label %if.end46.if.end51_crit_edge, label %if.then48

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46.if.end51_crit_edge
  %ifidx.0 = phi i32 [ %8, %if.then48 ], [ -1, %if.end46.if.end51_crit_edge ]
  br i1 %tobool2.not, label %if.end51.if.end56_crit_edge, label %if.then53

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #10
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %tmp.i, align 8, !annotation !90
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef %10, i32 noundef 8) #10
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #10
  %shr = lshr i64 %13, 32
  %conv = trunc i64 %shr to i32
  %extract.t = trunc i64 %13 to i32
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51.if.end56_crit_edge
  %wpan_phy_idx.0 = phi i32 [ %conv, %if.then53 ], [ -1, %if.end51.if.end56_crit_edge ]
  %wpan_dev_id.0.off0 = phi i32 [ %extract.t, %if.then53 ], [ -1, %if.end51.if.end56_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg802154_rdev_list to i32))
  %.pn173 = load ptr, ptr @cfg802154_rdev_list, align 4
  %cmp.not174 = icmp eq ptr %.pn173, @cfg802154_rdev_list
  br i1 %cmp.not174, label %if.end56.for.end117_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  br label %for.body

if.end56.for.end117_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end117

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end56.for.body_crit_edge
  %.pn175 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn173, %if.end56.for.body_crit_edge ]
  %_net.i = getelementptr i8, ptr %.pn175, i32 1236
  %14 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_net.i, align 4
  %cmp62.not = icmp eq ptr %15, %netns
  br i1 %cmp62.not, label %if.end65, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %for.body
  br i1 %tobool2.not, label %if.end65.if.end73_crit_edge, label %land.lhs.true68

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true68:                                  ; preds = %if.end65
  %wpan_phy_idx69 = getelementptr i8, ptr %.pn175, i32 8
  %16 = ptrtoint ptr %wpan_phy_idx69 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wpan_phy_idx69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %wpan_phy_idx.0)
  %cmp70.not = icmp eq i32 %17, %wpan_phy_idx.0
  br i1 %cmp70.not, label %land.lhs.true68.if.end73_crit_edge, label %land.lhs.true68.cleanup_crit_edge

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true68.if.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true68.if.end73_crit_edge, %if.end65.if.end73_crit_edge
  %wpan_dev_list = getelementptr i8, ptr %.pn175, i32 72
  %18 = ptrtoint ptr %wpan_dev_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn153161 = load ptr, ptr %wpan_dev_list, align 4
  %cmp80.not162 = icmp eq ptr %.pn153161, %wpan_dev_list
  br i1 %cmp80.not162, label %if.end73.for.end_crit_edge, label %if.end73.for.body84_crit_edge

if.end73.for.body84_crit_edge:                    ; preds = %if.end73
  br label %for.body84

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body84:                                       ; preds = %for.inc.for.body84_crit_edge, %if.end73.for.body84_crit_edge
  %.pn153163 = phi ptr [ %.pn153, %for.inc.for.body84_crit_edge ], [ %.pn153161, %if.end73.for.body84_crit_edge ]
  br i1 %tobool.not, label %for.body84.if.end94_crit_edge, label %land.lhs.true87

for.body84.if.end94_crit_edge:                    ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

land.lhs.true87:                                  ; preds = %for.body84
  %netdev = getelementptr i8, ptr %.pn153163, i32 8
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev, align 8
  %tobool88.not = icmp eq ptr %20, null
  br i1 %tobool88.not, label %land.lhs.true87.if.end94_crit_edge, label %land.lhs.true89

land.lhs.true87.if.end94_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

land.lhs.true89:                                  ; preds = %land.lhs.true87
  %ifindex = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %ifidx.0)
  %cmp91 = icmp eq i32 %22, %ifidx.0
  br i1 %cmp91, label %for.end.split.loop.exit155, label %land.lhs.true89.if.end94_crit_edge

land.lhs.true89.if.end94_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.end94:                                         ; preds = %land.lhs.true89.if.end94_crit_edge, %land.lhs.true87.if.end94_crit_edge, %for.body84.if.end94_crit_edge
  br i1 %tobool2.not, label %if.end94.for.inc_crit_edge, label %land.lhs.true97

if.end94.for.inc_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true97:                                  ; preds = %if.end94
  %identifier = getelementptr i8, ptr %.pn153163, i32 20
  %23 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %identifier, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %wpan_dev_id.0.off0)
  %cmp99 = icmp eq i32 %24, %wpan_dev_id.0.off0
  br i1 %cmp99, label %for.end.split.loop.exit, label %land.lhs.true97.for.inc_crit_edge

land.lhs.true97.for.inc_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true97.for.inc_crit_edge, %if.end94.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn153163 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn153 = load ptr, ptr %.pn153163, align 4
  %cmp80.not = icmp eq ptr %.pn153, %wpan_dev_list
  br i1 %cmp80.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body84_crit_edge

for.inc.for.body84_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body84

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end.split.loop.exit:                          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_dev.0.le159 = getelementptr i8, ptr %.pn153163, i32 -8
  br label %for.end

for.end.split.loop.exit155:                       ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_dev.0.le = getelementptr i8, ptr %.pn153163, i32 -8
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit155, %for.end.split.loop.exit, %for.inc.for.end_crit_edge, %if.end73.for.end_crit_edge
  %result.1 = phi ptr [ %wpan_dev.0.le159, %for.end.split.loop.exit ], [ %wpan_dev.0.le, %for.end.split.loop.exit155 ], [ null, %if.end73.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %tobool108.not = icmp eq ptr %result.1, null
  br i1 %tobool108.not, label %for.end.cleanup_crit_edge, label %for.end.for.end117_crit_edge

for.end.for.end117_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end117

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %land.lhs.true68.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %26 = ptrtoint ptr %.pn175 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn175, align 4
  %cmp.not = icmp eq ptr %.pn, @cfg802154_rdev_list
  br i1 %cmp.not, label %cleanup.for.end117_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end117_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end117

for.end117:                                       ; preds = %cleanup.for.end117_crit_edge, %for.end.for.end117_crit_edge, %if.end56.for.end117_crit_edge
  %result.3 = phi ptr [ null, %if.end56.for.end117_crit_edge ], [ null, %cleanup.for.end117_crit_edge ], [ %result.1, %for.end.for.end117_crit_edge ]
  %tobool118.not = icmp eq ptr %result.3, null
  %spec.select = select i1 %tobool118.not, ptr inttoptr (i32 -19 to ptr), ptr %result.3
  br label %cleanup122

cleanup122:                                       ; preds = %for.end117, %if.end34.cleanup122_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end34.cleanup122_crit_edge ], [ %spec.select, %for.end117 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg802154_rdev_by_wpan_phy_idx(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_get_wpan_phy(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_portid, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %call1 = tail call fastcc i32 @nl802154_send_wpan_phy(ptr noundef %1, ptr noundef nonnull %call.i.i, i32 noundef %3, i32 noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_net.i.i, align 4
  %8 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %11, ptr noundef nonnull %call.i.i, i32 noundef %9, i32 noundef 64) #10
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %if.then2 ], [ %12, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_dump_wpan_phy(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  tail call void @rtnl_lock() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %call7.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %attrs.i = getelementptr inbounds %struct.genl_dumpit_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 4
  %conv.i = zext i32 %13 to i64
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %call7.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %arrayidx3.i = getelementptr ptr, ptr %9, i32 6
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %17 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !90
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %16, i32 noundef 8) #10
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %shr.i = lshr i64 %19, 32
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shr.i, ptr %call7.i.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr ptr, ptr %9, i32 3
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %22, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end6_crit_edge, label %if.then12.i

if.end9.i.if.end6_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then12.i:                                      ; preds = %if.end9.i
  %add.ptr.i.i2.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i2.i, align 4
  %call15.i = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %24) #10
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.then5, label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i
  %ieee802154_ptr.i = getelementptr inbounds %struct.net_device, ptr %call15.i, i32 0, i32 83
  %25 = ptrtoint ptr %ieee802154_ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ieee802154_ptr.i, align 4
  %tobool19.not.i = icmp eq ptr %26, null
  br i1 %tobool19.not.i, label %if.end18.i.if.end6_crit_edge, label %if.then20.i

if.end18.i.if.end6_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then20.i:                                      ; preds = %if.end18.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wpan_phy_to_rdev.exit.i, !prof !91

do.body4.i.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

wpan_phy_to_rdev.exit.i:                          ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy_idx.i = getelementptr i8, ptr %28, i32 -84
  %29 = ptrtoint ptr %wpan_phy_idx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wpan_phy_idx.i, align 4
  %conv23.i = sext i32 %30 to i64
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv23.i, ptr %call7.i.i, align 8
  br label %if.end6

if.then5:                                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @rtnl_unlock() #10
  br label %cleanup

if.end6:                                          ; preds = %wpan_phy_to_rdev.exit.i, %if.end18.i.if.end6_crit_edge, %if.end9.i.if.end6_crit_edge
  %32 = ptrtoint ptr %call7.i.i to i32
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %0, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %entry.if.end8_crit_edge
  %state.0 = phi ptr [ %3, %entry.if.end8_crit_edge ], [ %call7.i.i, %if.end6 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg802154_rdev_list to i32))
  %.pn88 = load ptr, ptr @cfg802154_rdev_list, align 4
  %cmp.not89 = icmp eq ptr %.pn88, @cfg802154_rdev_list
  br i1 %cmp.not89, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skc_net.i, align 4
  %start = getelementptr inbounds %struct.nl802154_dump_wpan_phy_state, ptr %state.0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn91 = phi ptr [ %.pn88, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %idx.090 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.1, %for.inc.for.body_crit_edge ]
  %_net.i = getelementptr i8, ptr %.pn91, i32 1236
  %39 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_net.i, align 4
  %cmp.i.not = icmp eq ptr %40, %38
  br i1 %cmp.i.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %inc = add i32 %idx.090, 1
  %41 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %42)
  %cmp15.not = icmp sgt i32 %inc, %42
  br i1 %cmp15.not, label %if.end17, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end17:                                         ; preds = %if.end14
  %43 = ptrtoint ptr %state.0 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %state.0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %44)
  %cmp19.not = icmp eq i64 %44, -1
  br i1 %cmp19.not, label %if.end17.if.end24_crit_edge, label %land.lhs.true

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end17
  %wpan_phy_idx = getelementptr i8, ptr %.pn91, i32 8
  %45 = ptrtoint ptr %wpan_phy_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wpan_phy_idx, align 4
  %conv = sext i32 %46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv)
  %cmp21.not = icmp eq i64 %44, %conv
  br i1 %cmp21.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %rdev.0.le = getelementptr i8, ptr %.pn91, i32 -4
  %47 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 3, i32 12
  %49 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %51 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nlmsg_seq, align 4
  %call27 = call fastcc i32 @nl802154_send_wpan_phy(ptr noundef %rdev.0.le, ptr noundef %skb, i32 noundef %50, i32 noundef %54, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then30:                                        ; preds = %if.end24
  %55 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call27, label %if.then30.for.end_crit_edge [
    i32 -105, label %if.then30.land.lhs.true35_crit_edge
    i32 -90, label %if.then30.land.lhs.true35_crit_edge102
  ]

if.then30.land.lhs.true35_crit_edge102:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true35

if.then30.land.lhs.true35_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true35

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true35:                                  ; preds = %if.then30.land.lhs.true35_crit_edge, %if.then30.land.lhs.true35_crit_edge102
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool36.not = icmp eq i32 %57, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true35.for.end_crit_edge

land.lhs.true35.for.end_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %min_dump_alloc = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 9
  %58 = ptrtoint ptr %min_dump_alloc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %min_dump_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %59)
  %cmp38 = icmp ult i32 %59, 4096
  br i1 %cmp38, label %if.then40, label %land.lhs.true37.for.end_crit_edge

land.lhs.true37.for.end_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %min_dump_alloc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4096, ptr %min_dump_alloc, align 4
  call void @rtnl_unlock() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %idx.1 = phi i32 [ %inc, %if.end14.for.inc_crit_edge ], [ %inc, %land.lhs.true.for.inc_crit_edge ], [ %idx.090, %for.body.for.inc_crit_edge ]
  %61 = ptrtoint ptr %.pn91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load ptr, ptr %.pn91, align 4
  %cmp.not = icmp eq ptr %.pn, @cfg802154_rdev_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true37.for.end_crit_edge, %land.lhs.true35.for.end_crit_edge, %if.then30.for.end_crit_edge, %if.end24.for.end_crit_edge, %if.end8.for.end_crit_edge
  %idx.2 = phi i32 [ %inc, %if.end24.for.end_crit_edge ], [ %idx.090, %if.then30.for.end_crit_edge ], [ %idx.090, %land.lhs.true37.for.end_crit_edge ], [ %idx.090, %land.lhs.true35.for.end_crit_edge ], [ 0, %if.end8.for.end_crit_edge ], [ %idx.1, %for.inc.for.end_crit_edge ]
  call void @rtnl_unlock() #10
  %start48 = getelementptr inbounds %struct.nl802154_dump_wpan_phy_state, ptr %state.0, i32 0, i32 1
  %62 = ptrtoint ptr %start48 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %idx.2, ptr %start48, align 8
  %len49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %63 = ptrtoint ptr %len49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len49, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then40, %if.then5, %if.then2
  %retval.0 = phi i32 [ %64, %for.end ], [ 1, %if.then40 ], [ -19, %if.then5 ], [ -12, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_dump_wpan_phy_done(ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_get_interface(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_portid, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 4
  %call3 = tail call fastcc i32 @nl802154_send_iface(ptr noundef nonnull %call.i.i, i32 noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef %1, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_net.i.i, align 4
  %10 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %13, ptr noundef nonnull %call.i.i, i32 noundef %11, i32 noundef 64) #10
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %if.then4 ], [ %14, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_dump_interface(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  tail call void @rtnl_lock() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg802154_rdev_list to i32))
  %.pn75 = load ptr, ptr @cfg802154_rdev_list, align 4
  %cmp.not77 = icmp eq ptr %.pn75, @cfg802154_rdev_list
  br i1 %cmp.not77, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %for.body.lr.ph
  %.pn81 = phi ptr [ %.pn75, %for.body.lr.ph ], [ %.pn, %for.inc33.for.body_crit_edge ]
  %wp_idx.079 = phi i32 [ 0, %for.body.lr.ph ], [ %wp_idx.1, %for.inc33.for.body_crit_edge ]
  %if_idx.078 = phi i32 [ 0, %for.body.lr.ph ], [ %if_idx.3, %for.inc33.for.body_crit_edge ]
  %rdev.082 = getelementptr i8, ptr %.pn81, i32 -4
  %_net.i = getelementptr i8, ptr %.pn81, i32 1236
  %6 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_net.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %7, %11
  br i1 %cmp.i.not, label %if.end, label %for.body.for.inc33_crit_edge

for.body.for.inc33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %wp_idx.079, i32 %2)
  %cmp4 = icmp slt i32 %wp_idx.079, %2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %wp_idx.079, 1
  br label %for.inc33

if.end6:                                          ; preds = %if.end
  %wpan_dev_list = getelementptr i8, ptr %.pn81, i32 72
  %12 = ptrtoint ptr %wpan_dev_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn6268 = load ptr, ptr %wpan_dev_list, align 4
  %cmp13.not70 = icmp eq ptr %.pn6268, %wpan_dev_list
  br i1 %cmp13.not70, label %if.end6.for.end_crit_edge, label %if.end6.for.body15_crit_edge

if.end6.for.body15_crit_edge:                     ; preds = %if.end6
  br label %for.body15

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %if.end6.for.body15_crit_edge
  %.pn6273 = phi ptr [ %.pn62, %for.inc.for.body15_crit_edge ], [ %.pn6268, %if.end6.for.body15_crit_edge ]
  %if_idx.171 = phi i32 [ %if_idx.2, %for.inc.for.body15_crit_edge ], [ 0, %if.end6.for.body15_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %if_idx.171, i32 %4)
  %cmp16 = icmp slt i32 %if_idx.171, %4
  br i1 %cmp16, label %for.body15.for.inc_crit_edge, label %if.end19

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %for.body15
  %wpan_dev.074 = getelementptr i8, ptr %.pn6273, i32 -8
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
  %call22 = tail call fastcc i32 @nl802154_send_iface(ptr noundef %skb, i32 noundef %16, i32 noundef %20, i32 noundef 2, ptr noundef %rdev.082, ptr noundef %wpan_dev.074)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end19.out_crit_edge, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body15.for.inc_crit_edge
  %if_idx.2 = add i32 %if_idx.171, 1
  %21 = ptrtoint ptr %.pn6273 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn62 = load ptr, ptr %.pn6273, align 4
  %cmp13.not = icmp eq ptr %.pn62, %wpan_dev_list
  br i1 %cmp13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %if_idx.1.lcssa = phi i32 [ 0, %if.end6.for.end_crit_edge ], [ %if_idx.2, %for.inc.for.end_crit_edge ]
  %inc32 = add i32 %wp_idx.079, 1
  br label %for.inc33

for.inc33:                                        ; preds = %for.end, %if.then5, %for.body.for.inc33_crit_edge
  %if_idx.3 = phi i32 [ %if_idx.078, %if.then5 ], [ %if_idx.1.lcssa, %for.end ], [ %if_idx.078, %for.body.for.inc33_crit_edge ]
  %wp_idx.1 = phi i32 [ %inc, %if.then5 ], [ %inc32, %for.end ], [ %wp_idx.079, %for.body.for.inc33_crit_edge ]
  %22 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn81, align 4
  %cmp.not = icmp eq ptr %.pn, @cfg802154_rdev_list
  br i1 %cmp.not, label %for.inc33.out_crit_edge, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc33.out_crit_edge:                          ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc33.out_crit_edge, %if.end19.out_crit_edge, %entry.out_crit_edge
  %wp_idx.066 = phi i32 [ 0, %entry.out_crit_edge ], [ %wp_idx.079, %if.end19.out_crit_edge ], [ %wp_idx.1, %for.inc33.out_crit_edge ]
  %if_idx.4 = phi i32 [ 0, %entry.out_crit_edge ], [ %if_idx.171, %if.end19.out_crit_edge ], [ %if_idx.3, %for.inc33.out_crit_edge ]
  tail call void @rtnl_unlock() #10
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %wp_idx.066, ptr %0, align 4
  %24 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %if_idx.4, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_new_interface(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr ptr, ptr %3, i32 5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ugt i32 %9, 2
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %lor.lhs.false

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then5
  %iftypes = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 3
  %10 = ptrtoint ptr %iftypes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iftypes, align 4
  %shl = shl nuw nsw i32 1, %9
  %and = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %type.0 = phi i32 [ %9, %lor.lhs.false.if.end11_crit_edge ], [ -1, %if.end.if.end11_crit_edge ]
  %arrayidx13 = getelementptr ptr, ptr %3, i32 23
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end11.if.end19_crit_edge, label %if.then15

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i40 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i40 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i.i40, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end11.if.end19_crit_edge
  %extended_addr.0 = phi i64 [ %15, %if.then15 ], [ 0, %if.end11.if.end19_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 32
  %add_virtual_intf = getelementptr inbounds %struct.cfg802154_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %add_virtual_intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add_virtual_intf, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_add_virtual_intf(ptr noundef %wpan_phy.i, ptr noundef %add.ptr.i, i32 noundef %type.0, i64 noundef %extended_addr.0) #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 32
  %add_virtual_intf.i = getelementptr inbounds %struct.cfg802154_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %add_virtual_intf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add_virtual_intf.i, align 4
  %call.i = tail call i32 %23(ptr noundef %wpan_phy.i, ptr noundef %add.ptr.i, i8 noundef zeroext 3, i32 noundef %type.0, i64 noundef %extended_addr.0) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -95, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_del_interface(ptr nocapture noundef readnone %skb, ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 32
  %del_virtual_intf = getelementptr inbounds %struct.cfg802154_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %del_virtual_intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %del_virtual_intf, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 8
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx2, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_del_virtual_intf(ptr noundef %wpan_phy.i, ptr noundef %3) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 32
  %del_virtual_intf.i = getelementptr inbounds %struct.cfg802154_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %del_virtual_intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %del_virtual_intf.i, align 4
  %call.i = tail call i32 %14(ptr noundef %wpan_phy.i, ptr noundef %3) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end7 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_channel(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 7
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr ptr, ptr %3, i32 8
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 1
  %add.ptr.i.i33 = getelementptr i8, ptr %7, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i33 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i.i33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %9)
  %cmp = icmp ugt i8 %9, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %11)
  %cmp13 = icmp ugt i8 %11, 26
  %or.cond = select i1 %cmp, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false15:                                  ; preds = %if.end
  %conv = zext i8 %9 to i32
  %conv12 = zext i8 %11 to i32
  %supported = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4
  %arrayidx16 = getelementptr [32 x i32], ptr %supported, i32 0, i32 %conv
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %shl = shl nuw nsw i32 1, %conv12
  %and = and i32 %13, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %lor.lhs.false15.cleanup_crit_edge, label %if.end20

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_channel(ptr noundef %wpan_phy.i, i8 noundef zeroext %9, i8 noundef zeroext %11) #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 32
  %set_channel.i = getelementptr inbounds %struct.cfg802154_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %set_channel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_channel.i, align 4
  %call.i = tail call i32 %17(ptr noundef %wpan_phy.i, i8 noundef zeroext %9, i8 noundef zeroext %11) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %lor.lhs.false15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end20 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_cca_mode(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %cca = alloca %struct.wpan_phy_cca, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cca) #10
  %2 = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !90
  %flags = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %7, i32 12
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %12 = ptrtoint ptr %cca to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cca, align 4
  %13 = add i32 %11, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %13)
  %14 = icmp ult i32 %13, -6
  br i1 %14, label %if.end4.cleanup_crit_edge, label %lor.lhs.false10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end4
  %cca_modes = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 1
  %15 = ptrtoint ptr %cca_modes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cca_modes, align 4
  %shl = shl nuw nsw i32 1, %11
  %and13 = and i32 %16, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false10.cleanup_crit_edge, label %if.end16

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp18 = icmp eq i32 %11, 3
  br i1 %cmp18, label %if.then19, label %if.end16.if.end39_crit_edge

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then19:                                        ; preds = %if.end16
  %arrayidx21 = getelementptr ptr, ptr %7, i32 13
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %if.then19.cleanup_crit_edge, label %if.end24

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.then19
  %add.ptr.i.i50 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i50, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp29 = icmp ugt i32 %20, 1
  br i1 %cmp29, label %if.end24.cleanup_crit_edge, label %lor.lhs.false30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false30:                                  ; preds = %if.end24
  %cca_opts = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 2
  %22 = ptrtoint ptr %cca_opts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cca_opts, align 4
  %shl34 = shl nuw nsw i32 1, %20
  %and35 = and i32 %23, %shl34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false30.cleanup_crit_edge, label %lor.lhs.false30.if.end39_crit_edge

lor.lhs.false30.if.end39_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false30.if.end39_crit_edge, %if.end16.if.end39_crit_edge
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  call fastcc void @trace_802154_rdev_set_cca_mode(ptr noundef %wpan_phy.i, ptr noundef nonnull %cca) #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 32
  %set_cca_mode.i = getelementptr inbounds %struct.cfg802154_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %set_cca_mode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_cca_mode.i, align 4
  %call.i = call i32 %27(ptr noundef %wpan_phy.i, ptr noundef nonnull %cca) #10
  call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %lor.lhs.false30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end39 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.then19.cleanup_crit_edge ], [ -22, %lor.lhs.false30.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cca) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_cca_ed_level(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %flags = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %5, i32 14
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %cca_ed_levels_size = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 14
  %10 = ptrtoint ptr %cca_ed_levels_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cca_ed_levels_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25.not = icmp eq i32 %11, 0
  br i1 %cmp25.not, label %if.end4.cleanup_crit_edge, label %for.body.lr.ph

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end4
  %cca_ed_levels = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 16
  %12 = ptrtoint ptr %cca_ed_levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cca_ed_levels, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx10 = getelementptr i32, ptr %13, i32 %i.026
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp11 = icmp eq i32 %9, %15
  br i1 %cmp11, label %if.then12, label %for.cond

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_cca_ed_level(ptr noundef %wpan_phy.i, i32 noundef %9) #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 32
  %set_cca_ed_level.i = getelementptr inbounds %struct.cfg802154_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %set_cca_ed_level.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_cca_ed_level.i, align 4
  %call.i = tail call i32 %19(ptr noundef %wpan_phy.i, i32 noundef %9) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %for.cond.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then12 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_tx_power(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %flags = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %5, i32 11
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %tx_powers_size = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 13
  %10 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_powers_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25.not = icmp eq i32 %11, 0
  br i1 %cmp25.not, label %if.end4.cleanup_crit_edge, label %for.body.lr.ph

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end4
  %tx_powers = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 15
  %12 = ptrtoint ptr %tx_powers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_powers, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx10 = getelementptr i32, ptr %13, i32 %i.026
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp11 = icmp eq i32 %9, %15
  br i1 %cmp11, label %if.then12, label %for.cond

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_tx_power(ptr noundef %wpan_phy.i, i32 noundef %9) #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 32
  %set_tx_power.i = getelementptr inbounds %struct.cfg802154_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %set_tx_power.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_tx_power.i, align 4
  %call.i = tail call i32 %19(ptr noundef %wpan_phy.i, i32 noundef %9) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %for.cond.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then12 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_wpan_phy_netns(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 28
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call4 = tail call ptr @get_net_ns_by_pid(i32 noundef %7) #10
  br label %if.end14

if.else:                                          ; preds = %entry
  %arrayidx6 = getelementptr ptr, ptr %3, i32 29
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.then8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i37 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i37, align 4
  %call12 = tail call ptr @get_net_ns_by_fd(i32 noundef %11) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.then
  %net.0 = phi ptr [ %call4, %if.then ], [ %call12, %if.then8 ]
  %cmp.i = icmp ugt ptr %net.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %net.0 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %_net.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 13
  %13 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_net.i, align 4
  %cmp.i38.not = icmp eq ptr %14, %net.0
  br i1 %cmp.i38.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @cfg802154_switch_netns(ptr noundef %1, ptr noundef %net.0) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  %err.0 = phi i32 [ 0, %if.end18.if.end24_crit_edge ], [ %call23, %if.then22 ]
  %count.i = getelementptr inbounds %struct.net, ptr %net.0, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !89

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @__put_net(ptr noundef %net.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then16, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then16 ], [ -22, %if.else.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_pan_id(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lowpan_dev = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %lowpan_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lowpan_dev, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %state.i33 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i33, align 4
  %and1.i.i34 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i34)
  %tobool.i35.not = icmp eq i32 %and1.i.i34, 0
  br i1 %tobool.i35.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %14 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attrs, align 4
  %arrayidx9 = getelementptr ptr, ptr %15, i32 9
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp16 = icmp eq i16 %19, -1
  br i1 %cmp16, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_pan_id(ptr noundef %wpan_phy.i, ptr noundef %5, i16 noundef zeroext %19) #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 32
  %set_pan_id.i = getelementptr inbounds %struct.cfg802154_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %set_pan_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_pan_id.i, align 4
  %call.i = tail call i32 %23(ptr noundef %wpan_phy.i, ptr noundef %5, i16 noundef zeroext %19) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end19 ], [ -16, %entry.cleanup_crit_edge ], [ -16, %if.then3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_short_addr(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lowpan_dev = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %lowpan_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lowpan_dev, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %state.i38 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i38, align 4
  %and1.i.i39 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i39)
  %tobool.i40.not = icmp eq i32 %and1.i.i39, 0
  br i1 %tobool.i40.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %14 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attrs, align 4
  %arrayidx9 = getelementptr ptr, ptr %15, i32 10
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %19, label %if.end23 [
    i16 -257, label %if.end12.cleanup_crit_edge
    i16 -1, label %if.end12.cleanup_crit_edge41
  ]

if.end12.cleanup_crit_edge41:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_short_addr(ptr noundef %wpan_phy.i, ptr noundef %5, i16 noundef zeroext %19) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 32
  %set_short_addr.i = getelementptr inbounds %struct.cfg802154_ops, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %set_short_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_short_addr.i, align 4
  %call.i = tail call i32 %24(ptr noundef %wpan_phy.i, ptr noundef %5, i16 noundef zeroext %19) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end12.cleanup_crit_edge, %if.end12.cleanup_crit_edge41, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end23 ], [ -16, %entry.cleanup_crit_edge ], [ -16, %if.then3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_backoff_exponent(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 17
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx5 = getelementptr ptr, ptr %9, i32 16
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i, align 1
  %add.ptr.i.i66 = getelementptr i8, ptr %13, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i66, align 1
  %min_minbe = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 5
  %18 = ptrtoint ptr %min_minbe to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %min_minbe, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %19)
  %cmp = icmp ult i8 %15, %19
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %lor.lhs.false17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false17:                                  ; preds = %if.end8
  %max_minbe = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 6
  %20 = ptrtoint ptr %max_minbe to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_minbe, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %21)
  %cmp22 = icmp ugt i8 %15, %21
  br i1 %cmp22, label %lor.lhs.false17.cleanup_crit_edge, label %lor.lhs.false24

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false17
  %min_maxbe = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 7
  %22 = ptrtoint ptr %min_maxbe to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %min_maxbe, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %23)
  %cmp29 = icmp ult i8 %17, %23
  br i1 %cmp29, label %lor.lhs.false24.cleanup_crit_edge, label %lor.lhs.false31

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false31:                                  ; preds = %lor.lhs.false24
  %max_maxbe = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 8
  %24 = ptrtoint ptr %max_maxbe to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_maxbe, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %25)
  %cmp36 = icmp ugt i8 %17, %25
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp41 = icmp ugt i8 %15, %17
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp41
  br i1 %or.cond, label %lor.lhs.false31.cleanup_crit_edge, label %if.end44

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call fastcc i32 @rdev_set_backoff_exponent(ptr noundef %1, ptr noundef %5, i8 noundef zeroext %15, i8 noundef zeroext %17)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %lor.lhs.false31.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end44 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false31.cleanup_crit_edge ], [ -22, %lor.lhs.false24.cleanup_crit_edge ], [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_max_csma_backoffs(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 18
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i, align 1
  %min_csma_backoffs = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 9
  %14 = ptrtoint ptr %min_csma_backoffs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %min_csma_backoffs, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp = icmp ult i8 %13, %15
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %max_csma_backoffs14 = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 10
  %16 = ptrtoint ptr %max_csma_backoffs14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_csma_backoffs14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %17)
  %cmp16 = icmp ugt i8 %13, %17
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_csma_backoffs(ptr noundef %wpan_phy.i, ptr noundef %5, i8 noundef zeroext %13) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 32
  %set_max_csma_backoffs.i = getelementptr inbounds %struct.cfg802154_ops, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %set_max_csma_backoffs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_max_csma_backoffs.i, align 4
  %call.i = tail call i32 %21(ptr noundef %wpan_phy.i, ptr noundef %5, i8 noundef zeroext %13) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end19 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_max_frame_retries(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 15
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i, align 1
  %min_frame_retries = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 11
  %14 = ptrtoint ptr %min_frame_retries to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %min_frame_retries, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp = icmp slt i8 %13, %15
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %max_frame_retries14 = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 12
  %16 = ptrtoint ptr %max_frame_retries14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_frame_retries14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %17)
  %cmp16 = icmp sgt i8 %13, %17
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_max_frame_retries(ptr noundef %wpan_phy.i, ptr noundef %5, i8 noundef signext %13) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 32
  %set_max_frame_retries.i = getelementptr inbounds %struct.cfg802154_ops, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %set_max_frame_retries.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_max_frame_retries.i, align 4
  %call.i = tail call i32 %21(ptr noundef %wpan_phy.i, ptr noundef %5, i8 noundef signext %13) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end19 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_lbt_mode(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 19
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %14 = icmp ugt i8 %13, 1
  br i1 %14, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %lbt = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9, i32 4, i32 4
  %15 = ptrtoint ptr %lbt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lbt, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %16, label %wpan_phy_supported_bool.exit.thread32 [
    i32 1, label %wpan_phy_supported_bool.exit
    i32 0, label %sw.bb1.i
    i32 3, label %if.end13.if.end17_crit_edge
  ]

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

sw.bb1.i:                                         ; preds = %if.end13
  br i1 %cmp, label %sw.bb1.i.cleanup_crit_edge, label %sw.bb1.i.if.end17_crit_edge

sw.bb1.i.if.end17_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wpan_phy_supported_bool.exit.thread32:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 128, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

wpan_phy_supported_bool.exit:                     ; preds = %if.end13
  br i1 %cmp, label %wpan_phy_supported_bool.exit.if.end17_crit_edge, label %wpan_phy_supported_bool.exit.cleanup_crit_edge

wpan_phy_supported_bool.exit.cleanup_crit_edge:   ; preds = %wpan_phy_supported_bool.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wpan_phy_supported_bool.exit.if.end17_crit_edge:  ; preds = %wpan_phy_supported_bool.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %wpan_phy_supported_bool.exit.if.end17_crit_edge, %sw.bb1.i.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_lbt_mode(ptr noundef %wpan_phy.i, ptr noundef %5, i1 noundef zeroext %cmp) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 32
  %set_lbt_mode.i = getelementptr inbounds %struct.cfg802154_ops, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %set_lbt_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_lbt_mode.i, align 4
  %call.i = tail call i32 %21(ptr noundef %wpan_phy.i, ptr noundef %5, i1 noundef zeroext %cmp) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %wpan_phy_supported_bool.exit.cleanup_crit_edge, %wpan_phy_supported_bool.exit.thread32, %sw.bb1.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end17 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %wpan_phy_supported_bool.exit.cleanup_crit_edge ], [ -22, %wpan_phy_supported_bool.exit.thread32 ], [ -22, %sw.bb1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_ackreq_default(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 26
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %14 = icmp ugt i8 %13, 1
  br i1 %14, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp ne i8 %13, 0
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_ackreq_default(ptr noundef %wpan_phy.i, ptr noundef %5, i1 noundef zeroext %cmp) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 32
  %set_ackreq_default.i = getelementptr inbounds %struct.cfg802154_ops, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %set_ackreq_default.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_ackreq_default.i, align 4
  %call.i = tail call i32 %18(ptr noundef %wpan_phy.i, ptr noundef %5, i1 noundef zeroext %cmp) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy.i, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end13 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_set_llsec_params(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %params = alloca %struct.ieee802154_llsec_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params) #10
  %6 = call ptr @memset(ptr %params, i32 255, i32 80)
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %10, i32 30
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %if.then4

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then4:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %switch = icmp ult i8 %14, 2
  br i1 %switch, label %cleanup.thread, label %if.then4.cleanup59_crit_edge

if.then4.cleanup59_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

cleanup.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17 = icmp ne i8 %14, 0
  %frombool = zext i1 %tobool17 to i8
  %15 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %params, align 8
  br label %if.end19

if.end19:                                         ; preds = %cleanup.thread, %if.end.if.end19_crit_edge
  %changed.1 = phi i32 [ 0, %if.end.if.end19_crit_edge ], [ 1, %cleanup.thread ]
  %arrayidx21 = getelementptr ptr, ptr %10, i32 32
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.end19.if.end32_crit_edge, label %if.then23

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then23:                                        ; preds = %if.end19
  %out_key = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 3
  %call26 = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef nonnull %17, ptr noundef %out_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then23.cleanup59_crit_edge, label %if.end30

if.then23.cleanup59_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %or31 = or i32 %changed.1, 8
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end19.if.end32_crit_edge
  %changed.2 = phi i32 [ %or31, %if.end30 ], [ %changed.1, %if.end19.if.end32_crit_edge ]
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %arrayidx34 = getelementptr ptr, ptr %19, i32 31
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %if.end32.if.end48_crit_edge, label %if.then36

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then36:                                        ; preds = %if.end32
  %add.ptr.i.i86 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i86, align 4
  %conv40 = trunc i32 %23 to i8
  %out_level = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 2
  %24 = ptrtoint ptr %out_level to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv40, ptr %out_level, align 8
  %conv42 = and i32 %23, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv42)
  %cmp43.not = icmp eq i32 %conv42, 0
  br i1 %cmp43.not, label %if.end46, label %if.then36.cleanup59_crit_edge

if.then36.cleanup59_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.end46:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %or47 = or i32 %changed.2, 4
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end32.if.end48_crit_edge
  %changed.3 = phi i32 [ %or47, %if.end46 ], [ %changed.2, %if.end32.if.end48_crit_edge ]
  %arrayidx50 = getelementptr ptr, ptr %19, i32 33
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %26, null
  br i1 %tobool51.not, label %if.end48.if.end57_crit_edge, label %if.then52

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i87 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i87, align 4
  %frame_counter = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 1
  %29 = ptrtoint ptr %frame_counter to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %frame_counter, align 4
  %or56 = or i32 %changed.3, 2
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end48.if.end57_crit_edge
  %changed.4 = phi i32 [ %or56, %if.then52 ], [ %changed.3, %if.end48.if.end57_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 32
  %set_llsec_params.i = getelementptr inbounds %struct.cfg802154_ops, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %set_llsec_params.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_llsec_params.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %33(ptr noundef %wpan_phy.i, ptr noundef %5, ptr noundef nonnull %params, i32 noundef %changed.4) #10
  br label %cleanup59

cleanup59:                                        ; preds = %if.end57, %if.then36.cleanup59_crit_edge, %if.then23.cleanup59_crit_edge, %if.then4.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.1 = phi i32 [ %call.i, %if.end57 ], [ -95, %entry.cleanup59_crit_edge ], [ %call26, %if.then23.cleanup59_crit_edge ], [ -22, %if.then36.cleanup59_crit_edge ], [ -22, %if.then4.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_dump_llsec_key(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i7.i = alloca i8, align 1
  %tmp.i.i = alloca i32, align 4
  %commands.i = alloca [8 x i32], align 4
  %rdev = alloca ptr, align 4
  %table = alloca ptr, align 4
  %wpan_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdev) #10
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table) #10
  %1 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %table, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpan_dev) #10
  %2 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %wpan_dev, align 4, !annotation !90
  %call = call fastcc i32 @nl802154_prepare_wpan_dev_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull %rdev, ptr noundef nonnull %wpan_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wpan_dev, align 4
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  br label %out_err

if.end2:                                          ; preds = %if.end
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 8
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end2.out_err_crit_edge, label %if.end5

if.end2.out_err_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end5:                                          ; preds = %if.end2
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 32
  %lock_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %lock_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_llsec_table.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %12, i32 0, i32 9
  tail call void %16(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 32
  %get_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %get_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_llsec_table.i, align 4
  call void %20(ptr noundef %wpan_phy.i, ptr noundef %4, ptr noundef nonnull %table) #10
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not = icmp eq i32 %22, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end5
  %23 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %table, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %key.047 = load ptr, ptr %24, align 4
  %cmp10.not48 = icmp eq ptr %key.047, %24
  br i1 %cmp10.not48, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %26 = getelementptr inbounds [8 x i32], ptr %commands.i, i32 0, i32 7
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %nl802154_send_key.exit.for.body_crit_edge, %for.body.lr.ph
  %key.049 = phi ptr [ %key.047, %for.body.lr.ph ], [ %key.0, %nl802154_send_key.exit.for.body_crit_edge ]
  %27 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 12
  %29 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %portid, align 4
  %31 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nlmsg_seq, align 4
  %35 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %commands.i) #10
  %37 = call ptr @memset(ptr %commands.i, i32 255, i32 32)
  %call.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %30, i32 noundef %34, ptr noundef nonnull @nl802154_fam, i32 noundef 2, i8 noundef zeroext 23) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then16_crit_edge, label %if.end.i

for.body.if.then16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.i:                                         ; preds = %for.body
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 17
  %38 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %40 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool2.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 37, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool6.not15.i = icmp eq ptr %42, null
  %tobool6.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool6.not15.i
  br i1 %tobool6.not.i, label %if.end4.i.if.then.i.i_crit_edge, label %if.end8.i

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end8.i:                                        ; preds = %if.end4.i
  %43 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i3.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %cmp.i4.i = icmp slt i32 %call1.i3.i, 0
  %tobool10.not16.i = icmp eq ptr %44, null
  %tobool10.not.i = select i1 %cmp.i4.i, i1 true, i1 %tobool10.not16.i
  br i1 %tobool10.not.i, label %if.end8.i.if.then.i.i_crit_edge, label %if.end12.i

if.end8.i.if.then.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end12.i:                                       ; preds = %if.end8.i
  %id.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key.049, i32 0, i32 1
  %call13.i = call fastcc i32 @ieee802154_llsec_send_key_id(ptr noundef %skb, ptr noundef %id.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.i = icmp slt i32 %call13.i, 0
  br i1 %cmp.i, label %if.end12.i.if.then.i.i_crit_edge, label %if.end16.i

if.end12.i.if.then.i.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end16.i:                                       ; preds = %if.end12.i
  %45 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i.i, ptr %44, align 2
  %key18.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key.049, i32 0, i32 2
  %48 = ptrtoint ptr %key18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key18.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i7.i) #10
  %52 = ptrtoint ptr %tmp.i7.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %tmp.i7.i, align 1
  %call.i8.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i7.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool20.not.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end16.i.if.then.i.i_crit_edge

if.end16.i.if.then.i.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end22.i:                                       ; preds = %if.end16.i
  %53 = ptrtoint ptr %key18.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %key18.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 4
  %57 = and i8 %56, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool26.not.i = icmp eq i8 %57, 0
  br i1 %tobool26.not.i, label %if.end22.i.if.end34.i_crit_edge, label %if.then27.i

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.end22.i
  %58 = call ptr @memset(ptr %commands.i, i32 0, i32 28)
  %cmd_frame_ids.i = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %cmd_frame_ids.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmd_frame_ids.i, align 4
  %61 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %26, align 4
  %call30.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 32, ptr noundef nonnull %commands.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then27.i.if.end34.i_crit_edge, label %if.then27.i.if.then.i.i_crit_edge

if.then27.i.if.then.i.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then27.i.if.end34.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then27.i.if.end34.i_crit_edge, %if.end22.i.if.end34.i_crit_edge
  %62 = ptrtoint ptr %key18.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %key18.i, align 8
  %key36.i = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %63, i32 0, i32 2
  %call38.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 16, ptr noundef %key36.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %nl802154_send_key.exit, label %if.end34.i.if.then.i.i_crit_edge

if.end34.i.if.then.i.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end34.i.if.then.i.i_crit_edge, %if.then27.i.if.then.i.i_crit_edge, %if.end16.i.if.then.i.i_crit_edge, %if.end12.i.if.then.i.i_crit_edge, %if.end8.i.if.then.i.i_crit_edge, %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i14.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i14.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then16_crit_edge, label %if.then.i.i.i.i

if.then.i.i.if.then16_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %65, %add.ptr1.i14.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !91

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %66 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i14.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #10
  br label %if.then16

nl802154_send_key.exit:                           ; preds = %if.end34.i
  %68 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i10.i = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i11.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i12.i = sub i32 %sub.ptr.lhs.cast.i10.i, %sub.ptr.rhs.cast.i11.i
  %conv.i13.i = trunc i32 %sub.ptr.sub.i12.i to i16
  %70 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i13.i, ptr %42, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %71 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %72 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %commands.i) #10
  %73 = ptrtoint ptr %key.049 to i32
  call void @__asan_load4_noabort(i32 %73)
  %key.0 = load ptr, ptr %key.049, align 4
  %74 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %table, align 4
  %cmp10.not = icmp eq ptr %key.0, %75
  br i1 %cmp10.not, label %nl802154_send_key.exit.for.end_crit_edge, label %nl802154_send_key.exit.for.body_crit_edge

nl802154_send_key.exit.for.body_crit_edge:        ; preds = %nl802154_send_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

nl802154_send_key.exit.for.end_crit_edge:         ; preds = %nl802154_send_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then16:                                        ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then16_crit_edge, %for.body.if.then16_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %commands.i) #10
  %76 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %12, align 32
  %unlock_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %77, i32 0, i32 19
  %78 = ptrtoint ptr %unlock_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %unlock_llsec_table.i, align 4
  call void %79(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  br label %out_err

for.end:                                          ; preds = %nl802154_send_key.exit.for.end_crit_edge, %if.end8.for.end_crit_edge
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %arrayidx, align 4
  br label %out

out:                                              ; preds = %for.end, %if.end5.out_crit_edge
  %81 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %12, align 32
  %unlock_llsec_table.i42 = getelementptr inbounds %struct.cfg802154_ops, ptr %82, i32 0, i32 19
  %83 = ptrtoint ptr %unlock_llsec_table.i42 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %unlock_llsec_table.i42, align 4
  call void %84(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  %len24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %85 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len24, align 4
  br label %out_err

out_err:                                          ; preds = %out, %if.then16, %if.end2.out_err_crit_edge, %if.then1
  %err.0 = phi i32 [ %8, %if.then1 ], [ %86, %out ], [ -5, %if.then16 ], [ -22, %if.end2.out_err_crit_edge ]
  call void @rtnl_unlock() #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_err ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpan_dev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdev) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_add_llsec_key(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %attrs = alloca [5 x ptr], align 4
  %key = alloca %struct.ieee802154_llsec_key, align 4
  %id = alloca %struct.ieee802154_llsec_key_id, align 8
  %commands = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #10
  %6 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %7 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 2
  %8 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 3
  %9 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 4
  %10 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key) #10
  %11 = call ptr @memset(ptr %key, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %id) #10
  %12 = call ptr @memset(ptr %id, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %commands) #10
  %13 = call ptr @memset(ptr %commands, i32 0, i32 32)
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs3 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %16 = ptrtoint ptr %attrs3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attrs3, align 4
  %arrayidx4 = getelementptr ptr, ptr %17, i32 37
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %19, align 2
  %conv.i.i = zext i16 %23 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @nl802154_key_policy, i32 noundef 0, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 4
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %lor.lhs.false12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end9
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %9, align 4
  %tobool14.not = icmp eq ptr %27, null
  br i1 %tobool14.not, label %lor.lhs.false12.cleanup_crit_edge, label %if.end16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %call18 = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %29, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i94 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i94, align 1
  %34 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %cmp25 = icmp ugt i8 %33, 8
  br i1 %cmp25, label %if.end21.cleanup_crit_edge, label %lor.lhs.false27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false27:                                  ; preds = %if.end21
  %35 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool30.not = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %8, align 4
  %tobool36.not = icmp eq ptr %.pr, null
  br i1 %tobool30.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false27
  br i1 %tobool36.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then37_crit_edge

land.lhs.true.if.then37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false27
  br i1 %tobool36.not, label %if.end34.if.end69_crit_edge, label %if.end34.if.then37_crit_edge

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.end34.if.end69_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %land.lhs.true.if.then37_crit_edge
  %call40 = call i32 @nla_memcpy(ptr noundef nonnull %commands, ptr noundef nonnull %.pr, i32 noundef 32) #10
  %37 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %commands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool42.not = icmp eq i32 %38, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false43:                                  ; preds = %if.then37
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %commands, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool45.not = icmp eq i32 %40, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %lor.lhs.false43.cleanup_crit_edge

lor.lhs.false43.cleanup_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %arrayidx47 = getelementptr inbounds [8 x i32], ptr %commands, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool48.not = icmp eq i32 %42, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false46.cleanup_crit_edge

lor.lhs.false46.cleanup_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %arrayidx50 = getelementptr inbounds [8 x i32], ptr %commands, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool51.not = icmp eq i32 %44, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false49.cleanup_crit_edge

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %arrayidx53 = getelementptr inbounds [8 x i32], ptr %commands, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool54.not = icmp eq i32 %46, 0
  br i1 %tobool54.not, label %lor.lhs.false55, label %lor.lhs.false52.cleanup_crit_edge

lor.lhs.false52.cleanup_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %arrayidx56 = getelementptr inbounds [8 x i32], ptr %commands, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool57.not = icmp eq i32 %48, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %lor.lhs.false55.cleanup_crit_edge

lor.lhs.false55.cleanup_crit_edge:                ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %arrayidx59 = getelementptr inbounds [8 x i32], ptr %commands, i32 0, i32 6
  %49 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool60.not = icmp eq i32 %50, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %lor.lhs.false58.cleanup_crit_edge

lor.lhs.false58.cleanup_crit_edge:                ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %arrayidx62 = getelementptr inbounds [8 x i32], ptr %commands, i32 0, i32 7
  %51 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %52)
  %cmp63 = icmp ugt i32 %52, 512
  br i1 %cmp63, label %lor.lhs.false61.cleanup_crit_edge, label %lor.lhs.false61.if.end69_crit_edge

lor.lhs.false61.if.end69_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

lor.lhs.false61.cleanup_crit_edge:                ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false61.if.end69_crit_edge, %if.end34.if.end69_crit_edge
  %.sink = phi i32 [ %52, %lor.lhs.false61.if.end69_crit_edge ], [ 0, %if.end34.if.end69_crit_edge ]
  %cmd_frame_ids68 = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %key, i32 0, i32 1
  %53 = ptrtoint ptr %cmd_frame_ids68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %cmd_frame_ids68, align 4
  %key70 = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %key, i32 0, i32 2
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %9, align 4
  %call73 = call i32 @nla_memcpy(ptr noundef %key70, ptr noundef %55, i32 noundef 16) #10
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %6, align 4
  %call75 = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %57, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end69.cleanup_crit_edge, label %if.end79

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end79:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 32
  %add_llsec_key.i = getelementptr inbounds %struct.cfg802154_ops, ptr %59, i32 0, i32 22
  %60 = ptrtoint ptr %add_llsec_key.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add_llsec_key.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %61(ptr noundef %wpan_phy.i, ptr noundef %5, ptr noundef nonnull %id, ptr noundef nonnull %key) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.end69.cleanup_crit_edge, %lor.lhs.false61.cleanup_crit_edge, %lor.lhs.false58.cleanup_crit_edge, %lor.lhs.false55.cleanup_crit_edge, %lor.lhs.false52.cleanup_crit_edge, %lor.lhs.false49.cleanup_crit_edge, %lor.lhs.false46.cleanup_crit_edge, %lor.lhs.false43.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end79 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -105, %if.end16.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -22, %lor.lhs.false61.cleanup_crit_edge ], [ -22, %lor.lhs.false58.cleanup_crit_edge ], [ -22, %lor.lhs.false55.cleanup_crit_edge ], [ -22, %lor.lhs.false52.cleanup_crit_edge ], [ -22, %lor.lhs.false49.cleanup_crit_edge ], [ -22, %lor.lhs.false46.cleanup_crit_edge ], [ -22, %lor.lhs.false43.cleanup_crit_edge ], [ -22, %if.then37.cleanup_crit_edge ], [ -105, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %commands) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_del_llsec_key(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %attrs = alloca [5 x ptr], align 4
  %id = alloca %struct.ieee802154_llsec_key_id, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #10
  %6 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %7 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %id) #10
  %8 = call ptr @memset(ptr %id, i32 255, i32 24)
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs3 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %attrs3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs3, align 4
  %arrayidx4 = getelementptr ptr, ptr %12, i32 37
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %14, align 2
  %conv.i.i = zext i16 %18 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @nl802154_key_policy, i32 noundef 0, ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  %call11 = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %20, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 32
  %del_llsec_key.i = getelementptr inbounds %struct.cfg802154_ops, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %del_llsec_key.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %del_llsec_key.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %24(ptr noundef %wpan_phy.i, ptr noundef %5, ptr noundef nonnull %id) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end14 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -105, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_dump_llsec_dev(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i12.i = alloca i32, align 4
  %tmp.i10.i = alloca i8, align 1
  %tmp.i8.i = alloca i64, align 8
  %tmp.i6.i = alloca i16, align 2
  %tmp.i4.i = alloca i16, align 2
  %tmp.i2.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %rdev = alloca ptr, align 4
  %table = alloca ptr, align 4
  %wpan_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdev) #10
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table) #10
  %1 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %table, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpan_dev) #10
  %2 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %wpan_dev, align 4, !annotation !90
  %call = call fastcc i32 @nl802154_prepare_wpan_dev_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull %rdev, ptr noundef nonnull %wpan_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wpan_dev, align 4
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  br label %out_err

if.end2:                                          ; preds = %if.end
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 8
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end2.out_err_crit_edge, label %if.end5

if.end2.out_err_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end5:                                          ; preds = %if.end2
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 32
  %lock_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %lock_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_llsec_table.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %12, i32 0, i32 9
  tail call void %16(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 32
  %get_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %get_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_llsec_table.i, align 4
  call void %20(ptr noundef %wpan_phy.i, ptr noundef %4, ptr noundef nonnull %table) #10
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not = icmp eq i32 %22, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end5
  %23 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %table, align 4
  %devices = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %25)
  %dev.047 = load ptr, ptr %devices, align 4
  %cmp10.not49 = icmp eq ptr %dev.047, %devices
  br i1 %cmp10.not49, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %26 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wpan_dev, align 4
  %netdev13 = getelementptr inbounds %struct.wpan_dev, ptr %27, i32 0, i32 3
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %nl802154_send_device.exit.for.body_crit_edge, %for.body.lr.ph
  %dev.050 = phi ptr [ %dev.047, %for.body.lr.ph ], [ %dev.0, %nl802154_send_device.exit.for.body_crit_edge ]
  %28 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %portid, align 4
  %32 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nlmsg_seq, align 4
  %36 = ptrtoint ptr %netdev13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev13, align 8
  %call.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %31, i32 noundef %35, ptr noundef nonnull @nl802154_fam, i32 noundef 2, i8 noundef zeroext 32) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then16_crit_edge, label %if.end.i

for.body.if.then16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.i:                                         ; preds = %for.body
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %40 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool2.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 35, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool6.not16.i = icmp eq ptr %42, null
  %tobool6.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool6.not16.i
  br i1 %tobool6.not.i, label %if.end4.i.if.then.i.i_crit_edge, label %if.end8.i

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end8.i:                                        ; preds = %if.end4.i
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.050, i32 0, i32 4
  %43 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame_counter.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2.i) #10
  %45 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %tmp.i2.i, align 4
  %call.i3.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i2.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool10.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.end8.i.if.then.i.i_crit_edge

if.end8.i.if.then.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %pan_id.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.050, i32 0, i32 1
  %46 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %pan_id.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i4.i) #10
  %48 = ptrtoint ptr %tmp.i4.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %tmp.i4.i, align 2
  %call.i5.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i4.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool12.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i
  %short_addr.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.050, i32 0, i32 2
  %49 = ptrtoint ptr %short_addr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %short_addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i6.i) #10
  %51 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %tmp.i6.i, align 2
  %call.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i6.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool15.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false16.i, label %lor.lhs.false13.i.if.then.i.i_crit_edge

lor.lhs.false13.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false13.i
  %hwaddr.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.050, i32 0, i32 3
  %52 = ptrtoint ptr %hwaddr.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %hwaddr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i8.i) #10
  %54 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %tmp.i8.i, align 8
  %call.i9.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i8.i, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i8.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool18.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false19.i, label %lor.lhs.false16.i.if.then.i.i_crit_edge

lor.lhs.false16.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false16.i
  %seclevel_exempt.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.050, i32 0, i32 5
  %55 = ptrtoint ptr %seclevel_exempt.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %seclevel_exempt.i, align 4, !range !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i10.i) #10
  %57 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %tmp.i10.i, align 1
  %call.i11.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i10.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i10.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool23.not.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false24.i, label %lor.lhs.false19.i.if.then.i.i_crit_edge

lor.lhs.false19.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false19.i
  %key_mode.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.050, i32 0, i32 6
  %58 = ptrtoint ptr %key_mode.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %key_mode.i, align 1
  %conv25.i = zext i8 %59 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i12.i) #10
  %60 = ptrtoint ptr %tmp.i12.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv25.i, ptr %tmp.i12.i, align 4
  %call.i13.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i12.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i12.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool27.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool27.not.i, label %nl802154_send_device.exit, label %lor.lhs.false24.i.if.then.i.i_crit_edge

lor.lhs.false24.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false24.i.if.then.i.i_crit_edge, %lor.lhs.false19.i.if.then.i.i_crit_edge, %lor.lhs.false16.i.if.then.i.i_crit_edge, %lor.lhs.false13.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end8.i.if.then.i.i_crit_edge, %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i15.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i15.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then16_crit_edge, label %if.then.i.i.i.i

if.then.i.i.if.then16_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %61 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %62, %add.ptr1.i15.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !91

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %63 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i15.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #10
  br label %if.then16

nl802154_send_device.exit:                        ; preds = %lor.lhs.false24.i
  %65 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %67 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i.i, ptr %42, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %68 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %69 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %70 = ptrtoint ptr %dev.050 to i32
  call void @__asan_load4_noabort(i32 %70)
  %dev.0 = load ptr, ptr %dev.050, align 4
  %71 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %table, align 4
  %devices9 = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %72, i32 0, i32 1
  %cmp10.not = icmp eq ptr %dev.0, %devices9
  br i1 %cmp10.not, label %nl802154_send_device.exit.for.end_crit_edge, label %nl802154_send_device.exit.for.body_crit_edge

nl802154_send_device.exit.for.body_crit_edge:     ; preds = %nl802154_send_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

nl802154_send_device.exit.for.end_crit_edge:      ; preds = %nl802154_send_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then16:                                        ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then16_crit_edge, %for.body.if.then16_crit_edge
  %73 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rdev, align 4
  %75 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wpan_dev, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 32
  %unlock_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %78, i32 0, i32 19
  %79 = ptrtoint ptr %unlock_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %unlock_llsec_table.i, align 4
  %wpan_phy.i41 = getelementptr inbounds %struct.cfg802154_registered_device, ptr %74, i32 0, i32 9
  call void %80(ptr noundef %wpan_phy.i41, ptr noundef %76) #10
  br label %out_err

for.end:                                          ; preds = %nl802154_send_device.exit.for.end_crit_edge, %if.end8.for.end_crit_edge
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %arrayidx, align 4
  br label %out

out:                                              ; preds = %for.end, %if.end5.out_crit_edge
  %82 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rdev, align 4
  %84 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wpan_dev, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %83, align 32
  %unlock_llsec_table.i42 = getelementptr inbounds %struct.cfg802154_ops, ptr %87, i32 0, i32 19
  %88 = ptrtoint ptr %unlock_llsec_table.i42 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %unlock_llsec_table.i42, align 4
  %wpan_phy.i43 = getelementptr inbounds %struct.cfg802154_registered_device, ptr %83, i32 0, i32 9
  call void %89(ptr noundef %wpan_phy.i43, ptr noundef %85) #10
  %len24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %90 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len24, align 4
  br label %out_err

out_err:                                          ; preds = %out, %if.then16, %if.end2.out_err_crit_edge, %if.then1
  %err.0 = phi i32 [ %8, %if.then1 ], [ %91, %out ], [ -5, %if.then16 ], [ -22, %if.end2.out_err_crit_edge ]
  call void @rtnl_unlock() #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_err ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpan_dev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdev) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_add_llsec_dev(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %attrs.i = alloca [8 x ptr], align 4
  %dev_desc = alloca %struct.ieee802154_llsec_device, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dev_desc) #10
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 35
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %attrs.i) #10
  %12 = getelementptr inbounds [8 x ptr], ptr %attrs.i, i32 0, i32 1
  %13 = getelementptr inbounds [8 x ptr], ptr %attrs.i, i32 0, i32 2
  %14 = getelementptr inbounds [8 x ptr], ptr %attrs.i, i32 0, i32 3
  %15 = getelementptr inbounds [8 x ptr], ptr %attrs.i, i32 0, i32 4
  %16 = getelementptr inbounds [8 x ptr], ptr %attrs.i, i32 0, i32 5
  %17 = getelementptr inbounds [8 x ptr], ptr %attrs.i, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %11, null
  %18 = call ptr @memset(ptr %attrs.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %if.end.ieee802154_llsec_parse_device.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %11, align 2
  %conv.i.i.i = zext i16 %20 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs.i, i32 noundef 7, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nl802154_dev_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool1.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.ieee802154_llsec_parse_device.exit.thread_crit_edge

lor.lhs.false.i.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %21 = call ptr @memset(ptr %dev_desc, i32 0, i32 40)
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %12, align 4
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %if.end.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, label %lor.lhs.false3.i

if.end.i.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

lor.lhs.false3.i:                                 ; preds = %if.end.i
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %13, align 4
  %tobool5.not.i = icmp eq ptr %25, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, label %lor.lhs.false6.i

lor.lhs.false3.i.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %14, align 4
  %tobool8.not.i = icmp eq ptr %27, null
  br i1 %tobool8.not.i, label %lor.lhs.false6.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, label %lor.lhs.false9.i

lor.lhs.false6.i.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %15, align 4
  %tobool11.not.i = icmp eq ptr %29, null
  br i1 %tobool11.not.i, label %lor.lhs.false9.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, label %lor.lhs.false12.i

lor.lhs.false9.i.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %16, align 4
  %tobool14.not.i = icmp eq ptr %31, null
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, label %lor.lhs.false15.i

lor.lhs.false12.i.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

lor.lhs.false15.i:                                ; preds = %lor.lhs.false12.i
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %17, align 4
  %tobool17.not.i = icmp eq ptr %33, null
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, label %if.end19.i

lor.lhs.false15.i.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

if.end19.i:                                       ; preds = %lor.lhs.false15.i
  %add.ptr.i.i59.i = getelementptr i8, ptr %23, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i59.i, align 4
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev_desc, i32 0, i32 4
  %36 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %frame_counter.i, align 8
  %add.ptr.i.i60.i = getelementptr i8, ptr %25, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i60.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i60.i, align 2
  %pan_id.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev_desc, i32 0, i32 1
  %39 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %pan_id.i, align 8
  %add.ptr.i.i61.i = getelementptr i8, ptr %27, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i61.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.i61.i, align 2
  %short_addr.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev_desc, i32 0, i32 2
  %42 = ptrtoint ptr %short_addr.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %short_addr.i, align 2
  %add.ptr.i.i62.i = getelementptr i8, ptr %29, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i62.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr.i.i62.i, align 8
  %hwaddr.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev_desc, i32 0, i32 3
  %45 = ptrtoint ptr %hwaddr.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %hwaddr.i, align 8
  %add.ptr.i.i63.i = getelementptr i8, ptr %31, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i63.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i.i63.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool30.i = icmp ne i8 %47, 0
  %seclevel_exempt.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev_desc, i32 0, i32 5
  %frombool.i = zext i1 %tobool30.i to i8
  %48 = ptrtoint ptr %seclevel_exempt.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool.i, ptr %seclevel_exempt.i, align 4
  %add.ptr.i.i64.i = getelementptr i8, ptr %33, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i64.i, align 4
  %conv.i = trunc i32 %50 to i8
  %key_mode.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev_desc, i32 0, i32 6
  %51 = ptrtoint ptr %key_mode.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i, ptr %key_mode.i, align 1
  %conv34.i = and i32 %50, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv34.i)
  %cmp.i = icmp ugt i32 %conv34.i, 2
  br i1 %cmp.i, label %if.end19.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, label %if.end6

if.end19.i.ieee802154_llsec_parse_device.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_device.exit.thread

ieee802154_llsec_parse_device.exit.thread:        ; preds = %if.end19.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, %lor.lhs.false15.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, %lor.lhs.false12.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, %lor.lhs.false9.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, %lor.lhs.false6.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, %lor.lhs.false3.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, %if.end.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, %lor.lhs.false.i.ieee802154_llsec_parse_device.exit.thread_crit_edge, %if.end.ieee802154_llsec_parse_device.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %attrs.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %attrs.i) #10
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 32
  %add_device.i = getelementptr inbounds %struct.cfg802154_ops, ptr %53, i32 0, i32 26
  %54 = ptrtoint ptr %add_device.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add_device.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %55(ptr noundef %wpan_phy.i, ptr noundef %5, ptr noundef nonnull %dev_desc) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %ieee802154_llsec_parse_device.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %ieee802154_llsec_parse_device.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dev_desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_del_llsec_dev(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %attrs = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %attrs) #10
  %6 = getelementptr inbounds [8 x ptr], ptr %attrs, i32 0, i32 4
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %7 = call ptr @memset(ptr %attrs, i32 255, i32 32)
  %8 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs3 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %attrs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs3, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 35
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %13, align 2
  %conv.i.i = zext i16 %17 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 7, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @nl802154_dev_policy, i32 noundef 0, ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i27 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.i.i27, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 32
  %del_device.i = getelementptr inbounds %struct.cfg802154_ops, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %del_device.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %del_device.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %25(ptr noundef %wpan_phy.i, ptr noundef %5, i64 noundef %21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end13 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %attrs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_dump_llsec_devkey(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i4.i = alloca i32, align 4
  %tmp.i2.i = alloca i64, align 8
  %tmp.i.i = alloca i32, align 4
  %rdev = alloca ptr, align 4
  %table = alloca ptr, align 4
  %wpan_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdev) #10
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table) #10
  %1 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %table, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpan_dev) #10
  %2 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %wpan_dev, align 4, !annotation !90
  %call = call fastcc i32 @nl802154_prepare_wpan_dev_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull %rdev, ptr noundef nonnull %wpan_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wpan_dev, align 4
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  br label %out_err

if.end2:                                          ; preds = %if.end
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 8
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end2.out_err_crit_edge, label %if.end5

if.end2.out_err_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end5:                                          ; preds = %if.end2
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 32
  %lock_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %lock_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_llsec_table.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %12, i32 0, i32 9
  tail call void %16(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 32
  %get_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %get_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_llsec_table.i, align 4
  call void %20(ptr noundef %wpan_phy.i, ptr noundef %4, ptr noundef nonnull %table) #10
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not = icmp eq i32 %22, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end5
  %23 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %table, align 4
  %devices = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %25)
  %dpos.072 = load ptr, ptr %devices, align 4
  %cmp10.not74 = icmp eq ptr %dpos.072, %devices
  br i1 %cmp10.not74, label %if.end8.for.end39_crit_edge, label %for.body.lr.ph

if.end8.for.end39_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39

for.body.lr.ph:                                   ; preds = %if.end8
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.cond.loopexit:                                ; preds = %nl802154_send_devkey.exit.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %26 = ptrtoint ptr %dpos.075 to i32
  call void @__asan_load4_noabort(i32 %26)
  %dpos.0 = load ptr, ptr %dpos.075, align 4
  %27 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %table, align 4
  %devices9 = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %28, i32 0, i32 1
  %cmp10.not = icmp eq ptr %dpos.0, %devices9
  br i1 %cmp10.not, label %for.cond.loopexit.for.end39_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.for.end39_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %dpos.075 = phi ptr [ %dpos.072, %for.body.lr.ph ], [ %dpos.0, %for.cond.loopexit.for.body_crit_edge ]
  %keys = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dpos.075, i32 0, i32 7
  %29 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %29)
  %kpos.069 = load ptr, ptr %keys, align 8
  %cmp18.not70 = icmp eq ptr %kpos.069, %keys
  br i1 %cmp18.not70, label %for.body.for.cond.loopexit_crit_edge, label %for.body20.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body20.lr.ph:                                 ; preds = %for.body
  %hwaddr = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dpos.075, i32 0, i32 3
  br label %for.body20

for.body20:                                       ; preds = %nl802154_send_devkey.exit.for.body20_crit_edge, %for.body20.lr.ph
  %kpos.071 = phi ptr [ %kpos.069, %for.body20.lr.ph ], [ %kpos.0, %nl802154_send_devkey.exit.for.body20_crit_edge ]
  %30 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %portid, align 4
  %34 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nlmsg_seq, align 4
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev, align 8
  %40 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %hwaddr, align 8
  %call.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %33, i32 noundef %37, ptr noundef nonnull @nl802154_fam, i32 noundef 2, i8 noundef zeroext 32) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body20.if.then26_crit_edge, label %if.end.i

for.body20.if.then26_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.end.i:                                         ; preds = %for.body20
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 17
  %42 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %44 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool2.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  %45 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 36, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool6.not17.i = icmp eq ptr %46, null
  %tobool6.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool6.not17.i
  br i1 %tobool6.not.i, label %if.end4.i.if.then.i.i_crit_edge, label %if.end8.i

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i2.i) #10
  %47 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %41, ptr %tmp.i2.i, align 8
  %call.i3.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i2.i, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool10.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.end8.i.if.then.i.i_crit_edge

if.end8.i.if.then.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %kpos.071, i32 0, i32 2
  %48 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frame_counter.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i4.i) #10
  %50 = ptrtoint ptr %tmp.i4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tmp.i4.i, align 4
  %call.i5.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool12.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp.i8.i = icmp slt i32 %call1.i7.i, 0
  %tobool16.not18.i = icmp eq ptr %52, null
  %tobool16.not.i = select i1 %cmp.i8.i, i1 true, i1 %tobool16.not18.i
  br i1 %tobool16.not.i, label %if.end14.i.if.then.i.i_crit_edge, label %if.end18.i

if.end14.i.if.then.i.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end18.i:                                       ; preds = %if.end14.i
  %key_id.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %kpos.071, i32 0, i32 1
  %call19.i = call fastcc i32 @ieee802154_llsec_send_key_id(ptr noundef %skb, ptr noundef %key_id.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp.i = icmp slt i32 %call19.i, 0
  br i1 %cmp.i, label %if.end18.i.if.then.i.i_crit_edge, label %nl802154_send_devkey.exit

if.end18.i.if.then.i.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end18.i.if.then.i.i_crit_edge, %if.end14.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end8.i.if.then.i.i_crit_edge, %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i16.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i16.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then26_crit_edge, label %if.then.i.i.i.i

if.then.i.i.if.then26_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %54, %add.ptr1.i16.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !91

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %55 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i16.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #10
  br label %if.then26

nl802154_send_devkey.exit:                        ; preds = %if.end18.i
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i.i, ptr %52, align 2
  %60 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i12.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i13.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i14.i = sub i32 %sub.ptr.lhs.cast.i12.i, %sub.ptr.rhs.cast.i13.i
  %conv.i15.i = trunc i32 %sub.ptr.sub.i14.i to i16
  %61 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i15.i, ptr %46, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %62 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %63 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %64 = ptrtoint ptr %kpos.071 to i32
  call void @__asan_load4_noabort(i32 %64)
  %kpos.0 = load ptr, ptr %kpos.071, align 8
  %cmp18.not = icmp eq ptr %kpos.0, %keys
  br i1 %cmp18.not, label %nl802154_send_devkey.exit.for.cond.loopexit_crit_edge, label %nl802154_send_devkey.exit.for.body20_crit_edge

nl802154_send_devkey.exit.for.body20_crit_edge:   ; preds = %nl802154_send_devkey.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

nl802154_send_devkey.exit.for.cond.loopexit_crit_edge: ; preds = %nl802154_send_devkey.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

if.then26:                                        ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then26_crit_edge, %for.body20.if.then26_crit_edge
  %65 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %12, align 32
  %unlock_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %unlock_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %unlock_llsec_table.i, align 4
  call void %68(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  br label %out_err

for.end39:                                        ; preds = %for.cond.loopexit.for.end39_crit_edge, %if.end8.for.end39_crit_edge
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %arrayidx, align 4
  br label %out

out:                                              ; preds = %for.end39, %if.end5.out_crit_edge
  %70 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %12, align 32
  %unlock_llsec_table.i64 = getelementptr inbounds %struct.cfg802154_ops, ptr %71, i32 0, i32 19
  %72 = ptrtoint ptr %unlock_llsec_table.i64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %unlock_llsec_table.i64, align 4
  call void %73(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  %len41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %74 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len41, align 4
  br label %out_err

out_err:                                          ; preds = %out, %if.then26, %if.end2.out_err_crit_edge, %if.then1
  %err.0 = phi i32 [ %8, %if.then1 ], [ %75, %out ], [ -5, %if.then26 ], [ -22, %if.end2.out_err_crit_edge ]
  call void @rtnl_unlock() #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_err ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpan_dev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdev) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_add_llsec_devkey(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %attrs = alloca [5 x ptr], align 4
  %key = alloca %struct.ieee802154_llsec_device_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #10
  %6 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %7 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 2
  %8 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 3
  %9 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %key) #10
  %10 = call ptr @memset(ptr %key, i32 255, i32 40)
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs3 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %13 = ptrtoint ptr %attrs3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs3, align 4
  %arrayidx4 = getelementptr ptr, ptr %14, i32 36
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %16, align 2
  %conv.i.i = zext i16 %20 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @nl802154_devkey_policy, i32 noundef 0, ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp7 = icmp slt i32 %call2.i, 0
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  %tobool11.not = icmp eq ptr %22, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %lor.lhs.false12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end9
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %tobool14.not = icmp eq ptr %24, null
  br i1 %tobool14.not, label %lor.lhs.false12.cleanup_crit_edge, label %if.end16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 4
  %key_id = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %key, i32 0, i32 1
  %call18 = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %26, ptr noundef %key_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %6, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i37, align 4
  %frame_counter = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %key, i32 0, i32 2
  %31 = ptrtoint ptr %frame_counter to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %frame_counter, align 8
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i38 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i.i38, align 8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 32
  %add_devkey.i = getelementptr inbounds %struct.cfg802154_ops, ptr %37, i32 0, i32 28
  %38 = ptrtoint ptr %add_devkey.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add_devkey.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %39(ptr noundef %wpan_phy.i, ptr noundef %5, i64 noundef %35, ptr noundef nonnull %key) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end16.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end21 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -105, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %key) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_del_llsec_devkey(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %attrs = alloca [5 x ptr], align 4
  %key = alloca %struct.ieee802154_llsec_device_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #10
  %6 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 2
  %7 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 3
  %8 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %key) #10
  %9 = call ptr @memset(ptr %key, i32 255, i32 40)
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs3 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %12 = ptrtoint ptr %attrs3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attrs3, align 4
  %arrayidx4 = getelementptr ptr, ptr %13, i32 36
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %15, align 2
  %conv.i.i = zext i16 %19 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @nl802154_devkey_policy, i32 noundef 0, ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  %tobool11.not = icmp eq ptr %21, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %key_id = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %key, i32 0, i32 1
  %call15 = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %23, ptr noundef %key_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr.i.i32, align 8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 32
  %del_devkey.i = getelementptr inbounds %struct.cfg802154_ops, ptr %29, i32 0, i32 29
  %30 = ptrtoint ptr %del_devkey.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %del_devkey.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %31(ptr noundef %wpan_phy.i, ptr noundef %5, i64 noundef %27, ptr noundef nonnull %key) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end18 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -105, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %key) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_dump_llsec_seclevel(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i8.i = alloca i32, align 4
  %tmp.i6.i = alloca i8, align 1
  %tmp.i4.i = alloca i32, align 4
  %tmp.i2.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %rdev = alloca ptr, align 4
  %table = alloca ptr, align 4
  %wpan_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdev) #10
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table) #10
  %1 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %table, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpan_dev) #10
  %2 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %wpan_dev, align 4, !annotation !90
  %call = call fastcc i32 @nl802154_prepare_wpan_dev_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull %rdev, ptr noundef nonnull %wpan_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wpan_dev, align 4
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  br label %out_err

if.end2:                                          ; preds = %if.end
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 8
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end2.out_err_crit_edge, label %if.end5

if.end2.out_err_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end5:                                          ; preds = %if.end2
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 32
  %lock_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %lock_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_llsec_table.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %12, i32 0, i32 9
  tail call void %16(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 32
  %get_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %get_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_llsec_table.i, align 4
  call void %20(ptr noundef %wpan_phy.i, ptr noundef %4, ptr noundef nonnull %table) #10
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not = icmp eq i32 %22, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end5
  %23 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %table, align 4
  %security_levels = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %security_levels to i32
  call void @__asan_load4_noabort(i32 %25)
  %sl.047 = load ptr, ptr %security_levels, align 4
  %cmp10.not49 = icmp eq ptr %sl.047, %security_levels
  br i1 %cmp10.not49, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %nl802154_send_seclevel.exit.for.body_crit_edge, %for.body.lr.ph
  %sl.050 = phi ptr [ %sl.047, %for.body.lr.ph ], [ %sl.0, %nl802154_send_seclevel.exit.for.body_crit_edge ]
  %26 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3, i32 12
  %28 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %portid, align 4
  %30 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nlmsg_seq, align 4
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 8
  %call.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %29, i32 noundef %33, ptr noundef nonnull @nl802154_fam, i32 noundef 2, i8 noundef zeroext 32) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then16_crit_edge, label %if.end.i

for.body.if.then16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.i:                                         ; preds = %for.body
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %38 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool2.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 34, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool6.not12.i = icmp eq ptr %40, null
  %tobool6.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool6.not12.i
  br i1 %tobool6.not.i, label %if.end4.i.if.then.i.i_crit_edge, label %if.end8.i

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end8.i:                                        ; preds = %if.end4.i
  %frame_type.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.050, i32 0, i32 1
  %41 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %frame_type.i, align 4
  %conv9.i = zext i8 %42 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2.i) #10
  %43 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv9.i, ptr %tmp.i2.i, align 4
  %call.i3.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i2.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool11.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.end8.i.if.then.i.i_crit_edge

if.end8.i.if.then.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %sec_levels.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.050, i32 0, i32 4
  %44 = ptrtoint ptr %sec_levels.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sec_levels.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i4.i) #10
  %46 = ptrtoint ptr %tmp.i4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i4.i, align 4
  %call.i5.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool13.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %device_override.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.050, i32 0, i32 3
  %47 = ptrtoint ptr %device_override.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %device_override.i, align 2, !range !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i6.i) #10
  %49 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %tmp.i6.i, align 1
  %call.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i6.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool18.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %lor.lhs.false14.i.if.then.i.i_crit_edge

lor.lhs.false14.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end20.i:                                       ; preds = %lor.lhs.false14.i
  %50 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %frame_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp.i = icmp eq i8 %51, 3
  br i1 %cmp.i, label %if.then24.i, label %if.end20.i.nl802154_send_seclevel.exit_crit_edge

if.end20.i.nl802154_send_seclevel.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nl802154_send_seclevel.exit

if.then24.i:                                      ; preds = %if.end20.i
  %cmd_frame_id.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.050, i32 0, i32 2
  %52 = ptrtoint ptr %cmd_frame_id.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cmd_frame_id.i, align 1
  %conv25.i = zext i8 %53 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i8.i) #10
  %54 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv25.i, ptr %tmp.i8.i, align 4
  %call.i9.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i8.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i8.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool27.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool27.not.i, label %if.then24.i.nl802154_send_seclevel.exit_crit_edge, label %if.then24.i.if.then.i.i_crit_edge

if.then24.i.if.then.i.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then24.i.nl802154_send_seclevel.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nl802154_send_seclevel.exit

if.then.i.i:                                      ; preds = %if.then24.i.if.then.i.i_crit_edge, %lor.lhs.false14.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end8.i.if.then.i.i_crit_edge, %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i11.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i11.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then16_crit_edge, label %if.then.i.i.i.i

if.then.i.i.if.then16_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %56, %add.ptr1.i11.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !91

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %57 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i11.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #10
  br label %if.then16

nl802154_send_seclevel.exit:                      ; preds = %if.then24.i.nl802154_send_seclevel.exit_crit_edge, %if.end20.i.nl802154_send_seclevel.exit_crit_edge
  %59 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %61 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i.i, ptr %40, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %62 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %63 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %64 = ptrtoint ptr %sl.050 to i32
  call void @__asan_load4_noabort(i32 %64)
  %sl.0 = load ptr, ptr %sl.050, align 4
  %65 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %table, align 4
  %security_levels9 = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %66, i32 0, i32 2
  %cmp10.not = icmp eq ptr %sl.0, %security_levels9
  br i1 %cmp10.not, label %nl802154_send_seclevel.exit.for.end_crit_edge, label %nl802154_send_seclevel.exit.for.body_crit_edge

nl802154_send_seclevel.exit.for.body_crit_edge:   ; preds = %nl802154_send_seclevel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

nl802154_send_seclevel.exit.for.end_crit_edge:    ; preds = %nl802154_send_seclevel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then16:                                        ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then16_crit_edge, %for.body.if.then16_crit_edge
  %67 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %12, align 32
  %unlock_llsec_table.i = getelementptr inbounds %struct.cfg802154_ops, ptr %68, i32 0, i32 19
  %69 = ptrtoint ptr %unlock_llsec_table.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %unlock_llsec_table.i, align 4
  call void %70(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  br label %out_err

for.end:                                          ; preds = %nl802154_send_seclevel.exit.for.end_crit_edge, %if.end8.for.end_crit_edge
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %arrayidx, align 4
  br label %out

out:                                              ; preds = %for.end, %if.end5.out_crit_edge
  %72 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %12, align 32
  %unlock_llsec_table.i42 = getelementptr inbounds %struct.cfg802154_ops, ptr %73, i32 0, i32 19
  %74 = ptrtoint ptr %unlock_llsec_table.i42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %unlock_llsec_table.i42, align 4
  call void %75(ptr noundef %wpan_phy.i, ptr noundef %4) #10
  %len24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %76 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len24, align 4
  br label %out_err

out_err:                                          ; preds = %out, %if.then16, %if.end2.out_err_crit_edge, %if.then1
  %err.0 = phi i32 [ %8, %if.then1 ], [ %77, %out ], [ -5, %if.then16 ], [ -22, %if.end2.out_err_crit_edge ]
  call void @rtnl_unlock() #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_err ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpan_dev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdev) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_add_llsec_seclevel(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %attrs.i = alloca [5 x ptr], align 4
  %sl = alloca %struct.ieee802154_llsec_seclevel, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sl) #10
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 34
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs.i) #10
  %12 = getelementptr inbounds [5 x ptr], ptr %attrs.i, i32 0, i32 1
  %13 = getelementptr inbounds [5 x ptr], ptr %attrs.i, i32 0, i32 2
  %14 = getelementptr inbounds [5 x ptr], ptr %attrs.i, i32 0, i32 3
  %15 = getelementptr inbounds [5 x ptr], ptr %attrs.i, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %11, null
  %16 = call ptr @memset(ptr %attrs.i, i32 255, i32 20)
  br i1 %tobool.not.i, label %if.end.llsec_parse_seclevel.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %11, align 2
  %conv.i.i.i = zext i16 %18 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs.i, i32 noundef 4, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nl802154_seclevel_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool1.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.llsec_parse_seclevel.exit.thread_crit_edge

lor.lhs.false.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %19 = call ptr @memset(ptr %sl, i32 0, i32 12)
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %12, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.end.i.llsec_parse_seclevel.exit.thread_crit_edge, label %lor.lhs.false3.i

if.end.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

lor.lhs.false3.i:                                 ; preds = %if.end.i
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %13, align 4
  %tobool5.not.i = icmp eq ptr %23, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.llsec_parse_seclevel.exit.thread_crit_edge, label %lor.lhs.false6.i

lor.lhs.false3.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 4
  %tobool8.not.i = icmp eq ptr %25, null
  br i1 %tobool8.not.i, label %lor.lhs.false6.i.llsec_parse_seclevel.exit.thread_crit_edge, label %if.end10.i

lor.lhs.false6.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

if.end10.i:                                       ; preds = %lor.lhs.false6.i
  %add.ptr.i.i65.i = getelementptr i8, ptr %21, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i65.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i65.i, align 1
  %conv.i = zext i8 %27 to i32
  %sec_levels.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 4
  %28 = ptrtoint ptr %sec_levels.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %sec_levels.i, align 4
  %add.ptr.i.i66.i = getelementptr i8, ptr %23, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i66.i, align 4
  %conv15.i = trunc i32 %30 to i8
  %frame_type.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 1
  %31 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv15.i, ptr %frame_type.i, align 4
  %add.ptr.i.i67.i = getelementptr i8, ptr %25, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i67.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i67.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool18.i = icmp ne i8 %33, 0
  %device_override.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 3
  %frombool.i = zext i1 %tobool18.i to i8
  %34 = ptrtoint ptr %device_override.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool.i, ptr %device_override.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv15.i)
  %cmp.i = icmp ugt i8 %conv15.i, 3
  br i1 %cmp.i, label %if.end10.i.llsec_parse_seclevel.exit.thread_crit_edge, label %lor.lhs.false22.i

if.end10.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

lor.lhs.false22.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv15.i)
  %cmp37.i = icmp eq i8 %conv15.i, 3
  br i1 %cmp37.i, label %if.then39.i, label %lor.lhs.false22.i.if.end6_crit_edge

lor.lhs.false22.i.if.end6_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then39.i:                                      ; preds = %lor.lhs.false22.i
  %35 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %14, align 4
  %tobool41.not.i = icmp eq ptr %36, null
  br i1 %tobool41.not.i, label %if.then39.i.llsec_parse_seclevel.exit.thread_crit_edge, label %if.end43.i

if.then39.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

if.end43.i:                                       ; preds = %if.then39.i
  %add.ptr.i.i68.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i68.i, align 4
  %conv46.i = trunc i32 %38 to i8
  %cmd_frame_id.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 2
  %39 = ptrtoint ptr %cmd_frame_id.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv46.i, ptr %cmd_frame_id.i, align 1
  %conv48.i = and i32 %38, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv48.i)
  %cmp49.i = icmp ugt i32 %conv48.i, 9
  br i1 %cmp49.i, label %if.end43.i.llsec_parse_seclevel.exit.thread_crit_edge, label %if.end43.i.if.end6_crit_edge

if.end43.i.if.end6_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end43.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

llsec_parse_seclevel.exit.thread:                 ; preds = %if.end43.i.llsec_parse_seclevel.exit.thread_crit_edge, %if.then39.i.llsec_parse_seclevel.exit.thread_crit_edge, %if.end10.i.llsec_parse_seclevel.exit.thread_crit_edge, %lor.lhs.false6.i.llsec_parse_seclevel.exit.thread_crit_edge, %lor.lhs.false3.i.llsec_parse_seclevel.exit.thread_crit_edge, %if.end.i.llsec_parse_seclevel.exit.thread_crit_edge, %lor.lhs.false.i.llsec_parse_seclevel.exit.thread_crit_edge, %if.end.llsec_parse_seclevel.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end43.i.if.end6_crit_edge, %lor.lhs.false22.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs.i) #10
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 32
  %add_seclevel.i = getelementptr inbounds %struct.cfg802154_ops, ptr %41, i32 0, i32 24
  %42 = ptrtoint ptr %add_seclevel.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add_seclevel.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %43(ptr noundef %wpan_phy.i, ptr noundef %5, ptr noundef nonnull %sl) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %llsec_parse_seclevel.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %llsec_parse_seclevel.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sl) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl802154_del_llsec_seclevel(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %attrs.i = alloca [5 x ptr], align 4
  %sl = alloca %struct.ieee802154_llsec_seclevel, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %arrayidx2 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee802154_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sl) #10
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 34
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs.i) #10
  %12 = getelementptr inbounds [5 x ptr], ptr %attrs.i, i32 0, i32 2
  %13 = getelementptr inbounds [5 x ptr], ptr %attrs.i, i32 0, i32 3
  %14 = getelementptr inbounds [5 x ptr], ptr %attrs.i, i32 0, i32 4
  %15 = call ptr @memset(ptr %attrs.i, i32 255, i32 20)
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %11, align 2
  %conv.i.i.i = zext i16 %17 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs.i, i32 noundef 4, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nl802154_seclevel_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool1.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.llsec_parse_seclevel.exit.thread_crit_edge

lor.lhs.false.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %18 = getelementptr inbounds [5 x ptr], ptr %attrs.i, i32 0, i32 1
  %19 = call ptr @memset(ptr %sl, i32 0, i32 12)
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.end.i.llsec_parse_seclevel.exit.thread_crit_edge, label %lor.lhs.false3.i

if.end.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

lor.lhs.false3.i:                                 ; preds = %if.end.i
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %12, align 4
  %tobool5.not.i = icmp eq ptr %23, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.llsec_parse_seclevel.exit.thread_crit_edge, label %lor.lhs.false6.i

lor.lhs.false3.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %14, align 4
  %tobool8.not.i = icmp eq ptr %25, null
  br i1 %tobool8.not.i, label %lor.lhs.false6.i.llsec_parse_seclevel.exit.thread_crit_edge, label %if.end10.i

lor.lhs.false6.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

if.end10.i:                                       ; preds = %lor.lhs.false6.i
  %add.ptr.i.i65.i = getelementptr i8, ptr %21, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i65.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i65.i, align 1
  %conv.i = zext i8 %27 to i32
  %sec_levels.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 4
  %28 = ptrtoint ptr %sec_levels.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %sec_levels.i, align 4
  %add.ptr.i.i66.i = getelementptr i8, ptr %23, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i66.i, align 4
  %conv15.i = trunc i32 %30 to i8
  %frame_type.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 1
  %31 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv15.i, ptr %frame_type.i, align 4
  %add.ptr.i.i67.i = getelementptr i8, ptr %25, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i67.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i67.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool18.i = icmp ne i8 %33, 0
  %device_override.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 3
  %frombool.i = zext i1 %tobool18.i to i8
  %34 = ptrtoint ptr %device_override.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool.i, ptr %device_override.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv15.i)
  %cmp.i = icmp ugt i8 %conv15.i, 3
  br i1 %cmp.i, label %if.end10.i.llsec_parse_seclevel.exit.thread_crit_edge, label %lor.lhs.false22.i

if.end10.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

lor.lhs.false22.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv15.i)
  %cmp37.i = icmp eq i8 %conv15.i, 3
  br i1 %cmp37.i, label %if.then39.i, label %lor.lhs.false22.i.if.end8_crit_edge

lor.lhs.false22.i.if.end8_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then39.i:                                      ; preds = %lor.lhs.false22.i
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %13, align 4
  %tobool41.not.i = icmp eq ptr %36, null
  br i1 %tobool41.not.i, label %if.then39.i.llsec_parse_seclevel.exit.thread_crit_edge, label %if.end43.i

if.then39.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

if.end43.i:                                       ; preds = %if.then39.i
  %add.ptr.i.i68.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i68.i, align 4
  %conv46.i = trunc i32 %38 to i8
  %cmd_frame_id.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 2
  %39 = ptrtoint ptr %cmd_frame_id.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv46.i, ptr %cmd_frame_id.i, align 1
  %conv48.i = and i32 %38, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv48.i)
  %cmp49.i = icmp ugt i32 %conv48.i, 9
  br i1 %cmp49.i, label %if.end43.i.llsec_parse_seclevel.exit.thread_crit_edge, label %if.end43.i.if.end8_crit_edge

if.end43.i.if.end8_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end43.i.llsec_parse_seclevel.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_parse_seclevel.exit.thread

llsec_parse_seclevel.exit.thread:                 ; preds = %if.end43.i.llsec_parse_seclevel.exit.thread_crit_edge, %if.then39.i.llsec_parse_seclevel.exit.thread_crit_edge, %if.end10.i.llsec_parse_seclevel.exit.thread_crit_edge, %lor.lhs.false6.i.llsec_parse_seclevel.exit.thread_crit_edge, %lor.lhs.false3.i.llsec_parse_seclevel.exit.thread_crit_edge, %if.end.i.llsec_parse_seclevel.exit.thread_crit_edge, %lor.lhs.false.i.llsec_parse_seclevel.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs.i) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end43.i.if.end8_crit_edge, %lor.lhs.false22.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs.i) #10
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 32
  %del_seclevel.i = getelementptr inbounds %struct.cfg802154_ops, ptr %41, i32 0, i32 25
  %42 = ptrtoint ptr %del_seclevel.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %del_seclevel.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %1, i32 0, i32 9
  %call.i = call i32 %43(ptr noundef %wpan_phy.i, ptr noundef %5, ptr noundef nonnull %sl) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %llsec_parse_seclevel.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end8 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %llsec_parse_seclevel.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sl) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl802154_send_wpan_phy(ptr noundef readonly %rdev, ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %tmp.i42 = alloca i32, align 4
  %tmp.i40 = alloca i32, align 4
  %tmp.i38 = alloca i32, align 4
  %tmp.i36 = alloca i32, align 4
  %tmp.i34 = alloca i32, align 4
  %tmp.i32 = alloca i32, align 4
  %tmp.i30 = alloca i32, align 4
  %tmp.i28 = alloca i32, align 4
  %tmp.i26 = alloca i32, align 4
  %tmp.i24 = alloca i32, align 4
  %tmp.i22 = alloca i32, align 4
  %tmp.i20 = alloca i32, align 4
  %tmp.i18 = alloca i32, align 4
  %tmp.i15 = alloca i32, align 4
  %tmp.i13 = alloca i32, align 4
  %tmp.i11 = alloca i32, align 4
  %tmp.i9 = alloca i32, align 4
  %tmp.i7 = alloca i8, align 1
  %tmp.i5 = alloca i8, align 1
  %tmp.i3 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @nl802154_fam, i32 noundef %flags, i8 noundef zeroext 3) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %wpan_phy_idx = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 2
  %0 = ptrtoint ptr %wpan_phy_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wpan_phy_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool2.not = icmp eq i32 %call.i1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false:                                    ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.wpan_phy_name.exit_crit_edge

lor.lhs.false.wpan_phy_name.exit_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %lor.lhs.false.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %lor.lhs.false.wpan_phy_name.exit_crit_edge ]
  %call.i2 = call i32 @strlen(ptr noundef %retval.0.i.i) #14
  %add.i = add i32 %call.i2, 1
  %call1.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef %add.i, ptr noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %wpan_phy_name.exit.if.then.i_crit_edge

wpan_phy_name.exit.if.then.i_crit_edge:           ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false6:                                   ; preds = %wpan_phy_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg802154_rdev_list_generation to i32))
  %7 = load i32, ptr @cfg802154_rdev_list_generation, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3) #10
  %8 = ptrtoint ptr %tmp.i3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i3, align 4
  %call.i4 = call i32 @nla_put(ptr noundef %msg, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool8.not = icmp eq i32 %call.i4, 0
  br i1 %tobool8.not, label %if.end13, label %lor.lhs.false6.if.then.i_crit_edge

lor.lhs.false6.if.then.i_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end13:                                         ; preds = %lor.lhs.false6
  %current_page = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %current_page to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %current_page, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i5) #10
  %11 = ptrtoint ptr %tmp.i5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i5, align 1
  %call.i6 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool16.not = icmp eq i32 %call.i6, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %if.end13.if.then.i_crit_edge

if.end13.if.then.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false17:                                  ; preds = %if.end13
  %current_channel = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %current_channel, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i7) #10
  %14 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i7, align 1
  %call.i8 = call i32 @nla_put(ptr noundef %msg, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool20.not = icmp eq i32 %call.i8, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false17.if.then.i_crit_edge

lor.lhs.false17.if.then.i_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end22:                                         ; preds = %lor.lhs.false17
  %call23 = call fastcc i32 @nl802154_send_wpan_phy_channels(ptr noundef %rdev, ptr noundef %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.if.then.i_crit_edge

if.end22.if.then.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end26:                                         ; preds = %if.end22
  %flags28 = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags28, align 4
  %and = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end26.if.end49_crit_edge, label %if.then30

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then30:                                        ; preds = %if.end26
  %cca = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 6
  %17 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cca, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i9) #10
  %19 = ptrtoint ptr %tmp.i9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i9, align 4
  %call.i10 = call i32 @nla_put(ptr noundef %msg, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool33.not = icmp eq i32 %call.i10, 0
  br i1 %tobool33.not, label %if.end35, label %if.then30.if.then.i_crit_edge

if.then30.if.then.i_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end35:                                         ; preds = %if.then30
  %20 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cca, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp39 = icmp eq i32 %21, 3
  br i1 %cmp39, label %if.then41, label %if.end35.if.end49_crit_edge

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then41:                                        ; preds = %if.end35
  %opt = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 6, i32 1
  %22 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i11) #10
  %24 = ptrtoint ptr %tmp.i11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp.i11, align 4
  %call.i12 = call i32 @nla_put(ptr noundef %msg, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool45.not = icmp eq i32 %call.i12, 0
  br i1 %tobool45.not, label %if.then41.if.end49_crit_edge, label %if.then41.if.then.i_crit_edge

if.then41.if.then.i_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %if.then41.if.end49_crit_edge, %if.end35.if.end49_crit_edge, %if.end26.if.end49_crit_edge
  %25 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags28, align 4
  %and52 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.if.end60_crit_edge, label %if.then54

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then54:                                        ; preds = %if.end49
  %transmit_power = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 5
  %27 = ptrtoint ptr %transmit_power to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %transmit_power, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i13) #10
  %29 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i13, align 4
  %call.i14 = call i32 @nla_put(ptr noundef %msg, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool57.not = icmp eq i32 %call.i14, 0
  br i1 %tobool57.not, label %if.then54.if.end60_crit_edge, label %if.then54.if.then.i_crit_edge

if.then54.if.then.i_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then54.if.end60_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.end60:                                         ; preds = %if.then54.if.end60_crit_edge, %if.end49.if.end60_crit_edge
  %30 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags28, align 4
  %and63 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end60.if.end71_crit_edge, label %if.then65

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then65:                                        ; preds = %if.end60
  %cca_ed_level = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 8
  %32 = ptrtoint ptr %cca_ed_level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cca_ed_level, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i15) #10
  %34 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i15, align 4
  %call.i16 = call i32 @nla_put(ptr noundef %msg, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool68.not = icmp eq i32 %call.i16, 0
  br i1 %tobool68.not, label %if.then65.if.end71_crit_edge, label %if.then65.if.then.i_crit_edge

if.then65.if.then.i_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then65.if.end71_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.end71:                                         ; preds = %if.then65.if.end71_crit_edge, %if.end60.if.end71_crit_edge
  %call72 = call fastcc i32 @nl802154_put_capabilities(ptr noundef %msg, ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.if.then.i_crit_edge

if.end71.if.then.i_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end75:                                         ; preds = %if.end71
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i, align 8
  %call1.i17 = call i32 @nla_put(ptr noundef %msg, i32 noundef 25, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %cmp.i = icmp slt i32 %call1.i17, 0
  %tobool77.not46 = icmp eq ptr %36, null
  %tobool77.not = select i1 %cmp.i, i1 true, i1 %tobool77.not46
  br i1 %tobool77.not, label %if.end75.if.then.i_crit_edge, label %if.end79

if.end75.if.then.i_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end79:                                         ; preds = %if.end75
  %37 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rdev, align 32
  %add_virtual_intf = getelementptr inbounds %struct.cfg802154_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %add_virtual_intf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add_virtual_intf, align 4
  %tobool80.not = icmp eq ptr %40, null
  br i1 %tobool80.not, label %if.end79.do.body87_crit_edge, label %if.then81

if.end79.do.body87_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

if.then81:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i18) #10
  %41 = ptrtoint ptr %tmp.i18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 7, ptr %tmp.i18, align 4
  %call.i19 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i18) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool83.not = icmp eq i32 %call.i19, 0
  br i1 %tobool83.not, label %if.then81.do.body87_crit_edge, label %if.then81.if.then.i_crit_edge

if.then81.if.then.i_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then81.do.body87_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

do.body87:                                        ; preds = %if.then81.do.body87_crit_edge, %if.end79.do.body87_crit_edge
  %i.0 = phi i32 [ 1, %if.then81.do.body87_crit_edge ], [ 0, %if.end79.do.body87_crit_edge ]
  %42 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rdev, align 32
  %del_virtual_intf = getelementptr inbounds %struct.cfg802154_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %del_virtual_intf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %del_virtual_intf, align 4
  %tobool89.not = icmp eq ptr %45, null
  br i1 %tobool89.not, label %do.body87.do.body99_crit_edge, label %if.then90

do.body87.do.body99_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

if.then90:                                        ; preds = %do.body87
  %inc91 = add nuw nsw i32 %i.0, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i20) #10
  %46 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %tmp.i20, align 4
  %call.i21 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc91, i32 noundef 4, ptr noundef nonnull %tmp.i20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool93.not = icmp eq i32 %call.i21, 0
  br i1 %tobool93.not, label %if.then90.do.body99_crit_edge, label %if.then90.if.then.i_crit_edge

if.then90.if.then.i_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then90.do.body99_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

do.body99:                                        ; preds = %if.then90.do.body99_crit_edge, %do.body87.do.body99_crit_edge
  %i.1 = phi i32 [ %inc91, %if.then90.do.body99_crit_edge ], [ %i.0, %do.body87.do.body99_crit_edge ]
  %47 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rdev, align 32
  %set_channel = getelementptr inbounds %struct.cfg802154_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %set_channel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_channel, align 4
  %tobool101.not = icmp eq ptr %50, null
  br i1 %tobool101.not, label %do.body99.do.body111_crit_edge, label %if.then102

do.body99.do.body111_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body111

if.then102:                                       ; preds = %do.body99
  %inc103 = add nuw nsw i32 %i.1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i22) #10
  %51 = ptrtoint ptr %tmp.i22 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 9, ptr %tmp.i22, align 4
  %call.i23 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc103, i32 noundef 4, ptr noundef nonnull %tmp.i22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool105.not = icmp eq i32 %call.i23, 0
  br i1 %tobool105.not, label %if.then102.do.body111_crit_edge, label %if.then102.if.then.i_crit_edge

if.then102.if.then.i_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then102.do.body111_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body111

do.body111:                                       ; preds = %if.then102.do.body111_crit_edge, %do.body99.do.body111_crit_edge
  %i.2 = phi i32 [ %inc103, %if.then102.do.body111_crit_edge ], [ %i.1, %do.body99.do.body111_crit_edge ]
  %52 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rdev, align 32
  %set_pan_id = getelementptr inbounds %struct.cfg802154_ops, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %set_pan_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_pan_id, align 4
  %tobool113.not = icmp eq ptr %55, null
  br i1 %tobool113.not, label %do.body111.do.body123_crit_edge, label %if.then114

do.body111.do.body123_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body123

if.then114:                                       ; preds = %do.body111
  %inc115 = add nuw nsw i32 %i.2, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24) #10
  %56 = ptrtoint ptr %tmp.i24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 10, ptr %tmp.i24, align 4
  %call.i25 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc115, i32 noundef 4, ptr noundef nonnull %tmp.i24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool117.not = icmp eq i32 %call.i25, 0
  br i1 %tobool117.not, label %if.then114.do.body123_crit_edge, label %if.then114.if.then.i_crit_edge

if.then114.if.then.i_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then114.do.body123_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body123

do.body123:                                       ; preds = %if.then114.do.body123_crit_edge, %do.body111.do.body123_crit_edge
  %i.3 = phi i32 [ %inc115, %if.then114.do.body123_crit_edge ], [ %i.2, %do.body111.do.body123_crit_edge ]
  %57 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rdev, align 32
  %set_short_addr = getelementptr inbounds %struct.cfg802154_ops, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %set_short_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_short_addr, align 4
  %tobool125.not = icmp eq ptr %60, null
  br i1 %tobool125.not, label %do.body123.do.body135_crit_edge, label %if.then126

do.body123.do.body135_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body135

if.then126:                                       ; preds = %do.body123
  %inc127 = add nuw nsw i32 %i.3, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i26) #10
  %61 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 11, ptr %tmp.i26, align 4
  %call.i27 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc127, i32 noundef 4, ptr noundef nonnull %tmp.i26) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool129.not = icmp eq i32 %call.i27, 0
  br i1 %tobool129.not, label %if.then126.do.body135_crit_edge, label %if.then126.if.then.i_crit_edge

if.then126.if.then.i_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then126.do.body135_crit_edge:                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body135

do.body135:                                       ; preds = %if.then126.do.body135_crit_edge, %do.body123.do.body135_crit_edge
  %i.4 = phi i32 [ %inc127, %if.then126.do.body135_crit_edge ], [ %i.3, %do.body123.do.body135_crit_edge ]
  %62 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rdev, align 32
  %set_backoff_exponent = getelementptr inbounds %struct.cfg802154_ops, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %set_backoff_exponent to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_backoff_exponent, align 4
  %tobool137.not = icmp eq ptr %65, null
  br i1 %tobool137.not, label %do.body135.do.body147_crit_edge, label %if.then138

do.body135.do.body147_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147

if.then138:                                       ; preds = %do.body135
  %inc139 = add nuw nsw i32 %i.4, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28) #10
  %66 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16, ptr %tmp.i28, align 4
  %call.i29 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc139, i32 noundef 4, ptr noundef nonnull %tmp.i28) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool141.not = icmp eq i32 %call.i29, 0
  br i1 %tobool141.not, label %if.then138.do.body147_crit_edge, label %if.then138.if.then.i_crit_edge

if.then138.if.then.i_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then138.do.body147_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147

do.body147:                                       ; preds = %if.then138.do.body147_crit_edge, %do.body135.do.body147_crit_edge
  %i.5 = phi i32 [ %inc139, %if.then138.do.body147_crit_edge ], [ %i.4, %do.body135.do.body147_crit_edge ]
  %67 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rdev, align 32
  %set_max_csma_backoffs = getelementptr inbounds %struct.cfg802154_ops, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %set_max_csma_backoffs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_max_csma_backoffs, align 4
  %tobool149.not = icmp eq ptr %70, null
  br i1 %tobool149.not, label %do.body147.do.body159_crit_edge, label %if.then150

do.body147.do.body159_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body159

if.then150:                                       ; preds = %do.body147
  %inc151 = add nuw nsw i32 %i.5, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i30) #10
  %71 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 17, ptr %tmp.i30, align 4
  %call.i31 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc151, i32 noundef 4, ptr noundef nonnull %tmp.i30) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool153.not = icmp eq i32 %call.i31, 0
  br i1 %tobool153.not, label %if.then150.do.body159_crit_edge, label %if.then150.if.then.i_crit_edge

if.then150.if.then.i_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then150.do.body159_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body159

do.body159:                                       ; preds = %if.then150.do.body159_crit_edge, %do.body147.do.body159_crit_edge
  %i.6 = phi i32 [ %inc151, %if.then150.do.body159_crit_edge ], [ %i.5, %do.body147.do.body159_crit_edge ]
  %72 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rdev, align 32
  %set_max_frame_retries = getelementptr inbounds %struct.cfg802154_ops, ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %set_max_frame_retries to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_max_frame_retries, align 4
  %tobool161.not = icmp eq ptr %75, null
  br i1 %tobool161.not, label %do.body159.do.body171_crit_edge, label %if.then162

do.body159.do.body171_crit_edge:                  ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body171

if.then162:                                       ; preds = %do.body159
  %inc163 = add nuw nsw i32 %i.6, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i32) #10
  %76 = ptrtoint ptr %tmp.i32 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 15, ptr %tmp.i32, align 4
  %call.i33 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc163, i32 noundef 4, ptr noundef nonnull %tmp.i32) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool165.not = icmp eq i32 %call.i33, 0
  br i1 %tobool165.not, label %if.then162.do.body171_crit_edge, label %if.then162.if.then.i_crit_edge

if.then162.if.then.i_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then162.do.body171_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body171

do.body171:                                       ; preds = %if.then162.do.body171_crit_edge, %do.body159.do.body171_crit_edge
  %i.7 = phi i32 [ %inc163, %if.then162.do.body171_crit_edge ], [ %i.6, %do.body159.do.body171_crit_edge ]
  %77 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rdev, align 32
  %set_lbt_mode = getelementptr inbounds %struct.cfg802154_ops, ptr %78, i32 0, i32 15
  %79 = ptrtoint ptr %set_lbt_mode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_lbt_mode, align 4
  %tobool173.not = icmp eq ptr %80, null
  br i1 %tobool173.not, label %do.body171.do.body183_crit_edge, label %if.then174

do.body171.do.body183_crit_edge:                  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body183

if.then174:                                       ; preds = %do.body171
  %inc175 = add nuw nsw i32 %i.7, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i34) #10
  %81 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 18, ptr %tmp.i34, align 4
  %call.i35 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc175, i32 noundef 4, ptr noundef nonnull %tmp.i34) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool177.not = icmp eq i32 %call.i35, 0
  br i1 %tobool177.not, label %if.then174.do.body183_crit_edge, label %if.then174.if.then.i_crit_edge

if.then174.if.then.i_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then174.do.body183_crit_edge:                  ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body183

do.body183:                                       ; preds = %if.then174.do.body183_crit_edge, %do.body171.do.body183_crit_edge
  %i.8 = phi i32 [ %inc175, %if.then174.do.body183_crit_edge ], [ %i.7, %do.body171.do.body183_crit_edge ]
  %82 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rdev, align 32
  %set_ackreq_default = getelementptr inbounds %struct.cfg802154_ops, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %set_ackreq_default to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_ackreq_default, align 4
  %tobool185.not = icmp eq ptr %85, null
  br i1 %tobool185.not, label %do.body183.do.end194_crit_edge, label %if.then186

do.body183.do.end194_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end194

if.then186:                                       ; preds = %do.body183
  %inc187 = add nuw nsw i32 %i.8, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i36) #10
  %86 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 19, ptr %tmp.i36, align 4
  %call.i37 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc187, i32 noundef 4, ptr noundef nonnull %tmp.i36) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool189.not = icmp eq i32 %call.i37, 0
  br i1 %tobool189.not, label %if.then186.do.end194_crit_edge, label %if.then186.if.then.i_crit_edge

if.then186.if.then.i_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then186.do.end194_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end194

do.end194:                                        ; preds = %if.then186.do.end194_crit_edge, %do.body183.do.end194_crit_edge
  %i.9 = phi i32 [ %inc187, %if.then186.do.end194_crit_edge ], [ %i.8, %do.body183.do.end194_crit_edge ]
  %87 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags28, align 4
  %and197 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %do.end194.if.end212_crit_edge, label %do.body200

do.end194.if.end212_crit_edge:                    ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

do.body200:                                       ; preds = %do.end194
  %89 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rdev, align 32
  %set_tx_power = getelementptr inbounds %struct.cfg802154_ops, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %set_tx_power to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_tx_power, align 4
  %tobool202.not = icmp eq ptr %92, null
  br i1 %tobool202.not, label %do.body200.if.end212_crit_edge, label %if.then203

do.body200.if.end212_crit_edge:                   ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.then203:                                       ; preds = %do.body200
  %inc204 = add nuw nsw i32 %i.9, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i38) #10
  %93 = ptrtoint ptr %tmp.i38 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 12, ptr %tmp.i38, align 4
  %call.i39 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc204, i32 noundef 4, ptr noundef nonnull %tmp.i38) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool206.not = icmp eq i32 %call.i39, 0
  br i1 %tobool206.not, label %if.then203.if.end212_crit_edge, label %if.then203.if.then.i_crit_edge

if.then203.if.then.i_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then203.if.end212_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.end212:                                        ; preds = %if.then203.if.end212_crit_edge, %do.body200.if.end212_crit_edge, %do.end194.if.end212_crit_edge
  %i.10 = phi i32 [ %inc204, %if.then203.if.end212_crit_edge ], [ %i.9, %do.body200.if.end212_crit_edge ], [ %i.9, %do.end194.if.end212_crit_edge ]
  %94 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags28, align 4
  %and215 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.end212.if.end230_crit_edge, label %do.body218

if.end212.if.end230_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

do.body218:                                       ; preds = %if.end212
  %96 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rdev, align 32
  %set_cca_ed_level = getelementptr inbounds %struct.cfg802154_ops, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %set_cca_ed_level to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_cca_ed_level, align 4
  %tobool220.not = icmp eq ptr %99, null
  br i1 %tobool220.not, label %do.body218.if.end230_crit_edge, label %if.then221

do.body218.if.end230_crit_edge:                   ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.then221:                                       ; preds = %do.body218
  %inc222 = add nuw nsw i32 %i.10, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i40) #10
  %100 = ptrtoint ptr %tmp.i40 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 14, ptr %tmp.i40, align 4
  %call.i41 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc222, i32 noundef 4, ptr noundef nonnull %tmp.i40) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool224.not = icmp eq i32 %call.i41, 0
  br i1 %tobool224.not, label %if.then221.if.end230_crit_edge, label %if.then221.if.then.i_crit_edge

if.then221.if.then.i_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then221.if.end230_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.end230:                                        ; preds = %if.then221.if.end230_crit_edge, %do.body218.if.end230_crit_edge, %if.end212.if.end230_crit_edge
  %i.11 = phi i32 [ %inc222, %if.then221.if.end230_crit_edge ], [ %i.10, %do.body218.if.end230_crit_edge ], [ %i.10, %if.end212.if.end230_crit_edge ]
  %101 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags28, align 4
  %and233 = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.end230.if.end248_crit_edge, label %do.body236

if.end230.if.end248_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

do.body236:                                       ; preds = %if.end230
  %103 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rdev, align 32
  %set_cca_mode = getelementptr inbounds %struct.cfg802154_ops, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %set_cca_mode to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_cca_mode, align 4
  %tobool238.not = icmp eq ptr %106, null
  br i1 %tobool238.not, label %do.body236.if.end248_crit_edge, label %if.then239

do.body236.if.end248_crit_edge:                   ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.then239:                                       ; preds = %do.body236
  %inc240 = add nuw nsw i32 %i.11, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i42) #10
  %107 = ptrtoint ptr %tmp.i42 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 13, ptr %tmp.i42, align 4
  %call.i43 = call i32 @nla_put(ptr noundef %msg, i32 noundef %inc240, i32 noundef 4, ptr noundef nonnull %tmp.i42) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool242.not = icmp eq i32 %call.i43, 0
  br i1 %tobool242.not, label %if.then239.if.end248_crit_edge, label %if.then239.if.then.i_crit_edge

if.then239.if.then.i_crit_edge:                   ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then239.if.end248_crit_edge:                   ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.end248:                                        ; preds = %if.then239.if.end248_crit_edge, %do.body236.if.end248_crit_edge, %if.end230.if.end248_crit_edge
  %108 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %110 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i, ptr %36, align 2
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %111 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %111 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %112 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.then239.if.then.i_crit_edge, %if.then221.if.then.i_crit_edge, %if.then203.if.then.i_crit_edge, %if.then186.if.then.i_crit_edge, %if.then174.if.then.i_crit_edge, %if.then162.if.then.i_crit_edge, %if.then150.if.then.i_crit_edge, %if.then138.if.then.i_crit_edge, %if.then126.if.then.i_crit_edge, %if.then114.if.then.i_crit_edge, %if.then102.if.then.i_crit_edge, %if.then90.if.then.i_crit_edge, %if.then81.if.then.i_crit_edge, %if.end75.if.then.i_crit_edge, %if.end71.if.then.i_crit_edge, %if.then65.if.then.i_crit_edge, %if.then54.if.then.i_crit_edge, %if.then41.if.then.i_crit_edge, %if.then30.if.then.i_crit_edge, %if.end22.if.then.i_crit_edge, %lor.lhs.false17.if.then.i_crit_edge, %if.end13.if.then.i_crit_edge, %lor.lhs.false6.if.then.i_crit_edge, %wpan_phy_name.exit.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i45 = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i45, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %113 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %114, %add.ptr1.i45
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !91

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %115 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i45 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %116 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end248, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end248 ], [ -105, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl802154_send_wpan_phy_channels(ptr nocapture noundef readonly %rdev, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 21, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not14 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not14
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %supported = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %page.013, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %page.013 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i32], ptr %supported, i32 0, i32 %page.013
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -105, %entry.cleanup_crit_edge ], [ -105, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl802154_put_capabilities(ptr noundef %msg, ptr nocapture noundef readonly %rdev) unnamed_addr #2 align 64 {
entry:
  %tmp.i235 = alloca i32, align 4
  %tmp.i233 = alloca i8, align 1
  %tmp.i231 = alloca i8, align 1
  %tmp.i229 = alloca i8, align 1
  %tmp.i227 = alloca i8, align 1
  %tmp.i225 = alloca i8, align 1
  %tmp.i223 = alloca i8, align 1
  %tmp.i221 = alloca i8, align 1
  %tmp.i219 = alloca i8, align 1
  %tmp.i186 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 24, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not246 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not246
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i169 = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %cmp.i170 = icmp slt i32 %call1.i169, 0
  %tobool2.not263 = icmp eq ptr %3, null
  %tobool2.not = select i1 %cmp.i170, i1 true, i1 %tobool2.not263
  br i1 %tobool2.not, label %if.end.cleanup104_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup104_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0251 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i32], ptr %supported, i32 0, i32 %i.0251
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef %i.0251, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not20.i = icmp eq ptr %7, null
  %tobool.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not20.i
  br i1 %tobool.not.i, label %if.then6.cleanup104_crit_edge, label %if.then6.while.body.i_crit_edge

if.then6.while.body.i_crit_edge:                  ; preds = %if.then6
  br label %while.body.i

if.then6.cleanup104_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.then6.while.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %if.end6.i.while.body.i_crit_edge ], [ 0, %if.then6.while.body.i_crit_edge ]
  %mask.addr.017.i = phi i32 [ %shr.i, %if.end6.i.while.body.i_crit_edge ], [ %5, %if.then6.while.body.i_crit_edge ]
  %and.i = and i32 %mask.addr.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end6.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end6.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %call.i.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef %i.018.i, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %land.lhs.true.i.cleanup104_crit_edge

land.lhs.true.i.cleanup104_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %while.body.i.if.end6.i_crit_edge
  %shr.i = lshr i32 %mask.addr.017.i, 1
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %tobool1.not.i = icmp ult i32 %mask.addr.017.i, 2
  br i1 %tobool1.not.i, label %nl802154_put_flags.exit, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

nl802154_put_flags.exit:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %7, align 2
  br label %for.inc

for.inc:                                          ; preds = %nl802154_put_flags.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0251, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %3, align 2
  %flags = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %for.end.if.end34_crit_edge, label %if.then17

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then17:                                        ; preds = %for.end
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %call1.i174 = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i174)
  %cmp.i175 = icmp slt i32 %call1.i174, 0
  %tobool19.not257 = icmp eq ptr %17, null
  %tobool19.not = select i1 %cmp.i175, i1 true, i1 %tobool19.not257
  br i1 %tobool19.not, label %if.then17.cleanup104_crit_edge, label %for.cond22.preheader

if.then17.cleanup104_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

for.cond22.preheader:                             ; preds = %if.then17
  %cca_ed_levels_size = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 14
  %18 = ptrtoint ptr %cca_ed_levels_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cca_ed_levels_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23253.not = icmp eq i32 %19, 0
  br i1 %cmp23253.not, label %for.cond22.preheader.for.end32_crit_edge, label %for.body24.lr.ph

for.cond22.preheader.for.end32_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end32

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %cca_ed_levels = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 16
  br label %for.body24

for.cond22:                                       ; preds = %for.body24
  %inc31 = add nuw i32 %i.1254, 1
  %20 = ptrtoint ptr %cca_ed_levels_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cca_ed_levels_size, align 4
  %cmp23 = icmp ult i32 %inc31, %21
  br i1 %cmp23, label %for.cond22.for.body24_crit_edge, label %for.cond22.for.end32_crit_edge

for.cond22.for.end32_crit_edge:                   ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end32

for.cond22.for.body24_crit_edge:                  ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.body24:                                       ; preds = %for.cond22.for.body24_crit_edge, %for.body24.lr.ph
  %i.1254 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc31, %for.cond22.for.body24_crit_edge ]
  %22 = ptrtoint ptr %cca_ed_levels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cca_ed_levels, align 4
  %arrayidx25 = getelementptr i32, ptr %23, i32 %i.1254
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef %i.1254, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %for.cond22, label %for.body24.cleanup104_crit_edge

for.body24.cleanup104_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

for.end32:                                        ; preds = %for.cond22.for.end32_crit_edge, %for.cond22.preheader.for.end32_crit_edge
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i178 = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i179 = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i180 = sub i32 %sub.ptr.lhs.cast.i178, %sub.ptr.rhs.cast.i179
  %conv.i181 = trunc i32 %sub.ptr.sub.i180 to i16
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i181, ptr %17, align 2
  br label %if.end34

if.end34:                                         ; preds = %for.end32, %for.end.if.end34_crit_edge
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and37 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end34.if.end59_crit_edge, label %if.then39

if.end34.if.end59_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then39:                                        ; preds = %if.end34
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %call1.i183 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i183)
  %cmp.i184 = icmp slt i32 %call1.i183, 0
  %tobool41.not258 = icmp eq ptr %33, null
  %tobool41.not = select i1 %cmp.i184, i1 true, i1 %tobool41.not258
  br i1 %tobool41.not, label %if.then39.cleanup104_crit_edge, label %for.cond44.preheader

if.then39.cleanup104_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

for.cond44.preheader:                             ; preds = %if.then39
  %tx_powers_size = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 13
  %34 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_powers_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp45255.not = icmp eq i32 %35, 0
  br i1 %cmp45255.not, label %for.cond44.preheader.for.end54_crit_edge, label %for.body46.lr.ph

for.cond44.preheader.for.end54_crit_edge:         ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end54

for.body46.lr.ph:                                 ; preds = %for.cond44.preheader
  %tx_powers = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 15
  br label %for.body46

for.cond44:                                       ; preds = %for.body46
  %inc53 = add nuw i32 %i.2256, 1
  %36 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_powers_size, align 4
  %cmp45 = icmp ult i32 %inc53, %37
  br i1 %cmp45, label %for.cond44.for.body46_crit_edge, label %for.cond44.for.end54_crit_edge

for.cond44.for.end54_crit_edge:                   ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end54

for.cond44.for.body46_crit_edge:                  ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46

for.body46:                                       ; preds = %for.cond44.for.body46_crit_edge, %for.body46.lr.ph
  %i.2256 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc53, %for.cond44.for.body46_crit_edge ]
  %38 = ptrtoint ptr %tx_powers to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_powers, align 4
  %arrayidx47 = getelementptr i32, ptr %39, i32 %i.2256
  %40 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i186) #10
  %42 = ptrtoint ptr %tmp.i186 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tmp.i186, align 4
  %call.i187 = call i32 @nla_put(ptr noundef %msg, i32 noundef %i.2256, i32 noundef 4, ptr noundef nonnull %tmp.i186) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i186) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool49.not = icmp eq i32 %call.i187, 0
  br i1 %tobool49.not, label %for.cond44, label %for.body46.cleanup104_crit_edge

for.body46.cleanup104_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

for.end54:                                        ; preds = %for.cond44.for.end54_crit_edge, %for.cond44.preheader.for.end54_crit_edge
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i189 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i190 = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i191 = sub i32 %sub.ptr.lhs.cast.i189, %sub.ptr.rhs.cast.i190
  %conv.i192 = trunc i32 %sub.ptr.sub.i191 to i16
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i192, ptr %33, align 2
  br label %if.end59

if.end59:                                         ; preds = %for.end54, %if.end34.if.end59_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and62 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end59.if.end71_crit_edge, label %if.then64

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then64:                                        ; preds = %if.end59
  %cca_modes = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 1
  %48 = ptrtoint ptr %cca_modes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cca_modes, align 4
  %50 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i194 = call i32 @nla_put(ptr noundef %msg, i32 noundef 5, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i194)
  %cmp.i.i195 = icmp slt i32 %call1.i.i194, 0
  %tobool.not20.i196 = icmp eq ptr %51, null
  %tobool.not.i197 = select i1 %cmp.i.i195, i1 true, i1 %tobool.not20.i196
  br i1 %tobool.not.i197, label %if.then64.cleanup104_crit_edge, label %while.cond.preheader.i199

if.then64.cleanup104_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

while.cond.preheader.i199:                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool1.not16.i198 = icmp eq i32 %49, 0
  br i1 %tobool1.not16.i198, label %while.cond.preheader.i199.lor.lhs.false_crit_edge, label %while.cond.preheader.i199.while.body.i204_crit_edge

while.cond.preheader.i199.while.body.i204_crit_edge: ; preds = %while.cond.preheader.i199
  br label %while.body.i204

while.cond.preheader.i199.lor.lhs.false_crit_edge: ; preds = %while.cond.preheader.i199
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

while.body.i204:                                  ; preds = %if.end6.i211.while.body.i204_crit_edge, %while.cond.preheader.i199.while.body.i204_crit_edge
  %i.018.i200 = phi i32 [ %inc.i209, %if.end6.i211.while.body.i204_crit_edge ], [ 0, %while.cond.preheader.i199.while.body.i204_crit_edge ]
  %mask.addr.017.i201 = phi i32 [ %shr.i208, %if.end6.i211.while.body.i204_crit_edge ], [ %49, %while.cond.preheader.i199.while.body.i204_crit_edge ]
  %and.i202 = and i32 %mask.addr.017.i201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool2.not.i203 = icmp eq i32 %and.i202, 0
  br i1 %tobool2.not.i203, label %while.body.i204.if.end6.i211_crit_edge, label %land.lhs.true.i207

while.body.i204.if.end6.i211_crit_edge:           ; preds = %while.body.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i211

land.lhs.true.i207:                               ; preds = %while.body.i204
  %call.i.i205 = call i32 @nla_put(ptr noundef %msg, i32 noundef %i.018.i200, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i205)
  %tobool4.not.i206 = icmp eq i32 %call.i.i205, 0
  br i1 %tobool4.not.i206, label %land.lhs.true.i207.if.end6.i211_crit_edge, label %land.lhs.true.i207.cleanup104_crit_edge

land.lhs.true.i207.cleanup104_crit_edge:          ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

land.lhs.true.i207.if.end6.i211_crit_edge:        ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i211

if.end6.i211:                                     ; preds = %land.lhs.true.i207.if.end6.i211_crit_edge, %while.body.i204.if.end6.i211_crit_edge
  %shr.i208 = lshr i32 %mask.addr.017.i201, 1
  %inc.i209 = add nuw nsw i32 %i.018.i200, 1
  %tobool1.not.i210 = icmp ult i32 %mask.addr.017.i201, 2
  br i1 %tobool1.not.i210, label %if.end6.i211.lor.lhs.false_crit_edge, label %if.end6.i211.while.body.i204_crit_edge

if.end6.i211.while.body.i204_crit_edge:           ; preds = %if.end6.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i204

if.end6.i211.lor.lhs.false_crit_edge:             ; preds = %if.end6.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6.i211.lor.lhs.false_crit_edge, %while.cond.preheader.i199.lor.lhs.false_crit_edge
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i212 = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i213 = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i214 = sub i32 %sub.ptr.lhs.cast.i.i212, %sub.ptr.rhs.cast.i.i213
  %conv.i.i215 = trunc i32 %sub.ptr.sub.i.i214 to i16
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i215, ptr %51, align 2
  %cca_opts = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 2
  %55 = ptrtoint ptr %cca_opts to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cca_opts, align 4
  %call67 = call fastcc i32 @nl802154_put_flags(ptr noundef %msg, i32 noundef 6, i32 noundef %56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %lor.lhs.false.if.end71_crit_edge, label %lor.lhs.false.cleanup104_crit_edge

lor.lhs.false.cleanup104_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false.if.end71_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.end71:                                         ; preds = %lor.lhs.false.if.end71_crit_edge, %if.end59.if.end71_crit_edge
  %min_minbe = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 5
  %57 = ptrtoint ptr %min_minbe to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %min_minbe, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i219) #10
  %59 = ptrtoint ptr %tmp.i219 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %tmp.i219, align 1
  %call.i220 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i219) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i219) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool73.not = icmp eq i32 %call.i220, 0
  br i1 %tobool73.not, label %lor.lhs.false74, label %if.end71.cleanup104_crit_edge

if.end71.cleanup104_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false74:                                  ; preds = %if.end71
  %max_minbe = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 6
  %60 = ptrtoint ptr %max_minbe to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %max_minbe, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i221) #10
  %62 = ptrtoint ptr %tmp.i221 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tmp.i221, align 1
  %call.i222 = call i32 @nla_put(ptr noundef %msg, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i221) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i221) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool76.not = icmp eq i32 %call.i222, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %lor.lhs.false74.cleanup104_crit_edge

lor.lhs.false74.cleanup104_crit_edge:             ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %min_maxbe = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 7
  %63 = ptrtoint ptr %min_maxbe to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %min_maxbe, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i223) #10
  %65 = ptrtoint ptr %tmp.i223 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %tmp.i223, align 1
  %call.i224 = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i223) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i223) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool79.not = icmp eq i32 %call.i224, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %lor.lhs.false77.cleanup104_crit_edge

lor.lhs.false77.cleanup104_crit_edge:             ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false80:                                  ; preds = %lor.lhs.false77
  %max_maxbe = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 8
  %66 = ptrtoint ptr %max_maxbe to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %max_maxbe, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i225) #10
  %68 = ptrtoint ptr %tmp.i225 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %tmp.i225, align 1
  %call.i226 = call i32 @nla_put(ptr noundef %msg, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i225) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i225) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool82.not = icmp eq i32 %call.i226, 0
  br i1 %tobool82.not, label %lor.lhs.false83, label %lor.lhs.false80.cleanup104_crit_edge

lor.lhs.false80.cleanup104_crit_edge:             ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %min_csma_backoffs = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 9
  %69 = ptrtoint ptr %min_csma_backoffs to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %min_csma_backoffs, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i227) #10
  %71 = ptrtoint ptr %tmp.i227 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %tmp.i227, align 1
  %call.i228 = call i32 @nla_put(ptr noundef %msg, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %tmp.i227) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i227) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool85.not = icmp eq i32 %call.i228, 0
  br i1 %tobool85.not, label %lor.lhs.false86, label %lor.lhs.false83.cleanup104_crit_edge

lor.lhs.false83.cleanup104_crit_edge:             ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %max_csma_backoffs = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 10
  %72 = ptrtoint ptr %max_csma_backoffs to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %max_csma_backoffs, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i229) #10
  %74 = ptrtoint ptr %tmp.i229 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %tmp.i229, align 1
  %call.i230 = call i32 @nla_put(ptr noundef %msg, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %tmp.i229) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i229) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool88.not = icmp eq i32 %call.i230, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %lor.lhs.false86.cleanup104_crit_edge

lor.lhs.false86.cleanup104_crit_edge:             ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false89:                                  ; preds = %lor.lhs.false86
  %min_frame_retries = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 11
  %75 = ptrtoint ptr %min_frame_retries to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %min_frame_retries, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i231) #10
  %77 = ptrtoint ptr %tmp.i231 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %tmp.i231, align 1
  %call.i232 = call i32 @nla_put(ptr noundef %msg, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %tmp.i231) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i231) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool91.not = icmp eq i32 %call.i232, 0
  br i1 %tobool91.not, label %lor.lhs.false92, label %lor.lhs.false89.cleanup104_crit_edge

lor.lhs.false89.cleanup104_crit_edge:             ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %max_frame_retries = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 12
  %78 = ptrtoint ptr %max_frame_retries to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %max_frame_retries, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i233) #10
  %80 = ptrtoint ptr %tmp.i233 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %tmp.i233, align 1
  %call.i234 = call i32 @nla_put(ptr noundef %msg, i32 noundef 14, i32 noundef 1, ptr noundef nonnull %tmp.i233) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i233) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool94.not = icmp eq i32 %call.i234, 0
  br i1 %tobool94.not, label %lor.lhs.false95, label %lor.lhs.false92.cleanup104_crit_edge

lor.lhs.false92.cleanup104_crit_edge:             ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false95:                                  ; preds = %lor.lhs.false92
  %iftypes = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 3
  %81 = ptrtoint ptr %iftypes to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iftypes, align 4
  %call96 = call fastcc i32 @nl802154_put_flags(ptr noundef %msg, i32 noundef 1, i32 noundef %82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %lor.lhs.false98, label %lor.lhs.false95.cleanup104_crit_edge

lor.lhs.false95.cleanup104_crit_edge:             ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

lor.lhs.false98:                                  ; preds = %lor.lhs.false95
  %lbt = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 4, i32 4
  %83 = ptrtoint ptr %lbt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lbt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i235) #10
  %85 = ptrtoint ptr %tmp.i235 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %tmp.i235, align 4
  %call.i236 = call i32 @nla_put(ptr noundef %msg, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i235) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i235) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %tobool100.not = icmp eq i32 %call.i236, 0
  br i1 %tobool100.not, label %if.end102, label %lor.lhs.false98.cleanup104_crit_edge

lor.lhs.false98.cleanup104_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

if.end102:                                        ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i238 = ptrtoint ptr %87 to i32
  %sub.ptr.rhs.cast.i239 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i240 = sub i32 %sub.ptr.lhs.cast.i238, %sub.ptr.rhs.cast.i239
  %conv.i241 = trunc i32 %sub.ptr.sub.i240 to i16
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.i241, ptr %1, align 2
  br label %cleanup104

cleanup104:                                       ; preds = %if.end102, %lor.lhs.false98.cleanup104_crit_edge, %lor.lhs.false95.cleanup104_crit_edge, %lor.lhs.false92.cleanup104_crit_edge, %lor.lhs.false89.cleanup104_crit_edge, %lor.lhs.false86.cleanup104_crit_edge, %lor.lhs.false83.cleanup104_crit_edge, %lor.lhs.false80.cleanup104_crit_edge, %lor.lhs.false77.cleanup104_crit_edge, %lor.lhs.false74.cleanup104_crit_edge, %if.end71.cleanup104_crit_edge, %lor.lhs.false.cleanup104_crit_edge, %land.lhs.true.i207.cleanup104_crit_edge, %if.then64.cleanup104_crit_edge, %for.body46.cleanup104_crit_edge, %if.then39.cleanup104_crit_edge, %for.body24.cleanup104_crit_edge, %if.then17.cleanup104_crit_edge, %land.lhs.true.i.cleanup104_crit_edge, %if.then6.cleanup104_crit_edge, %if.end.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  %retval.3 = phi i32 [ 0, %if.end102 ], [ -105, %entry.cleanup104_crit_edge ], [ -105, %if.end.cleanup104_crit_edge ], [ -105, %if.then17.cleanup104_crit_edge ], [ -105, %if.then39.cleanup104_crit_edge ], [ -105, %lor.lhs.false.cleanup104_crit_edge ], [ -105, %lor.lhs.false98.cleanup104_crit_edge ], [ -105, %lor.lhs.false95.cleanup104_crit_edge ], [ -105, %lor.lhs.false92.cleanup104_crit_edge ], [ -105, %lor.lhs.false89.cleanup104_crit_edge ], [ -105, %lor.lhs.false86.cleanup104_crit_edge ], [ -105, %lor.lhs.false83.cleanup104_crit_edge ], [ -105, %lor.lhs.false80.cleanup104_crit_edge ], [ -105, %lor.lhs.false77.cleanup104_crit_edge ], [ -105, %lor.lhs.false74.cleanup104_crit_edge ], [ -105, %if.end71.cleanup104_crit_edge ], [ -105, %if.then64.cleanup104_crit_edge ], [ -105, %land.lhs.true.i207.cleanup104_crit_edge ], [ -105, %for.body46.cleanup104_crit_edge ], [ -105, %for.body24.cleanup104_crit_edge ], [ -105, %land.lhs.true.i.cleanup104_crit_edge ], [ -105, %if.then6.cleanup104_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl802154_put_flags(ptr noundef %msg, i32 noundef %attr, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef %attr, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not20 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not20
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool1.not16 = icmp eq i32 %mask, 0
  br i1 %tobool1.not16, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.018 = phi i32 [ %inc, %if.end6.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %mask.addr.017 = phi i32 [ %shr, %if.end6.while.body_crit_edge ], [ %mask, %while.cond.preheader.while.body_crit_edge ]
  %and = and i32 %mask.addr.017, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.body.if.end6_crit_edge, label %land.lhs.true

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %while.body
  %call.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef %i.018, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %while.body.if.end6_crit_edge
  %shr = lshr i32 %mask.addr.017, 1
  %inc = add nuw nsw i32 %i.018, 1
  %tobool1.not = icmp ult i32 %mask.addr.017, 2
  br i1 %tobool1.not, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end6.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -105, %entry.cleanup_crit_edge ], [ -105, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl802154_send_iface(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, ptr noundef %rdev, ptr noundef %wpan_dev) unnamed_addr #2 align 64 {
entry:
  %tmp.i129 = alloca i8, align 1
  %tmp.i127 = alloca i8, align 1
  %tmp.i125 = alloca i8, align 1
  %tmp.i123 = alloca i8, align 1
  %tmp.i121 = alloca i8, align 1
  %tmp.i119 = alloca i8, align 1
  %tmp.i117 = alloca i16, align 2
  %tmp.i115 = alloca i16, align 2
  %tmp.i113 = alloca i64, align 8
  %tmp.i111 = alloca i32, align 4
  %tmp.i109 = alloca i64, align 8
  %tmp.i107 = alloca i32, align 4
  %tmp.i105 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %call.i = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @nl802154_fam, i32 noundef %flags, i8 noundef zeroext 7) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i103 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool3.not = icmp eq i32 %call.i103, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true.if.then.i_crit_edge

land.lhs.true.if.then.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call.i104 = call i32 @strlen(ptr noundef nonnull %1) #14
  %add.i = add i32 %call.i104, 1
  %call1.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef %add.i, ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %wpan_phy_idx = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 2
  %5 = ptrtoint ptr %wpan_phy_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wpan_phy_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i105) #10
  %7 = ptrtoint ptr %tmp.i105 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i105, align 4
  %call.i106 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i105) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i105) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool9.not = icmp eq i32 %call.i106, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %if.end7.if.then.i_crit_edge

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false10:                                  ; preds = %if.end7
  %iftype = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 1
  %8 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i107) #10
  %10 = ptrtoint ptr %tmp.i107 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i107, align 4
  %call.i108 = call i32 @nla_put(ptr noundef %msg, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i107) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i107) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool12.not = icmp eq i32 %call.i108, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false10.if.then.i_crit_edge

lor.lhs.false10.if.then.i_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %11 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wpan_dev, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wpan_dev_id.exit, !prof !91

do.body4.i.i:                                     ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

wpan_dev_id.exit:                                 ; preds = %lor.lhs.false13
  %identifier.i = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %13 = ptrtoint ptr %identifier.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %identifier.i, align 4
  %conv.i = zext i32 %14 to i64
  %wpan_phy_idx.i = getelementptr i8, ptr %12, i32 -84
  %15 = ptrtoint ptr %wpan_phy_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wpan_phy_idx.i, align 4
  %conv13.i = zext i32 %16 to i64
  %shl.i = shl nuw i64 %conv13.i, 32
  %or.i = or i64 %shl.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i109) #10
  %17 = ptrtoint ptr %tmp.i109 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i, ptr %tmp.i109, align 8
  %call.i110 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i109, i32 noundef 27) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool16.not = icmp eq i32 %call.i110, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %wpan_dev_id.exit.if.then.i_crit_edge

wpan_dev_id.exit.if.then.i_crit_edge:             ; preds = %wpan_dev_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false17:                                  ; preds = %wpan_dev_id.exit
  %devlist_generation = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 7
  %18 = ptrtoint ptr %devlist_generation to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devlist_generation, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg802154_rdev_list_generation to i32))
  %20 = load i32, ptr @cfg802154_rdev_list_generation, align 4
  %shl = shl i32 %20, 2
  %xor = xor i32 %shl, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i111) #10
  %21 = ptrtoint ptr %tmp.i111 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor, ptr %tmp.i111, align 4
  %call.i112 = call i32 @nla_put(ptr noundef %msg, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i111) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i111) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool19.not = icmp eq i32 %call.i112, 0
  br i1 %tobool19.not, label %if.end21, label %lor.lhs.false17.if.then.i_crit_edge

lor.lhs.false17.if.then.i_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end21:                                         ; preds = %lor.lhs.false17
  %extended_addr = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 9
  %22 = ptrtoint ptr %extended_addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %extended_addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i113) #10
  %24 = ptrtoint ptr %tmp.i113 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %tmp.i113, align 8
  %call.i114 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 23, i32 noundef 8, ptr noundef nonnull %tmp.i113, i32 noundef 27) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i113) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool23.not = icmp eq i32 %call.i114, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %if.end21.if.then.i_crit_edge

if.end21.if.then.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false24:                                  ; preds = %if.end21
  %short_addr = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 8
  %25 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %short_addr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i115) #10
  %27 = ptrtoint ptr %tmp.i115 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %tmp.i115, align 2
  %call.i116 = call i32 @nla_put(ptr noundef %msg, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %tmp.i115) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool26.not = icmp eq i32 %call.i116, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %lor.lhs.false24.if.then.i_crit_edge

lor.lhs.false24.if.then.i_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %pan_id = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 7
  %28 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pan_id, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i117) #10
  %30 = ptrtoint ptr %tmp.i117 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %tmp.i117, align 2
  %call.i118 = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i117) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i117) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool29.not = icmp eq i32 %call.i118, 0
  br i1 %tobool29.not, label %if.end31, label %lor.lhs.false27.if.then.i_crit_edge

lor.lhs.false27.if.then.i_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end31:                                         ; preds = %lor.lhs.false27
  %frame_retries = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 15
  %31 = ptrtoint ptr %frame_retries to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %frame_retries, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i119) #10
  %33 = ptrtoint ptr %tmp.i119 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %tmp.i119, align 1
  %call.i120 = call i32 @nla_put(ptr noundef %msg, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %tmp.i119) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i119) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool33.not = icmp eq i32 %call.i120, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %if.end31.if.then.i_crit_edge

if.end31.if.then.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false34:                                  ; preds = %if.end31
  %max_be = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 13
  %34 = ptrtoint ptr %max_be to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %max_be, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i121) #10
  %36 = ptrtoint ptr %tmp.i121 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tmp.i121, align 1
  %call.i122 = call i32 @nla_put(ptr noundef %msg, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %tmp.i121) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i121) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool36.not = icmp eq i32 %call.i122, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %lor.lhs.false34.if.then.i_crit_edge

lor.lhs.false34.if.then.i_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %csma_retries = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 14
  %37 = ptrtoint ptr %csma_retries to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %csma_retries, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i123) #10
  %39 = ptrtoint ptr %tmp.i123 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %tmp.i123, align 1
  %call.i124 = call i32 @nla_put(ptr noundef %msg, i32 noundef 18, i32 noundef 1, ptr noundef nonnull %tmp.i123) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i123) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool39.not = icmp eq i32 %call.i124, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %lor.lhs.false37.if.then.i_crit_edge

lor.lhs.false37.if.then.i_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %min_be = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 12
  %40 = ptrtoint ptr %min_be to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %min_be, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i125) #10
  %42 = ptrtoint ptr %tmp.i125 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %tmp.i125, align 1
  %call.i126 = call i32 @nla_put(ptr noundef %msg, i32 noundef 17, i32 noundef 1, ptr noundef nonnull %tmp.i125) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool42.not = icmp eq i32 %call.i126, 0
  br i1 %tobool42.not, label %if.end44, label %lor.lhs.false40.if.then.i_crit_edge

lor.lhs.false40.if.then.i_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end44:                                         ; preds = %lor.lhs.false40
  %lbt = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 16
  %43 = ptrtoint ptr %lbt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lbt, align 4, !range !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i127) #10
  %45 = ptrtoint ptr %tmp.i127 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %tmp.i127, align 1
  %call.i128 = call i32 @nla_put(ptr noundef %msg, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %tmp.i127) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i127) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool47.not = icmp eq i32 %call.i128, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.if.then.i_crit_edge

if.end44.if.then.i_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end49:                                         ; preds = %if.end44
  %ackreq = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 18
  %46 = ptrtoint ptr %ackreq to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ackreq, align 2, !range !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i129) #10
  %48 = ptrtoint ptr %tmp.i129 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %tmp.i129, align 1
  %call.i130 = call i32 @nla_put(ptr noundef %msg, i32 noundef 26, i32 noundef 1, ptr noundef nonnull %tmp.i129) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i129) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool53.not = icmp eq i32 %call.i130, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.if.then.i_crit_edge

if.end49.if.then.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end55:                                         ; preds = %if.end49
  %49 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp = icmp eq i32 %50, 1
  br i1 %cmp, label %if.end55.out_crit_edge, label %if.end59

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end59:                                         ; preds = %if.end55
  %call60 = call fastcc i32 @nl802154_get_llsec_params(ptr noundef %msg, ptr noundef %rdev, ptr noundef %wpan_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end59.if.then.i_crit_edge, label %if.end59.out_crit_edge

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end59.if.then.i_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

out:                                              ; preds = %if.end59.out_crit_edge, %if.end55.out_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %53 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end59.if.then.i_crit_edge, %if.end49.if.then.i_crit_edge, %if.end44.if.then.i_crit_edge, %lor.lhs.false40.if.then.i_crit_edge, %lor.lhs.false37.if.then.i_crit_edge, %lor.lhs.false34.if.then.i_crit_edge, %if.end31.if.then.i_crit_edge, %lor.lhs.false27.if.then.i_crit_edge, %lor.lhs.false24.if.then.i_crit_edge, %if.end21.if.then.i_crit_edge, %lor.lhs.false17.if.then.i_crit_edge, %wpan_dev_id.exit.if.then.i_crit_edge, %lor.lhs.false10.if.then.i_crit_edge, %if.end7.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge, %land.lhs.true.if.then.i_crit_edge
  %add.ptr1.i131 = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i131, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %55, %add.ptr1.i131
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !91

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %56 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i131 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl802154_get_llsec_params(ptr noundef %msg, ptr noundef %rdev, ptr noundef %wpan_dev) unnamed_addr #2 align 64 {
entry:
  %tmp.i35 = alloca i32, align 4
  %tmp.i33 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %params = alloca %struct.ieee802154_llsec_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params) #10
  %0 = call ptr @memset(ptr %params, i32 255, i32 80)
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 32
  %get_llsec_params.i = getelementptr inbounds %struct.cfg802154_ops, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %get_llsec_params.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_llsec_params.i, align 4
  %wpan_phy.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9
  %call.i = call i32 %4(ptr noundef %wpan_phy.i, ptr noundef %wpan_dev, ptr noundef nonnull %params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %params, align 8, !range !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %tmp.i, align 1
  %call.i32 = call i32 @nla_put(ptr noundef %msg, i32 noundef 30, i32 noundef 1, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool2.not = icmp eq i32 %call.i32, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %out_level = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %out_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %out_level, align 8
  %conv3 = zext i8 %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i33) #10
  %10 = ptrtoint ptr %tmp.i33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv3, ptr %tmp.i33, align 4
  %call.i34 = call i32 @nla_put(ptr noundef %msg, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %tmp.i33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool5.not = icmp eq i32 %call.i34, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %frame_counter = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %frame_counter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_counter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i35) #10
  %13 = ptrtoint ptr %tmp.i35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i35, align 4
  %call.i36 = call i32 @nla_put(ptr noundef %msg, i32 noundef 33, i32 noundef 4, ptr noundef nonnull %tmp.i35) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool8.not = icmp eq i32 %call.i36, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 32, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool12.not38 = icmp eq ptr %15, null
  %tobool12.not = select i1 %cmp.i, i1 true, i1 %tobool12.not38
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %out_key = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 3
  %call15 = call fastcc i32 @ieee802154_llsec_send_key_id(ptr noundef %msg, ptr noundef %out_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %15, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call.i, %entry.cleanup_crit_edge ], [ -105, %lor.lhs.false6.cleanup_crit_edge ], [ -105, %lor.lhs.false.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ], [ -105, %if.end10.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee802154_llsec_send_key_id(ptr noundef %msg, ptr nocapture noundef readonly %desc) unnamed_addr #2 align 64 {
entry:
  %tmp.i82 = alloca i8, align 1
  %tmp.i80 = alloca i64, align 8
  %tmp.i78 = alloca i32, align 4
  %tmp.i75 = alloca i64, align 8
  %tmp.i73 = alloca i16, align 2
  %tmp.i71 = alloca i32, align 4
  %tmp.i69 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %desc, align 8
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %desc, align 8
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %4, label %if.end.sw.epilog39_crit_edge [
    i8 0, label %sw.bb
    i8 3, label %sw.bb33
    i8 2, label %sw.bb28
  ]

if.end.sw.epilog39_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog39

sw.bb:                                            ; preds = %if.end
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool4.not84 = icmp eq ptr %7, null
  %tobool4.not = select i1 %cmp.i, i1 true, i1 %tobool4.not84
  br i1 %tobool4.not, label %sw.bb.cleanup_crit_edge, label %if.end6

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %8 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %pan_id = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pan_id, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i69) #10
  %11 = ptrtoint ptr %tmp.i69 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tmp.i69, align 2
  %call.i70 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i69) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool8.not = icmp eq i32 %call.i70, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %8, align 8
  %conv10 = zext i8 %13 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i71) #10
  %14 = ptrtoint ptr %tmp.i71 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv10, ptr %tmp.i71, align 4
  %call.i72 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i71) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool12.not = icmp eq i32 %call.i72, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %8, align 8
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %16, label %if.end14.sw.epilog_crit_edge [
    i8 2, label %sw.bb17
    i8 3, label %sw.bb22
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end14
  %18 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i73) #10
  %21 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %tmp.i73, align 2
  %call.i74 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i73) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool19.not = icmp eq i32 %call.i74, 0
  br i1 %tobool19.not, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end14
  %22 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i75) #10
  %25 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %tmp.i75, align 8
  %call.i76 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i75, i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i75) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool24.not = icmp eq i32 %call.i76, 0
  br i1 %tobool24.not, label %sw.bb22.sw.epilog_crit_edge, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %7, align 2
  br label %sw.epilog39thread-pre-split

sw.bb28:                                          ; preds = %if.end
  %29 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i78) #10
  %32 = ptrtoint ptr %tmp.i78 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i78, align 4
  %call.i79 = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i78) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool30.not = icmp eq i32 %call.i79, 0
  br i1 %tobool30.not, label %sw.bb28.sw.epilog39thread-pre-split_crit_edge, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb28.sw.epilog39thread-pre-split_crit_edge:    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog39thread-pre-split

sw.bb33:                                          ; preds = %if.end
  %33 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i80) #10
  %36 = ptrtoint ptr %tmp.i80 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %tmp.i80, align 8
  %call.i81 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i80, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool35.not = icmp eq i32 %call.i81, 0
  br i1 %tobool35.not, label %sw.bb33.sw.epilog39thread-pre-split_crit_edge, label %sw.bb33.cleanup_crit_edge

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.sw.epilog39thread-pre-split_crit_edge:    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog39thread-pre-split

sw.epilog39thread-pre-split:                      ; preds = %sw.bb33.sw.epilog39thread-pre-split_crit_edge, %sw.bb28.sw.epilog39thread-pre-split_crit_edge, %sw.epilog
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %desc, align 8
  br label %sw.epilog39

sw.epilog39:                                      ; preds = %sw.epilog39thread-pre-split, %if.end.sw.epilog39_crit_edge
  %38 = phi i8 [ %.pr, %sw.epilog39thread-pre-split ], [ %4, %if.end.sw.epilog39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.not = icmp eq i8 %38, 0
  br i1 %cmp.not, label %sw.epilog39.if.end48_crit_edge, label %if.then43

sw.epilog39.if.end48_crit_edge:                   ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then43:                                        ; preds = %sw.epilog39
  %id = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 1
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %id, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i82) #10
  %41 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %tmp.i82, align 1
  %call.i83 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i82) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool45.not = icmp eq i32 %call.i83, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %sw.epilog39.if.end48_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then43.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -105, %entry.cleanup_crit_edge ], [ -105, %sw.bb.cleanup_crit_edge ], [ -105, %lor.lhs.false.cleanup_crit_edge ], [ -105, %if.end6.cleanup_crit_edge ], [ -105, %sw.bb17.cleanup_crit_edge ], [ -105, %sw.bb22.cleanup_crit_edge ], [ -105, %sw.bb28.cleanup_crit_edge ], [ -105, %sw.bb33.cleanup_crit_edge ], [ -105, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_add_virtual_intf(ptr noundef %wpan_phy, ptr noundef %name, i32 noundef %type, i64 noundef %extended_addr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_add_virtual_intf, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_add_virtual_intf, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %call42 = tail call i32 @__traceiter_802154_rdev_add_virtual_intf(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %name, i32 noundef %type, i64 noundef %extended_addr) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_add_virtual_intf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_add_virtual_intf, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_add_virtual_intf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_add_virtual_intf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 85, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
define internal fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy, i32 noundef %ret) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_return_int, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_return_int, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %call42 = tail call i32 @__traceiter_802154_rdev_return_int(ptr noundef null, ptr noundef %wpan_phy, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 311, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_add_virtual_intf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_del_virtual_intf(ptr noundef %wpan_phy, ptr noundef %wpan_dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_del_virtual_intf, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_del_virtual_intf, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %call42 = tail call i32 @__traceiter_802154_rdev_del_virtual_intf(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %wpan_dev) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_del_virtual_intf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_del_virtual_intf, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_del_virtual_intf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_del_virtual_intf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 100, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_del_virtual_intf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_channel(ptr noundef %wpan_phy, i8 noundef zeroext %page, i8 noundef zeroext %channel) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_channel, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_channel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %call42 = tail call i32 @__traceiter_802154_rdev_set_channel(ptr noundef null, ptr noundef %wpan_phy, i8 noundef zeroext %page, i8 noundef zeroext %channel) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_channel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_channel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_channel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 117, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_channel(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_cca_mode(ptr noundef %wpan_phy, ptr noundef %cca) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_cca_mode, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_cca_mode, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %call42 = tail call i32 @__traceiter_802154_rdev_set_cca_mode(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %cca) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_cca_mode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_cca_mode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_cca_mode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_cca_mode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 147, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_cca_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_cca_ed_level(ptr noundef %wpan_phy, i32 noundef %ed_level) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_cca_ed_level, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_cca_ed_level, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %call42 = tail call i32 @__traceiter_802154_rdev_set_cca_ed_level(ptr noundef null, ptr noundef %wpan_phy, i32 noundef %ed_level) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_cca_ed_level, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_cca_ed_level, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_cca_ed_level.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_cca_ed_level.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 162, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_cca_ed_level(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_tx_power(ptr noundef %wpan_phy, i32 noundef %power) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_tx_power, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_tx_power, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  %call42 = tail call i32 @__traceiter_802154_rdev_set_tx_power(ptr noundef null, ptr noundef %wpan_phy, i32 noundef %power) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_tx_power, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_tx_power, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_tx_power.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_tx_power.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 132, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_tx_power(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_net_ns_by_pid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_net_ns_by_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg802154_switch_netns(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_pan_id(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_pan_id, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_pan_id, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !117
  %call42 = tail call i32 @__traceiter_802154_rdev_set_pan_id(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_pan_id, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_pan_id, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_pan_id.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_pan_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 187, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_pan_id(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_short_addr(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_short_addr, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_short_addr, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %call42 = tail call i32 @__traceiter_802154_rdev_set_short_addr(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_short_addr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_short_addr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_short_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_short_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 196, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_short_addr(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rdev_set_backoff_exponent(ptr noundef %rdev, ptr noundef %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %wpan_phy = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9
  tail call fastcc void @trace_802154_rdev_set_backoff_exponent(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be)
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 32
  %set_backoff_exponent = getelementptr inbounds %struct.cfg802154_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %set_backoff_exponent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_backoff_exponent, align 4
  %call = tail call i32 %3(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) #10
  tail call fastcc void @trace_802154_rdev_return_int(ptr noundef %wpan_phy, i32 noundef %call)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_backoff_exponent(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_backoff_exponent, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_backoff_exponent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %call42 = tail call i32 @__traceiter_802154_rdev_set_backoff_exponent(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_backoff_exponent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_backoff_exponent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_backoff_exponent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_backoff_exponent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 218, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_backoff_exponent(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_csma_backoffs(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %max_csma_backoffs) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_csma_backoffs, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_csma_backoffs, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !123
  %call42 = tail call i32 @__traceiter_802154_rdev_set_csma_backoffs(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %max_csma_backoffs) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_csma_backoffs, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_csma_backoffs, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_csma_backoffs.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_csma_backoffs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 238, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_csma_backoffs(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_max_frame_retries(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef signext %max_frame_retries) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_max_frame_retries, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_max_frame_retries, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !125
  %call42 = tail call i32 @__traceiter_802154_rdev_set_max_frame_retries(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef signext %max_frame_retries) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_max_frame_retries, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_max_frame_retries, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_802154_rdev_set_max_frame_retries.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_max_frame_retries.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 258, ptr noundef nonnull @.str.4) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
declare dso_local i32 @__traceiter_802154_rdev_set_max_frame_retries(ptr noundef, ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_lbt_mode(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %mode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_lbt_mode, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_lbt_mode, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %call43 = tail call i32 @__traceiter_802154_rdev_set_lbt_mode(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %mode) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !89

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_lbt_mode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_lbt_mode, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_802154_rdev_set_lbt_mode.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_lbt_mode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 277, ptr noundef nonnull @.str.4) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_rdev_set_lbt_mode(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_802154_rdev_set_ackreq_default(ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %ackreq) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_ackreq_default, i32 0, i32 1), ptr blockaddress(@trace_802154_rdev_set_ackreq_default, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !129
  %call43 = tail call i32 @__traceiter_802154_rdev_set_ackreq_default(ptr noundef null, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %ackreq) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !89

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_ackreq_default, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_802154_rdev_set_ackreq_default, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_802154_rdev_set_ackreq_default.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_802154_rdev_set_ackreq_default.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 296, ptr noundef nonnull @.str.4) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_802154_rdev_set_ackreq_default(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %nla, ptr nocapture noundef %desc) unnamed_addr #2 align 64 {
entry:
  %attrs.i = alloca [6 x ptr], align 4
  %attrs = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attrs) #10
  %0 = getelementptr inbounds [7 x ptr], ptr %attrs, i32 0, i32 1
  %1 = getelementptr inbounds [7 x ptr], ptr %attrs, i32 0, i32 2
  %2 = getelementptr inbounds [7 x ptr], ptr %attrs, i32 0, i32 3
  %3 = getelementptr inbounds [7 x ptr], ptr %attrs, i32 0, i32 4
  %4 = getelementptr inbounds [7 x ptr], ptr %attrs, i32 0, i32 5
  %tobool.not = icmp eq ptr %nla, null
  %5 = call ptr @memset(ptr %attrs, i32 255, i32 28)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %6 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @nl802154_key_id_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool1.not = icmp eq i32 %call2.i, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i.i55 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i55 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i55, align 4
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %desc, align 8
  %13 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %conv, label %if.end4.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end4.if.then36_crit_edge
    i8 2, label %sw.bb18
    i8 3, label %sw.bb25
  ]

if.end4.if.then36_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb
  %16 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %attrs.i) #10
  %17 = getelementptr inbounds [6 x ptr], ptr %attrs.i, i32 0, i32 2
  %18 = getelementptr inbounds [6 x ptr], ptr %attrs.i, i32 0, i32 3
  %19 = getelementptr inbounds [6 x ptr], ptr %attrs.i, i32 0, i32 4
  %20 = call ptr @memset(ptr %attrs.i, i32 255, i32 24)
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %15, align 2
  %conv.i.i.i = zext i16 %22 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs.i, i32 noundef 5, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nl802154_dev_addr_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool1.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge

lor.lhs.false.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_dev_addr.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %23 = getelementptr inbounds [6 x ptr], ptr %attrs.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %if.end.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, label %lor.lhs.false3.i

if.end.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_dev_addr.exit.thread

lor.lhs.false3.i:                                 ; preds = %if.end.i
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, label %if.end7.i

lor.lhs.false3.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_dev_addr.exit.thread

if.end7.i:                                        ; preds = %lor.lhs.false3.i
  %add.ptr.i.i34.i = getelementptr i8, ptr %25, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i34.i, align 2
  %pan_id.i = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %pan_id.i, align 2
  %add.ptr.i.i35.i = getelementptr i8, ptr %27, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i35.i, align 4
  %conv.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %16, align 8
  %34 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %conv.i, label %if.end7.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb20.i
  ]

if.end7.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_dev_addr.exit.thread

sw.bb.i:                                          ; preds = %if.end7.i
  %35 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %18, align 4
  %tobool15.not.i = icmp eq ptr %36, null
  br i1 %tobool15.not.i, label %sw.bb.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, label %if.end17.i

sw.bb.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_dev_addr.exit.thread

if.end17.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i36.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i36.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i36.i, align 2
  %39 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %38, ptr %39, align 8
  br label %ieee802154_llsec_parse_dev_addr.exit

sw.bb20.i:                                        ; preds = %if.end7.i
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %19, align 4
  %tobool22.not.i = icmp eq ptr %42, null
  br i1 %tobool22.not.i, label %sw.bb20.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, label %if.end24.i

sw.bb20.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge: ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee802154_llsec_parse_dev_addr.exit.thread

if.end24.i:                                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i37.i = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i37.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr.i.i37.i, align 8
  %45 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %44, ptr %45, align 8
  br label %ieee802154_llsec_parse_dev_addr.exit

ieee802154_llsec_parse_dev_addr.exit.thread:      ; preds = %sw.bb20.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, %sw.bb.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, %if.end7.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, %lor.lhs.false3.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, %if.end.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge, %lor.lhs.false.i.ieee802154_llsec_parse_dev_addr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attrs.i) #10
  br label %cleanup

ieee802154_llsec_parse_dev_addr.exit:             ; preds = %if.end24.i, %if.end17.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attrs.i) #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %tobool20.not = icmp eq ptr %48, null
  br i1 %tobool20.not, label %sw.bb18.cleanup_crit_edge, label %if.end22

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i56 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i56, align 4
  %51 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %51, align 8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end4
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %4, align 4
  %tobool27.not = icmp eq ptr %54, null
  br i1 %tobool27.not, label %sw.bb25.cleanup_crit_edge, label %if.end29

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i57 = getelementptr i8, ptr %54, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i57 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr.i.i57, align 8
  %57 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %56, ptr %57, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end29, %if.end22, %ieee802154_llsec_parse_dev_addr.exit
  %59 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %59)
  %.pr = load i8, ptr %desc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp34.not = icmp eq i8 %.pr, 0
  br i1 %cmp34.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.then36_crit_edge

sw.epilog.if.then36_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36:                                        ; preds = %sw.epilog.if.then36_crit_edge, %if.end4.if.then36_crit_edge
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %tobool38.not = icmp eq ptr %61, null
  br i1 %tobool38.not, label %if.then36.cleanup_crit_edge, label %if.end40

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i58 = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i58 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr.i.i58, align 1
  %id = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 1
  %64 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %id, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then36.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %ieee802154_llsec_parse_dev_addr.exit.thread, %sw.bb.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.then36.cleanup_crit_edge ], [ 0, %if.end40 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %ieee802154_llsec_parse_dev_addr.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attrs) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl802154_prepare_wpan_dev_dump(ptr nocapture noundef readonly %skb, ptr nocapture noundef %cb, ptr nocapture noundef %rdev, ptr nocapture noundef %wpan_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @rtnl_lock() #10
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs, align 4
  %call2 = tail call fastcc ptr @__cfg802154_wpan_dev_from_attrs(ptr noundef %9, ptr noundef %11)
  %12 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %wpan_dev, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call2 to i32
  br label %out_unlock

if.end:                                           ; preds = %if.then
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call2, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body4.i, label %wpan_phy_to_rdev.exit, !prof !91

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

wpan_phy_to_rdev.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %15, i32 -96
  %16 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %rdev, align 4
  %wpan_phy_idx = getelementptr i8, ptr %15, i32 -84
  %17 = ptrtoint ptr %wpan_phy_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wpan_phy_idx, align 4
  %add = add i32 %18, 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %2, align 4
  %20 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wpan_dev, align 4
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %identifier, align 4
  %arrayidx8 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx8, align 4
  br label %cleanup33

if.else:                                          ; preds = %entry
  %sub = add i32 %4, -1
  %call11 = tail call ptr @wpan_phy_idx_to_wpan_phy(i32 noundef %sub) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.else.out_unlock_crit_edge, label %wpan_phy_to_rdev.exit60

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

wpan_phy_to_rdev.exit60:                          ; preds = %if.else
  %add.ptr.i59 = getelementptr i8, ptr %call11, i32 -96
  %25 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i59, ptr %rdev, align 4
  %26 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %wpan_dev, align 4
  %27 = load ptr, ptr %rdev, align 4
  %wpan_dev_list = getelementptr inbounds %struct.cfg802154_registered_device, ptr %27, i32 0, i32 6
  %arrayidx19 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %wpan_phy_to_rdev.exit60
  %.pn.in = phi ptr [ %wpan_dev_list, %wpan_phy_to_rdev.exit60 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %28 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %wpan_dev_list
  br i1 %cmp.not, label %for.endthread-pre-split, label %for.body

for.body:                                         ; preds = %for.cond
  %identifier18 = getelementptr i8, ptr %.pn, i32 20
  %29 = ptrtoint ptr %identifier18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %identifier18, align 4
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19, align 4
  %cmp20 = icmp eq i32 %30, %32
  br i1 %cmp20, label %if.then21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %tmp.0.le = getelementptr i8, ptr %.pn, i32 -8
  %33 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tmp.0.le, ptr %wpan_dev, align 4
  br label %for.end

for.endthread-pre-split:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %wpan_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load ptr, ptr %wpan_dev, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then21
  %35 = phi ptr [ %.pr, %for.endthread-pre-split ], [ %tmp.0.le, %if.then21 ]
  %tobool28.not = icmp eq ptr %35, null
  br i1 %tobool28.not, label %for.end.out_unlock_crit_edge, label %for.end.cleanup33_crit_edge

for.end.cleanup33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

out_unlock:                                       ; preds = %for.end.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %if.then4
  %err.1 = phi i32 [ %13, %if.then4 ], [ -19, %if.else.out_unlock_crit_edge ], [ -19, %for.end.out_unlock_crit_edge ]
  tail call void @rtnl_unlock() #10
  br label %cleanup33

cleanup33:                                        ; preds = %out_unlock, %for.end.cleanup33_crit_edge, %wpan_phy_to_rdev.exit
  %retval.0 = phi i32 [ %err.1, %out_unlock ], [ 0, %wpan_phy_to_rdev.exit ], [ 0, %for.end.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wpan_phy_idx_to_wpan_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @nl802154_fam, !1, !"nl802154_fam", i1 false, i1 false}
!1 = !{!"../net/ieee802154/nl802154.c", i32 2491, i32 27}
!2 = !{ptr @nl802154_policy, !3, !"nl802154_policy", i1 false, i1 false}
!3 = !{!"../net/ieee802154/nl802154.c", i32 177, i32 32}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/ieee802154/nl802154.c", i32 2181, i32 3}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/ieee802154/nl802154.c", i32 97, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/ieee802154/nl802154.c", i32 47, i32 2}
!12 = !{ptr @nl802154_ops, !13, !"nl802154_ops", i1 false, i1 false}
!13 = !{!"../net/ieee802154/nl802154.c", i32 2239, i32 30}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/net/netlink.h", i32 991, i32 3}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../net/ieee802154/trace.h", i32 66, i32 1}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/ieee802154/trace.h", i32 298, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/ieee802154/trace.h", i32 87, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/ieee802154/trace.h", i32 102, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../net/ieee802154/trace.h", i32 134, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../net/ieee802154/trace.h", i32 149, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../net/ieee802154/trace.h", i32 119, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../net/ieee802154/trace.h", i32 183, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../net/ieee802154/trace.h", i32 189, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../net/ieee802154/trace.h", i32 198, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../net/ieee802154/trace.h", i32 220, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../net/ieee802154/trace.h", i32 240, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = !{ptr @.str.6, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/net/cfg802154.h", i32 128, i32 3}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../net/ieee802154/trace.h", i32 260, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../net/ieee802154/trace.h", i32 279, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = !{ptr @nl802154_key_id_policy, !66, !"nl802154_key_id_policy", i1 false, i1 false}
!66 = !{!"../net/ieee802154/nl802154.c", i32 1324, i32 32}
!67 = !{ptr @nl802154_dev_addr_policy, !68, !"nl802154_dev_addr_policy", i1 false, i1 false}
!68 = !{!"../net/ieee802154/nl802154.c", i32 1285, i32 32}
!69 = !{ptr @nl802154_key_policy, !70, !"nl802154_key_policy", i1 false, i1 false}
!70 = !{!"../net/ieee802154/nl802154.c", i32 1542, i32 32}
!71 = !{ptr @nl802154_dev_policy, !72, !"nl802154_dev_policy", i1 false, i1 false}
!72 = !{!"../net/ieee802154/nl802154.c", i32 1721, i32 32}
!73 = !{ptr @nl802154_devkey_policy, !74, !"nl802154_devkey_policy", i1 false, i1 false}
!74 = !{!"../net/ieee802154/nl802154.c", i32 1909, i32 32}
!75 = !{ptr @nl802154_seclevel_policy, !76, !"nl802154_seclevel_policy", i1 false, i1 false}
!76 = !{!"../net/ieee802154/nl802154.c", i32 2075, i32 32}
!77 = !{ptr @nl802154_mcgrps, !78, !"nl802154_mcgrps", i1 false, i1 false}
!78 = !{!"../net/ieee802154/nl802154.c", i32 31, i32 42}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2156977774, i64 2156978259, i64 2156977811, i64 2156977867, i64 2156977901, i64 2156977925, i64 2156977966, i64 2156977987, i64 2156978015, i64 2156978049}
!93 = !{i64 819399, i64 819460}
!94 = !{i64 822131}
!95 = !{i64 822416}
!96 = !{i64 2148514672}
!97 = !{i64 2148429136, i64 2148429168, i64 2148429197, i64 2148429231, i64 2148429262, i64 2148429285}
!98 = !{i64 2149886841}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148238534, i64 2148238539, i64 2148238552, i64 2148238596, i64 2148238630, i64 2148238651}
!101 = !{i64 2157097430}
!102 = !{i64 2157097719}
!103 = !{i64 2149677650}
!104 = !{i64 2149678686}
!105 = !{i64 2157352765}
!106 = !{i64 2157352998}
!107 = !{i64 2157119647}
!108 = !{i64 2157119902}
!109 = !{i64 2157137366}
!110 = !{i64 2157137621}
!111 = !{i64 2157176279}
!112 = !{i64 2157176516}
!113 = !{i64 2157193799}
!114 = !{i64 2157194054}
!115 = !{i64 2157154669}
!116 = !{i64 2157154910}
!117 = !{i64 2157211840}
!118 = !{i64 2157212101}
!119 = !{i64 2157233906}
!120 = !{i64 2157234175}
!121 = !{i64 2157252502}
!122 = !{i64 2157252797}
!123 = !{i64 2157271403}
!124 = !{i64 2157271698}
!125 = !{i64 2157294379}
!126 = !{i64 2157294682}
!127 = !{i64 2157312897}
!128 = !{i64 2157313156}
!129 = !{i64 2157331077}
!130 = !{i64 2157331352}
