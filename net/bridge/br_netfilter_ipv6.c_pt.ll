; ModuleID = '/llk/IR_all_yes/net/bridge/br_netfilter_ipv6.c_pt.bc'
source_filename = "../net/bridge/br_netfilter_ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
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
%struct.sk_buff = type { %union.anon.82, %union.anon.154, %union.anon.155, [48 x i8], %union.anon.156, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.158, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.154 = type { ptr }
%union.anon.155 = type { i64 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { i32, ptr }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.160, i32, i32, i32, i16, i16, %union.anon.162, i32, %union.anon.163, %union.anon.164, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.160 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i32 }
%union.anon.164 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.91 }
%union.anon.91 = type { [4 x i32] }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.186, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.186 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_bridge_info = type { i16, i16, ptr, ptr, %union.anon.192 }
%union.anon.192 = type { %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.193, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.193 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.194, %union.anon.195, i16, i16 }
%union.anon.194 = type { %struct.in6_addr }
%union.anon.195 = type { %struct.in6_addr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nf_ipv6_ops = external dso_local global ptr, align 4
@nf_get_ipv6_ops.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/netfilter_ipv6.h\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"include/net/netfilter/../../../net/bridge/br_private.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 194]
@___asan_gen_ = private constant [34 x i8] c"../net/bridge/br_netfilter_ipv6.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 313, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 271, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 229, i32 15 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 695, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [34 x i8] c"../include/linux/netfilter_ipv6.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 76, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 1011, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 416, i32 9 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_validate_ipv6(ptr nocapture noundef readonly %net, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 80
  %3 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %entry.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.__in6_dev_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 313, ptr noundef nonnull @.str.1) #7
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %entry.__in6_dev_get.exit_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 39
  br i1 %cmp.i, label %__in6_dev_get.exit.if.end_crit_edge, label %if.end.i, !prof !47

__in6_dev_get.exit.if.end_crit_edge:              ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %6)
  %cmp3.i = icmp ult i32 %6, 40
  br i1 %cmp3.i, label %if.end.i.inhdr_error_crit_edge, label %pskb_may_pull.exit, !prof !48

if.end.i.inhdr_error_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inhdr_error

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 40, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.inhdr_error_crit_edge, label %if.endthread-pre-split

pskb_may_pull.exit.inhdr_error_crit_edge:         ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %inhdr_error

if.endthread-pre-split:                           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %len.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %__in6_dev_get.exit.if.end_crit_edge
  %10 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %6, %__in6_dev_get.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %10)
  %cmp = icmp ult i32 %10, 40
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask)
  %cmp8.not = icmp eq i8 %bf.lshr.mask, 96
  br i1 %cmp8.not, label %if.end11, label %if.end5.inhdr_error_crit_edge

if.end5.inhdr_error_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %inhdr_error

if.end11:                                         ; preds = %if.end5
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %payload_len, align 4
  %conv12 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end11.if.then16_crit_edge

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end11
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp14.not = icmp eq i8 %19, 0
  br i1 %cmp14.not, label %lor.lhs.false.if.end132_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false.if.end132_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end11.if.then16_crit_edge
  %add = add nuw nsw i32 %conv12, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp19 = icmp ugt i32 %add, %10
  br i1 %cmp19, label %if.then21, label %if.end63

if.then21:                                        ; preds = %if.then16
  %cmp22.not = icmp eq ptr %4, null
  br i1 %cmp22.not, label %if.then21.do.body40_crit_edge, label %do.body, !prof !48

if.then21.do.body40_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

do.body:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %20 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipv6, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add31 = add i32 %28, %22
  %29 = inttoptr i32 %add31 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %29, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx32 = getelementptr [37 x i64], ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx32, align 8
  %add33 = add i64 %31, 1
  store i64 %add33, ptr %arrayidx32, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %29, i32 0, i32 1, i32 0, i32 1
  %32 = tail call ptr @llvm.returnaddress(i32 0) #7
  %33 = ptrtoint ptr %32 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %34 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body40

do.body40:                                        ; preds = %do.body, %if.then21.do.body40_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %36 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ipv6_statistics, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i240 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i240 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu51, align 4
  %arrayidx52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %44, %38
  %45 = inttoptr i32 %add53 to ptr
  %syncp54 = getelementptr inbounds %struct.ipstats_mib, ptr %45, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp54)
  %arrayidx56 = getelementptr [37 x i64], ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx56, align 8
  %add57 = add i64 %47, 1
  store i64 %add57, ptr %arrayidx56, align 8
  %dep_map.i.i241 = getelementptr inbounds %struct.ipstats_mib, ptr %45, i32 0, i32 1, i32 0, i32 1
  %48 = tail call ptr @llvm.returnaddress(i32 0) #7
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i241, i32 noundef %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %50 = ptrtoint ptr %syncp54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp54, align 4
  %inc.i.i.i242 = add i32 %51, 1
  store i32 %inc.i.i.i242, ptr %syncp54, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.end63:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add)
  %cmp.not.i = icmp ugt i32 %10, %add
  br i1 %cmp.not.i, label %pskb_trim_rcsum.exit, label %if.end63.if.end130_crit_edge, !prof !48

if.end63.if.end130_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

pskb_trim_rcsum.exit:                             ; preds = %if.end63
  %call.i243 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool67.not = icmp eq i32 %call.i243, 0
  br i1 %tobool67.not, label %pskb_trim_rcsum.exit.if.end130_crit_edge, label %if.then68

pskb_trim_rcsum.exit.if.end130_crit_edge:         ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.then68:                                        ; preds = %pskb_trim_rcsum.exit
  %cmp70.not = icmp eq ptr %4, null
  br i1 %cmp70.not, label %if.then68.do.body105_crit_edge, label %do.body79, !prof !48

if.then68.do.body105_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

do.body79:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %ipv689 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %52 = ptrtoint ptr %ipv689 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ipv689, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i246 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i246 to ptr
  %cpu92 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu92, align 4
  %arrayidx93 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx93, align 4
  %add94 = add i32 %60, %54
  %61 = inttoptr i32 %add94 to ptr
  %syncp95 = getelementptr inbounds %struct.ipstats_mib, ptr %61, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp95)
  %arrayidx97 = getelementptr [37 x i64], ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx97, align 8
  %add98 = add i64 %63, 1
  store i64 %add98, ptr %arrayidx97, align 8
  %dep_map.i.i247 = getelementptr inbounds %struct.ipstats_mib, ptr %61, i32 0, i32 1, i32 0, i32 1
  %64 = tail call ptr @llvm.returnaddress(i32 0) #7
  %65 = ptrtoint ptr %64 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i247, i32 noundef %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %66 = ptrtoint ptr %syncp95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %syncp95, align 4
  %inc.i.i.i248 = add i32 %67, 1
  store i32 %inc.i.i.i248, ptr %syncp95, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body105

do.body105:                                       ; preds = %do.body79, %if.then68.do.body105_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics115 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %68 = ptrtoint ptr %ipv6_statistics115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ipv6_statistics115, align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i249 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i249 to ptr
  %cpu118 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %cpu118 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu118, align 4
  %arrayidx119 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx119, align 4
  %add120 = add i32 %76, %70
  %77 = inttoptr i32 %add120 to ptr
  %syncp121 = getelementptr inbounds %struct.ipstats_mib, ptr %77, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp121)
  %arrayidx123 = getelementptr [37 x i64], ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx123, align 8
  %add124 = add i64 %79, 1
  store i64 %add124, ptr %arrayidx123, align 8
  %dep_map.i.i250 = getelementptr inbounds %struct.ipstats_mib, ptr %77, i32 0, i32 1, i32 0, i32 1
  %80 = tail call ptr @llvm.returnaddress(i32 0) #7
  %81 = ptrtoint ptr %80 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i250, i32 noundef %81) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %82 = ptrtoint ptr %syncp121 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %syncp121, align 4
  %inc.i.i.i251 = add i32 %83, 1
  store i32 %inc.i.i.i251, ptr %syncp121, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.end130:                                        ; preds = %pskb_trim_rcsum.exit.if.end130_crit_edge, %if.end63.if.end130_crit_edge
  %84 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i.i, align 8
  %86 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i254 = zext i16 %87 to i32
  %add.ptr.i.i255 = getelementptr i8, ptr %85, i32 %conv.i.i254
  br label %if.end132

if.end132:                                        ; preds = %if.end130, %lor.lhs.false.if.end132_crit_edge
  %hdr.0 = phi ptr [ %add.ptr.i.i255, %if.end130 ], [ %add.ptr.i.i, %lor.lhs.false.if.end132_crit_edge ]
  %nexthdr133 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr.0, i32 0, i32 3
  %88 = ptrtoint ptr %nexthdr133 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %nexthdr133, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp135 = icmp eq i8 %89, 0
  br i1 %cmp135, label %land.lhs.true, label %if.end132.if.end140_crit_edge

if.end132.if.end140_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

land.lhs.true:                                    ; preds = %if.end132
  %call137 = tail call fastcc i32 @br_nf_check_hbh_len(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true.if.end140_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end140_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.end140:                                        ; preds = %land.lhs.true.if.end140_crit_edge, %if.end132.if.end140_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %90 = call ptr @memset(ptr %cb, i32 0, i32 24)
  br label %cleanup

inhdr_error:                                      ; preds = %if.end5.inhdr_error_crit_edge, %pskb_may_pull.exit.inhdr_error_crit_edge, %if.end.i.inhdr_error_crit_edge
  %cmp142.not = icmp eq ptr %4, null
  br i1 %cmp142.not, label %inhdr_error.do.body177_crit_edge, label %do.body151, !prof !48

inhdr_error.do.body177_crit_edge:                 ; preds = %inhdr_error
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body177

do.body151:                                       ; preds = %inhdr_error
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %ipv6161 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %91 = ptrtoint ptr %ipv6161 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ipv6161, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i256 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i256 to ptr
  %cpu164 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %cpu164 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cpu164, align 4
  %arrayidx165 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %97
  %98 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx165, align 4
  %add166 = add i32 %99, %93
  %100 = inttoptr i32 %add166 to ptr
  %syncp167 = getelementptr inbounds %struct.ipstats_mib, ptr %100, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp167)
  %arrayidx169 = getelementptr [37 x i64], ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx169, align 8
  %add170 = add i64 %102, 1
  store i64 %add170, ptr %arrayidx169, align 8
  %dep_map.i.i257 = getelementptr inbounds %struct.ipstats_mib, ptr %100, i32 0, i32 1, i32 0, i32 1
  %103 = tail call ptr @llvm.returnaddress(i32 0) #7
  %104 = ptrtoint ptr %103 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i257, i32 noundef %104) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %105 = ptrtoint ptr %syncp167 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %syncp167, align 4
  %inc.i.i.i258 = add i32 %106, 1
  store i32 %inc.i.i.i258, ptr %syncp167, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body177

do.body177:                                       ; preds = %do.body151, %inhdr_error.do.body177_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics187 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %107 = ptrtoint ptr %ipv6_statistics187 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ipv6_statistics187, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i259 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i259 to ptr
  %cpu190 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %cpu190 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu190, align 4
  %arrayidx191 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx191, align 4
  %add192 = add i32 %115, %109
  %116 = inttoptr i32 %add192 to ptr
  %syncp193 = getelementptr inbounds %struct.ipstats_mib, ptr %116, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp193)
  %arrayidx195 = getelementptr [37 x i64], ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx195, align 8
  %add196 = add i64 %118, 1
  store i64 %add196, ptr %arrayidx195, align 8
  %dep_map.i.i260 = getelementptr inbounds %struct.ipstats_mib, ptr %116, i32 0, i32 1, i32 0, i32 1
  %119 = tail call ptr @llvm.returnaddress(i32 0) #7
  %120 = ptrtoint ptr %119 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i260, i32 noundef %120) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %121 = ptrtoint ptr %syncp193 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %syncp193, align 4
  %inc.i.i.i261 = add i32 %122, 1
  store i32 %inc.i.i.i261, ptr %syncp193, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %do.body177, %if.end140, %land.lhs.true.cleanup_crit_edge, %do.body105, %do.body40, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end140 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %do.body177 ], [ -1, %do.body105 ], [ -1, %do.body40 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %14 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %33 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !47

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #7
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_nf_check_hbh_len(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %add.ptr = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 1
  %arrayidx = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %shl
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast3 = ptrtoint ptr %add.ptr2 to i32
  %sub.ptr.rhs.cast4 = ptrtoint ptr %7 to i32
  %sub.ptr.sub5 = sub i32 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub5, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.ptr.sub5, %sub.i
  br i1 %cmp, label %entry.bad_crit_edge, label %if.end

entry.bad_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

if.end:                                           ; preds = %entry
  %sub = or i32 %add, 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end
  %len.0111 = phi i32 [ %sub, %if.end ], [ %sub53, %cleanup.while.body_crit_edge ]
  %off.0109 = phi i32 [ 42, %if.end ], [ %add52, %cleanup.while.body_crit_edge ]
  %nh.0108 = phi ptr [ %add.ptr.i.i, %if.end ], [ %nh.1, %cleanup.while.body_crit_edge ]
  %add11 = add i32 %off.0109, 1
  %arrayidx12 = getelementptr i8, ptr %nh.0108, i32 %add11
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %add14 = add nuw nsw i32 %conv13, 2
  %arrayidx15 = getelementptr i8, ptr %nh.0108, i32 %off.0109
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %while.body.cleanup_crit_edge
    i8 -62, label %sw.bb17
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb17:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp21.not = icmp eq i8 %13, 4
  %and = and i32 %off.0109, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp23.not = icmp eq i32 %and, 2
  %or.cond = select i1 %cmp21.not, i1 %cmp23.not, i1 false
  br i1 %or.cond, label %if.end26, label %sw.bb17.bad_crit_edge

sw.bb17.bad_crit_edge:                            ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

if.end26:                                         ; preds = %sw.bb17
  %add.ptr28 = getelementptr i8, ptr %arrayidx15, i32 2
  %17 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %18)
  %cmp29 = icmp ult i32 %18, 65536
  br i1 %cmp29, label %if.end26.bad_crit_edge, label %lor.lhs.false31

if.end26.bad_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

lor.lhs.false31:                                  ; preds = %if.end26
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %21 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i94 = zext i16 %22 to i32
  %add.ptr.i.i95 = getelementptr i8, ptr %20, i32 %conv.i.i94
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i95, i32 0, i32 2
  %23 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %payload_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not = icmp eq i16 %24, 0
  br i1 %tobool.not, label %if.end35, label %lor.lhs.false31.bad_crit_edge

lor.lhs.false31.bad_crit_edge:                    ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

if.end35:                                         ; preds = %lor.lhs.false31
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %sub37 = add i32 %26, -40
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub37)
  %cmp38 = icmp ugt i32 %18, %sub37
  br i1 %cmp38, label %if.end35.bad_crit_edge, label %if.end41

if.end35.bad_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

if.end41:                                         ; preds = %if.end35
  %add42 = add i32 %18, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add42)
  %cmp.not.i = icmp ugt i32 %26, %add42
  br i1 %cmp.not.i, label %pskb_trim_rcsum.exit, label %if.end41.if.end46_crit_edge, !prof !48

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

pskb_trim_rcsum.exit:                             ; preds = %if.end41
  %call.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %add42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool44.not = icmp eq i32 %call.i, 0
  br i1 %tobool44.not, label %pskb_trim_rcsum.exit.if.end46_crit_edge, label %pskb_trim_rcsum.exit.bad_crit_edge

pskb_trim_rcsum.exit.bad_crit_edge:               ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

pskb_trim_rcsum.exit.if.end46_crit_edge:          ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46:                                         ; preds = %pskb_trim_rcsum.exit.if.end46_crit_edge, %if.end41.if.end46_crit_edge
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i, align 8
  %29 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %network_header.i.i, align 4
  %conv.i98 = zext i16 %30 to i32
  %add.ptr.i99 = getelementptr i8, ptr %28, i32 %conv.i98
  br label %cleanup

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %len.0111)
  %cmp48 = icmp ugt i32 %add14, %len.0111
  br i1 %cmp48, label %sw.default.bad_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default.bad_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

cleanup:                                          ; preds = %sw.default.cleanup_crit_edge, %if.end46, %sw.bb, %while.body.cleanup_crit_edge
  %nh.1 = phi ptr [ %nh.0108, %sw.default.cleanup_crit_edge ], [ %add.ptr.i99, %if.end46 ], [ %nh.0108, %while.body.cleanup_crit_edge ], [ %nh.0108, %sw.bb ]
  %optlen.0 = phi i32 [ %add14, %sw.default.cleanup_crit_edge ], [ %add14, %if.end46 ], [ %add14, %while.body.cleanup_crit_edge ], [ 1, %sw.bb ]
  %add52 = add i32 %optlen.0, %off.0109
  %sub53 = sub nsw i32 %len.0111, %optlen.0
  %cmp9 = icmp sgt i32 %sub53, 0
  br i1 %cmp9, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub53)
  %cmp54 = icmp eq i32 %sub53, 0
  br i1 %cmp54, label %while.end.cleanup58_crit_edge, label %while.end.bad_crit_edge

while.end.bad_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

while.end.cleanup58_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

bad:                                              ; preds = %while.end.bad_crit_edge, %sw.default.bad_crit_edge, %pskb_trim_rcsum.exit.bad_crit_edge, %if.end35.bad_crit_edge, %lor.lhs.false31.bad_crit_edge, %if.end26.bad_crit_edge, %sw.bb17.bad_crit_edge, %entry.bad_crit_edge
  br label %cleanup58

cleanup58:                                        ; preds = %bad, %while.end.cleanup58_crit_edge
  %retval.0 = phi i32 [ -1, %bad ], [ 0, %while.end.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_nf_pre_routing_ipv6(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call i32 @br_validate_ipv6(ptr noundef %1, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = call ptr @memset(ptr %call.i, i32 0, i32 28)
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %call6 = tail call ptr @setup_pre_routing(ptr noundef %skb, ptr noundef %4) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %5 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active_extensions.i.i.i, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.i.not.i.i, label %if.end9.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i

if.end9.nf_bridge_info_get.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_bridge_info_get.exit

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %8 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %11 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i, %if.end9.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %if.end9.nf_bridge_info_get.exit_crit_edge ]
  %12 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i28 = zext i16 %16 to i32
  %add.ptr.i.i29 = getelementptr i8, ptr %14, i32 %conv.i.i28
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i29, i32 0, i32 6
  %17 = call ptr @memcpy(ptr %12, ptr %daddr, i32 16)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -31011, ptr %protocol, align 8
  %19 = load i16, ptr %network_header.i.i, align 4
  %add = add i16 %19, 40
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %20 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %add, ptr %transport_header, align 2
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %23 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk, align 4
  %25 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %call.i30 = tail call fastcc i32 @nf_hook(ptr noundef %22, ptr noundef %24, ptr noundef %skb, ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30)
  %cmp.i = icmp eq i32 %call.i30, 1
  br i1 %cmp.i, label %if.then.i31, label %nf_bridge_info_get.exit.cleanup_crit_edge

nf_bridge_info_get.exit.cleanup_crit_edge:        ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i31:                                      ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @br_nf_pre_routing_finish_ipv6(ptr noundef %22, ptr noundef %24, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i31, %nf_bridge_info_get.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 2, %nf_bridge_info_get.exit.cleanup_crit_edge ], [ 2, %if.then.i31 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @setup_pre_routing(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_pre_routing_finish_ipv6(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i

entry.nf_bridge_info_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_bridge_info_get.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i, %entry.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %entry.nf_bridge_info_get.exit_crit_edge ]
  %7 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ipv6_ops to i32))
  %10 = load volatile ptr, ptr @nf_ipv6_ops, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %nf_bridge_info_get.exit.nf_get_ipv6_ops.exit_crit_edge

nf_bridge_info_get.exit.nf_get_ipv6_ops.exit_crit_edge: ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_get_ipv6_ops.exit

land.lhs.true.i:                                  ; preds = %nf_bridge_info_get.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.nf_get_ipv6_ops.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.nf_get_ipv6_ops.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_get_ipv6_ops.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @nf_get_ipv6_ops.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.nf_get_ipv6_ops.exit_crit_edge, label %if.then.i

land.lhs.true4.i.nf_get_ipv6_ops.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_get_ipv6_ops.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nf_get_ipv6_ops.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 76, ptr noundef nonnull @.str.1) #7
  br label %nf_get_ipv6_ops.exit

nf_get_ipv6_ops.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.nf_get_ipv6_ops.exit_crit_edge, %land.lhs.true.i.nf_get_ipv6_ops.exit_crit_edge, %nf_bridge_info_get.exit.nf_get_ipv6_ops.exit_crit_edge
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %11 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %frag_max_size, align 4
  %frag_max_size2 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %frag_max_size2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %frag_max_size2, align 2
  %14 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %retval.0.i.i, align 4
  %15 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %nf_get_ipv6_ops.exit.if.end_crit_edge, label %if.then

nf_get_ipv6_ops.exit.if.end_crit_edge:            ; preds = %nf_get_ipv6_ops.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %nf_get_ipv6_ops.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %16 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load3 = load i16, ptr %pkt_type, align 8
  %bf.clear4 = and i16 %bf.load3, 8191
  %bf.set = or i16 %bf.clear4, 24576
  store i16 %bf.set, ptr %pkt_type, align 8
  %17 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load5 = load i16, ptr %retval.0.i.i, align 4
  %bf.clear6 = and i16 %bf.load5, -129
  store i16 %bf.clear6, ptr %retval.0.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nf_get_ipv6_ops.exit.if.end_crit_edge
  %18 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load8 = load i16, ptr %retval.0.i.i, align 4
  %bf.clear9 = and i16 %bf.load8, -65
  store i16 %bf.clear9, ptr %retval.0.i.i, align 4
  %19 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %19, ptr noundef dereferenceable(16) %daddr.i, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i73 = icmp eq i32 %26, 0
  br i1 %tobool.not.i73, label %if.then12.skb_dst_drop.exit_crit_edge, label %if.then.i74

if.then12.skb_dst_drop.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst_drop.exit

if.then.i74:                                      ; preds = %if.then12
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i75, label %if.then.i74.refdst_drop.exit.i_crit_edge

if.then.i74.refdst_drop.exit.i_crit_edge:         ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %refdst_drop.exit.i

if.then.i.i75:                                    ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %26, -2
  %27 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %27) #7
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i75, %if.then.i74.refdst_drop.exit.i_crit_edge
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %24, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.then12.skb_dst_drop.exit_crit_edge
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %10, align 4
  tail call void %30(ptr noundef %skb) #7
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %24, align 8
  %and.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i76 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i76, label %skb_dst_drop.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i78

skb_dst_drop.exit.skb_dst.exit_crit_edge:         ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i78:                                ; preds = %skb_dst_drop.exit
  %call.i77 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool1.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i78.skb_dst.exit_crit_edge

land.lhs.true.i78.skb_dst.exit_crit_edge:         ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i78
  %call2.i79 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i79)
  %tobool3.not.i80 = icmp eq i32 %call2.i79, 0
  br i1 %tobool3.not.i80, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !48

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i78.skb_dst.exit_crit_edge, %skb_dst_drop.exit.skb_dst.exit_crit_edge
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %24, align 8
  %and25.i = and i32 %34, -2
  %35 = inttoptr i32 %and25.i to ptr
  %error = getelementptr inbounds %struct.dst_entry, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool14.not = icmp eq i16 %37, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end16:                                         ; preds = %skb_dst.exit
  %and.i81 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.not.i82 = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i82, label %if.end16.skb_dst.exit91_crit_edge, label %land.lhs.true.i85

if.end16.skb_dst.exit91_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit91

land.lhs.true.i85:                                ; preds = %if.end16
  %call.i83 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool1.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool1.not.i84, label %land.rhs.i88, label %land.lhs.true.i85.skb_dst.exit91_crit_edge

land.lhs.true.i85.skb_dst.exit91_crit_edge:       ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit91

land.rhs.i88:                                     ; preds = %land.lhs.true.i85
  %call2.i86 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i86)
  %tobool3.not.i87 = icmp eq i32 %call2.i86, 0
  br i1 %tobool3.not.i87, label %do.end.i89, label %land.rhs.i88.skb_dst.exit91_crit_edge, !prof !48

land.rhs.i88.skb_dst.exit91_crit_edge:            ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit91

do.end.i89:                                       ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit91

skb_dst.exit91:                                   ; preds = %do.end.i89, %land.rhs.i88.skb_dst.exit91_crit_edge, %land.lhs.true.i85.skb_dst.exit91_crit_edge, %if.end16.skb_dst.exit91_crit_edge
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %24, align 8
  %and25.i90 = and i32 %39, -2
  %40 = inttoptr i32 %and25.i90 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %cmp = icmp eq ptr %42, %9
  br i1 %cmp, label %if.then19, label %if.end21

if.then19:                                        ; preds = %skb_dst.exit91
  call void @__sanitizer_cov_trace_pc() #9
  %physindev = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %physindev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %physindev, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %7, align 8
  tail call void @nf_bridge_update_protocol(ptr noundef %skb) #7
  %call.i92 = tail call i32 @nf_bridge_encap_header_len(ptr noundef %skb) #7
  %call1.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %call.i92) #7
  %46 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %network_header.i.i.i, align 4
  %48 = trunc i32 %call.i92 to i16
  %conv2.i = sub i16 %47, %48
  store i16 %conv2.i, ptr %network_header.i.i.i, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 8
  %call20 = tail call i32 @br_nf_hook_thresh(i32 noundef 0, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %50, ptr noundef null, ptr noundef nonnull @br_nf_pre_routing_finish_bridge) #7
  br label %cleanup

if.end21:                                         ; preds = %skb_dst.exit91
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %53 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i93 = zext i16 %54 to i32
  %add.ptr.i.i94 = getelementptr i8, ptr %52, i32 %conv.i.i93
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %55 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_addr, align 64
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %59 = ptrtoint ptr %add.ptr.i.i94 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %add.ptr.i.i94, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 4
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i94, i32 4
  %62 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %add.ptr1.i, align 2
  %pkt_type24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %63 = ptrtoint ptr %pkt_type24 to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load25 = load i16, ptr %pkt_type24, align 8
  %bf.clear26 = and i16 %bf.load25, 8191
  store i16 %bf.clear26, ptr %pkt_type24, align 8
  br label %if.end33

if.else:                                          ; preds = %if.end
  %physindev28 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %physindev28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %physindev28, align 4
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 95
  %66 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i95 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i95, label %land.lhs.true.i.i, label %if.else.br_port_get_rcu.exit.i_crit_edge

if.else.br_port_get_rcu.exit.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i.i96

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_port_get_rcu.exit.i

if.then.i.i96:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 416, ptr noundef nonnull @.str.1) #7
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i.i96, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, %if.else.br_port_get_rcu.exit.i_crit_edge
  %tobool.not.i97 = icmp eq ptr %67, null
  br i1 %tobool.not.i97, label %br_port_get_rcu.exit.i.if.then31_crit_edge, label %bridge_parent_rtable.exit

br_port_get_rcu.exit.i.if.then31_crit_edge:       ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

bridge_parent_rtable.exit:                        ; preds = %br_port_get_rcu.exit.i
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %70 = getelementptr inbounds %struct.net_bridge, ptr %69, i32 0, i32 10
  %tobool30.not = icmp eq ptr %70, null
  br i1 %tobool30.not, label %bridge_parent_rtable.exit.if.then31_crit_edge, label %if.end32

bridge_parent_rtable.exit.if.then31_crit_edge:    ; preds = %bridge_parent_rtable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %bridge_parent_rtable.exit.if.then31_crit_edge, %br_port_get_rcu.exit.i.if.then31_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end32:                                         ; preds = %bridge_parent_rtable.exit
  %call.i98 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %land.rhs.i101, label %if.end32.skb_dst_set_noref.exit_crit_edge

if.end32.skb_dst_set_noref.exit_crit_edge:        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst_set_noref.exit

land.rhs.i101:                                    ; preds = %if.end32
  %call1.i100 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool2.not.i = icmp eq i32 %call1.i100, 0
  br i1 %tobool2.not.i, label %do.end.i102, label %land.rhs.i101.skb_dst_set_noref.exit_crit_edge, !prof !48

land.rhs.i101.skb_dst_set_noref.exit_crit_edge:   ; preds = %land.rhs.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst_set_noref.exit

do.end.i102:                                      ; preds = %land.rhs.i101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1043, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i102, %land.rhs.i101.skb_dst_set_noref.exit_crit_edge, %if.end32.skb_dst_set_noref.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %71 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %72 = ptrtoint ptr %70 to i32
  %or31.i = or i32 %72, 1
  %73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or31.i, ptr %73, align 8
  br label %if.end33

if.end33:                                         ; preds = %skb_dst_set_noref.exit, %if.end21
  %physindev34 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %physindev34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %physindev34, align 4
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %7, align 8
  tail call void @nf_bridge_update_protocol(ptr noundef %skb) #7
  %call.i103 = tail call i32 @nf_bridge_encap_header_len(ptr noundef %skb) #7
  %call1.i104 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %call.i103) #7
  %78 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i.i.i, align 4
  %80 = trunc i32 %call.i103 to i16
  %conv2.i106 = sub i16 %79, %80
  store i16 %conv2.i106, ptr %network_header.i.i.i, align 4
  %81 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %7, align 8
  %call35 = tail call i32 @br_nf_hook_thresh(i32 noundef 0, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %82, ptr noundef null, ptr noundef nonnull @br_handle_frame_finish) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %if.then19, %if.then15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev) unnamed_addr #2 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 10), ptr blockaddress(@nf_hook, %if.end)) #7
          to label %cleanup [label %if.end], !srcloc !55

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %hooks_ipv6 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39, i32 4
  %4 = ptrtoint ptr %hooks_ipv6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hooks_ipv6, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @nf_hook.__warned.4, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nf_hook.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 232, ptr noundef nonnull @.str.1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 0, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @br_nf_pre_routing_finish_ipv6, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #7
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %13 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_bridge_update_protocol(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_nf_hook_thresh(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_nf_pre_routing_finish_bridge(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_handle_frame_finish(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_bridge_encap_header_len(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/netfilter_ipv6.h", i32 76, i32 9}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/bridge/br_private.h", i32 416, i32 9}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2149976364}
!50 = !{i64 2149868046}
!51 = !{i64 2149872978}
!52 = !{i64 2149894690}
!53 = !{i64 2149899582}
!54 = !{i64 2149976039}
!55 = !{i64 2148957265, i64 2148957270, i64 2148957283, i64 2148957327, i64 2148957361, i64 2148957382}
!56 = !{i64 2149360047}
!57 = !{i64 2149360313}
