; ModuleID = '/llk/IR_all_yes/net/hsr/hsr_netlink.c_pt.bc'
source_filename = "../net/hsr/hsr_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.64, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
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
%struct.nla_policy = type { i8, i8, i16, %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.hsr_port = type { %struct.list_head, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
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
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.7, [48 x i8], %union.anon.8, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.10, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { i64 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32, ptr }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.12, i32, i32, i32, i16, i16, %union.anon.14, i32, %union.anon.15, %union.anon.16, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.12 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.16 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }

@hsr_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"HSR\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 10, i32 0, i8 -128, i8 0, i8 2, i8 1, ptr @hsr_genl_policy, ptr null, ptr null, ptr null, ptr @hsr_ops, ptr @hsr_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not send HSR ring error message\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not send HSR node down\0A\00", [34 x i8] zeroinitializer }, align 32
@hsr_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.6, i32 244, ptr null, ptr @hsr_dev_setup, i8 0, i32 7, ptr @hsr_policy, ptr null, ptr @hsr_newlink, ptr null, ptr @hsr_dellink, ptr null, ptr @hsr_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__UNIQUE_ID_alias341 = internal constant [24 x i8] c"hsr.alias=rtnl-link-hsr\00", section ".modinfo", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hsr_genl_policy = internal constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@hsr_ops = internal constant { [2 x %struct.genl_small_ops], [40 x i8] } { [2 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @hsr_get_node_status, ptr null, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @hsr_get_node_list, ptr null, i8 5, i8 0, i8 0, i8 3 }], [40 x i8] zeroinitializer }, align 32
@hsr_mcgrps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"hsr-network\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hsr\00", [28 x i8] zeroinitializer }, align 32
@hsr_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.26 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.26 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hsr: No slave devices specified\00", [32 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hsr: Slave1 device not specified\00", [63 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hsr: Slave1 does not exist\00", [37 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hsr: Slave2 device not specified\00", [63 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hsr: Slave2 does not exist\00", [37 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hsr: Slave1 and Slave2 are same\00", [32 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hsr: Unsupported protocol\00", [38 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hsr: PRP version unsupported\00", [35 x i8] zeroinitializer }, align 32
@hsr_newlink.__msg.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hsr: Only HSR version 0/1 supported\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 222, i32 27 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 259, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 308, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"hsr_genl_policy\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 166, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"hsr_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 496, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"hsr_mcgrps\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 178, i32 42 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 155, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"hsr_policy\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 18, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 41, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 45, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 51, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 55, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 61, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 66, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 79, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 87, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.73 = private constant [25 x i8] c"../net/hsr/hsr_netlink.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 93, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias341, ptr @hsr_netlink_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hsr_genl_policy, ptr @hsr_ops, ptr @hsr_mcgrps, ptr @.str.6, ptr @hsr_policy, ptr @hsr_newlink.__msg, ptr @hsr_newlink.__msg.7, ptr @hsr_newlink.__msg.8, ptr @hsr_newlink.__msg.9, ptr @hsr_newlink.__msg.10, ptr @hsr_newlink.__msg.11, ptr @hsr_newlink.__msg.12, ptr @hsr_newlink.__msg.13, ptr @hsr_newlink.__msg.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_genl_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_mcgrps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_newlink.__msg.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_nl_ringerror(ptr noundef %hsr, ptr noundef %addr, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @hsr_genl_family, i32 noundef 0, i8 noundef zeroext 1) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.nla_put_failure_crit_edge, label %if.end4

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 6, ptr noundef %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.nla_put_failure_crit_edge, label %if.end7

if.end4.nla_put_failure_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end7:                                          ; preds = %if.end4
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i26 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp9 = icmp slt i32 %call.i26, 0
  br i1 %cmp9, label %if.end7.nla_put_failure_crit_edge, label %if.end11

if.end7.nla_put_failure_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end11:                                         ; preds = %if.end7
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %8 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @hsr_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end11
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !58

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @hsr_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %dst_group.i.i.i, align 8
  %call.i.i.i27 = call i32 @netlink_broadcast(ptr noundef %10, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %9, i32 noundef 2592) #7
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end7.nla_put_failure_crit_edge, %if.end4.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %fail

fail:                                             ; preds = %nla_put_failure, %entry.fail_crit_edge
  %12 = call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %fail.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

fail.rcu_read_lock.exit_crit_edge:                ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %fail
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %fail.rcu_read_lock.exit_crit_edge
  %call13 = call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef 4) #7
  %dev14 = getelementptr inbounds %struct.hsr_port, ptr %call13, i32 0, i32 1
  %16 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str) #10
  %call.i28 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i28, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %rcu_read_lock.exit
  %call1.i29 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %18 = call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i35 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsr_port_get_hsr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_nl_nodedown(ptr noundef %hsr, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @hsr_genl_family, i32 noundef 0, i8 noundef zeroext 2) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.nla_put_failure_crit_edge, label %if.end4

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 6, ptr noundef %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.nla_put_failure_crit_edge, label %if.end7

if.end4.nla_put_failure_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end7:                                          ; preds = %if.end4
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @hsr_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end7
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !58

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @hsr_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %6 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %dst_group.i.i.i, align 8
  %call.i.i.i19 = tail call i32 @netlink_broadcast(ptr noundef %5, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %4, i32 noundef 2592) #7
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end4.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %fail

fail:                                             ; preds = %nla_put_failure, %entry.fail_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %fail.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

fail.rcu_read_lock.exit_crit_edge:                ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %fail
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %fail.rcu_read_lock.exit_crit_edge
  %call9 = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef 4) #7
  %dev = getelementptr inbounds %struct.hsr_port, ptr %call9, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.1) #10
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i20, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %rcu_read_lock.exit
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i27 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hsr_netlink_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @hsr_link_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @hsr_genl_family) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %fail_genl_register_family

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hsr_debugfs_create_root() #7
  br label %cleanup

fail_genl_register_family:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_link_unregister(ptr noundef nonnull @hsr_link_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_genl_register_family, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %fail_genl_register_family ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_debugfs_create_root() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_netlink_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @hsr_genl_family) #7
  tail call void @rtnl_link_unregister(ptr noundef nonnull @hsr_link_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_get_node_status(ptr noundef %skb_in, ptr noundef readonly %info) #0 align 64 {
entry:
  %tmp.i168 = alloca i32, align 4
  %tmp.i166 = alloca i16, align 2
  %tmp.i164 = alloca i32, align 4
  %tmp.i162 = alloca i32, align 4
  %tmp.i160 = alloca i16, align 2
  %tmp.i158 = alloca i32, align 4
  %tmp.i156 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %hsr_node_addr_b = alloca [6 x i8], align 1
  %hsr_node_if1_age = alloca i32, align 4
  %hsr_node_if1_seq = alloca i16, align 2
  %hsr_node_if2_age = alloca i32, align 4
  %hsr_node_if2_seq = alloca i16, align 2
  %addr_b_ifindex = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %hsr_node_addr_b) #7
  %0 = call ptr @memset(ptr %hsr_node_addr_b, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hsr_node_if1_age) #7
  %1 = ptrtoint ptr %hsr_node_if1_age to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hsr_node_if1_age, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hsr_node_if1_seq) #7
  %2 = ptrtoint ptr %hsr_node_if1_seq to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %hsr_node_if1_seq, align 2, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hsr_node_if2_age) #7
  %3 = ptrtoint ptr %hsr_node_if2_age to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %hsr_node_if2_age, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hsr_node_if2_seq) #7
  %4 = ptrtoint ptr %hsr_node_if2_seq to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %hsr_node_if2_seq, align 2, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_b_ifindex) #7
  %5 = ptrtoint ptr %addr_b_ifindex to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %addr_b_ifindex, align 4, !annotation !61
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.invalid_crit_edge, label %if.end

entry.invalid_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %invalid

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.invalid_crit_edge, label %if.end3

if.end.invalid_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %invalid

if.end3:                                          ; preds = %if.end
  %arrayidx5 = getelementptr ptr, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end3.invalid_crit_edge, label %if.end8

if.end3.invalid_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %invalid

if.end8:                                          ; preds = %if.end3
  %12 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end8.rcu_read_lock.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end8.rcu_read_lock.exit_crit_edge
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %16 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_net.i, align 4
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %arrayidx10 = getelementptr ptr, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx10, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %call12 = tail call ptr @dev_get_by_index_rcu(ptr noundef %17, i32 noundef %23) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %rcu_read_lock.exit.rcu_unlock_crit_edge, label %if.end15

rcu_read_lock.exit.rcu_unlock_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_unlock

if.end15:                                         ; preds = %rcu_read_lock.exit
  %call16 = tail call zeroext i1 @is_hsr_master(ptr noundef nonnull %call12) #7
  br i1 %call16, label %if.end18, label %if.end15.rcu_unlock_crit_edge

if.end15.rcu_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_unlock

if.end18:                                         ; preds = %if.end15
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool20.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool20.not, label %if.end18.fail_crit_edge, label %if.end22

if.end18.fail_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end22:                                         ; preds = %if.end18
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %portid, align 4
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %info, align 4
  %call23 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @hsr_genl_family, i32 noundef 0, i8 noundef zeroext 4) #7
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.nla_put_failure_crit_edge, label %if.end26

if.end22.nla_put_failure_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end26:                                         ; preds = %if.end22
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 17
  %28 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i, align 4
  %call.i153 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp = icmp slt i32 %call.i153, 0
  br i1 %cmp, label %if.end26.nla_put_failure_crit_edge, label %if.end29

if.end26.nla_put_failure_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end29:                                         ; preds = %if.end26
  %add.ptr.i = getelementptr i8, ptr %call12, i32 2304
  %31 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attrs, align 4
  %arrayidx32 = getelementptr ptr, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx32, align 4
  %add.ptr.i154 = getelementptr i8, ptr %34, i32 4
  %call34 = call i32 @hsr_get_node_data(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i154, ptr noundef nonnull %hsr_node_addr_b, ptr noundef nonnull %addr_b_ifindex, ptr noundef nonnull %hsr_node_if1_age, ptr noundef nonnull %hsr_node_if1_seq, ptr noundef nonnull %hsr_node_if2_age, ptr noundef nonnull %hsr_node_if2_seq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end29.nla_put_failure_crit_edge, label %if.end37

if.end29.nla_put_failure_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end37:                                         ; preds = %if.end29
  %35 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %attrs, align 4
  %arrayidx39 = getelementptr ptr, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx39, align 4
  %add.ptr.i155 = getelementptr i8, ptr %38, i32 4
  %call41 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 6, ptr noundef %add.ptr.i155) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end37.nla_put_failure_crit_edge, label %if.end44

if.end37.nla_put_failure_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end44:                                         ; preds = %if.end37
  %39 = ptrtoint ptr %addr_b_ifindex to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr_b_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp45 = icmp sgt i32 %40, -1
  br i1 %cmp45, label %if.then46, label %if.end44.if.end56_crit_edge

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then46:                                        ; preds = %if.end44
  %call48 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef 6, ptr noundef nonnull %hsr_node_addr_b) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then46.nla_put_failure_crit_edge, label %if.end51

if.then46.nla_put_failure_crit_edge:              ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end51:                                         ; preds = %if.then46
  %41 = ptrtoint ptr %addr_b_ifindex to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr_b_ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i156) #7
  %43 = ptrtoint ptr %tmp.i156 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i156, align 4
  %call.i157 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i156) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i156) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp53 = icmp slt i32 %call.i157, 0
  br i1 %cmp53, label %if.end51.nla_put_failure_crit_edge, label %if.end51.if.end56_crit_edge

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end51.nla_put_failure_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end56:                                         ; preds = %if.end51.if.end56_crit_edge, %if.end44.if.end56_crit_edge
  %44 = ptrtoint ptr %hsr_node_if1_age to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hsr_node_if1_age, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i158) #7
  %46 = ptrtoint ptr %tmp.i158 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i158, align 4
  %call.i159 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i158) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i158) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %cmp58 = icmp slt i32 %call.i159, 0
  br i1 %cmp58, label %if.end56.nla_put_failure_crit_edge, label %if.end60

if.end56.nla_put_failure_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end60:                                         ; preds = %if.end56
  %47 = ptrtoint ptr %hsr_node_if1_seq to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hsr_node_if1_seq, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i160) #7
  %49 = ptrtoint ptr %tmp.i160 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %tmp.i160, align 2
  %call.i161 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i160) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i160) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp62 = icmp slt i32 %call.i161, 0
  br i1 %cmp62, label %if.end60.nla_put_failure_crit_edge, label %if.end64

if.end60.nla_put_failure_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end64:                                         ; preds = %if.end60
  %call65 = call ptr @hsr_port_get_hsr(ptr noundef %add.ptr.i, i32 noundef 1) #7
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.if.end73_crit_edge, label %if.end70

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.end70:                                         ; preds = %if.end64
  %dev = getelementptr inbounds %struct.hsr_port, ptr %call65, i32 0, i32 1
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %ifindex68 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %ifindex68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ifindex68, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i162) #7
  %54 = ptrtoint ptr %tmp.i162 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tmp.i162, align 4
  %call.i163 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i162) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i162) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp71 = icmp slt i32 %call.i163, 0
  br i1 %cmp71, label %if.end70.nla_put_failure_crit_edge, label %if.end70.if.end73_crit_edge

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.end70.nla_put_failure_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end73:                                         ; preds = %if.end70.if.end73_crit_edge, %if.end64.if.end73_crit_edge
  %55 = ptrtoint ptr %hsr_node_if2_age to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hsr_node_if2_age, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i164) #7
  %57 = ptrtoint ptr %tmp.i164 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %tmp.i164, align 4
  %call.i165 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i164) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp75 = icmp slt i32 %call.i165, 0
  br i1 %cmp75, label %if.end73.nla_put_failure_crit_edge, label %if.end77

if.end73.nla_put_failure_crit_edge:               ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end77:                                         ; preds = %if.end73
  %58 = ptrtoint ptr %hsr_node_if2_seq to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hsr_node_if2_seq, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i166) #7
  %60 = ptrtoint ptr %tmp.i166 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %tmp.i166, align 2
  %call.i167 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %tmp.i166) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i166) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %cmp79 = icmp slt i32 %call.i167, 0
  br i1 %cmp79, label %if.end77.nla_put_failure_crit_edge, label %if.end81

if.end77.nla_put_failure_crit_edge:               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end81:                                         ; preds = %if.end77
  %call82 = call ptr @hsr_port_get_hsr(ptr noundef %add.ptr.i, i32 noundef 2) #7
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.end81.if.end91_crit_edge, label %if.end88

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.end88:                                         ; preds = %if.end81
  %dev85 = getelementptr inbounds %struct.hsr_port, ptr %call82, i32 0, i32 1
  %61 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev85, align 4
  %ifindex86 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 17
  %63 = ptrtoint ptr %ifindex86 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ifindex86, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i168) #7
  %65 = ptrtoint ptr %tmp.i168 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %tmp.i168, align 4
  %call.i169 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i168) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i168) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp89 = icmp slt i32 %call.i169, 0
  br i1 %cmp89, label %if.end88.nla_put_failure_crit_edge, label %if.end88.if.end91_crit_edge

if.end88.if.end91_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.end88.nla_put_failure_crit_edge:               ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end91:                                         ; preds = %if.end88.if.end91_crit_edge, %if.end81.if.end91_crit_edge
  call fastcc void @rcu_read_unlock()
  %add.ptr1.i = getelementptr i8, ptr %call23, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %68 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %69 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_net.i, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %71 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %snd_portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %70, i32 0, i32 21
  %73 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i = call i32 @netlink_unicast(ptr noundef %74, ptr noundef nonnull %call.i.i.i, i32 noundef %72, i32 noundef 64) #7
  br label %cleanup

rcu_unlock:                                       ; preds = %if.end15.rcu_unlock_crit_edge, %rcu_read_lock.exit.rcu_unlock_crit_edge
  %call.i171 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i171, label %rcu_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i174

rcu_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %rcu_unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i174:                               ; preds = %rcu_unlock
  %call1.i172 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i172)
  %tobool.not.i173 = icmp eq i32 %call1.i172, 0
  br i1 %tobool.not.i173, label %land.lhs.true.i174.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i176

land.lhs.true.i174.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i176:                              ; preds = %land.lhs.true.i174
  %.b4.i175 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i175, label %land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge, label %if.then.i177

land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i177:                                     ; preds = %land.lhs.true2.i176
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i177, %land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i174.rcu_read_unlock.exit_crit_edge, %rcu_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %75 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i178 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i178 to ptr
  %preempt_count.i.i.i.i179 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i179, align 4
  %sub.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i179, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %invalid

invalid:                                          ; preds = %rcu_read_unlock.exit, %if.end3.invalid_crit_edge, %if.end.invalid_crit_edge, %entry.invalid_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 19
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  tail call void @netlink_ack(ptr noundef %skb_in, ptr noundef %80, i32 noundef -22, ptr noundef null) #7
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end88.nla_put_failure_crit_edge, %if.end77.nla_put_failure_crit_edge, %if.end73.nla_put_failure_crit_edge, %if.end70.nla_put_failure_crit_edge, %if.end60.nla_put_failure_crit_edge, %if.end56.nla_put_failure_crit_edge, %if.end51.nla_put_failure_crit_edge, %if.then46.nla_put_failure_crit_edge, %if.end37.nla_put_failure_crit_edge, %if.end29.nla_put_failure_crit_edge, %if.end26.nla_put_failure_crit_edge, %if.end22.nla_put_failure_crit_edge
  %res.2 = phi i32 [ %call.i153, %if.end26.nla_put_failure_crit_edge ], [ %call34, %if.end29.nla_put_failure_crit_edge ], [ %call41, %if.end37.nla_put_failure_crit_edge ], [ %call48, %if.then46.nla_put_failure_crit_edge ], [ %call.i157, %if.end51.nla_put_failure_crit_edge ], [ %call.i159, %if.end56.nla_put_failure_crit_edge ], [ %call.i161, %if.end60.nla_put_failure_crit_edge ], [ %call.i163, %if.end70.nla_put_failure_crit_edge ], [ %call.i165, %if.end73.nla_put_failure_crit_edge ], [ %call.i167, %if.end77.nla_put_failure_crit_edge ], [ %call.i169, %if.end88.nla_put_failure_crit_edge ], [ -12, %if.end22.nla_put_failure_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %fail

fail:                                             ; preds = %nla_put_failure, %if.end18.fail_crit_edge
  %res.3 = phi i32 [ %res.2, %nla_put_failure ], [ -12, %if.end18.fail_crit_edge ]
  %call.i180 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i180, label %fail.rcu_read_unlock.exit190_crit_edge, label %land.lhs.true.i183

fail.rcu_read_unlock.exit190_crit_edge:           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit190

land.lhs.true.i183:                               ; preds = %fail
  %call1.i181 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i181)
  %tobool.not.i182 = icmp eq i32 %call1.i181, 0
  br i1 %tobool.not.i182, label %land.lhs.true.i183.rcu_read_unlock.exit190_crit_edge, label %land.lhs.true2.i185

land.lhs.true.i183.rcu_read_unlock.exit190_crit_edge: ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit190

land.lhs.true2.i185:                              ; preds = %land.lhs.true.i183
  %.b4.i184 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i184, label %land.lhs.true2.i185.rcu_read_unlock.exit190_crit_edge, label %if.then.i186

land.lhs.true2.i185.rcu_read_unlock.exit190_crit_edge: ; preds = %land.lhs.true2.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit190

if.then.i186:                                     ; preds = %land.lhs.true2.i185
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit190

rcu_read_unlock.exit190:                          ; preds = %if.then.i186, %land.lhs.true2.i185.rcu_read_unlock.exit190_crit_edge, %land.lhs.true.i183.rcu_read_unlock.exit190_crit_edge, %fail.rcu_read_unlock.exit190_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %81 = call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i187 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i187 to ptr
  %preempt_count.i.i.i.i188 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i188, align 4
  %sub.i.i.i189 = add i32 %84, -1
  store volatile i32 %sub.i.i.i189, ptr %preempt_count.i.i.i.i188, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit190, %invalid, %if.end91
  %retval.0 = phi i32 [ %res.3, %rcu_read_unlock.exit190 ], [ 0, %if.end91 ], [ 0, %invalid ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_b_ifindex) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hsr_node_if2_seq) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hsr_node_if2_age) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hsr_node_if1_seq) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hsr_node_if1_age) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hsr_node_addr_b) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_get_node_list(ptr noundef %skb_in, ptr noundef readonly %info) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #7
  %tobool.not = icmp eq ptr %info, null
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  br i1 %tobool.not, label %entry.invalid_crit_edge, label %if.end

entry.invalid_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %invalid

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.invalid_crit_edge, label %if.end3

if.end.invalid_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %invalid

if.end3:                                          ; preds = %if.end
  %5 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %9 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_net.i, align 4
  %11 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs, align 4
  %arrayidx5 = getelementptr ptr, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  %call7 = tail call ptr @dev_get_by_index_rcu(ptr noundef %10, i32 noundef %16) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %rcu_read_lock.exit.rcu_unlock_crit_edge, label %if.end10

rcu_read_lock.exit.rcu_unlock_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_unlock

if.end10:                                         ; preds = %rcu_read_lock.exit
  %call11 = tail call zeroext i1 @is_hsr_master(ptr noundef nonnull %call7) #7
  br i1 %call11, label %restart14.preheader, label %if.end10.rcu_unlock_crit_edge

if.end10.rcu_unlock_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_unlock

restart14.preheader:                              ; preds = %if.end10
  %call.i.i.i138 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool16.not139 = icmp eq ptr %call.i.i.i138, null
  br i1 %tobool16.not139, label %restart14.preheader.fail_crit_edge, label %if.end18.lr.ph

restart14.preheader.fail_crit_edge:               ; preds = %restart14.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end18.lr.ph:                                   ; preds = %restart14.preheader
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 3, i32 12
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 17
  %add.ptr.i = getelementptr i8, ptr %call7, i32 2304
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  br label %if.end18

if.end18:                                         ; preds = %if.then40.if.end18_crit_edge, %if.end18.lr.ph
  %call.i.i.i142 = phi ptr [ %call.i.i.i138, %if.end18.lr.ph ], [ %call.i.i.i, %if.then40.if.end18_crit_edge ]
  %pos.0141 = phi ptr [ null, %if.end18.lr.ph ], [ %pos.2134, %if.then40.if.end18_crit_edge ]
  %restart.0.off0140 = phi i1 [ false, %if.end18.lr.ph ], [ true, %if.then40.if.end18_crit_edge ]
  %17 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %portid, align 4
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %info, align 4
  %call19 = call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i142, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @hsr_genl_family, i32 noundef 0, i8 noundef zeroext 6) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.nla_put_failure_crit_edge, label %if.end22

if.end18.nla_put_failure_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end22:                                         ; preds = %if.end18
  br i1 %restart.0.off0140, label %if.end22.if.end28_crit_edge, label %if.then24

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.end22
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i, align 4
  %call.i88 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i142, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp = icmp slt i32 %call.i88, 0
  br i1 %cmp, label %if.then24.nla_put_failure_crit_edge, label %if.then24.if.end28_crit_edge

if.then24.if.end28_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24.nla_put_failure_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end28:                                         ; preds = %if.then24.if.end28_crit_edge, %if.end22.if.end28_crit_edge
  %tobool30.not = icmp eq ptr %pos.0141, null
  br i1 %tobool30.not, label %if.end33, label %if.end28.while.body.preheader_crit_edge

if.end28.while.body.preheader_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader

if.end33:                                         ; preds = %if.end28
  %call32 = call ptr @hsr_get_next_node(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %addr) #7
  %tobool34.not133 = icmp eq ptr %call32, null
  br i1 %tobool34.not133, label %if.end33.while.end_crit_edge, label %if.end33.while.body.preheader_crit_edge

if.end33.while.body.preheader_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.preheader:                             ; preds = %if.end33.while.body.preheader_crit_edge, %if.end28.while.body.preheader_crit_edge
  %pos.2134.ph = phi ptr [ %pos.0141, %if.end28.while.body.preheader_crit_edge ], [ %call32, %if.end33.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %while.body.preheader
  %pos.2134 = phi ptr [ %call46, %if.end44.while.body_crit_edge ], [ %pos.2134.ph, %while.body.preheader ]
  %call36 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i142, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end44

if.then38:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call36)
  %cmp39 = icmp eq i32 %call36, -90
  br i1 %cmp39, label %if.then40, label %if.then38.nla_put_failure_crit_edge

if.then38.nla_put_failure_crit_edge:              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.then40:                                        ; preds = %if.then38
  %add.ptr1.i = getelementptr i8, ptr %call19, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i142, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %27 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_net.i, align 4
  %29 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %snd_portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %28, i32 0, i32 21
  %31 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i = call i32 @netlink_unicast(ptr noundef %32, ptr noundef nonnull %call.i.i.i142, i32 noundef %30, i32 noundef 64) #7
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool16.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool16.not, label %if.then40.fail_crit_edge, label %if.then40.if.end18_crit_edge

if.then40.if.end18_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then40.fail_crit_edge:                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end44:                                         ; preds = %while.body
  %call46 = call ptr @hsr_get_next_node(ptr noundef %add.ptr.i, ptr noundef nonnull %pos.2134, ptr noundef nonnull %addr) #7
  %tobool34.not = icmp eq ptr %call46, null
  br i1 %tobool34.not, label %if.end44.while.end_crit_edge, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end44.while.end_crit_edge, %if.end33.while.end_crit_edge
  %call.i90 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i90, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i93

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i93:                                ; preds = %while.end
  %call1.i91 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %33 = call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i97 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i98, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i98, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %add.ptr1.i99 = getelementptr i8, ptr %call19, i32 -20
  %tail.i.i.i100 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i142, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i100, align 8
  %sub.ptr.lhs.cast.i.i101 = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i.i102 = ptrtoint ptr %add.ptr1.i99 to i32
  %sub.ptr.sub.i.i103 = sub i32 %sub.ptr.lhs.cast.i.i101, %sub.ptr.rhs.cast.i.i102
  %39 = ptrtoint ptr %add.ptr1.i99 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.ptr.sub.i.i103, ptr %add.ptr1.i99, align 4
  %40 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_net.i, align 4
  %42 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %snd_portid, align 4
  %genl_sock.i105 = getelementptr inbounds %struct.net, ptr %41, i32 0, i32 21
  %44 = ptrtoint ptr %genl_sock.i105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %genl_sock.i105, align 4
  %call.i.i106 = call i32 @netlink_unicast(ptr noundef %45, ptr noundef nonnull %call.i.i.i142, i32 noundef %43, i32 noundef 64) #7
  br label %cleanup

rcu_unlock:                                       ; preds = %if.end10.rcu_unlock_crit_edge, %rcu_read_lock.exit.rcu_unlock_crit_edge
  %call.i107 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i107, label %rcu_unlock.rcu_read_unlock.exit117_crit_edge, label %land.lhs.true.i110

rcu_unlock.rcu_read_unlock.exit117_crit_edge:     ; preds = %rcu_unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit117

land.lhs.true.i110:                               ; preds = %rcu_unlock
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.rcu_read_unlock.exit117_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.rcu_read_unlock.exit117_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit117

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.rcu_read_unlock.exit117_crit_edge, label %if.then.i113

land.lhs.true2.i112.rcu_read_unlock.exit117_crit_edge: ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit117

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit117

rcu_read_unlock.exit117:                          ; preds = %if.then.i113, %land.lhs.true2.i112.rcu_read_unlock.exit117_crit_edge, %land.lhs.true.i110.rcu_read_unlock.exit117_crit_edge, %rcu_unlock.rcu_read_unlock.exit117_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %46 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i114 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i116 = add i32 %49, -1
  store volatile i32 %sub.i.i.i116, ptr %preempt_count.i.i.i.i115, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %invalid

invalid:                                          ; preds = %rcu_read_unlock.exit117, %if.end.invalid_crit_edge, %entry.invalid_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 19
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  tail call void @netlink_ack(ptr noundef %skb_in, ptr noundef %51, i32 noundef -22, ptr noundef null) #7
  br label %cleanup

nla_put_failure:                                  ; preds = %if.then38.nla_put_failure_crit_edge, %if.then24.nla_put_failure_crit_edge, %if.end18.nla_put_failure_crit_edge
  %res.0 = phi i32 [ %call36, %if.then38.nla_put_failure_crit_edge ], [ %call.i88, %if.then24.nla_put_failure_crit_edge ], [ -12, %if.end18.nla_put_failure_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i142, i32 noundef 0) #7
  br label %fail

fail:                                             ; preds = %nla_put_failure, %if.then40.fail_crit_edge, %restart14.preheader.fail_crit_edge
  %res.1 = phi i32 [ %res.0, %nla_put_failure ], [ -12, %restart14.preheader.fail_crit_edge ], [ -12, %if.then40.fail_crit_edge ]
  %call.i118 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i118, label %fail.rcu_read_unlock.exit128_crit_edge, label %land.lhs.true.i121

fail.rcu_read_unlock.exit128_crit_edge:           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit128

land.lhs.true.i121:                               ; preds = %fail
  %call1.i119 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %tobool.not.i120 = icmp eq i32 %call1.i119, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i121.rcu_read_unlock.exit128_crit_edge, label %land.lhs.true2.i123

land.lhs.true.i121.rcu_read_unlock.exit128_crit_edge: ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit128

land.lhs.true2.i123:                              ; preds = %land.lhs.true.i121
  %.b4.i122 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i122, label %land.lhs.true2.i123.rcu_read_unlock.exit128_crit_edge, label %if.then.i124

land.lhs.true2.i123.rcu_read_unlock.exit128_crit_edge: ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit128

if.then.i124:                                     ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit128

rcu_read_unlock.exit128:                          ; preds = %if.then.i124, %land.lhs.true2.i123.rcu_read_unlock.exit128_crit_edge, %land.lhs.true.i121.rcu_read_unlock.exit128_crit_edge, %fail.rcu_read_unlock.exit128_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %52 = call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i125 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i125 to ptr
  %preempt_count.i.i.i.i126 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i126, align 4
  %sub.i.i.i127 = add i32 %55, -1
  store volatile i32 %sub.i.i.i127, ptr %preempt_count.i.i.i.i126, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit128, %invalid, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %res.1, %rcu_read_unlock.exit128 ], [ 0, %rcu_read_unlock.exit ], [ 0, %invalid ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_hsr_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_get_node_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_ack(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsr_get_next_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_dev_setup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_newlink(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr noundef %extack) #0 align 64 {
entry:
  %link = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %link) #7
  %0 = getelementptr inbounds [2 x ptr], ptr %link, i32 0, i32 1
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg) #7
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @hsr_newlink.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.body6, label %if.end14

do.body6:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg.7) #7
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %if.then9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hsr_newlink.__msg.7, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %call16 = tail call ptr @__dev_get_by_index(ptr noundef %src_net, i32 noundef %6) #7
  %7 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %link, align 4
  %tobool19.not = icmp eq ptr %call16, null
  br i1 %tobool19.not, label %do.body21, label %if.end29

do.body21:                                        ; preds = %if.end14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg.8) #7
  %tobool23.not = icmp eq ptr %extack, null
  br i1 %tobool23.not, label %do.body21.cleanup_crit_edge, label %if.then24

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hsr_newlink.__msg.8, ptr %extack, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end14
  %arrayidx30 = getelementptr ptr, ptr %data, i32 2
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %10, null
  br i1 %tobool31.not, label %do.body33, label %if.end41

do.body33:                                        ; preds = %if.end29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg.9) #7
  %tobool35.not = icmp eq ptr %extack, null
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %if.then36

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hsr_newlink.__msg.9, ptr %extack, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %add.ptr.i.i173 = getelementptr i8, ptr %10, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i173, align 4
  %call44 = tail call ptr @__dev_get_by_index(ptr noundef %src_net, i32 noundef %13) #7
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call44, ptr %0, align 4
  %tobool47.not = icmp eq ptr %call44, null
  br i1 %tobool47.not, label %do.body49, label %if.end57

do.body49:                                        ; preds = %if.end41
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg.10) #7
  %tobool51.not = icmp eq ptr %extack, null
  br i1 %tobool51.not, label %do.body49.cleanup_crit_edge, label %if.then52

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then52:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hsr_newlink.__msg.10, ptr %extack, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.end41
  %16 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link, align 4
  %cmp = icmp eq ptr %17, %call44
  br i1 %cmp, label %do.body61, label %if.end69

do.body61:                                        ; preds = %if.end57
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg.11) #7
  %tobool63.not = icmp eq ptr %extack, null
  br i1 %tobool63.not, label %do.body61.cleanup_crit_edge, label %if.then64

do.body61.cleanup_crit_edge:                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hsr_newlink.__msg.11, ptr %extack, align 4
  br label %cleanup

if.end69:                                         ; preds = %if.end57
  %arrayidx70 = getelementptr ptr, ptr %data, i32 3
  %19 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %20, null
  br i1 %tobool71.not, label %if.end69.if.end75_crit_edge, label %if.else

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.else:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i174 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i174 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i174, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.end69.if.end75_crit_edge
  %multicast_spec.0 = phi i8 [ %22, %if.else ], [ 0, %if.end69.if.end75_crit_edge ]
  %arrayidx76 = getelementptr ptr, ptr %data, i32 7
  %23 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %24, null
  br i1 %tobool77.not, label %if.end93.thread, label %if.end81

if.end81:                                         ; preds = %if.end75
  %add.ptr.i.i175 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i175 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp82 = icmp ugt i8 %26, 1
  br i1 %cmp82, label %do.body85, label %if.end93

do.body85:                                        ; preds = %if.end81
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg.12) #7
  %tobool87.not = icmp eq ptr %extack, null
  br i1 %tobool87.not, label %do.body85.cleanup_crit_edge, label %if.then88

do.body85.cleanup_crit_edge:                      ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then88:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @hsr_newlink.__msg.12, ptr %extack, align 4
  br label %cleanup

if.end93:                                         ; preds = %if.end81
  %arrayidx94 = getelementptr ptr, ptr %data, i32 6
  %28 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx94, align 4
  %tobool95.not = icmp eq ptr %29, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp128 = icmp eq i8 %26, 1
  br i1 %tobool95.not, label %if.end126, label %if.else97

if.end93.thread:                                  ; preds = %if.end75
  %arrayidx94182 = getelementptr ptr, ptr %data, i32 6
  %30 = ptrtoint ptr %arrayidx94182 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx94182, align 4
  %tobool95.not183 = icmp eq ptr %31, null
  br i1 %tobool95.not183, label %if.end93.thread.if.end126.thread_crit_edge, label %if.end93.thread.if.end110_crit_edge

if.end93.thread.if.end110_crit_edge:              ; preds = %if.end93.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end93.thread.if.end126.thread_crit_edge:       ; preds = %if.end93.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126.thread

if.else97:                                        ; preds = %if.end93
  br i1 %cmp128, label %do.body102, label %if.else97.if.end110_crit_edge

if.else97.if.end110_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

do.body102:                                       ; preds = %if.else97
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg.13) #7
  %tobool104.not = icmp eq ptr %extack, null
  br i1 %tobool104.not, label %do.body102.cleanup_crit_edge, label %if.then105

do.body102.cleanup_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then105:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hsr_newlink.__msg.13, ptr %extack, align 4
  br label %cleanup

if.end110:                                        ; preds = %if.else97.if.end110_crit_edge, %if.end93.thread.if.end110_crit_edge
  %33 = phi ptr [ %29, %if.else97.if.end110_crit_edge ], [ %31, %if.end93.thread.if.end110_crit_edge ]
  %add.ptr.i.i176 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i176 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i.i176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp114 = icmp ugt i8 %35, 1
  br i1 %cmp114, label %do.body117, label %if.end110.if.end126.thread_crit_edge

if.end110.if.end126.thread_crit_edge:             ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126.thread

do.body117:                                       ; preds = %if.end110
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_newlink.__msg.14) #7
  %tobool119.not = icmp eq ptr %extack, null
  br i1 %tobool119.not, label %do.body117.cleanup_crit_edge, label %if.then120

do.body117.cleanup_crit_edge:                     ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then120:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hsr_newlink.__msg.14, ptr %extack, align 4
  br label %cleanup

if.end126:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %cmp128, i8 2, i8 0
  br label %if.end126.thread

if.end126.thread:                                 ; preds = %if.end126, %if.end110.if.end126.thread_crit_edge, %if.end93.thread.if.end126.thread_crit_edge
  %37 = phi i8 [ 0, %if.end93.thread.if.end126.thread_crit_edge ], [ %35, %if.end110.if.end126.thread_crit_edge ], [ %spec.select, %if.end126 ]
  %call133 = call i32 @hsr_dev_finalize(ptr noundef %dev, ptr noundef nonnull %link, i8 noundef zeroext %multicast_spec.0, i8 noundef zeroext %37, ptr noundef %extack) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end126.thread, %if.then120, %do.body117.cleanup_crit_edge, %if.then105, %do.body102.cleanup_crit_edge, %if.then88, %do.body85.cleanup_crit_edge, %if.then64, %do.body61.cleanup_crit_edge, %if.then52, %do.body49.cleanup_crit_edge, %if.then36, %do.body33.cleanup_crit_edge, %if.then24, %do.body21.cleanup_crit_edge, %if.then9, %do.body6.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call133, %if.end126.thread ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %do.body6.cleanup_crit_edge ], [ -22, %if.then24 ], [ -22, %do.body21.cleanup_crit_edge ], [ -22, %if.then36 ], [ -22, %do.body33.cleanup_crit_edge ], [ -22, %if.then52 ], [ -22, %do.body49.cleanup_crit_edge ], [ -22, %if.then64 ], [ -22, %do.body61.cleanup_crit_edge ], [ -22, %if.then88 ], [ -22, %do.body85.cleanup_crit_edge ], [ -22, %if.then105 ], [ -22, %do.body102.cleanup_crit_edge ], [ -22, %if.then120 ], [ -22, %do.body117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %link) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hsr_dellink(ptr noundef %dev, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %prune_timer = getelementptr i8, ptr %dev, i32 2384
  %call1 = tail call i32 @del_timer_sync(ptr noundef %prune_timer) #7
  %announce_timer = getelementptr i8, ptr %dev, i32 2336
  %call2 = tail call i32 @del_timer_sync(ptr noundef %announce_timer) #7
  tail call void @hsr_debugfs_term(ptr noundef %add.ptr.i) #7
  tail call void @hsr_del_ports(ptr noundef %add.ptr.i) #7
  tail call void @hsr_del_self_node(ptr noundef %add.ptr.i) #7
  %node_db = getelementptr i8, ptr %dev, i32 2320
  tail call void @hsr_del_nodes(ptr noundef %node_db) #7
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_fill_info(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %tmp.i46 = alloca i8, align 1
  %tmp.i44 = alloca i16, align 2
  %tmp.i42 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call ptr @hsr_port_get_hsr(ptr noundef %add.ptr.i, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %dev2 = getelementptr inbounds %struct.hsr_port, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.nla_put_failure_crit_edge

if.then.nla_put_failure_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = call ptr @hsr_port_get_hsr(ptr noundef %add.ptr.i, i32 noundef 2) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end16_crit_edge, label %if.then9

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  %dev10 = getelementptr inbounds %struct.hsr_port, ptr %call7, i32 0, i32 1
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev10, align 4
  %ifindex11 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %ifindex11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i42) #7
  %9 = ptrtoint ptr %tmp.i42 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i42, align 4
  %call.i43 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i42) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool13.not = icmp eq i32 %call.i43, 0
  br i1 %tobool13.not, label %if.then9.if.end16_crit_edge, label %if.then9.nla_put_failure_crit_edge

if.then9.nla_put_failure_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %sup_multicast_addr = getelementptr i8, ptr %dev, i32 2538
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 6, ptr noundef %sup_multicast_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.nla_put_failure_crit_edge

if.end16.nla_put_failure_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end16
  %sequence_nr = getelementptr i8, ptr %dev, i32 2436
  %10 = ptrtoint ptr %sequence_nr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sequence_nr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i44) #7
  %12 = ptrtoint ptr %tmp.i44 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %tmp.i44, align 2
  %call.i45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i44) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool20.not = icmp eq i32 %call.i45, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end22:                                         ; preds = %lor.lhs.false
  %prot_version = getelementptr i8, ptr %dev, i32 2440
  %13 = ptrtoint ptr %prot_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prot_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp eq i32 %14, 2
  %spec.select = zext i1 %cmp to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i46) #7
  %15 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select, ptr %tmp.i46, align 1
  %call.i47 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i46) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool26.not = icmp eq i32 %call.i47, 0
  br i1 %tobool26.not, label %if.end22.cleanup_crit_edge, label %if.end22.nla_put_failure_crit_edge

if.end22.nla_put_failure_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end22.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %if.end16.nla_put_failure_crit_edge, %if.then9.nla_put_failure_crit_edge, %if.then.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_dev_finalize(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_debugfs_term(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_del_ports(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_del_self_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_del_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/hsr/hsr_netlink.c", i32 222, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/hsr/hsr_netlink.c", i32 259, i32 27}
!4 = !{ptr @__UNIQUE_ID_alias341, !5, !"__UNIQUE_ID_alias341", i1 false, i1 false}
!5 = !{!"../net/hsr/hsr_netlink.c", i32 555, i32 1}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hsr_genl_family, !17, !"hsr_genl_family", i1 false, i1 false}
!17 = !{!"../net/hsr/hsr_netlink.c", i32 513, i32 27}
!18 = !{ptr @hsr_genl_policy, !19, !"hsr_genl_policy", i1 false, i1 false}
!19 = !{!"../net/hsr/hsr_netlink.c", i32 166, i32 32}
!20 = !{ptr @hsr_ops, !21, !"hsr_ops", i1 false, i1 false}
!21 = !{!"../net/hsr/hsr_netlink.c", i32 496, i32 36}
!22 = !{ptr @hsr_mcgrps, !23, !"hsr_mcgrps", i1 false, i1 false}
!23 = !{!"../net/hsr/hsr_netlink.c", i32 178, i32 42}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/hsr/hsr_netlink.c", i32 155, i32 11}
!26 = !{ptr @hsr_link_ops, !27, !"hsr_link_ops", i1 false, i1 false}
!27 = !{!"../net/hsr/hsr_netlink.c", i32 154, i32 29}
!28 = !{ptr @hsr_policy, !29, !"hsr_policy", i1 false, i1 false}
!29 = !{!"../net/hsr/hsr_netlink.c", i32 18, i32 32}
!30 = !{ptr @hsr_newlink.__msg, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/hsr/hsr_netlink.c", i32 41, i32 3}
!32 = !{ptr @hsr_newlink.__msg.7, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../net/hsr/hsr_netlink.c", i32 45, i32 3}
!34 = !{ptr @hsr_newlink.__msg.8, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../net/hsr/hsr_netlink.c", i32 51, i32 3}
!36 = !{ptr @hsr_newlink.__msg.9, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/hsr/hsr_netlink.c", i32 55, i32 3}
!38 = !{ptr @hsr_newlink.__msg.10, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../net/hsr/hsr_netlink.c", i32 61, i32 3}
!40 = !{ptr @hsr_newlink.__msg.11, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../net/hsr/hsr_netlink.c", i32 66, i32 3}
!42 = !{ptr @hsr_newlink.__msg.12, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../net/hsr/hsr_netlink.c", i32 79, i32 3}
!44 = !{ptr @hsr_newlink.__msg.13, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/hsr/hsr_netlink.c", i32 87, i32 4}
!46 = !{ptr @hsr_newlink.__msg.14, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/hsr/hsr_netlink.c", i32 93, i32 4}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2149658609}
!60 = !{i64 2149658875}
!61 = !{!"auto-init"}
