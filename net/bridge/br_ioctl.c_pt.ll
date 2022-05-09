; ModuleID = '/llk/IR_all_yes/net/bridge/br_ioctl.c_pt.bc'
source_filename = "../net/bridge/br_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__bridge_info = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.__port_info = type { i64, i64, i16, i16, i32, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.56, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.56 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.ifreq = type { %union.anon.129, %union.anon.130 }
%union.anon.129 = type { [16 x i8] }
%union.anon.130 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.148, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.148 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.149, %union.anon.150, i16, i16 }
%union.anon.149 = type { %struct.in6_addr }
%union.anon.150 = type { %struct.in6_addr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@get_bridge_ifindices.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/bridge/br_ioctl.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 32, i64 35136, i64 35137, i64 35232, i64 35233, i64 35234, i64 35235]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 695, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 723, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 230, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 214, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 174, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [25 x i8] c"../net/bridge/br_ioctl.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 27, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_dev_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %rq, ptr noundef %data, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca [4 x i32], align 4
  %argp = alloca ptr, align 4
  %b = alloca %struct.__bridge_info, align 8
  %p95 = alloca %struct.__port_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #7
  %0 = getelementptr inbounds [4 x i32], ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %args, i32 0, i32 3
  %3 = call ptr @memset(ptr %args, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argp) #7
  %4 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %argp, align 4, !annotation !28
  %call1 = call fastcc i32 @br_dev_read_uargs(ptr noundef nonnull %args, i32 noundef 4, ptr noundef nonnull %argp, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup183_crit_edge

entry.cleanup183_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.cleanup183_crit_edge [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 5, label %if.end.sw.bb_crit_edge362
    i32 6, label %sw.bb5
    i32 7, label %sw.bb37
    i32 8, label %sw.bb63
    i32 9, label %sw.bb70
    i32 10, label %sw.bb78
    i32 11, label %sw.bb86
    i32 13, label %sw.bb94
    i32 14, label %sw.bb121
    i32 15, label %sw.bb129
    i32 16, label %sw.bb137
    i32 17, label %sw.bb153
    i32 18, label %sw.bb171
  ]

if.end.sw.bb_crit_edge362:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup183_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge362
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.not = icmp eq i32 %6, 4
  %dev.i = getelementptr i8, ptr %dev, i32 2396
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 127
  %12 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nd_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i, align 4
  %call2.i = call zeroext i1 @ns_capable(ptr noundef %15, i32 noundef 12) #7
  br i1 %call2.i, label %if.end.i, label %sw.bb.cleanup183_crit_edge

sw.bb.cleanup183_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end.i:                                         ; preds = %sw.bb
  %call3.i = call ptr @__dev_get_by_index(ptr noundef %13, i32 noundef %9) #7
  %cmp.i = icmp eq ptr %call3.i, null
  br i1 %cmp.i, label %if.end.i.cleanup183_crit_edge, label %if.end5.i

if.end.i.cleanup183_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end5.i:                                        ; preds = %if.end.i
  br i1 %cmp.not, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 @br_add_if(ptr noundef %add.ptr.i, ptr noundef nonnull %call3.i, ptr noundef null) #7
  br label %cleanup183

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = call i32 @br_del_if(ptr noundef %add.ptr.i, ptr noundef nonnull %call3.i) #7
  br label %cleanup183

sw.bb5:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %b) #7
  %16 = call ptr @memset(ptr %b, i32 0, i32 72)
  %17 = call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %sw.bb5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb5.rcu_read_lock.exit_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb5
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb5.rcu_read_lock.exit_crit_edge
  %designated_root6 = getelementptr i8, ptr %dev, i32 2812
  %21 = ptrtoint ptr %designated_root6 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %designated_root6, align 4
  %23 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %b, align 8
  %bridge_id = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 1
  %bridge_id7 = getelementptr i8, ptr %dev, i32 2820
  %24 = ptrtoint ptr %bridge_id7 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %bridge_id7, align 4
  %26 = ptrtoint ptr %bridge_id to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %bridge_id, align 8
  %root_path_cost = getelementptr i8, ptr %dev, i32 2864
  %27 = ptrtoint ptr %root_path_cost to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %root_path_cost, align 4
  %root_path_cost8 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 2
  %29 = ptrtoint ptr %root_path_cost8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %root_path_cost8, align 8
  %max_age = getelementptr i8, ptr %dev, i32 2832
  %30 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_age, align 4
  %call9 = call i32 @jiffies_to_clock_t(i32 noundef %31) #7
  %max_age10 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 3
  %32 = ptrtoint ptr %max_age10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call9, ptr %max_age10, align 4
  %hello_time = getelementptr i8, ptr %dev, i32 2836
  %33 = ptrtoint ptr %hello_time to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hello_time, align 4
  %call11 = call i32 @jiffies_to_clock_t(i32 noundef %34) #7
  %hello_time12 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 4
  %35 = ptrtoint ptr %hello_time12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call11, ptr %hello_time12, align 8
  %forward_delay = getelementptr i8, ptr %dev, i32 2840
  %36 = ptrtoint ptr %forward_delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %forward_delay, align 4
  %forward_delay13 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 5
  %38 = ptrtoint ptr %forward_delay13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %forward_delay13, align 4
  %bridge_max_age = getelementptr i8, ptr %dev, i32 2848
  %39 = ptrtoint ptr %bridge_max_age to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bridge_max_age, align 4
  %bridge_max_age14 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 6
  %41 = ptrtoint ptr %bridge_max_age14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %bridge_max_age14, align 8
  %bridge_hello_time = getelementptr i8, ptr %dev, i32 2852
  %42 = ptrtoint ptr %bridge_hello_time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bridge_hello_time, align 4
  %bridge_hello_time15 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 7
  %44 = ptrtoint ptr %bridge_hello_time15 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bridge_hello_time15, align 4
  %bridge_forward_delay = getelementptr i8, ptr %dev, i32 2856
  %45 = ptrtoint ptr %bridge_forward_delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bridge_forward_delay, align 4
  %call16 = call i32 @jiffies_to_clock_t(i32 noundef %46) #7
  %bridge_forward_delay17 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 8
  %47 = ptrtoint ptr %bridge_forward_delay17 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call16, ptr %bridge_forward_delay17, align 8
  %topology_change = getelementptr i8, ptr %dev, i32 2828
  %48 = ptrtoint ptr %topology_change to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %topology_change, align 4
  %topology_change18 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 9
  %50 = ptrtoint ptr %topology_change18 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %topology_change18, align 4
  %topology_change_detected = getelementptr i8, ptr %dev, i32 2829
  %51 = ptrtoint ptr %topology_change_detected to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %topology_change_detected, align 1
  %topology_change_detected19 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 10
  %53 = ptrtoint ptr %topology_change_detected19 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %topology_change_detected19, align 1
  %root_port = getelementptr i8, ptr %dev, i32 2830
  %54 = ptrtoint ptr %root_port to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %root_port, align 2
  %conv20 = trunc i16 %55 to i8
  %root_port21 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 11
  %56 = ptrtoint ptr %root_port21 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv20, ptr %root_port21, align 2
  %stp_enabled = getelementptr i8, ptr %dev, i32 2876
  %57 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp22 = icmp ne i32 %58, 0
  %conv24 = zext i1 %cmp22 to i8
  %stp_enabled25 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 12
  %59 = ptrtoint ptr %stp_enabled25 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv24, ptr %stp_enabled25, align 1
  %ageing_time = getelementptr i8, ptr %dev, i32 2844
  %60 = ptrtoint ptr %ageing_time to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ageing_time, align 4
  %call26 = call i32 @jiffies_to_clock_t(i32 noundef %61) #7
  %ageing_time27 = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 13
  %62 = ptrtoint ptr %ageing_time27 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call26, ptr %ageing_time27, align 8
  %hello_timer = getelementptr i8, ptr %dev, i32 3948
  %call28 = call i32 @br_timer_value(ptr noundef %hello_timer) #7
  %hello_timer_value = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 15
  %63 = ptrtoint ptr %hello_timer_value to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call28, ptr %hello_timer_value, align 8
  %tcn_timer = getelementptr i8, ptr %dev, i32 3996
  %call29 = call i32 @br_timer_value(ptr noundef %tcn_timer) #7
  %tcn_timer_value = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 16
  %64 = ptrtoint ptr %tcn_timer_value to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call29, ptr %tcn_timer_value, align 4
  %topology_change_timer = getelementptr i8, ptr %dev, i32 4044
  %call30 = call i32 @br_timer_value(ptr noundef %topology_change_timer) #7
  %topology_change_timer_value = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 17
  %65 = ptrtoint ptr %topology_change_timer_value to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call30, ptr %topology_change_timer_value, align 8
  %timer = getelementptr i8, ptr %dev, i32 4136
  %call31 = call i32 @br_timer_value(ptr noundef %timer) #7
  %gc_timer_value = getelementptr inbounds %struct.__bridge_info, ptr %b, i32 0, i32 18
  %66 = ptrtoint ptr %gc_timer_value to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call31, ptr %gc_timer_value, align 4
  %call.i301 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i301, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i304

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i304:                               ; preds = %rcu_read_lock.exit
  %call1.i302 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i302)
  %tobool.not.i303 = icmp eq i32 %call1.i302, 0
  br i1 %tobool.not.i303, label %land.lhs.true.i304.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i306

land.lhs.true.i304.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i304
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i306:                              ; preds = %land.lhs.true.i304
  %.b4.i305 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i305, label %land.lhs.true2.i306.rcu_read_unlock.exit_crit_edge, label %if.then.i307

land.lhs.true2.i306.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i306
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i307:                                     ; preds = %land.lhs.true2.i306
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i307, %land.lhs.true2.i306.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i304.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  %67 = call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i308 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i308 to ptr
  %preempt_count.i.i.i.i309 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i309, align 4
  %sub.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i309, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %0, align 4
  %73 = inttoptr i32 %72 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %rcu_read_unlock.exit.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

rcu_read_unlock.exit.copy_to_user.exit.thread_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %rcu_read_unlock.exit
  %74 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %73, i32 72, i32 -1226833920) #10, !srcloc !31
  %asmresult.i.i = extractvalue { i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %b, i32 noundef 72) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %73, ptr noundef nonnull %b, i32 noundef 72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool34.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select357 = select i1 %tobool34.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %rcu_read_unlock.exit.copy_to_user.exit.thread_crit_edge
  %75 = phi i32 [ -14, %rcu_read_unlock.exit.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select357, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %b) #7
  br label %cleanup183

sw.bb37:                                          ; preds = %if.end
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp39 = icmp slt i32 %77, 0
  br i1 %cmp39, label %sw.bb37.cleanup183_crit_edge, label %if.end42

sw.bb37.cleanup183_crit_edge:                     ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end42:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp43 = icmp eq i32 %77, 0
  %78 = call i32 @llvm.smin.i32(i32 %77, i32 1024)
  %79 = select i1 %cmp43, i32 256, i32 %78
  %80 = shl nuw nsw i32 %79, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %80, i32 noundef 3520) #11
  %cmp52 = icmp eq ptr %call8.i.i, null
  br i1 %cmp52, label %if.end42.cleanup183_crit_edge, label %if.end55

if.end42.cleanup183_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end55:                                         ; preds = %if.end42
  %port_list.i = getelementptr i8, ptr %dev, i32 2640
  %81 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn15.i = load ptr, ptr %port_list.i, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %port_list.i
  br i1 %cmp.not16.i, label %if.end55.get_port_ifindices.exit_crit_edge, label %if.end55.for.body.i_crit_edge

if.end55.for.body.i_crit_edge:                    ; preds = %if.end55
  br label %for.body.i

if.end55.get_port_ifindices.exit_crit_edge:       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_port_ifindices.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end55.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn15.i, %if.end55.for.body.i_crit_edge ]
  %port_no.i = getelementptr i8, ptr %.pn17.i, i32 22
  %82 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %port_no.i, align 2
  %conv.i = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv.i)
  %cmp2.i = icmp sgt i32 %79, %conv.i
  br i1 %cmp2.i, label %if.then.i313, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i313:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i312 = getelementptr i8, ptr %.pn17.i, i32 -8
  %84 = ptrtoint ptr %dev.i312 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i312, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 17
  %86 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ifindex.i, align 4
  %arrayidx.i = getelementptr i32, ptr %call8.i.i, i32 %conv.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i313, %for.body.i.for.inc.i_crit_edge
  %89 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc.i.get_port_ifindices.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.get_port_ifindices.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_port_ifindices.exit

get_port_ifindices.exit:                          ; preds = %for.inc.i.get_port_ifindices.exit_crit_edge, %if.end55.get_port_ifindices.exit_crit_edge
  %90 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %argp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp9.i.i = icmp slt i32 %79, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %get_port_ifindices.exit
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit272.thread_crit_edge, label %if.then27.i.i, !prof !32

land.rhs16.i.i.copy_to_user.exit272.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit272.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %copy_to_user.exit272.thread

if.then.i.i.i:                                    ; preds = %get_port_ifindices.exit
  call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %80, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #7
  %call.i.i263 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i263, label %if.then.i.i.i.copy_to_user.exit272_crit_edge, label %if.end.i.i267

if.then.i.i.i.copy_to_user.exit272_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit272

if.end.i.i267:                                    ; preds = %if.then.i.i.i
  %92 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %91, i32 %80, i32 -1226833920) #10, !srcloc !31
  %asmresult.i.i265 = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i265)
  %cmp.i6.i266 = icmp eq i32 %asmresult.i.i265, 0
  br i1 %cmp.i6.i266, label %if.then2.i.i270, label %if.end.i.i267.copy_to_user.exit272_crit_edge

if.end.i.i267.copy_to_user.exit272_crit_edge:     ; preds = %if.end.i.i267
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit272

if.then2.i.i270:                                  ; preds = %if.end.i.i267
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i268 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i.i, i32 noundef %80) #7
  %call.i12.i.i269 = call i32 @arm_copy_to_user(ptr noundef %91, ptr noundef nonnull %call8.i.i, i32 noundef %80) #7
  br label %copy_to_user.exit272

copy_to_user.exit272:                             ; preds = %if.then2.i.i270, %if.end.i.i267.copy_to_user.exit272_crit_edge, %if.then.i.i.i.copy_to_user.exit272_crit_edge
  %n.addr.0.i271 = phi i32 [ %80, %if.then.i.i.i.copy_to_user.exit272_crit_edge ], [ %call.i12.i.i269, %if.then2.i.i270 ], [ %80, %if.end.i.i267.copy_to_user.exit272_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i271)
  %tobool58.not = icmp eq i32 %n.addr.0.i271, 0
  %spec.select = select i1 %tobool58.not, i32 %79, i32 -14
  br label %copy_to_user.exit272.thread

copy_to_user.exit272.thread:                      ; preds = %copy_to_user.exit272, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit272.thread_crit_edge
  %93 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit272.thread_crit_edge ], [ %spec.select, %copy_to_user.exit272 ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup183

sw.bb63:                                          ; preds = %if.end
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %94 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nd_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %user_ns, align 4
  %call65 = call zeroext i1 @ns_capable(ptr noundef %97, i32 noundef 12) #7
  br i1 %call65, label %if.end67, label %sw.bb63.cleanup183_crit_edge

sw.bb63.cleanup183_crit_edge:                     ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end67:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %0, align 4
  %call69 = call i32 @br_set_forward_delay(ptr noundef %add.ptr.i, i32 noundef %99) #7
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end
  %nd_net.i315 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %100 = ptrtoint ptr %nd_net.i315 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nd_net.i315, align 4
  %user_ns72 = getelementptr inbounds %struct.net, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %user_ns72 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %user_ns72, align 4
  %call73 = call zeroext i1 @ns_capable(ptr noundef %103, i32 noundef 12) #7
  br i1 %call73, label %if.end75, label %sw.bb70.cleanup183_crit_edge

sw.bb70.cleanup183_crit_edge:                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end75:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %0, align 4
  %call77 = call i32 @br_set_hello_time(ptr noundef %add.ptr.i, i32 noundef %105) #7
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end
  %nd_net.i316 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %106 = ptrtoint ptr %nd_net.i316 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nd_net.i316, align 4
  %user_ns80 = getelementptr inbounds %struct.net, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %user_ns80 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %user_ns80, align 4
  %call81 = call zeroext i1 @ns_capable(ptr noundef %109, i32 noundef 12) #7
  br i1 %call81, label %if.end83, label %sw.bb78.cleanup183_crit_edge

sw.bb78.cleanup183_crit_edge:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end83:                                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %0, align 4
  %call85 = call i32 @br_set_max_age(ptr noundef %add.ptr.i, i32 noundef %111) #7
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end
  %nd_net.i317 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %112 = ptrtoint ptr %nd_net.i317 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %nd_net.i317, align 4
  %user_ns88 = getelementptr inbounds %struct.net, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %user_ns88 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %user_ns88, align 4
  %call89 = call zeroext i1 @ns_capable(ptr noundef %115, i32 noundef 12) #7
  br i1 %call89, label %if.end91, label %sw.bb86.cleanup183_crit_edge

sw.bb86.cleanup183_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end91:                                         ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %0, align 4
  %call93 = call i32 @br_set_ageing_time(ptr noundef %add.ptr.i, i32 noundef %117) #7
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p95) #7
  %118 = call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i273 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i273 to ptr
  %preempt_count.i.i.i.i274 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %preempt_count.i.i.i.i274 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %preempt_count.i.i.i.i274, align 4
  %add.i.i.i275 = add i32 %121, 1
  store volatile i32 %add.i.i.i275, ptr %preempt_count.i.i.i.i274, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i276 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i276, label %sw.bb94.rcu_read_lock.exit283_crit_edge, label %land.lhs.true.i279

sw.bb94.rcu_read_lock.exit283_crit_edge:          ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit283

land.lhs.true.i279:                               ; preds = %sw.bb94
  %call1.i277 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i277)
  %tobool.not.i278 = icmp eq i32 %call1.i277, 0
  br i1 %tobool.not.i278, label %land.lhs.true.i279.rcu_read_lock.exit283_crit_edge, label %land.lhs.true2.i281

land.lhs.true.i279.rcu_read_lock.exit283_crit_edge: ; preds = %land.lhs.true.i279
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit283

land.lhs.true2.i281:                              ; preds = %land.lhs.true.i279
  %.b4.i280 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i280, label %land.lhs.true2.i281.rcu_read_lock.exit283_crit_edge, label %if.then.i282

land.lhs.true2.i281.rcu_read_lock.exit283_crit_edge: ; preds = %land.lhs.true2.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit283

if.then.i282:                                     ; preds = %land.lhs.true2.i281
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #7
  br label %rcu_read_lock.exit283

rcu_read_lock.exit283:                            ; preds = %if.then.i282, %land.lhs.true2.i281.rcu_read_lock.exit283_crit_edge, %land.lhs.true.i279.rcu_read_lock.exit283_crit_edge, %sw.bb94.rcu_read_lock.exit283_crit_edge
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %1, align 4
  %conv97 = trunc i32 %123 to i16
  %call98 = call ptr @br_get_port(ptr noundef %add.ptr.i, i16 noundef zeroext %conv97) #7
  %cmp99 = icmp eq ptr %call98, null
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %rcu_read_lock.exit283
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rcu_read_unlock()
  br label %cleanup119

if.end102:                                        ; preds = %rcu_read_lock.exit283
  %124 = getelementptr inbounds i8, ptr %p95, i32 24
  %125 = call ptr @memset(ptr %124, i32 0, i32 24)
  %designated_root104 = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 14
  %126 = ptrtoint ptr %designated_root104 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 8)
  %127 = load i64, ptr %designated_root104, align 2
  %128 = ptrtoint ptr %p95 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %p95, align 8
  %designated_bridge = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 1
  %designated_bridge105 = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 15
  %129 = ptrtoint ptr %designated_bridge105 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 8)
  %130 = load i64, ptr %designated_bridge105, align 2
  %131 = ptrtoint ptr %designated_bridge to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %designated_bridge, align 8
  %port_id = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 12
  %132 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %port_id, align 2
  %port_id106 = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 2
  %134 = ptrtoint ptr %port_id106 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %port_id106, align 8
  %designated_port = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 13
  %135 = ptrtoint ptr %designated_port to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %designated_port, align 8
  %designated_port107 = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 3
  %137 = ptrtoint ptr %designated_port107 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %designated_port107, align 2
  %path_cost = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 16
  %138 = ptrtoint ptr %path_cost to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %path_cost, align 4
  %path_cost108 = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 4
  %140 = ptrtoint ptr %path_cost108 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %path_cost108, align 4
  %designated_cost = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 17
  %141 = ptrtoint ptr %designated_cost to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %designated_cost, align 8
  %designated_cost109 = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 5
  %143 = ptrtoint ptr %designated_cost109 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %designated_cost109, align 8
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 8
  %144 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %state, align 1
  %state110 = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 6
  %146 = ptrtoint ptr %state110 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %state110, align 4
  %topology_change_ack = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 10
  %147 = ptrtoint ptr %topology_change_ack to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %topology_change_ack, align 4
  %top_change_ack = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 7
  %149 = ptrtoint ptr %top_change_ack to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %top_change_ack, align 1
  %config_pending = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 11
  %150 = ptrtoint ptr %config_pending to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %config_pending, align 1
  %config_pending111 = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 8
  %152 = ptrtoint ptr %config_pending111 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %config_pending111, align 2
  %message_age_timer = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 21
  %call112 = call i32 @br_timer_value(ptr noundef %message_age_timer) #7
  %message_age_timer_value = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 10
  %153 = ptrtoint ptr %message_age_timer_value to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call112, ptr %message_age_timer_value, align 8
  %forward_delay_timer = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 19
  %call113 = call i32 @br_timer_value(ptr noundef %forward_delay_timer) #7
  %forward_delay_timer_value = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 11
  %154 = ptrtoint ptr %forward_delay_timer_value to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call113, ptr %forward_delay_timer_value, align 4
  %hold_timer = getelementptr inbounds %struct.net_bridge_port, ptr %call98, i32 0, i32 20
  %call114 = call i32 @br_timer_value(ptr noundef %hold_timer) #7
  %hold_timer_value = getelementptr inbounds %struct.__port_info, ptr %p95, i32 0, i32 12
  %155 = ptrtoint ptr %hold_timer_value to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call114, ptr %hold_timer_value, align 8
  call fastcc void @rcu_read_unlock()
  %156 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %argp, align 4
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #7
  %call.i.i290 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i290, label %if.end102.cleanup119_crit_edge, label %if.end.i.i294

if.end102.cleanup119_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup119

if.end.i.i294:                                    ; preds = %if.end102
  %158 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %157, i32 48, i32 -1226833920) #10, !srcloc !31
  %asmresult.i.i292 = extractvalue { i32, i32 } %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i292)
  %cmp.i6.i293 = icmp eq i32 %asmresult.i.i292, 0
  br i1 %cmp.i6.i293, label %copy_to_user.exit299, label %if.end.i.i294.cleanup119_crit_edge

if.end.i.i294.cleanup119_crit_edge:               ; preds = %if.end.i.i294
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup119

copy_to_user.exit299:                             ; preds = %if.end.i.i294
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i295 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %p95, i32 noundef 48) #7
  %call.i12.i.i296 = call i32 @arm_copy_to_user(ptr noundef %157, ptr noundef nonnull %p95, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i296)
  %tobool116.not = icmp eq i32 %call.i12.i.i296, 0
  %spec.select359 = select i1 %tobool116.not, i32 0, i32 -14
  br label %cleanup119

cleanup119:                                       ; preds = %copy_to_user.exit299, %if.end.i.i294.cleanup119_crit_edge, %if.end102.cleanup119_crit_edge, %if.then101
  %retval.2 = phi i32 [ -22, %if.then101 ], [ -14, %if.end102.cleanup119_crit_edge ], [ -14, %if.end.i.i294.cleanup119_crit_edge ], [ %spec.select359, %copy_to_user.exit299 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p95) #7
  br label %cleanup183

sw.bb121:                                         ; preds = %if.end
  %nd_net.i318 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %159 = ptrtoint ptr %nd_net.i318 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %nd_net.i318, align 4
  %user_ns123 = getelementptr inbounds %struct.net, ptr %160, i32 0, i32 11
  %161 = ptrtoint ptr %user_ns123 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %user_ns123, align 4
  %call124 = call zeroext i1 @ns_capable(ptr noundef %162, i32 noundef 12) #7
  br i1 %call124, label %if.end126, label %sw.bb121.cleanup183_crit_edge

sw.bb121.cleanup183_crit_edge:                    ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end126:                                        ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %0, align 4
  %call128 = call i32 @br_stp_set_enabled(ptr noundef %add.ptr.i, i32 noundef %164, ptr noundef null) #7
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end
  %nd_net.i319 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %165 = ptrtoint ptr %nd_net.i319 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %nd_net.i319, align 4
  %user_ns131 = getelementptr inbounds %struct.net, ptr %166, i32 0, i32 11
  %167 = ptrtoint ptr %user_ns131 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %user_ns131, align 4
  %call132 = call zeroext i1 @ns_capable(ptr noundef %168, i32 noundef 12) #7
  br i1 %call132, label %if.then176.thread, label %sw.bb129.cleanup183_crit_edge

sw.bb129.cleanup183_crit_edge:                    ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.then176.thread:                                ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %0, align 4
  %conv136 = trunc i32 %170 to i16
  call void @br_stp_set_bridge_priority(ptr noundef %add.ptr.i, i16 noundef zeroext %conv136) #7
  br label %if.else179

sw.bb137:                                         ; preds = %if.end
  %nd_net.i320 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %171 = ptrtoint ptr %nd_net.i320 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %nd_net.i320, align 4
  %user_ns139 = getelementptr inbounds %struct.net, ptr %172, i32 0, i32 11
  %173 = ptrtoint ptr %user_ns139 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %user_ns139, align 4
  %call140 = call zeroext i1 @ns_capable(ptr noundef %174, i32 noundef 12) #7
  br i1 %call140, label %if.end142, label %sw.bb137.cleanup183_crit_edge

sw.bb137.cleanup183_crit_edge:                    ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end142:                                        ; preds = %sw.bb137
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #7
  %175 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %0, align 4
  %conv144 = trunc i32 %176 to i16
  %call145 = call ptr @br_get_port(ptr noundef %add.ptr.i, i16 noundef zeroext %conv144) #7
  %cmp146 = icmp eq ptr %call145, null
  br i1 %cmp146, label %if.end142.if.end151_crit_edge, label %if.else

if.end142.if.end151_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.else:                                          ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %1, align 4
  %call150 = call i32 @br_stp_set_port_priority(ptr noundef nonnull %call145, i32 noundef %178) #7
  br label %if.end151

if.end151:                                        ; preds = %if.else, %if.end142.if.end151_crit_edge
  %ret.0 = phi i32 [ %call150, %if.else ], [ -22, %if.end142.if.end151_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #7
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end
  %nd_net.i321 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %179 = ptrtoint ptr %nd_net.i321 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %nd_net.i321, align 4
  %user_ns155 = getelementptr inbounds %struct.net, ptr %180, i32 0, i32 11
  %181 = ptrtoint ptr %user_ns155 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %user_ns155, align 4
  %call156 = call zeroext i1 @ns_capable(ptr noundef %182, i32 noundef 12) #7
  br i1 %call156, label %if.end158, label %sw.bb153.cleanup183_crit_edge

sw.bb153.cleanup183_crit_edge:                    ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end158:                                        ; preds = %sw.bb153
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #7
  %183 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %0, align 4
  %conv161 = trunc i32 %184 to i16
  %call162 = call ptr @br_get_port(ptr noundef %add.ptr.i, i16 noundef zeroext %conv161) #7
  %cmp163 = icmp eq ptr %call162, null
  br i1 %cmp163, label %if.end158.if.end169_crit_edge, label %if.else166

if.end158.if.end169_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

if.else166:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %1, align 4
  %call168 = call i32 @br_stp_set_path_cost(ptr noundef nonnull %call162, i32 noundef %186) #7
  br label %if.end169

if.end169:                                        ; preds = %if.else166, %if.end158.if.end169_crit_edge
  %ret.1 = phi i32 [ %call168, %if.else166 ], [ -22, %if.end158.if.end169_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #7
  br label %sw.epilog

sw.bb171:                                         ; preds = %if.end
  %187 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %argp, align 4
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %1, align 4
  %191 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %2, align 4
  %193 = call i32 @llvm.umin.i32(i32 %190, i32 256) #7
  %mul.i = shl nuw nsw i32 %193, 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 1051840) #11
  %tobool.not.i326 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i326, label %sw.bb171.cleanup183_crit_edge, label %if.end2.i

sw.bb171.cleanup183_crit_edge:                    ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end2.i:                                        ; preds = %sw.bb171
  %call3.i327 = call i32 @br_fdb_fillbuf(ptr noundef %add.ptr.i, ptr noundef nonnull %call9.i.i, i32 noundef %193, i32 noundef %192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i327)
  %cmp4.i = icmp sgt i32 %call3.i327, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end2.i.if.end11.i_crit_edge

if.end2.i.if.end11.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end2.i
  %194 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call3.i327, i32 16) #7
  %195 = extractvalue { i32, i1 } %194, 1
  %196 = extractvalue { i32, i1 } %194, 0
  %retval.0.i.i328 = select i1 %195, i32 -1, i32 %196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i328)
  %cmp9.i.i.i = icmp slt i32 %retval.0.i.i328, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then5.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.end11.i_crit_edge, label %if.then27.i.i.i, !prof !32

land.rhs16.i.i.i.if.end11.i_crit_edge:            ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.end11.i

if.then.i.i.i.i:                                  ; preds = %if.then5.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %retval.0.i.i328, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #7
  %call.i.i.i331 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i331, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i24.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.end.i.i24.i:                                   ; preds = %if.then.i.i.i.i
  %197 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %188, i32 %retval.0.i.i328, i32 -1226833920) #10, !srcloc !31
  %asmresult.i.i.i = extractvalue { i32, i32 } %197, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i24.i.copy_to_user.exit.i_crit_edge

if.end.i.i24.i.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i, i32 noundef %retval.0.i.i328) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %188, ptr noundef nonnull %call9.i.i, i32 noundef %retval.0.i.i328) #7
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i24.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %196, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %196, %if.end.i.i24.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool8.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %call3.i327, i32 -14
  br label %if.end11.i

if.end11.i:                                       ; preds = %copy_to_user.exit.i, %if.then27.i.i.i, %land.rhs16.i.i.i.if.end11.i_crit_edge, %if.end2.i.if.end11.i_crit_edge
  %num.0.i = phi i32 [ %call3.i327, %if.end2.i.if.end11.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.if.end11.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup183

sw.epilog:                                        ; preds = %if.end169, %if.end151, %if.end126, %if.end91, %if.end83, %if.end75, %if.end67
  %p.0 = phi ptr [ %call162, %if.end169 ], [ %call145, %if.end151 ], [ null, %if.end126 ], [ null, %if.end91 ], [ null, %if.end83 ], [ null, %if.end75 ], [ null, %if.end67 ]
  %ret.2 = phi i32 [ %ret.1, %if.end169 ], [ %ret.0, %if.end151 ], [ %call128, %if.end126 ], [ %call93, %if.end91 ], [ %call85, %if.end83 ], [ %call77, %if.end75 ], [ %call69, %if.end67 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool175.not = icmp eq i32 %ret.2, 0
  br i1 %tobool175.not, label %if.then176, label %sw.epilog.cleanup183_crit_edge

sw.epilog.cleanup183_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.then176:                                       ; preds = %sw.epilog
  %tobool177.not = icmp eq ptr %p.0, null
  br i1 %tobool177.not, label %if.then176.if.else179_crit_edge, label %if.then178

if.then176.if.else179_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else179

if.then178:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef nonnull %p.0) #7
  br label %cleanup183

if.else179:                                       ; preds = %if.then176.if.else179_crit_edge, %if.then176.thread
  %dev180 = getelementptr i8, ptr %dev, i32 2396
  %198 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev180, align 4
  call void @netdev_state_change(ptr noundef %199) #7
  br label %cleanup183

cleanup183:                                       ; preds = %if.else179, %if.then178, %sw.epilog.cleanup183_crit_edge, %if.end11.i, %sw.bb171.cleanup183_crit_edge, %sw.bb153.cleanup183_crit_edge, %sw.bb137.cleanup183_crit_edge, %sw.bb129.cleanup183_crit_edge, %sw.bb121.cleanup183_crit_edge, %cleanup119, %sw.bb86.cleanup183_crit_edge, %sw.bb78.cleanup183_crit_edge, %sw.bb70.cleanup183_crit_edge, %sw.bb63.cleanup183_crit_edge, %copy_to_user.exit272.thread, %if.end42.cleanup183_crit_edge, %sw.bb37.cleanup183_crit_edge, %copy_to_user.exit.thread, %if.else.i, %if.then6.i, %if.end.i.cleanup183_crit_edge, %sw.bb.cleanup183_crit_edge, %if.end.cleanup183_crit_edge, %entry.cleanup183_crit_edge
  %retval.3 = phi i32 [ %retval.2, %cleanup119 ], [ %75, %copy_to_user.exit.thread ], [ %call1, %entry.cleanup183_crit_edge ], [ %93, %copy_to_user.exit272.thread ], [ -22, %sw.bb37.cleanup183_crit_edge ], [ -12, %if.end42.cleanup183_crit_edge ], [ -1, %sw.bb63.cleanup183_crit_edge ], [ -1, %sw.bb70.cleanup183_crit_edge ], [ -1, %sw.bb78.cleanup183_crit_edge ], [ -1, %sw.bb86.cleanup183_crit_edge ], [ -1, %sw.bb121.cleanup183_crit_edge ], [ -1, %sw.bb129.cleanup183_crit_edge ], [ -1, %sw.bb137.cleanup183_crit_edge ], [ -1, %sw.bb153.cleanup183_crit_edge ], [ 0, %if.then178 ], [ 0, %if.else179 ], [ %ret.2, %sw.epilog.cleanup183_crit_edge ], [ -1, %sw.bb.cleanup183_crit_edge ], [ -22, %if.end.i.cleanup183_crit_edge ], [ %call7.i, %if.then6.i ], [ %call8.i, %if.else.i ], [ %num.0.i, %if.end11.i ], [ -12, %sw.bb171.cleanup183_crit_edge ], [ -95, %if.end.cleanup183_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argp) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #7
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_dev_read_uargs(ptr noundef %args, i32 noundef %nr_args, ptr nocapture noundef writeonly %argp, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul11 = shl i32 %nr_args, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul11)
  %cmp9.i.i = icmp slt i32 %mul11, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup18_crit_edge, label %if.then27.i.i, !prof !32

land.rhs16.i.i.cleanup18_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %cleanup18

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %args, i32 noundef %mul11, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 %mul11, i32 -1226833920) #10, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !32

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %args, i32 noundef %mul11) #7
  %1 = tail call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !34
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %args, ptr noundef %data, i32 noundef %mul11) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul11, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul11, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end15, label %if.then11.i.i, !prof !32

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %mul11, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %args, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup18

if.end15:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx16 = getelementptr i32, ptr %args, i32 1
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx16, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %argp, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %if.end15, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup18_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_timer_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  %0 = tail call i32 @llvm.read_register.i32(metadata !18) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_forward_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_hello_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_max_age(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_ageing_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_get_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_enabled(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_set_bridge_priority(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_port_priority(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_path_cost(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_ifinfo_notify(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_ioctl_stub(ptr noundef %net, ptr noundef %br, i32 noundef %cmd, ptr nocapture noundef readonly %ifr, ptr noundef %uarg) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca [3 x i32], align 4
  %argp.i = alloca ptr, align 4
  %buf.i = alloca [16 x i8], align 1
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #7
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 35136, label %entry.sw.bb_crit_edge
    i32 35137, label %entry.sw.bb_crit_edge37
    i32 35232, label %entry.sw.bb1_crit_edge
    i32 35233, label %entry.sw.bb1_crit_edge38
    i32 35234, label %entry.sw.bb12_crit_edge
    i32 35235, label %entry.sw.bb12_crit_edge39
  ]

entry.sw.bb12_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

entry.sw.bb1_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #7
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %args.i, align 4, !annotation !28
  %2 = getelementptr inbounds [3 x i32], ptr %args.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !28
  %4 = getelementptr inbounds [3 x i32], ptr %args.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argp.i) #7
  %6 = ptrtoint ptr %argp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %argp.i, align 4, !annotation !28
  %call.i = call fastcc i32 @br_dev_read_uargs(ptr noundef nonnull %args.i, i32 noundef 3, ptr noundef nonnull %argp.i, ptr noundef %uarg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.old_deviceless.exit_crit_edge

sw.bb.old_deviceless.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %old_deviceless.exit

if.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %8, label %sw.epilog.i [
    i32 0, label %if.end.i.old_deviceless.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %if.end.i.sw.bb20.i_crit_edge
    i32 3, label %if.end.i.sw.bb20.i_crit_edge40
  ]

if.end.i.sw.bb20.i_crit_edge40:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

if.end.i.sw.bb20.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

if.end.i.old_deviceless.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %old_deviceless.exit

sw.bb1.i:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %11)
  %cmp.i = icmp ugt i32 %11, 2047
  br i1 %cmp.i, label %sw.bb1.i.old_deviceless.exit_crit_edge, label %if.end7.i.i.i

sw.bb1.i.old_deviceless.exit_crit_edge:           ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %old_deviceless.exit

if.end7.i.i.i:                                    ; preds = %sw.bb1.i
  %12 = shl nuw nsw i32 %11, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #11
  %cmp8.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp8.i, label %if.end7.i.i.i.old_deviceless.exit_crit_edge, label %if.end10.i

if.end7.i.i.i.old_deviceless.exit_crit_edge:      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %old_deviceless.exit

if.end10.i:                                       ; preds = %if.end7.i.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %15 = call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i.i64.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i64.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i65.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i65.i, label %if.end10.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i66.i

if.end10.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i66.i:                            ; preds = %if.end10.i
  %call1.i.i.i22 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i22)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i22, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i66.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i66.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i66.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i67.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i67.i:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i67.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i66.i.rcu_read_lock.exit.i.i_crit_edge, %if.end10.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i23 = call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %tobool.not.i.i = icmp eq i32 %call.i.i23, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i24, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i24:                              ; preds = %rcu_read_lock.exit.i.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i24.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i24.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i24
  %.b31.i.i = load i1, ptr @get_bridge_ifindices.__warned, align 1
  br i1 %.b31.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i68.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then.i68.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_bridge_ifindices.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 27, ptr noundef nonnull @.str.7) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i68.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i24.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %dev_base_head.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 16
  %19 = ptrtoint ptr %dev_base_head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn41.i.i = load volatile ptr, ptr %dev_base_head.i.i, align 4
  %cmp.not42.i.i = icmp ne ptr %.pn41.i.i, %dev_base_head.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10.not43.i.i = icmp sgt i32 %14, 0
  %or.cond44.i.i = and i1 %cmp10.not43.i.i, %cmp.not42.i.i
  br i1 %or.cond44.i.i, label %do.end.i.i.if.end12.i.i_crit_edge, label %do.end.i.i.for.end.i.i_crit_edge

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

do.end.i.i.if.end12.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %for.inc.i.i.if.end12.i.i_crit_edge, %do.end.i.i.if.end12.i.i_crit_edge
  %.pn46.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.if.end12.i.i_crit_edge ], [ %.pn41.i.i, %do.end.i.i.if.end12.i.i_crit_edge ]
  %i.045.i.i = phi i32 [ %i.1.i.i, %for.inc.i.i.if.end12.i.i_crit_edge ], [ 0, %do.end.i.i.if.end12.i.i_crit_edge ]
  %priv_flags.i.i.i = getelementptr i8, ptr %.pn46.i.i, i32 72
  %20 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %21, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end12.i.i.for.inc.i.i_crit_edge, label %if.then14.i.i

if.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ifindex.i.i = getelementptr i8, ptr %.pn46.i.i, i32 84
  %22 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex.i.i, align 4
  %inc.i.i = add nsw i32 %i.045.i.i, 1
  %arrayidx.i.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.045.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %if.end12.i.i.for.inc.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc.i.i, %if.then14.i.i ], [ %i.045.i.i, %if.end12.i.i.for.inc.i.i_crit_edge ]
  %25 = ptrtoint ptr %.pn46.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i.i = load volatile ptr, ptr %.pn46.i.i, align 4
  %cmp.not.i.i = icmp ne ptr %.pn.i.i, %dev_base_head.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i.i, i32 %14)
  %cmp10.not.i.i = icmp slt i32 %i.1.i.i, %14
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp10.not.i.i, i1 false
  br i1 %or.cond.i.i, label %for.inc.i.i.if.end12.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.i.i.if.end12.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %do.end.i.i.for.end.i.i_crit_edge ], [ %i.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %call.i32.i.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i32.i.i, label %for.end.i.i.get_bridge_ifindices.exit.i_crit_edge, label %land.lhs.true.i35.i.i

for.end.i.i.get_bridge_ifindices.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bridge_ifindices.exit.i

land.lhs.true.i35.i.i:                            ; preds = %for.end.i.i
  %call1.i33.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33.i.i)
  %tobool.not.i34.i.i = icmp eq i32 %call1.i33.i.i, 0
  br i1 %tobool.not.i34.i.i, label %land.lhs.true.i35.i.i.get_bridge_ifindices.exit.i_crit_edge, label %land.lhs.true2.i37.i.i

land.lhs.true.i35.i.i.get_bridge_ifindices.exit.i_crit_edge: ; preds = %land.lhs.true.i35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bridge_ifindices.exit.i

land.lhs.true2.i37.i.i:                           ; preds = %land.lhs.true.i35.i.i
  %.b4.i36.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36.i.i, label %land.lhs.true2.i37.i.i.get_bridge_ifindices.exit.i_crit_edge, label %if.then.i38.i.i

land.lhs.true2.i37.i.i.get_bridge_ifindices.exit.i_crit_edge: ; preds = %land.lhs.true2.i37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bridge_ifindices.exit.i

if.then.i38.i.i:                                  ; preds = %land.lhs.true2.i37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #7
  br label %get_bridge_ifindices.exit.i

get_bridge_ifindices.exit.i:                      ; preds = %if.then.i38.i.i, %land.lhs.true2.i37.i.i.get_bridge_ifindices.exit.i_crit_edge, %land.lhs.true.i35.i.i.get_bridge_ifindices.exit.i_crit_edge, %for.end.i.i.get_bridge_ifindices.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  %26 = call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i39.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i39.i.i to ptr
  %preempt_count.i.i.i.i40.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i40.i.i, align 4
  %sub.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i40.i.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0.lcssa.i.i, ptr %4, align 4
  %31 = ptrtoint ptr %argp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %argp.i, align 4
  %33 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.lcssa.i.i, i32 4) #7
  %34 = extractvalue { i32, i1 } %33, 1
  %35 = extractvalue { i32, i1 } %33, 0
  %retval.0.i.i = select i1 %34, i32 -1, i32 %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp9.i.i.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %get_bridge_ifindices.exit.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.cond.end.i_crit_edge, label %if.then27.i.i.i, !prof !32

land.rhs16.i.i.i.cond.end.i_crit_edge:            ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %cond.end.i

if.then.i.i.i.i:                                  ; preds = %get_bridge_ifindices.exit.i
  call void @__check_object_size(ptr noundef nonnull %call8.i.i.i, i32 noundef %retval.0.i.i, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #7
  %call.i.i.i25 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i25, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %32, i32 %retval.0.i.i, i32 -1226833920) #10, !srcloc !31
  %asmresult.i.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i.i.i, i32 noundef %retval.0.i.i) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %32, ptr noundef nonnull %call8.i.i.i, i32 noundef %retval.0.i.i) #7
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %35, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %35, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool17.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool17.not.i, label %cond.false.i, label %copy_to_user.exit.i.cond.end.i_crit_edge

copy_to_user.exit.i.cond.end.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %4, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %copy_to_user.exit.i.cond.end.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %38, %cond.false.i ], [ -14, %copy_to_user.exit.i.cond.end.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.cond.end.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  br label %old_deviceless.exit

sw.bb20.i:                                        ; preds = %if.end.i.sw.bb20.i_crit_edge, %if.end.i.sw.bb20.i_crit_edge40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #7
  %39 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 15
  %user_ns.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %40 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  %41 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %user_ns.i, align 4
  %call21.i = call zeroext i1 @ns_capable(ptr noundef %42, i32 noundef 12) #7
  br i1 %call21.i, label %if.end23.i, label %sw.bb20.i.cleanup38.i_crit_edge

sw.bb20.i.cleanup38.i_crit_edge:                  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38.i

if.end23.i:                                       ; preds = %sw.bb20.i
  %43 = ptrtoint ptr %argp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %argp.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #7
  %call.i.i55.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i55.i, label %if.end23.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end23.i.if.then11.i.i.i_crit_edge:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end23.i
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 16, i32 -1226833920) #10, !srcloc !33
  %asmresult.i.i57.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i57.i)
  %cmp.i6.i58.i = icmp eq i32 %asmresult.i.i57.i, 0
  br i1 %cmp.i6.i58.i, label %if.end.i.i60.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !32

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i60.i:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i59.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf.i, i32 noundef 16) #7
  %46 = call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !34
  %and.i.i.i.i.i = and i32 %48, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf.i, ptr noundef %44, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end28.i, label %if.end.i.i60.i.if.then11.i.i.i_crit_edge, !prof !32

if.end.i.i60.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i60.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end23.i.if.then11.i.i.i_crit_edge
  %res.0.i.i82.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i60.i.if.then11.i.i.i_crit_edge ], [ 16, %if.end23.i.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i82.i
  %add.ptr.i.i.i = getelementptr i8, ptr %buf.i, i32 %sub.i.i.i
  %49 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i82.i)
  br label %cleanup38.i

if.end28.i:                                       ; preds = %if.end.i.i60.i
  %50 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %39, align 1
  %51 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %args.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp31.i = icmp eq i32 %52, 2
  br i1 %cmp31.i, label %if.then32.i, label %if.end35.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %call34.i = call i32 @br_add_bridge(ptr noundef %net, ptr noundef nonnull %buf.i) #7
  br label %cleanup38.i

if.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i = call i32 @br_del_bridge(ptr noundef %net, ptr noundef nonnull %buf.i) #7
  br label %cleanup38.i

cleanup38.i:                                      ; preds = %if.end35.i, %if.then32.i, %if.then11.i.i.i, %sw.bb20.i.cleanup38.i_crit_edge
  %retval.1.i = phi i32 [ %call34.i, %if.then32.i ], [ %call37.i, %if.end35.i ], [ -1, %sw.bb20.i.cleanup38.i_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #7
  br label %old_deviceless.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %old_deviceless.exit

old_deviceless.exit:                              ; preds = %sw.epilog.i, %cleanup38.i, %cond.end.i, %if.end7.i.i.i.old_deviceless.exit_crit_edge, %sw.bb1.i.old_deviceless.exit_crit_edge, %if.end.i.old_deviceless.exit_crit_edge, %sw.bb.old_deviceless.exit_crit_edge
  %retval.2.i = phi i32 [ -95, %sw.epilog.i ], [ %retval.1.i, %cleanup38.i ], [ %call.i, %sw.bb.old_deviceless.exit_crit_edge ], [ 1, %if.end.i.old_deviceless.exit_crit_edge ], [ %cond.i, %cond.end.i ], [ -12, %sw.bb1.i.old_deviceless.exit_crit_edge ], [ -12, %if.end7.i.i.i.old_deviceless.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argp.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  %53 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 15
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %54 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %55 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @ns_capable(ptr noundef %56, i32 noundef 12) #7
  br i1 %call2, label %if.end8.i.i, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %sw.bb1
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uarg, i32 16, i32 -1226833920) #10, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !32

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef 16) #7
  %58 = call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !34
  %and.i.i.i.i = and i32 %60, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %uarg, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !32

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i34 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i34
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %61 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i34)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %53, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 35232, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35232
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call i32 @br_add_bridge(ptr noundef %net, ptr noundef nonnull %buf) #7
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @br_del_bridge(ptr noundef %net, ptr noundef nonnull %buf) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then11.i.i, %sw.bb1.cleanup_crit_edge
  %ret.1 = phi i32 [ -1, %sw.bb1.cleanup_crit_edge ], [ %call8, %if.then6 ], [ %call10, %if.else ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge39
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %63 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ifr_ifru, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35234, i32 %cmd)
  %cmp13.not = icmp eq i32 %cmd, 35234
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 127
  %67 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nd_net.i.i, align 4
  %user_ns.i27 = getelementptr inbounds %struct.net, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %user_ns.i27 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %user_ns.i27, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %70, i32 noundef 12) #7
  br i1 %call2.i, label %if.end.i29, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i29:                                       ; preds = %sw.bb12
  %call3.i = tail call ptr @__dev_get_by_index(ptr noundef %68, i32 noundef %64) #7
  %cmp.i28 = icmp eq ptr %call3.i, null
  br i1 %cmp.i28, label %if.end.i29.sw.epilog_crit_edge, label %if.end5.i31

if.end.i29.sw.epilog_crit_edge:                   ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end5.i31:                                      ; preds = %if.end.i29
  br i1 %cmp13.not, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end5.i31
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @br_add_if(ptr noundef %br, ptr noundef nonnull %call3.i, ptr noundef null) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end5.i31
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call i32 @br_del_if(ptr noundef %br, ptr noundef nonnull %call3.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.i, %if.then6.i, %if.end.i29.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %cleanup, %old_deviceless.exit, %entry.sw.epilog_crit_edge
  %ret.2 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %ret.1, %cleanup ], [ %retval.2.i, %old_deviceless.exit ], [ -1, %sw.bb12.sw.epilog_crit_edge ], [ -22, %if.end.i29.sw.epilog_crit_edge ], [ %call7.i, %if.then6.i ], [ %call8.i, %if.else.i ]
  call void @rtnl_unlock() #7
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_add_bridge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_del_bridge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_add_if(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_del_if(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_fillbuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !12, !14, !16, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/bridge/br_ioctl.c", i32 27, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i64 2149439332}
!30 = !{i64 2149439598}
!31 = !{i64 2152271652, i64 2152271677}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2152270971, i64 2152270996}
!34 = !{i64 4766526}
!35 = !{i64 4766723}
!36 = !{i64 2152251956}
