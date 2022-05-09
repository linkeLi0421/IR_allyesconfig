; ModuleID = '/llk/IR_all_yes/net/ipv4/ip_forward.c_pt.bc'
source_filename = "../net/ipv4/ip_forward.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.173, %union.anon.174, [48 x i8], %union.anon.175, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.177, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.173 = type { ptr }
%union.anon.174 = type { i64 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, ptr }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.179, i32, i32, i32, i16, i16, %union.anon.181, i32, %union.anon.182, %union.anon.183, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.179 = type { i32 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i32 }
%union.anon.183 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.172, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.172 = type { ptr }
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
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.101, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.101 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.100, i32, %struct.list_head, ptr }
%union.anon.100 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ip_tos2prio = external dso_local local_unnamed_addr constant [16 x i8], align 1
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [25 x i8] c"../net/ipv4/ip_forward.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 1011, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 271, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 229, i32 15 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 723, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_forward(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end6, label %if.end.drop_crit_edge, !prof !41

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end6:                                          ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %if.end6.if.end8_crit_edge, label %land.lhs.true.i

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true.i:                                  ; preds = %if.end6
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i = icmp eq i16 %9, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end8_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i = icmp eq i32 %11, 0
  br i1 %cmp4.i, label %skb_warn_if_lro.exit, label %land.lhs.true3.i.if.end8_crit_edge, !prof !42

land.lhs.true3.i.if.end8_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

skb_warn_if_lro.exit:                             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__skb_warn_lro_forwarding(ptr noundef %skb) #7
  br label %drop

if.end8:                                          ; preds = %land.lhs.true3.i.if.end8_crit_edge, %land.lhs.true.i.if.end8_crit_edge, %if.end6.if.end8_crit_edge
  %12 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 127
  %15 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %policy_default.i.i.i.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 46, i32 23
  %17 = ptrtoint ptr %policy_default.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %policy_default.i.i.i.i, align 16
  %19 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.i.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool13.i.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end8
  %arrayidx6.i.i.i = getelementptr %struct.net, ptr %16, i32 0, i32 46, i32 13, i32 2
  %20 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true8.i.i.i, label %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge

if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.then5.i.i.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %22 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true8.i.i.i.if.end12_crit_edge, label %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge

land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i.if.end12_crit_edge:          ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %and.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exitthread-pre-split.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, !prof !42

land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exitthread-pre-split.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exitthread-pre-split.i.i.i

skb_dst.exitthread-pre-split.i.i.i:               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i.i.i = load i32, ptr %25, align 8
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %skb_dst.exitthread-pre-split.i.i.i, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %29 = phi i32 [ %.pr.i.i.i, %skb_dst.exitthread-pre-split.i.i.i ], [ %27, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %tobool12.not.i.i.i = icmp ult i32 %29, 2
  br i1 %tobool12.not.i.i.i, label %skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge, label %land.lhs.true13.i.i.i

skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_policy_check.exit

land.lhs.true13.i.i.i:                            ; preds = %skb_dst.exit.i.i.i
  %and.i2.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i

land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i.i

land.lhs.true.i6.i.i.i:                           ; preds = %land.lhs.true13.i.i.i
  %call.i4.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool1.not.i5.i.i.i = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool1.not.i5.i.i.i, label %land.rhs.i9.i.i.i, label %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge

land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i.i

land.rhs.i9.i.i.i:                                ; preds = %land.lhs.true.i6.i.i.i
  %call2.i7.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i.i)
  %tobool3.not.i8.i.i.i = icmp eq i32 %call2.i7.i.i.i, 0
  br i1 %tobool3.not.i8.i.i.i, label %do.end.i10.i.i.i, label %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, !prof !42

land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i.i

do.end.i10.i.i.i:                                 ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit12.i.i.i

skb_dst.exit12.i.i.i:                             ; preds = %do.end.i10.i.i.i, %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 8
  %and25.i11.i.i.i = and i32 %31, -2
  %32 = inttoptr i32 %and25.i11.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags.i.i.i, align 4
  %35 = and i16 %34, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool16.not.i.i.i = icmp eq i16 %35, 0
  br i1 %tobool16.not.i.i.i, label %skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge, label %skb_dst.exit12.i.i.i.if.end12_crit_edge

skb_dst.exit12.i.i.i.if.end12_crit_edge:          ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_policy_check.exit

if.else.i.i.i:                                    ; preds = %if.end8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %and.i13.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %tobool.not.i14.i.i.i, label %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge, label %land.lhs.true.i17.i.i.i

if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit23.i.i.i

land.lhs.true.i17.i.i.i:                          ; preds = %if.else.i.i.i
  %call.i15.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i.i)
  %tobool1.not.i16.i.i.i = icmp eq i32 %call.i15.i.i.i, 0
  br i1 %tobool1.not.i16.i.i.i, label %land.rhs.i20.i.i.i, label %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge

land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit23thread-pre-split.i.i.i

land.rhs.i20.i.i.i:                               ; preds = %land.lhs.true.i17.i.i.i
  %call2.i18.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i.i)
  %tobool3.not.i19.i.i.i = icmp eq i32 %call2.i18.i.i.i, 0
  br i1 %tobool3.not.i19.i.i.i, label %do.end.i21.i.i.i, label %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, !prof !42

land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit23thread-pre-split.i.i.i

do.end.i21.i.i.i:                                 ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit23thread-pre-split.i.i.i

skb_dst.exit23thread-pre-split.i.i.i:             ; preds = %do.end.i21.i.i.i, %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr35.i.i.i = load i32, ptr %36, align 8
  br label %skb_dst.exit23.i.i.i

skb_dst.exit23.i.i.i:                             ; preds = %skb_dst.exit23thread-pre-split.i.i.i, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge
  %40 = phi i32 [ %.pr35.i.i.i, %skb_dst.exit23thread-pre-split.i.i.i ], [ %38, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %tobool21.not.i.i.i = icmp ult i32 %40, 2
  br i1 %tobool21.not.i.i.i, label %skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge, label %land.lhs.true22.i.i.i

skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_policy_check.exit

land.lhs.true22.i.i.i:                            ; preds = %skb_dst.exit23.i.i.i
  %and.i24.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i.i)
  %tobool.not.i25.i.i.i = icmp eq i32 %and.i24.i.i.i, 0
  br i1 %tobool.not.i25.i.i.i, label %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge, label %land.lhs.true.i28.i.i.i

land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit34.i.i.i

land.lhs.true.i28.i.i.i:                          ; preds = %land.lhs.true22.i.i.i
  %call.i26.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool1.not.i27.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool1.not.i27.i.i.i, label %land.rhs.i31.i.i.i, label %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge

land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit34.i.i.i

land.rhs.i31.i.i.i:                               ; preds = %land.lhs.true.i28.i.i.i
  %call2.i29.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i.i)
  %tobool3.not.i30.i.i.i = icmp eq i32 %call2.i29.i.i.i, 0
  br i1 %tobool3.not.i30.i.i.i, label %do.end.i32.i.i.i, label %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, !prof !42

land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit34.i.i.i

do.end.i32.i.i.i:                                 ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit34.i.i.i

skb_dst.exit34.i.i.i:                             ; preds = %do.end.i32.i.i.i, %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %36, align 8
  %and25.i33.i.i.i = and i32 %42, -2
  %43 = inttoptr i32 %and25.i33.i.i.i to ptr
  %flags24.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %flags24.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags24.i.i.i, align 4
  %46 = and i16 %45, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool27.not.i.i.i = icmp eq i16 %46, 0
  br i1 %tobool27.not.i.i.i, label %skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge, label %skb_dst.exit34.i.i.i.if.end12_crit_edge

skb_dst.exit34.i.i.i.if.end12_crit_edge:          ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_policy_check.exit

xfrm4_policy_check.exit:                          ; preds = %skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge
  %call30.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 2, ptr noundef %skb, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.i.i.i.not = icmp eq i32 %call30.i.i.i, 0
  br i1 %tobool31.i.i.i.not, label %xfrm4_policy_check.exit.drop_crit_edge, label %xfrm4_policy_check.exit.if.end12_crit_edge

xfrm4_policy_check.exit.if.end12_crit_edge:       ; preds = %xfrm4_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

xfrm4_policy_check.exit.drop_crit_edge:           ; preds = %xfrm4_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end12:                                         ; preds = %xfrm4_policy_check.exit.if.end12_crit_edge, %skb_dst.exit34.i.i.i.if.end12_crit_edge, %skb_dst.exit12.i.i.i.if.end12_crit_edge, %land.lhs.true8.i.i.i.if.end12_crit_edge
  %router_alert = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %47 = ptrtoint ptr %router_alert to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %router_alert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool17.not = icmp eq i8 %48, 0
  br i1 %tobool17.not, label %if.end12.if.end21_crit_edge, label %land.lhs.true

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end12
  %call18 = tail call zeroext i1 @ip_call_ra_chain(ptr noundef %skb) #7
  br i1 %call18, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %49 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i = load i16, ptr %pkt_type, align 8
  %50 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %50)
  %cmp.i = icmp eq i16 %50, 1024
  br i1 %cmp.i, label %if.then.i168, label %if.end21.skb_forward_csum.exit_crit_edge

if.end21.skb_forward_csum.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_forward_csum.exit

if.then.i168:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear4.i = and i16 %bf.load.i, -1537
  %51 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %bf.clear4.i, ptr %pkt_type, align 8
  br label %skb_forward_csum.exit

skb_forward_csum.exit:                            ; preds = %if.then.i168, %if.end21.skb_forward_csum.exit_crit_edge
  %52 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %12, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 127
  %54 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %56 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %58 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %59 to i32
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 %conv.i.i
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp25 = icmp ult i8 %61, 2
  br i1 %cmp25, label %do.body99, label %if.end28

if.end28:                                         ; preds = %skb_forward_csum.exit
  %policy_default.i.i.i = getelementptr inbounds %struct.net, ptr %55, i32 0, i32 46, i32 23
  %62 = ptrtoint ptr %policy_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %policy_default.i.i.i, align 16
  %64 = and i8 %63, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool7.i.i.i = icmp eq i8 %64, 0
  br i1 %tobool7.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end28
  %arrayidx.i.i = getelementptr %struct.net, ptr %55, i32 0, i32 46, i32 13, i32 1
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end32_crit_edge, label %lor.lhs.false.i.i

if.then.i.i.if.end32_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %and.i.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !42

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %67, align 8
  %and25.i.i.i = and i32 %71, -2
  %72 = inttoptr i32 %and25.i.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags.i.i, align 4
  %75 = and i16 %74, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool3.not.i.i = icmp eq i16 %75, 0
  br i1 %tobool3.not.i.i, label %skb_dst.exit.i.i.xfrm4_route_forward.exit_crit_edge, label %skb_dst.exit.i.i.if.end32_crit_edge

skb_dst.exit.i.i.if.end32_crit_edge:              ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

skb_dst.exit.i.i.xfrm4_route_forward.exit_crit_edge: ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_route_forward.exit

if.else.i.i:                                      ; preds = %if.end28
  %76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %and.i2.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.else.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

if.else.i.i.skb_dst.exit12.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %if.else.i.i
  %call.i4.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !42

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit12.i.i

skb_dst.exit12.i.i:                               ; preds = %do.end.i10.i.i, %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge, %if.else.i.i.skb_dst.exit12.i.i_crit_edge
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %76, align 8
  %and25.i11.i.i = and i32 %80, -2
  %81 = inttoptr i32 %and25.i11.i.i to ptr
  %flags7.i.i = getelementptr inbounds %struct.dst_entry, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %flags7.i.i, align 4
  %84 = and i16 %83, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool10.not.i.i = icmp eq i16 %84, 0
  br i1 %tobool10.not.i.i, label %skb_dst.exit12.i.i.xfrm4_route_forward.exit_crit_edge, label %skb_dst.exit12.i.i.if.end32_crit_edge

skb_dst.exit12.i.i.if.end32_crit_edge:            ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

skb_dst.exit12.i.i.xfrm4_route_forward.exit_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_route_forward.exit

xfrm4_route_forward.exit:                         ; preds = %skb_dst.exit12.i.i.xfrm4_route_forward.exit_crit_edge, %skb_dst.exit.i.i.xfrm4_route_forward.exit_crit_edge
  %call12.i.i = tail call i32 @__xfrm_route_forward(ptr noundef %skb, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.i.i.not = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.i.i.not, label %xfrm4_route_forward.exit.drop_crit_edge, label %xfrm4_route_forward.exit.if.end32_crit_edge

xfrm4_route_forward.exit.if.end32_crit_edge:      ; preds = %xfrm4_route_forward.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

xfrm4_route_forward.exit.drop_crit_edge:          ; preds = %xfrm4_route_forward.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end32:                                         ; preds = %xfrm4_route_forward.exit.if.end32_crit_edge, %skb_dst.exit12.i.i.if.end32_crit_edge, %skb_dst.exit.i.i.if.end32_crit_edge, %if.then.i.i.if.end32_crit_edge
  %85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %and.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i169 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i169, label %if.end32.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.end32.skb_rtable.exit_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.end32
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i170 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i170, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !42

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.end32.skb_rtable.exit_crit_edge
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %85, align 8
  %and25.i.i = and i32 %89, -2
  %90 = inttoptr i32 %and25.i.i to ptr
  %is_strictroute = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %91 = ptrtoint ptr %is_strictroute to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load34 = load i8, ptr %is_strictroute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load34)
  %tobool37.not = icmp sgt i8 %bf.load34, -1
  br i1 %tobool37.not, label %skb_rtable.exit.if.end42_crit_edge, label %land.lhs.true38

skb_rtable.exit.if.end42_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true38:                                  ; preds = %skb_rtable.exit
  %rt_uses_gateway = getelementptr inbounds %struct.rtable, ptr %90, i32 0, i32 5
  %92 = ptrtoint ptr %rt_uses_gateway to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %rt_uses_gateway, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool40.not = icmp eq i8 %93, 0
  br i1 %tobool40.not, label %land.lhs.true38.if.end42_crit_edge, label %sr_failed

land.lhs.true38.if.end42_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true38.if.end42_crit_edge, %skb_rtable.exit.if.end42_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %flags, align 4
  %96 = or i16 %95, 1
  store i16 %96, ptr %flags, align 4
  %97 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %90, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 127
  %99 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_fwd_use_pmtu.i = getelementptr inbounds %struct.net, ptr %100, i32 0, i32 35, i32 39
  %101 = ptrtoint ptr %sysctl_ip_fwd_use_pmtu.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sysctl_ip_fwd_use_pmtu.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end42.if.then.i173_crit_edge

if.end42.if.then.i173_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i173

lor.lhs.false.i:                                  ; preds = %if.end42
  %rt_mtu_locked.i.i = getelementptr inbounds %struct.rtable, ptr %90, i32 0, i32 9
  %103 = ptrtoint ptr %rt_mtu_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load.i.i = load i32, ptr %rt_mtu_locked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i171 = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i171, label %ip_mtu_locked.exit.i, label %lor.lhs.false.i.if.then.i173_crit_edge

lor.lhs.false.i.if.then.i173_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i173

ip_mtu_locked.exit.i:                             ; preds = %lor.lhs.false.i
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %90, i32 0, i32 2
  %104 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %105, -4
  %106 = inttoptr i32 %and.i.i.i.i.i to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %109 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool2.not.i = icmp eq i32 %109, 0
  br i1 %tobool2.not.i, label %ip_mtu_locked.exit.i.if.end9.i_crit_edge, label %ip_mtu_locked.exit.i.if.then.i173_crit_edge

ip_mtu_locked.exit.i.if.then.i173_crit_edge:      ; preds = %ip_mtu_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i173

ip_mtu_locked.exit.i.if.end9.i_crit_edge:         ; preds = %ip_mtu_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then.i173:                                     ; preds = %ip_mtu_locked.exit.i.if.then.i173_crit_edge, %lor.lhs.false.i.if.then.i173_crit_edge, %if.end42.if.then.i173_crit_edge
  %rt_pmtu.i = getelementptr inbounds %struct.rtable, ptr %90, i32 0, i32 9
  %110 = ptrtoint ptr %rt_pmtu.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load.i172 = load i32, ptr %rt_pmtu.i, align 4
  %bf.clear.i = and i32 %bf.load.i172, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %tobool5.not.i = icmp eq i32 %bf.clear.i, 0
  br i1 %tobool5.not.i, label %if.then.i173.if.end9.i_crit_edge, label %land.lhs.true.i175

if.then.i173.if.end9.i_crit_edge:                 ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true.i175:                               ; preds = %if.then.i173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %expires.i = getelementptr inbounds %struct.dst_entry, ptr %90, i32 0, i32 3
  %112 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %expires.i, align 4
  %sub.i = sub i32 %111, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i174 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i174, label %land.lhs.true.i175.out.i_crit_edge, label %land.lhs.true.i175.if.end9.i_crit_edge

land.lhs.true.i175.if.end9.i_crit_edge:           ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true.i175.out.i_crit_edge:               ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end9.i:                                        ; preds = %land.lhs.true.i175.if.end9.i_crit_edge, %if.then.i173.if.end9.i_crit_edge, %ip_mtu_locked.exit.i.if.end9.i_crit_edge
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %90, i32 0, i32 2
  %114 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i176 = and i32 %115, -4
  %116 = inttoptr i32 %and.i.i176 to ptr
  %arrayidx.i.i177 = getelementptr i32, ptr %116, i32 1
  %117 = ptrtoint ptr %arrayidx.i.i177 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool11.not.i = icmp eq i32 %118, 0
  br i1 %tobool11.not.i, label %do.end.i, label %if.end9.i.out.i_crit_edge

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

do.end.i:                                         ; preds = %if.end9.i
  %mtu16.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 20
  %119 = ptrtoint ptr %mtu16.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %mtu16.i, align 4
  %rt_mtu_locked.i1.i = getelementptr inbounds %struct.rtable, ptr %90, i32 0, i32 9
  %121 = ptrtoint ptr %rt_mtu_locked.i1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load.i2.i = load i32, ptr %rt_mtu_locked.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i2.i)
  %tobool.not.i3.i = icmp sgt i32 %bf.load.i2.i, -1
  br i1 %tobool.not.i3.i, label %ip_mtu_locked.exit9.i, label %do.end.i.if.then21.i_crit_edge

do.end.i.if.then21.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

ip_mtu_locked.exit9.i:                            ; preds = %do.end.i
  %122 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %116, align 4
  %124 = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool18.not.i = icmp eq i32 %124, 0
  br i1 %tobool18.not.i, label %ip_mtu_locked.exit9.i.out.i_crit_edge, label %ip_mtu_locked.exit9.i.if.then21.i_crit_edge, !prof !41

ip_mtu_locked.exit9.i.if.then21.i_crit_edge:      ; preds = %ip_mtu_locked.exit9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

ip_mtu_locked.exit9.i.out.i_crit_edge:            ; preds = %ip_mtu_locked.exit9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then21.i:                                      ; preds = %ip_mtu_locked.exit9.i.if.then21.i_crit_edge, %do.end.i.if.then21.i_crit_edge
  %rt_uses_gateway.i = getelementptr inbounds %struct.rtable, ptr %90, i32 0, i32 5
  %125 = ptrtoint ptr %rt_uses_gateway.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %rt_uses_gateway.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool23.not.i = icmp eq i8 %126, 0
  %127 = tail call i32 @llvm.umin.i32(i32 %120, i32 576) #7
  %spec.select.i = select i1 %tobool23.not.i, i32 %120, i32 %127
  br label %out.i

out.i:                                            ; preds = %if.then21.i, %ip_mtu_locked.exit9.i.out.i_crit_edge, %if.end9.i.out.i_crit_edge, %land.lhs.true.i175.out.i_crit_edge
  %mtu.0.i = phi i32 [ %bf.clear.i, %land.lhs.true.i175.out.i_crit_edge ], [ %118, %if.end9.i.out.i_crit_edge ], [ %120, %ip_mtu_locked.exit9.i.out.i_crit_edge ], [ %spec.select.i, %if.then21.i ]
  %128 = tail call i32 @llvm.umin.i32(i32 %mtu.0.i, i32 65535) #7
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %90, i32 0, i32 13
  %129 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lwtstate.i, align 4
  %tobool.not.i.i.i178 = icmp eq ptr %130, null
  br i1 %tobool.not.i.i.i178, label %out.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.i180

out.i.if.end.i.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i.i180:                           ; preds = %out.i
  %flags.i.i.i179 = getelementptr inbounds %struct.lwtunnel_state, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i.i.i179 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %flags.i.i.i179, align 2
  %133 = and i16 %132, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %land.lhs.true.i.i.i180.if.end.i.i_crit_edge, label %land.lhs.true.i.i182

land.lhs.true.i.i.i180.if.end.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i182:                             ; preds = %land.lhs.true.i.i.i180
  %headroom.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %130, i32 0, i32 2
  %135 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %headroom.i.i, align 4
  %conv.i.i181 = zext i16 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %conv.i.i181)
  %cmp.i.i = icmp ugt i32 %128, %conv.i.i181
  br i1 %cmp.i.i, label %land.lhs.true.i.i182.ip_dst_mtu_maybe_forward.exit_crit_edge, label %land.lhs.true.i.i182.if.end.i.i_crit_edge

land.lhs.true.i.i182.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i182.ip_dst_mtu_maybe_forward.exit_crit_edge: ; preds = %land.lhs.true.i.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip_dst_mtu_maybe_forward.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i182.if.end.i.i_crit_edge, %land.lhs.true.i.i.i180.if.end.i.i_crit_edge, %out.i.if.end.i.i_crit_edge
  br label %ip_dst_mtu_maybe_forward.exit

ip_dst_mtu_maybe_forward.exit:                    ; preds = %if.end.i.i, %land.lhs.true.i.i182.ip_dst_mtu_maybe_forward.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %conv.i.i181, %land.lhs.true.i.i182.ip_dst_mtu_maybe_forward.exit_crit_edge ]
  %sub34.i = sub nsw i32 %128, %retval.0.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %137 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %sub34.i)
  %cmp.not.i183 = icmp ugt i32 %138, %sub34.i
  br i1 %cmp.not.i183, label %if.end.i, label %ip_dst_mtu_maybe_forward.exit.if.end61_crit_edge

ip_dst_mtu_maybe_forward.exit.if.end61_crit_edge: ; preds = %ip_dst_mtu_maybe_forward.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end.i:                                         ; preds = %ip_dst_mtu_maybe_forward.exit
  %139 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %head.i.i, align 8
  %141 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %142 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %140, i32 %conv.i.i.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %143 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %frag_off.i, align 2
  %145 = and i16 %144, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %cmp1.i = icmp eq i16 %145, 0
  br i1 %cmp1.i, label %if.end.i.if.end61_crit_edge, label %if.end5.i, !prof !42

if.end.i.if.end61_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end5.i:                                        ; preds = %if.end.i
  %frag_max_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %146 = ptrtoint ptr %frag_max_size.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %frag_max_size.i, align 2
  %conv6.i = zext i16 %147 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub34.i, i32 %conv6.i)
  %cmp7.i = icmp ult i32 %sub34.i, %conv6.i
  br i1 %cmp7.i, label %if.end5.i.do.body_crit_edge, label %if.end16.i, !prof !42

if.end5.i.do.body_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end16.i:                                       ; preds = %if.end5.i
  %148 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load.i184 = load i16, ptr %pkt_type, align 8
  %149 = and i16 %bf.load.i184, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool17.not.i = icmp eq i16 %149, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end16.i.if.end61_crit_edge

if.end16.i.if.end61_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end19.i:                                       ; preds = %if.end16.i
  %150 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool.i.not.i185 = icmp eq i16 %153, 0
  br i1 %tobool.i.not.i185, label %if.end19.i.do.body_crit_edge, label %land.lhs.true.i186

if.end19.i.do.body_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.i186:                               ; preds = %if.end19.i
  %call22.i = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %sub34.i) #7
  br i1 %call22.i, label %land.lhs.true.i186.if.end61_crit_edge, label %land.lhs.true.i186.do.body_crit_edge

land.lhs.true.i186.do.body_crit_edge:             ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.i186.if.end61_crit_edge:            ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

do.body:                                          ; preds = %land.lhs.true.i186.do.body_crit_edge, %if.end19.i.do.body_crit_edge, %if.end5.i.do.body_crit_edge
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %55, i32 0, i32 30
  %154 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mib, align 4
  %156 = ptrtoint ptr %155 to i32
  %157 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %160
  %161 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx, align 4
  %add = add i32 %162, %156
  %163 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %163, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx54 = getelementptr [37 x i64], ptr %163, i32 0, i32 21
  %164 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %arrayidx54, align 8
  %add55 = add i64 %165, 1
  store i64 %add55, ptr %arrayidx54, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %163, i32 0, i32 1, i32 0, i32 1
  %166 = tail call ptr @llvm.returnaddress(i32 0) #7
  %167 = ptrtoint ptr %166 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %167) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %168 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %169, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %sub34.i, ptr noundef %opt.i) #7
  br label %drop

if.end61:                                         ; preds = %land.lhs.true.i186.if.end61_crit_edge, %if.end16.i.if.end61_crit_edge, %if.end.i.if.end61_crit_edge, %ip_dst_mtu_maybe_forward.exit.if.end61_crit_edge
  %170 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %90, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %171, i32 0, i32 19
  %172 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %hard_header_len, align 2
  %conv63 = zext i16 %173 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %171, i32 0, i32 21
  %174 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %needed_headroom, align 8
  %conv66 = zext i16 %175 to i32
  %add67 = add nuw nsw i32 %conv66, %conv63
  %and = and i32 %add67, 131056
  %header_len = getelementptr inbounds %struct.dst_entry, ptr %90, i32 0, i32 9
  %176 = ptrtoint ptr %header_len to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %header_len, align 4
  %conv70 = zext i16 %177 to i32
  %add68 = add nuw nsw i32 %conv70, 16
  %add71 = add nuw nsw i32 %add68, %and
  %call72 = tail call fastcc i32 @skb_cow(ptr noundef %skb, i32 noundef %add71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end61.drop_crit_edge

if.end61.drop_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end75:                                         ; preds = %if.end61
  %178 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %head.i.i, align 8
  %180 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i190 = zext i16 %181 to i32
  %add.ptr.i.i191 = getelementptr i8, ptr %179, i32 %conv.i.i190
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i191, i32 0, i32 7
  %182 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %check1.i, align 2
  %add.i = add i16 %183, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -258, i16 %183)
  %cmp.i192 = icmp ugt i16 %183, -258
  %conv2.i = zext i1 %cmp.i192 to i16
  %add3.i = add i16 %add.i, %conv2.i
  %184 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %add3.i, ptr %check1.i, align 2
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i191, i32 0, i32 5
  %185 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ttl.i, align 4
  %dec.i = add i8 %186, -1
  store i8 %dec.i, ptr %ttl.i, align 4
  %187 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %flags, align 4
  %189 = and i16 %188, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %tobool83.not = icmp eq i16 %189, 0
  br i1 %tobool83.not, label %if.end75.if.end90_crit_edge, label %land.lhs.true84

if.end75.if.end90_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

land.lhs.true84:                                  ; preds = %if.end75
  %srr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %190 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool85.not = icmp eq i8 %191, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %land.lhs.true84.if.end90_crit_edge

land.lhs.true84.if.end90_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

land.lhs.true86:                                  ; preds = %land.lhs.true84
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %192 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %active_extensions.i.i.i, align 1
  %194 = and i8 %193, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.i.not.i.i = icmp eq i8 %194, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true86.if.then89_crit_edge, label %skb_sec_path.exit

land.lhs.true86.if.then89_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

skb_sec_path.exit:                                ; preds = %land.lhs.true86
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %195 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i193 = getelementptr %struct.skb_ext, ptr %196, i32 0, i32 1, i32 1
  %197 = ptrtoint ptr %arrayidx.i.i193 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i.i193, align 1
  %conv.i.i194 = zext i8 %198 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i194, 3
  %add.ptr.i.i195 = getelementptr i8, ptr %196, i32 %shl.i.i
  %tobool88.not = icmp eq ptr %add.ptr.i.i195, null
  br i1 %tobool88.not, label %skb_sec_path.exit.if.then89_crit_edge, label %skb_sec_path.exit.if.end90_crit_edge

skb_sec_path.exit.if.end90_crit_edge:             ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

skb_sec_path.exit.if.then89_crit_edge:            ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

if.then89:                                        ; preds = %skb_sec_path.exit.if.then89_crit_edge, %land.lhs.true86.if.then89_crit_edge
  tail call void @ip_rt_send_redirect(ptr noundef %skb) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %skb_sec_path.exit.if.end90_crit_edge, %land.lhs.true84.if.end90_crit_edge, %if.end75.if.end90_crit_edge
  %sysctl_ip_fwd_update_priority = getelementptr inbounds %struct.net, ptr %55, i32 0, i32 35, i32 40
  %199 = ptrtoint ptr %sysctl_ip_fwd_update_priority to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %sysctl_ip_fwd_update_priority, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool91.not = icmp eq i8 %200, 0
  br i1 %tobool91.not, label %if.end90.if.end95_crit_edge, label %if.then92

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i191, i32 0, i32 1
  %201 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %tos, align 1
  %203 = lshr i8 %202, 1
  %204 = and i8 %203, 15
  %205 = zext i8 %204 to i32
  %arrayidx.i = getelementptr [16 x i8], ptr @ip_tos2prio, i32 0, i32 %205
  %206 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.i, align 1
  %conv94 = zext i8 %207 to i32
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %208 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv94, ptr %priority, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end90.if.end95_crit_edge
  %209 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %12, align 8
  %211 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %90, align 4
  %call98 = tail call fastcc i32 @NF_HOOK(ptr noundef %55, ptr noundef %skb, ptr noundef %210, ptr noundef %212)
  br label %cleanup

sr_failed:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  %opt.i198 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 5, i32 noundef 0, ptr noundef %opt.i198) #7
  br label %drop

do.body99:                                        ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %mib108 = getelementptr inbounds %struct.net, ptr %55, i32 0, i32 30
  %213 = ptrtoint ptr %mib108 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mib108, align 4
  %215 = ptrtoint ptr %214 to i32
  %216 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i199 = and i32 %216, -16384
  %217 = inttoptr i32 %and.i199 to ptr
  %cpu112 = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %cpu112 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %cpu112, align 4
  %arrayidx113 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %219
  %220 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx113, align 4
  %add114 = add i32 %221, %215
  %222 = inttoptr i32 %add114 to ptr
  %syncp115 = getelementptr inbounds %struct.ipstats_mib, ptr %222, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp115)
  %arrayidx117 = getelementptr [37 x i64], ptr %222, i32 0, i32 7
  %223 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %arrayidx117, align 8
  %add118 = add i64 %224, 1
  store i64 %add118, ptr %arrayidx117, align 8
  %dep_map.i.i200 = getelementptr inbounds %struct.ipstats_mib, ptr %222, i32 0, i32 1, i32 0, i32 1
  %225 = tail call ptr @llvm.returnaddress(i32 0) #7
  %226 = ptrtoint ptr %225 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i200, i32 noundef %226) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %227 = ptrtoint ptr %syncp115 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %syncp115, align 4
  %inc.i.i.i201 = add i32 %228, 1
  store i32 %inc.i.i.i201, ptr %syncp115, align 4
  tail call fastcc void @local_bh_enable()
  %opt.i202 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 11, i32 noundef 0, i32 noundef 0, ptr noundef %opt.i202) #7
  br label %drop

drop:                                             ; preds = %do.body99, %sr_failed, %if.end61.drop_crit_edge, %do.body, %xfrm4_route_forward.exit.drop_crit_edge, %xfrm4_policy_check.exit.drop_crit_edge, %skb_warn_if_lro.exit, %if.end.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end95, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %drop ], [ %call98, %if.end95 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_call_ra_chain(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
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
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
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
  %1 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  %5 = tail call i32 @llvm.read_register.i32(metadata !31) #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %14 = tail call i32 @llvm.read_register.i32(metadata !31) #7
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
  %18 = tail call i32 @llvm.read_register.i32(metadata !31) #7
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
  %22 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %33 = tail call i32 @llvm.read_register.i32(metadata !31) #7
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
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !41

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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #7
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_cow(ptr noundef %skb, i32 noundef %headroom) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.skb_cloned.exit_crit_edge, label %land.rhs.i

entry.skb_cloned.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cloned.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #7
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br label %skb_cloned.exit

skb_cloned.exit:                                  ; preds = %land.rhs.i, %entry.skb_cloned.exit_crit_edge
  %5 = phi i1 [ true, %entry.skb_cloned.exit_crit_edge ], [ %cmp.i.not, %land.rhs.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %headroom)
  %tobool.not.i3 = icmp uge i32 %sub.ptr.sub.i.i, %headroom
  %or.cond.i = and i1 %5, %tobool.not.i3
  br i1 %or.cond.i, label %skb_cloned.exit.__skb_cow.exit_crit_edge, label %if.then3.i

skb_cloned.exit.__skb_cow.exit_crit_edge:         ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_cow.exit

if.then3.i:                                       ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.usub.sat.i32(i32 %headroom, i32 %sub.ptr.sub.i.i) #7
  %add.i = add i32 %10, 127
  %and.i4 = and i32 %add.i, -128
  %call4.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4, i32 noundef 0, i32 noundef 2592) #7
  br label %__skb_cow.exit

__skb_cow.exit:                                   ; preds = %if.then3.i, %skb_cloned.exit.__skb_cow.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then3.i ], [ 0, %skb_cloned.exit.__skb_cow.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_rt_send_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @NF_HOOK(ptr noundef %net, ptr noundef %skb, ptr noundef %in, ptr noundef %out) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %in, ptr noundef %out)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @ip_forward_finish(ptr noundef %net, ptr noundef null, ptr noundef %skb)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_forward_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %0 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mib, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %9, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx5 = getelementptr [37 x i64], ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx5, align 8
  %add6 = add i64 %11, 1
  store i64 %add6, ptr %arrayidx5, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %9, i32 0, i32 1, i32 0, i32 1
  %12 = tail call ptr @llvm.returnaddress(i32 0) #7
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %14 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %15, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %16 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mib, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx25, align 4
  %add26 = add i32 %22, %18
  %23 = inttoptr i32 %add26 to ptr
  %syncp27 = getelementptr inbounds %struct.ipstats_mib, ptr %23, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp27)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %conv = zext i32 %25 to i64
  %arrayidx29 = getelementptr [37 x i64], ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx29, align 8
  %add30 = add i64 %27, %conv
  store i64 %add30, ptr %arrayidx29, align 8
  %dep_map.i.i53 = getelementptr inbounds %struct.ipstats_mib, ptr %23, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i53, i32 noundef %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %28 = ptrtoint ptr %syncp27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %syncp27, align 4
  %inc.i.i.i54 = add i32 %29, 1
  store i32 %inc.i.i.i54, ptr %syncp27, align 4
  %offload_l3_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %30 = ptrtoint ptr %offload_l3_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %bf.load = load i32, ptr %offload_l3_fwd_mark, align 2
  %31 = and i32 %bf.load, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %optlen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %optlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %if.end.if.end38_crit_edge, label %if.then37, !prof !41

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ip_forward_options(ptr noundef %skb) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end.if.end38_crit_edge
  %34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %34, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end38.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.end38.dst_output.exit_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.end38
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !42

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.end38.dst_output.exit_crit_edge
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %36, align 8
  %and25.i.i = and i32 %40, -2
  %41 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %43(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %dst_output.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1.i, %dst_output.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_route_forward(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 2, i32 2), ptr blockaddress(@nf_hook, %if.end)) #7
          to label %cleanup [label %if.end], !srcloc !49

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b1 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b1, label %land.lhs.true9.sw.epilog_crit_edge, label %if.then11

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nf_hook.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 229, ptr noundef nonnull @.str.4) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
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
  store i8 2, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ip_forward_finish, ptr %okfn5.i, align 4
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %13 = call i32 @llvm.read_register.i32(metadata !31) #7
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
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_forward_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/net/dst.h", i32 161, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2149845961}
!44 = !{i64 2149737643}
!45 = !{i64 2149742575}
!46 = !{i64 2149764287}
!47 = !{i64 2149769179}
!48 = !{i64 2149845636}
!49 = !{i64 2148268127, i64 2148268132, i64 2148268145, i64 2148268189, i64 2148268223, i64 2148268244}
!50 = !{i64 2150002783}
!51 = !{i64 2150003049}
