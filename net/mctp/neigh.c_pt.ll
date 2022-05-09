; ModuleID = '/llk/IR_all_yes/net/mctp/neigh.c_pt.bc'
source_filename = "../net/mctp/neigh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.mctp_neigh = type { ptr, i8, i32, [32 x i8], %struct.list_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@mctp_neigh_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/mctp/neigh.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@mctp_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @mctp_neigh_net_init, ptr null, ptr @mctp_neigh_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mctp_rtm_newneigh.__msg = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lladdr too large?\00", [46 x i8] zeroinitializer }, align 32
@mctp_rtm_newneigh.__msg.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Neighbour EID must be specified\00", [32 x i8] zeroinitializer }, align 32
@mctp_rtm_newneigh.__msg.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Neighbour lladdr must be specified\00", [61 x i8] zeroinitializer }, align 32
@mctp_rtm_newneigh.__msg.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid neighbour EID\00", [42 x i8] zeroinitializer }, align 32
@mctp_rtm_newneigh.__msg.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Wrong lladdr length\00", [44 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@nd_mctp_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [13 x %struct.nla_policy] }>, [32 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [13 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 32, %union.anon.48 zeroinitializer }, [13 x %struct.nla_policy] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mctp_rtm_delneigh.__msg = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"incorrect format\00", [47 x i8] zeroinitializer }, align 32
@mctp_rtm_delneigh.__msg.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Neighbour EID must be specified\00", [32 x i8] zeroinitializer }, align 32
@mctp_rtm_getneigh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@mctp_neigh_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ns->neigh_lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 286, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"mctp_net_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 320, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 695, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 723, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 131, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 136, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 141, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 147, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 165, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"nd_mctp_policy\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 110, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 187, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 192, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 991, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [20 x i8] c"../net/mctp/neigh.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 305, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @mctp_neigh_exit, ptr @.str, ptr @.str.1, ptr @mctp_net_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mctp_rtm_newneigh.__msg, ptr @mctp_rtm_newneigh.__msg.5, ptr @mctp_rtm_newneigh.__msg.6, ptr @mctp_rtm_newneigh.__msg.7, ptr @mctp_rtm_newneigh.__msg.8, ptr @nd_mctp_policy, ptr @mctp_rtm_delneigh.__msg, ptr @mctp_rtm_delneigh.__msg.10, ptr @.str.11, ptr @mctp_neigh_net_init.__key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_rtm_newneigh.__msg to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_rtm_newneigh.__msg.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_rtm_newneigh.__msg.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_rtm_newneigh.__msg.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_rtm_newneigh.__msg.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nd_mctp_policy to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_rtm_delneigh.__msg to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_rtm_delneigh.__msg.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_neigh_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_neigh_remove_dev(ptr noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %neigh_lock = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 52, i32 6
  tail call void @mutex_lock_nested(ptr noundef %neigh_lock, i32 noundef 0) #7
  %neighbours = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 52, i32 7
  %4 = ptrtoint ptr %neighbours to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neighbours, align 4
  %cmp.not31 = icmp eq ptr %5, %neighbours
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in32 = phi ptr [ %.pn34, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn34 = load ptr, ptr %.pn.in32, align 4
  %neigh.0 = getelementptr i8, ptr %.pn.in32, i32 -44
  %7 = ptrtoint ptr %neigh.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %neigh.0, align 4
  %cmp11 = icmp eq ptr %8, %mdev
  br i1 %cmp11, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in32, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rcu = getelementptr i8, ptr %.pn.in32, i32 8
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @__mctp_neigh_free) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del_rcu.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn34, %neighbours
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %neigh_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__mctp_neigh_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @mctp_dev_put(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mctp_neigh_lookup(ptr noundef readonly %mdev, i8 noundef zeroext %eid, ptr noundef writeonly %ret_hwaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @mctp_neigh_lookup.__warned, align 1
  br i1 %.b40, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mctp_neigh_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 286, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %neighbours = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 52, i32 7
  %8 = ptrtoint ptr %neighbours to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn51 = load volatile ptr, ptr %neighbours, align 4
  %cmp.not52 = icmp eq ptr %.pn51, %neighbours
  br i1 %cmp.not52, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn51, %do.end.for.body_crit_edge ]
  %neigh.0 = getelementptr i8, ptr %.pn53, i32 -44
  %9 = ptrtoint ptr %neigh.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %neigh.0, align 4
  %cmp13 = icmp eq ptr %10, %mdev
  br i1 %cmp13, label %land.lhs.true14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %eid15 = getelementptr i8, ptr %.pn53, i32 -40
  %11 = ptrtoint ptr %eid15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %eid15, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %eid)
  %cmp17 = icmp eq i8 %12, %eid
  br i1 %cmp17, label %if.then19, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true14
  %tobool20.not = icmp eq ptr %ret_hwaddr, null
  br i1 %tobool20.not, label %if.then19.for.end_crit_edge, label %if.then21

if.then19.for.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %ha = getelementptr i8, ptr %.pn53, i32 -32
  %13 = call ptr @memcpy(ptr %ret_hwaddr, ptr %ha, i32 32)
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load volatile ptr, ptr %.pn53, align 4
  %cmp.not = icmp eq ptr %.pn, %neighbours
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then21, %if.then19.for.end_crit_edge, %do.end.for.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.then19.for.end_crit_edge ], [ -113, %do.end.for.end_crit_edge ], [ -113, %for.inc.for.end_crit_edge ]
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i41, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i44

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i44:                                ; preds = %for.end
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %15 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i48 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mctp_neigh_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 28, ptr noundef nonnull @mctp_rtm_newneigh, ptr noundef null, i32 noundef 0) #7
  %call1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 29, ptr noundef nonnull @mctp_rtm_delneigh, ptr noundef null, i32 noundef 0) #7
  %call2 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 30, ptr noundef null, ptr noundef nonnull @mctp_rtm_getneigh, i32 noundef 0) #7
  %call3 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @mctp_net_ops) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_rtm_newneigh(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tb) #7
  %5 = call ptr @memset(ptr %tb, i32 255, i32 64)
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #7
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.thread, label %do.body.thread97

do.body.thread:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_newneigh.__msg) #7
  br label %cleanup

do.body.thread97:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_newneigh.__msg) #7
  br label %if.then2

nlmsg_parse.exit:                                 ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %7, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 15, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @nd_mctp_policy, i32 noundef 31, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %do.body, label %if.end3

do.body:                                          ; preds = %nlmsg_parse.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_newneigh.__msg) #7
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %do.body.if.then2_crit_edge, %do.body.thread97
  %retval.0.i.i94100 = phi i32 [ -22, %do.body.thread97 ], [ %call5.i.i, %do.body.if.then2_crit_edge ]
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mctp_rtm_newneigh.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %nlmsg_parse.exit
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %do.body6, label %if.end14

do.body6:                                         ; preds = %if.end3
  call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_newneigh.__msg.5) #7
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %if.then9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mctp_rtm_newneigh.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %arrayidx15 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %do.body18, label %if.end26

do.body18:                                        ; preds = %if.end14
  call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_newneigh.__msg.6) #7
  %tobool20.not = icmp eq ptr %extack, null
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %if.then21

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mctp_rtm_newneigh.__msg.6, ptr %extack, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i, align 1
  %18 = add i8 %17, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %18)
  %19 = icmp ult i8 %18, -9
  br i1 %19, label %if.end39, label %do.body31

do.body31:                                        ; preds = %if.end26
  call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_newneigh.__msg.7) #7
  %tobool33.not = icmp eq ptr %extack, null
  br i1 %tobool33.not, label %do.body31.cleanup_crit_edge, label %if.then34

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mctp_rtm_newneigh.__msg.7, ptr %extack, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end26
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %14, align 2
  %conv.i = zext i16 %22 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %ndm_ifindex = getelementptr i8, ptr %nlh, i32 20
  %23 = ptrtoint ptr %ndm_ifindex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndm_ifindex, align 4
  %call45 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %24) #7
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end39.cleanup_crit_edge, label %if.end48

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %call49 = call ptr @mctp_dev_get_rtnl(ptr noundef nonnull %call45) #7
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %if.end52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %addr_len = getelementptr inbounds %struct.net_device, ptr %call45, i32 0, i32 56
  %25 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv)
  %cmp53.not = icmp eq i32 %sub.i, %conv
  br i1 %cmp53.not, label %if.end64, label %do.body56

do.body56:                                        ; preds = %if.end52
  call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_newneigh.__msg.8) #7
  %tobool58.not = icmp eq ptr %extack, null
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %if.then59

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mctp_rtm_newneigh.__msg.8, ptr %extack, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.end52
  %28 = ptrtoint ptr %call49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call49, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 127
  %30 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nd_net.i.i, align 4
  %neigh_lock.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 52, i32 6
  call void @mutex_lock_nested(ptr noundef %neigh_lock.i, i32 noundef 0) #7
  %call1.i = call i32 @mctp_neigh_lookup(ptr noundef nonnull %call49, i8 noundef zeroext %17, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.end64.mctp_neigh_add.exit_crit_edge, label %if.end.i

if.end64.mctp_neigh_add.exit_crit_edge:           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_neigh_add.exit

if.end.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp2.i = icmp ugt i32 %sub.i, 32
  br i1 %cmp2.i, label %if.end.i.mctp_neigh_add.exit_crit_edge, label %if.end4.i

if.end.i.mctp_neigh_add.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_neigh_add.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end4.i.mctp_neigh_add.exit_crit_edge, label %if.end7.i

if.end4.i.mctp_neigh_add.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_neigh_add.exit

if.end7.i:                                        ; preds = %if.end4.i
  %list.i = getelementptr inbounds %struct.mctp_neigh, ptr %call7.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mctp_neigh, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list.i, ptr %prev.i.i, align 8
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call49, ptr %call7.i.i.i, align 8
  call void @mctp_dev_hold(ptr noundef nonnull %call49) #7
  %eid10.i = getelementptr inbounds %struct.mctp_neigh, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %eid10.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %17, ptr %eid10.i, align 4
  %source11.i = getelementptr inbounds %struct.mctp_neigh, ptr %call7.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %source11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %source11.i, align 8
  %ha.i = getelementptr inbounds %struct.mctp_neigh, ptr %call7.i.i.i, i32 0, i32 3
  %38 = call ptr @memcpy(ptr %ha.i, ptr %add.ptr.i, i32 %sub.i)
  %neighbours.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 52, i32 7
  %39 = ptrtoint ptr %neighbours.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %neighbours.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %neighbours.i, ptr noundef %40) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.mctp_neigh_add.exit_crit_edge

if.end7.i.mctp_neigh_add.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_neigh_add.exit

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %list.i, align 4
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %neighbours.i, ptr %prev.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %43 = ptrtoint ptr %neighbours.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list.i, ptr %neighbours.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list.i, ptr %prev37.i.i.i, align 4
  br label %mctp_neigh_add.exit

mctp_neigh_add.exit:                              ; preds = %if.end.i.i.i, %if.end7.i.mctp_neigh_add.exit_crit_edge, %if.end4.i.mctp_neigh_add.exit_crit_edge, %if.end.i.mctp_neigh_add.exit_crit_edge, %if.end64.mctp_neigh_add.exit_crit_edge
  %rc.0.i = phi i32 [ -17, %if.end64.mctp_neigh_add.exit_crit_edge ], [ -22, %if.end.i.mctp_neigh_add.exit_crit_edge ], [ -12, %if.end4.i.mctp_neigh_add.exit_crit_edge ], [ 0, %if.end7.i.mctp_neigh_add.exit_crit_edge ], [ 0, %if.end.i.i.i ]
  call void @mutex_unlock(ptr noundef %neigh_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %mctp_neigh_add.exit, %if.then59, %do.body56.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then34, %do.body31.cleanup_crit_edge, %if.then21, %do.body18.cleanup_crit_edge, %if.then9, %do.body6.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge, %do.body.thread
  %retval.0 = phi i32 [ %rc.0.i, %mctp_neigh_add.exit ], [ %retval.0.i.i94100, %if.then2 ], [ %call5.i.i, %do.body.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %do.body6.cleanup_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body18.cleanup_crit_edge ], [ -22, %if.then34 ], [ -22, %do.body31.cleanup_crit_edge ], [ -19, %if.end39.cleanup_crit_edge ], [ -19, %if.end48.cleanup_crit_edge ], [ -22, %if.then59 ], [ -22, %do.body56.cleanup_crit_edge ], [ -22, %do.body.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_rtm_delneigh(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tb) #7
  %5 = call ptr @memset(ptr %tb, i32 255, i32 64)
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #7
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.thread, label %do.body.thread46

do.body.thread:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_delneigh.__msg) #7
  br label %cleanup

do.body.thread46:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_delneigh.__msg) #7
  br label %if.then2

nlmsg_parse.exit:                                 ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %7, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 15, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @nd_mctp_policy, i32 noundef 31, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %do.body, label %if.end3

do.body:                                          ; preds = %nlmsg_parse.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_delneigh.__msg) #7
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %do.body.if.then2_crit_edge, %do.body.thread46
  %retval.0.i.i4349 = phi i32 [ -22, %do.body.thread46 ], [ %call5.i.i, %do.body.if.then2_crit_edge ]
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mctp_rtm_delneigh.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %nlmsg_parse.exit
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %do.body6, label %if.end14

do.body6:                                         ; preds = %if.end3
  call void @do_trace_netlink_extack(ptr noundef nonnull @mctp_rtm_delneigh.__msg.10) #7
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %if.then9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mctp_rtm_delneigh.__msg.10, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i, align 1
  %ndm_ifindex = getelementptr i8, ptr %nlh, i32 20
  %15 = ptrtoint ptr %ndm_ifindex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndm_ifindex, align 4
  %call18 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %16) #7
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = call ptr @mctp_dev_get_rtnl(ptr noundef nonnull %call18) #7
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call22, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 127
  %19 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i.i, align 4
  %neigh_lock.i = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 52, i32 6
  call void @mutex_lock_nested(ptr noundef %neigh_lock.i, i32 noundef 0) #7
  %neighbours.i = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 52, i32 7
  %21 = ptrtoint ptr %neighbours.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %neighbours.i, align 4
  %cmp.not6.i = icmp eq ptr %22, %neighbours.i
  br i1 %cmp.not6.i, label %for.end.thread.i, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

for.end.thread.i:                                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %neigh_lock.i) #7
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %.pn.in8.i = phi ptr [ %.pn10.i, %for.inc.i.for.body.i_crit_edge ], [ %22, %if.end25.for.body.i_crit_edge ]
  %dropped.0.off07.i = phi i1 [ %dropped.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end25.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %.pn.in8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn10.i = load ptr, ptr %.pn.in8.i, align 4
  %neigh.0.i = getelementptr i8, ptr %.pn.in8.i, i32 -44
  %24 = ptrtoint ptr %neigh.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %neigh.0.i, align 4
  %cmp11.i = icmp eq ptr %25, %call22
  br i1 %cmp11.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %eid12.i = getelementptr i8, ptr %.pn.in8.i, i32 -40
  %26 = ptrtoint ptr %eid12.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %eid12.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %14)
  %cmp14.i = icmp eq i8 %27, %14
  br i1 %cmp14.i, label %land.lhs.true16.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %source17.i = getelementptr i8, ptr %.pn.in8.i, i32 -36
  %28 = ptrtoint ptr %source17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %source17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp18.i = icmp eq i32 %29, 0
  br i1 %cmp18.i, label %if.then.i, label %land.lhs.true16.i.for.inc.i_crit_edge

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true16.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in8.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_rcu.exit.i_crit_edge

if.then.i.list_del_rcu.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in8.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %.pn.in8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn.in8.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in8.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rcu.i = getelementptr i8, ptr %.pn.in8.i, i32 8
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__mctp_neigh_free) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del_rcu.exit.i, %land.lhs.true16.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %dropped.1.off0.i = phi i1 [ true, %list_del_rcu.exit.i ], [ %dropped.0.off07.i, %land.lhs.true16.i.for.inc.i_crit_edge ], [ %dropped.0.off07.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %dropped.0.off07.i, %for.body.i.for.inc.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %.pn10.i, %neighbours.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %neigh_lock.i) #7
  %spec.select.i = select i1 %dropped.1.off0.i, i32 0, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %for.end.thread.i, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then9, %do.body6.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge, %do.body.thread
  %retval.0 = phi i32 [ %retval.0.i.i4349, %if.then2 ], [ %call5.i.i, %do.body.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %do.body6.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge ], [ -19, %if.end21.cleanup_crit_edge ], [ -2, %for.end.thread.i ], [ %spec.select.i, %for.end.i ], [ -22, %do.body.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_rtm_getneigh(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nlh, align 4
  %ndm_ifindex = getelementptr i8, ptr %7, i32 20
  %8 = ptrtoint ptr %ndm_ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndm_ifindex, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @mctp_rtm_getneigh.__warned, align 1
  br i1 %.b52, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mctp_rtm_getneigh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 258, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %neighbours = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 52, i32 7
  %14 = ptrtoint ptr %neighbours to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn67 = load volatile ptr, ptr %neighbours, align 4
  %cmp.not69 = icmp eq ptr %.pn67, %neighbours
  br i1 %cmp.not69, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17 = icmp eq i32 %9, 0
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cont.for.body_crit_edge, %for.body.lr.ph
  %.pn72 = phi ptr [ %.pn67, %for.body.lr.ph ], [ %.pn, %cont.for.body_crit_edge ]
  %idx.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cont.for.body_crit_edge ]
  %neigh.073 = getelementptr i8, ptr %.pn72, i32 -44
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.070, i32 %16)
  %cmp14 = icmp slt i32 %idx.070, %16
  br i1 %cmp14, label %for.body.cont_crit_edge, label %if.end16

for.body.cont_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cont

if.end16:                                         ; preds = %for.body
  br i1 %cmp17, label %if.end16.if.then20_crit_edge, label %lor.lhs.false

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end16
  %17 = ptrtoint ptr %neigh.073 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %neigh.073, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %22)
  %cmp19 = icmp eq i32 %9, %22
  br i1 %cmp19, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.cont_crit_edge

lor.lhs.false.cont_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cont

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %portid, align 4
  %27 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nlmsg_seq, align 4
  %31 = ptrtoint ptr %neigh.073 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %neigh.073, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.then20.for.end_crit_edge

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

skb_tailroom.exit.i.i:                            ; preds = %if.then20
  %37 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i.i, align 4
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 28
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.for.end_crit_edge, label %nlmsg_put.exit.i, !prof !51

skb_tailroom.exit.i.i.for.end_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %26, i32 noundef %30, i32 noundef 28, i32 noundef 12, i32 noundef 2) #7
  %tobool.not.i53 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i53, label %nlmsg_put.exit.i.for.end_crit_edge, label %if.end.i

nlmsg_put.exit.i.for.end_crit_edge:               ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 45, ptr %add.ptr.i.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 17
  %42 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ifindex.i, align 4
  %ndm_ifindex.i = getelementptr i8, ptr %call3.i.i, i32 20
  %44 = ptrtoint ptr %ndm_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ndm_ifindex.i, align 4
  %ndm_state.i = getelementptr i8, ptr %call3.i.i, i32 24
  %45 = ptrtoint ptr %ndm_state.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %ndm_state.i, align 4
  %source.i = getelementptr i8, ptr %.pn72, i32 -36
  %46 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %source.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i = icmp eq i32 %47, 0
  %spec.store.select.i = select i1 %cmp.i, i16 128, i16 0
  %48 = ptrtoint ptr %ndm_state.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %spec.store.select.i, ptr %ndm_state.i, align 4
  %ndm_flags.i = getelementptr i8, ptr %call3.i.i, i32 26
  %49 = ptrtoint ptr %ndm_flags.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %ndm_flags.i, align 2
  %ndm_type.i = getelementptr i8, ptr %call3.i.i, i32 27
  %50 = ptrtoint ptr %ndm_type.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %ndm_type.i, align 1
  %eid.i = getelementptr i8, ptr %.pn72, i32 -40
  %51 = ptrtoint ptr %eid.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %eid.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %53 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.end11.i:                                       ; preds = %if.end.i
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 56
  %54 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %addr_len.i, align 1
  %conv12.i = zext i8 %55 to i32
  %ha.i = getelementptr i8, ptr %.pn72, i32 -32
  %call13.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %conv12.i, ptr noundef %ha.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.if.then.i.i.i_crit_edge

if.end11.i.if.then.i.i.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.end16.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %58 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %cont

if.then.i.i.i:                                    ; preds = %if.end11.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %60, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !51

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %61 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i2.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i3.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i4.i = sub i32 %sub.ptr.lhs.cast.i.i2.i, %sub.ptr.rhs.cast.i.i3.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i4.i) #7
  br label %for.end

cont:                                             ; preds = %if.end16.i, %lor.lhs.false.cont_crit_edge, %for.body.cont_crit_edge
  %inc = add i32 %idx.070, 1
  %63 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load volatile ptr, ptr %.pn72, align 4
  %cmp.not = icmp eq ptr %.pn, %neighbours
  br i1 %cmp.not, label %cont.for.end_crit_edge, label %cont.for.body_crit_edge

cont.for.body_crit_edge:                          ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cont.for.end_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cont.for.end_crit_edge, %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.for.end_crit_edge, %skb_tailroom.exit.i.i.for.end_crit_edge, %if.then20.for.end_crit_edge, %do.end.for.end_crit_edge
  %idx.066 = phi i32 [ %idx.070, %nlmsg_cancel.exit.i ], [ 0, %do.end.for.end_crit_edge ], [ %inc, %cont.for.end_crit_edge ], [ %idx.070, %nlmsg_put.exit.i.for.end_crit_edge ], [ %idx.070, %skb_tailroom.exit.i.i.for.end_crit_edge ], [ %idx.070, %if.then20.for.end_crit_edge ]
  %call.i54 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i54, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %for.end
  %call1.i55 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %64 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i61 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %idx.066, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_neigh_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @mctp_net_ops) #7
  %call = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 30) #7
  %call1 = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 29) #7
  %call2 = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 28) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctp_dev_get_rtnl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_dev_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_neigh_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %neighbours = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 7
  %0 = ptrtoint ptr %neighbours to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %neighbours, ptr %neighbours, align 4
  %prev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 7, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %neighbours, ptr %prev.i, align 4
  %neigh_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 6
  tail call void @__mutex_init(ptr noundef %neigh_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @mctp_neigh_net_init.__key) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_neigh_net_exit(ptr noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %neighbours = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 52, i32 7
  %0 = ptrtoint ptr %neighbours to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn10 = load ptr, ptr %neighbours, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %neighbours
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %rcu = getelementptr i8, ptr %.pn12, i32 8
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @__mctp_neigh_free) #7
  %1 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %neighbours
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/mctp/neigh.c", i32 286, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mctp_rtm_newneigh.__msg, !12, !"__msg", i1 false, i1 false}
!12 = !{!"../net/mctp/neigh.c", i32 131, i32 3}
!13 = !{ptr @mctp_rtm_newneigh.__msg.5, !14, !"__msg", i1 false, i1 false}
!14 = !{!"../net/mctp/neigh.c", i32 136, i32 3}
!15 = !{ptr @mctp_rtm_newneigh.__msg.6, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../net/mctp/neigh.c", i32 141, i32 3}
!17 = !{ptr @mctp_rtm_newneigh.__msg.7, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../net/mctp/neigh.c", i32 147, i32 3}
!19 = !{ptr @mctp_rtm_newneigh.__msg.8, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../net/mctp/neigh.c", i32 165, i32 3}
!21 = !{ptr @__nlmsg_parse.__msg, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../include/net/netlink.h", i32 729, i32 3}
!23 = !{ptr @nd_mctp_policy, !24, !"nd_mctp_policy", i1 false, i1 false}
!24 = !{!"../net/mctp/neigh.c", i32 110, i32 32}
!25 = !{ptr @mctp_rtm_delneigh.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../net/mctp/neigh.c", i32 187, i32 3}
!27 = !{ptr @mctp_rtm_delneigh.__msg.10, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../net/mctp/neigh.c", i32 192, i32 3}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/mctp/neigh.c", i32 258, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/net/netlink.h", i32 991, i32 3}
!33 = !{ptr @mctp_net_ops, !34, !"mctp_net_ops", i1 false, i1 false}
!34 = !{!"../net/mctp/neigh.c", i32 320, i32 33}
!35 = !{ptr @mctp_neigh_net_init.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/mctp/neigh.c", i32 305, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2149925609}
!49 = !{i64 2149925875}
!50 = !{i64 2151585390}
!51 = !{!"branch_weights", i32 1, i32 2000}
