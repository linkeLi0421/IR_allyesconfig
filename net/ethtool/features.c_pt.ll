; ModuleID = '/llk/IR_all_yes/net/ethtool/features.c_pt.bc'
source_filename = "../net/ethtool/features.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.features_reply_data = type { %struct.ethnl_reply_data, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.ethnl_reply_data = type { ptr }
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
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_features_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_features_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 11, i8 11, i16 1, i32 12, i32 44, i8 0, ptr null, ptr @features_prepare_data, ptr @features_reply_size, ptr @features_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_features_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@netdev_features_strings = external dso_local constant [64 x [32 x i8]], align 1
@ethnl_set_features.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"attempt to change non-ethtool features\00", [57 x i8] zeroinitializer }, align 32
@features_send_reply.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ethtool/features.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"calculated message payload length (%d) not sufficient\0A\00", [41 x i8] zeroinitializer }, align 32
@features_send_reply.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to send reply message\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.2 = private unnamed_addr constant [26 x i8] c"ethnl_features_get_policy\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 23, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [27 x i8] c"ethnl_features_request_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 114, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"ethnl_features_set_policy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 128, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 245, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 203, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.21 = private constant [26 x i8] c"../net/ethtool/features.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 206, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @ethnl_features_get_policy, ptr @ethnl_features_request_ops, ptr @ethnl_features_set_policy, ptr @ethnl_set_features.__msg, ptr @.str, ptr @.str.1, ptr @features_send_reply.__msg], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_features_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_features_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_features_set_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_features.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features_send_reply.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @features_prepare_data(ptr nocapture noundef readnone %req_base, ptr nocapture noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %hw = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 1
  %hw_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hw_features, align 8
  %conv.i = trunc i64 %3 to i32
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %hw, align 4
  %shr.1.i = lshr i64 %3, 32
  %conv.1.i = trunc i64 %shr.1.i to i32
  %arrayidx.1.i = getelementptr %struct.features_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.1.i, ptr %arrayidx.1.i, align 4
  %wanted = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 2
  %wanted_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %wanted_features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wanted_features, align 32
  %conv.i13 = trunc i64 %7 to i32
  %8 = ptrtoint ptr %wanted to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i13, ptr %wanted, align 4
  %shr.1.i14 = lshr i64 %7, 32
  %conv.1.i15 = trunc i64 %shr.1.i14 to i32
  %arrayidx.1.i16 = getelementptr %struct.features_reply_data, ptr %reply_base, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.1.i15, ptr %arrayidx.1.i16, align 4
  %active = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 3
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features, align 16
  %conv.i17 = trunc i64 %11 to i32
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i17, ptr %active, align 4
  %shr.1.i18 = lshr i64 %11, 32
  %conv.1.i19 = trunc i64 %shr.1.i18 to i32
  %arrayidx.1.i20 = getelementptr %struct.features_reply_data, ptr %reply_base, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.1.i19, ptr %arrayidx.1.i20, align 4
  %nochange = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 4
  %14 = ptrtoint ptr %nochange to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 13312, ptr %nochange, align 4
  %arrayidx.1.i21 = getelementptr %struct.features_reply_data, ptr %reply_base, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.1.i21, align 4
  %all = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 5
  %16 = ptrtoint ptr %all to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %all, align 4
  %arrayidx.1.i22 = getelementptr %struct.features_reply_data, ptr %reply_base, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx.1.i22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @features_reply_size(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %hw = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 1
  %all = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 5
  %call = tail call i32 @ethnl_bitset32_size(ptr noundef %hw, ptr noundef %all, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wanted = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 2
  %call5 = tail call i32 @ethnl_bitset32_size(ptr noundef %wanted, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %active = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 3
  %call12 = tail call i32 @ethnl_bitset32_size(ptr noundef %active, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %nochange = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 4
  %call19 = tail call i32 @ethnl_bitset32_size(ptr noundef %nochange, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %add9 = add nuw i32 %call5, %call
  %add16 = add i32 %add9, %call12
  %add23 = add i32 %add16, %call19
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add23, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call12, %if.end8.cleanup_crit_edge ], [ %call19, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @features_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %hw = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 1
  %all = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 5
  %call = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 2, ptr noundef %hw, ptr noundef %all, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wanted = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 2
  %call5 = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 3, ptr noundef %wanted, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %active = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 3
  %call11 = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 4, ptr noundef %active, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %nochange = getelementptr inbounds %struct.features_reply_data, ptr %reply_base, i32 0, i32 4
  %call17 = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 5, ptr noundef %nochange, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_features(ptr nocapture noundef readnone %skb, ptr noundef %info) local_unnamed_addr #1 align 64 {
entry:
  %reply_payload.i = alloca ptr, align 4
  %wanted_diff_mask = alloca [2 x i32], align 4
  %active_diff_mask = alloca [2 x i32], align 4
  %old_active = alloca [2 x i32], align 4
  %old_wanted = alloca [2 x i32], align 4
  %new_active = alloca [2 x i32], align 4
  %new_wanted = alloca [2 x i32], align 4
  %req_wanted = alloca [2 x i32], align 4
  %req_mask = alloca [2 x i32], align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wanted_diff_mask) #7
  %0 = ptrtoint ptr %wanted_diff_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wanted_diff_mask, align 4, !annotation !24
  %1 = getelementptr inbounds [2 x i32], ptr %wanted_diff_mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %active_diff_mask) #7
  %3 = ptrtoint ptr %active_diff_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %active_diff_mask, align 4, !annotation !24
  %4 = getelementptr inbounds [2 x i32], ptr %active_diff_mask, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_active) #7
  %6 = ptrtoint ptr %old_active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %old_active, align 4, !annotation !24
  %7 = getelementptr inbounds [2 x i32], ptr %old_active, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_wanted) #7
  %9 = getelementptr inbounds [2 x i32], ptr %old_wanted, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_active) #7
  %10 = ptrtoint ptr %new_active to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %new_active, align 4, !annotation !24
  %11 = getelementptr inbounds [2 x i32], ptr %new_active, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_wanted) #7
  %13 = ptrtoint ptr %new_wanted to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %new_wanted, align 4, !annotation !24
  %14 = getelementptr inbounds [2 x i32], ptr %new_wanted, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_wanted) #7
  %16 = ptrtoint ptr %req_wanted to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %req_wanted, align 4, !annotation !24
  %17 = getelementptr inbounds [2 x i32], ptr %req_wanted, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_mask) #7
  %19 = ptrtoint ptr %req_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %req_mask, align 4, !annotation !24
  %20 = getelementptr inbounds [2 x i32], ptr %req_mask, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #7
  %22 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %23 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %24, i32 1
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx1, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %29 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extack, align 4
  %call2 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %28, ptr noundef %30, ptr noundef %32, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %33 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req_info, align 4
  call void @rtnl_lock() #7
  %features = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %features, align 16
  %conv.i = trunc i64 %36 to i32
  %37 = ptrtoint ptr %old_active to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i, ptr %old_active, align 4
  %shr.1.i = lshr i64 %36, 32
  %conv.1.i = trunc i64 %shr.1.i to i32
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.1.i, ptr %7, align 4
  %wanted_features = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 25
  %39 = ptrtoint ptr %wanted_features to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %wanted_features, align 32
  %conv.i122 = trunc i64 %40 to i32
  %41 = ptrtoint ptr %old_wanted to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv.i122, ptr %old_wanted, align 4
  %shr.1.i123 = lshr i64 %40, 32
  %conv.1.i124 = trunc i64 %shr.1.i123 to i32
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv.1.i124, ptr %9, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %extack, align 4
  %call11 = call i32 @ethnl_parse_bitset(ptr noundef nonnull %req_wanted, ptr noundef nonnull %req_mask, i32 noundef 64, ptr noundef %44, ptr noundef nonnull @netdev_features_strings, ptr noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end4.out_rtnl_crit_edge, label %if.end14

if.end4.out_rtnl_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rtnl

if.end14:                                         ; preds = %if.end4
  %47 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %req_mask, align 4
  %49 = and i32 %48, 13312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool17.not = icmp eq i32 %49, 0
  br i1 %tobool17.not, label %if.end23, label %do.body

do.body:                                          ; preds = %if.end14
  %50 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_features.__msg) #7
  %tobool20.not = icmp eq ptr %51, null
  br i1 %tobool20.not, label %do.body.out_rtnl_crit_edge, label %if.then21

do.body.out_rtnl_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rtnl

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ethnl_set_features.__msg, ptr %51, align 4
  br label %out_rtnl

if.end23:                                         ; preds = %if.end14
  %call.i = call i32 @__bitmap_and(ptr noundef nonnull %req_wanted, ptr noundef nonnull %req_wanted, ptr noundef nonnull %req_mask, i32 noundef 64) #7
  %call.i129 = call i32 @__bitmap_andnot(ptr noundef nonnull %new_wanted, ptr noundef nonnull %old_wanted, ptr noundef nonnull %req_mask, i32 noundef 64) #7
  call void @__bitmap_or(ptr noundef nonnull %req_wanted, ptr noundef nonnull %new_wanted, ptr noundef nonnull %req_wanted, i32 noundef 64) #7
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %req_wanted, ptr noundef nonnull dereferenceable(8) %old_wanted, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool9.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool9.not.i.not, label %if.end23.if.end48_crit_edge, label %if.then39

if.end23.if.end48_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then39:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %hw_features = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 24
  %53 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %hw_features, align 8
  %neg = xor i64 %54, -1
  %55 = ptrtoint ptr %wanted_features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %wanted_features, align 32
  %and41 = and i64 %56, %neg
  %57 = ptrtoint ptr %req_wanted to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %req_wanted, align 4
  %conv.i130 = zext i32 %58 to i64
  %59 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %17, align 4
  %conv.1.i132 = zext i32 %60 to i64
  %shl.1.i133 = shl nuw i64 %conv.1.i132, 32
  %or.1.i134 = or i64 %shl.1.i133, %conv.i130
  %and45 = and i64 %or.1.i134, %54
  %or = or i64 %and45, %and41
  store i64 %or, ptr %wanted_features, align 32
  %call47 = call i32 @__netdev_update_features(ptr noundef %34) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then39, %if.end23.if.end48_crit_edge
  %61 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %features, align 16
  %conv.i135 = trunc i64 %62 to i32
  %63 = ptrtoint ptr %new_active to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv.i135, ptr %new_active, align 4
  %shr.1.i136 = lshr i64 %62, 32
  %conv.1.i137 = trunc i64 %shr.1.i136 to i32
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv.1.i137, ptr %11, align 4
  %bcmp.i139 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %old_active, ptr noundef nonnull dereferenceable(8) %new_active, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i139)
  %tobool9.not.i140.not = icmp eq i32 %bcmp.i139, 0
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 2
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and55 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end48.if.end86_crit_edge

if.end48.if.end86_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then57:                                        ; preds = %if.end48
  %and59 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60 = icmp ne i32 %and59, 0
  call void @__bitmap_xor(ptr noundef nonnull %wanted_diff_mask, ptr noundef nonnull %req_wanted, ptr noundef nonnull %new_active, i32 noundef 64) #7
  call void @__bitmap_xor(ptr noundef nonnull %active_diff_mask, ptr noundef nonnull %old_active, ptr noundef nonnull %new_active, i32 noundef 64) #7
  %call.i142 = call i32 @__bitmap_and(ptr noundef nonnull %wanted_diff_mask, ptr noundef nonnull %wanted_diff_mask, ptr noundef nonnull %req_mask, i32 noundef 64) #7
  %call.i143 = call i32 @__bitmap_and(ptr noundef nonnull %req_wanted, ptr noundef nonnull %req_wanted, ptr noundef nonnull %wanted_diff_mask, i32 noundef 64) #7
  %call.i144 = call i32 @__bitmap_and(ptr noundef nonnull %new_active, ptr noundef nonnull %new_active, ptr noundef nonnull %active_diff_mask, i32 noundef 64) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply_payload.i) #7
  %67 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %reply_payload.i, align 4, !annotation !24
  %call1.i = call i32 @ethnl_bitset_size(ptr noundef nonnull %req_wanted, ptr noundef nonnull %wanted_diff_mask, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then57.do.body58.i_crit_edge, label %if.end.i

if.then57.do.body58.i_crit_edge:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58.i

if.end.i:                                         ; preds = %if.then57
  %call3.i = call i32 @ethnl_bitset_size(ptr noundef nonnull %new_active, ptr noundef nonnull %active_diff_mask, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.do.body58.i_crit_edge, label %if.end6.i

if.end.i.do.body58.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58.i

if.end6.i:                                        ; preds = %if.end.i
  %add.i = add nuw i32 %call1.i, 32
  %add7.i = add i32 %add.i, %call3.i
  %call8.i = call ptr @ethnl_reply_init(i32 noundef %add7.i, ptr noundef %34, i8 noundef zeroext 12, i16 noundef zeroext 1, ptr noundef %info, ptr noundef nonnull %reply_payload.i) #7
  %tobool9.not.i145 = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i145, label %if.end6.i.do.body58.i_crit_edge, label %if.end11.i

if.end6.i.do.body58.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58.i

if.end11.i:                                       ; preds = %if.end6.i
  %call13.i = call i32 @ethnl_put_bitset(ptr noundef nonnull %call8.i, i32 noundef 3, ptr noundef nonnull %req_wanted, ptr noundef nonnull %wanted_diff_mask, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end11.i.nla_put_failure.i_crit_edge, label %if.end16.i

if.end11.i.nla_put_failure.i_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure.i

if.end16.i:                                       ; preds = %if.end11.i
  %call18.i = call i32 @ethnl_put_bitset(ptr noundef nonnull %call8.i, i32 noundef 4, ptr noundef nonnull %new_active, ptr noundef nonnull %active_diff_mask, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %tobool60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end16.i.nla_put_failure.i_crit_edge, label %if.end21.i

if.end16.i.nla_put_failure.i_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure.i

if.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reply_payload.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %69, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call8.i, i32 0, i32 16
  %70 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %72 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %73 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_net.i, align 4
  %snd_portid.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %75 = ptrtoint ptr %snd_portid.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %snd_portid.i.i, align 4
  %genl_sock.i.i.i = getelementptr inbounds %struct.net, ptr %74, i32 0, i32 21
  %77 = ptrtoint ptr %genl_sock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %genl_sock.i.i.i, align 4
  %call.i.i.i.i = call i32 @netlink_unicast(ptr noundef %78, ptr noundef nonnull %call8.i, i32 noundef %76, i32 noundef 64) #7
  %79 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 0) #7
  br label %features_send_reply.exit

nla_put_failure.i:                                ; preds = %if.end16.i.nla_put_failure.i_crit_edge, %if.end11.i.nla_put_failure.i_crit_edge
  %ret.0.i = phi i32 [ %call13.i, %if.end11.i.nla_put_failure.i_crit_edge ], [ %call18.i, %if.end16.i.nla_put_failure.i_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call8.i, i32 noundef 0) #7
  %.b94.i = load i1, ptr @features_send_reply.__already_done, align 1
  br i1 %.b94.i, label %nla_put_failure.i.do.body58.i_crit_edge, label %if.then28.i, !prof !25

nla_put_failure.i.do.body58.i_crit_edge:          ; preds = %nla_put_failure.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58.i

if.then28.i:                                      ; preds = %nla_put_failure.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @features_send_reply.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %add7.i) #7
  br label %do.body58.i

do.body58.i:                                      ; preds = %if.then28.i, %nla_put_failure.i.do.body58.i_crit_edge, %if.end6.i.do.body58.i_crit_edge, %if.end.i.do.body58.i_crit_edge, %if.then57.do.body58.i_crit_edge
  %ret.1.i = phi i32 [ %call1.i, %if.then57.do.body58.i_crit_edge ], [ %call3.i, %if.end.i.do.body58.i_crit_edge ], [ -12, %if.end6.i.do.body58.i_crit_edge ], [ %ret.0.i, %if.then28.i ], [ %ret.0.i, %nla_put_failure.i.do.body58.i_crit_edge ]
  %80 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @features_send_reply.__msg) #7
  %tobool59.not.i = icmp eq ptr %81, null
  br i1 %tobool59.not.i, label %do.body58.i.features_send_reply.exit_crit_edge, label %if.then60.i

do.body58.i.features_send_reply.exit_crit_edge:   ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %features_send_reply.exit

if.then60.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @features_send_reply.__msg, ptr %81, align 4
  br label %features_send_reply.exit

features_send_reply.exit:                         ; preds = %if.then60.i, %do.body58.i.features_send_reply.exit_crit_edge, %if.end21.i
  %retval.0.i = phi i32 [ %79, %if.end21.i ], [ %ret.1.i, %if.then60.i ], [ %ret.1.i, %do.body58.i.features_send_reply.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply_payload.i) #7
  br label %if.end86

if.end86:                                         ; preds = %features_send_reply.exit, %if.end48.if.end86_crit_edge
  %ret.0 = phi i32 [ 0, %if.end48.if.end86_crit_edge ], [ %retval.0.i, %features_send_reply.exit ]
  br i1 %tobool9.not.i140.not, label %if.end86.out_rtnl_crit_edge, label %if.then88

if.end86.out_rtnl_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rtnl

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  call void @netdev_features_change(ptr noundef %34) #7
  br label %out_rtnl

out_rtnl:                                         ; preds = %if.then88, %if.end86.out_rtnl_crit_edge, %if.then21, %do.body.out_rtnl_crit_edge, %if.end4.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end4.out_rtnl_crit_edge ], [ %ret.0, %if.then88 ], [ %ret.0, %if.end86.out_rtnl_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body.out_rtnl_crit_edge ]
  call void @rtnl_unlock() #7
  %83 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i, label %out_rtnl.cleanup_crit_edge, label %do.body1.i.i.i

out_rtnl.cleanup_crit_edge:                       ; preds = %out_rtnl
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_rtnl
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #7
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !26
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 118
  %86 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %94, %88
  %95 = inttoptr i32 %add.i.i.i to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %add13.i.i.i = add i32 %97, -1
  store i32 %add13.i.i.i, ptr %95, align 4
  %98 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !27
  %and.i.i.i.i.i = and i32 %98, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !28

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #7, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_rtnl.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %ret.1, %out_rtnl.cleanup_crit_edge ], [ %ret.1, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_mask) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_wanted) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_wanted) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_active) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_wanted) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_active) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %active_diff_mask) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wanted_diff_mask) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_bitset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netdev_update_features(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_features_change(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethnl_reply_init(i32 noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @ethnl_features_get_policy, !1, !"ethnl_features_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/features.c", i32 23, i32 25}
!2 = !{ptr @ethnl_features_request_ops, !3, !"ethnl_features_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/features.c", i32 114, i32 32}
!4 = !{ptr @ethnl_features_set_policy, !5, !"ethnl_features_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/features.c", i32 128, i32 25}
!6 = !{ptr @ethnl_set_features.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/features.c", i32 245, i32 3}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/ethtool/features.c", i32 203, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @features_send_reply.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/ethtool/features.c", i32 206, i32 2}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 660683, i64 660744}
!27 = !{i64 663415}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 663700}
