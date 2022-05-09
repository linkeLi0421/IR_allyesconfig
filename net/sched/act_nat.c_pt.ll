; ModuleID = '/llk/IR_all_yes/net/sched/act_nat.c_pt.bc'
source_filename = "../net/sched/act_nat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.tcf_nat = type { %struct.tc_action, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.191 }
%union.anon.191 = type { i32 }
%struct.tc_nat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
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
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@__UNIQUE_ID_description615 = internal constant [42 x i8] c"act_nat.description=Stateless NAT actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file616 = internal constant [31 x i8] c"act_nat.file=net/sched/act_nat\00", section ".modinfo", align 1
@__UNIQUE_ID_license617 = internal constant [20 x i8] c"act_nat.license=GPL\00", section ".modinfo", align 1
@act_nat_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"nat\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9, i32 288, ptr null, ptr @tcf_nat_act, ptr @tcf_nat_dump, ptr null, ptr @tcf_nat_search, ptr @tcf_nat_init, ptr @tcf_nat_walker, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@nat_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nat_init_net, ptr null, ptr null, ptr @nat_exit_net, ptr @nat_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_nat__618_353_nat_init_module6 = internal global ptr @nat_init_module, section ".initcall6.init", align 4
@__exitcall_nat_cleanup_module = internal global ptr @nat_cleanup_module, section ".exitcall.exit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@nat_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nat_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 36, %union.anon.77 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 6, i64 17]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 4, i64 5, i64 11, i64 12]
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"act_nat_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 309, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"nat_net_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 333, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 271, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 991, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"nat_net_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 29, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 45, i32 7 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"nat_policy\00", align 1
@___asan_gen_.41 = private constant [23 x i8] c"../net/sched/act_nat.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 32, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 156, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 378, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_description615, ptr @__UNIQUE_ID_file616, ptr @__UNIQUE_ID_license617, ptr @__exitcall_nat_cleanup_module, ptr @__initcall__kmod_act_nat__618_353_nat_init_module6, ptr @nat_cleanup_module, ptr @act_nat_ops, ptr @nat_net_ops, ptr @.str, ptr @.str.1, ptr @nat_net_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nat_policy, ptr @tc_action_net_init.__key, ptr @.str.7, ptr @xa_init_flags.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_nat_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nat_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_nat_ops, ptr noundef nonnull @nat_net_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nat_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_nat_ops, ptr noundef nonnull @nat_net_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_nat_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %2, %conv.i
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not.i = icmp eq i64 %5, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !49

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %old_addr2 = getelementptr inbounds %struct.tcf_nat, ptr %a, i32 0, i32 1
  %7 = ptrtoint ptr %old_addr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old_addr2, align 16
  %new_addr3 = getelementptr inbounds %struct.tcf_nat, ptr %a, i32 0, i32 2
  %9 = ptrtoint ptr %new_addr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_addr3, align 4
  %mask4 = getelementptr inbounds %struct.tcf_nat, ptr %a, i32 0, i32 3
  %11 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask4, align 8
  %flags = getelementptr inbounds %struct.tcf_nat, ptr %a, i32 0, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 1
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %15 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tcfa_action, align 8
  %tcfa_bstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %17 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.i.not.i = icmp eq i16 %22, 0
  br i1 %tobool.i.not.i, label %tcf_lastuse_update.exit.cond.end.i_crit_edge, label %cond.true.i

tcf_lastuse_update.exit.cond.end.i_crit_edge:     ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %gso_segs.i, align 2
  %conv4.i = zext i16 %24 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tcf_lastuse_update.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ 1, %tcf_lastuse_update.exit.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i, label %cond.end.i.bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i

cond.end.i.bstats_update.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

land.lhs.true.i.i.i.i:                            ; preds = %cond.end.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %30 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %35, ptrtoint (ptr @lockdep_recursion to i32)
  %36 = inttoptr i32 %add.i.i.i.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !51
  %39 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i7.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool20.not.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %43 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.bstats_update.exit_crit_edge

land.rhs.i.i.i.i.bstats_update.exit_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %47 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i9.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %50, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  %51 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %54, ptrtoint (ptr @hardirqs_enabled to i32)
  %55 = inttoptr i32 %add47.i.i.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  %58 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i12.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool54.not.i.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !54

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i266 = zext i32 %18 to i64
  %syncp.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2
  %62 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2, i32 0, i32 1
  %64 = tail call ptr @llvm.returnaddress(i32 0) #8
  %65 = ptrtoint ptr %64 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %65) #8
  %66 = ptrtoint ptr %tcfa_bstats to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %tcfa_bstats, align 8
  %add.i.i.i267 = add i64 %67, %conv.i266
  store i64 %add.i.i.i267, ptr %tcfa_bstats, align 8
  %packets2.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %68 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %69, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %65) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  %70 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %71, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %bstats_update.exit.drop_crit_edge, label %if.end, !prof !49

bstats_update.exit.drop_crit_edge:                ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end:                                           ; preds = %bstats_update.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %72 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %74 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i268 = zext i16 %75 to i32
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 %conv.i.i268
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %80 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %79, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i269 = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i269, label %if.end.i270, label %if.end.if.end12_crit_edge, !prof !49

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i270:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %add)
  %cmp3.i = icmp ult i32 %79, %add
  br i1 %cmp3.i, label %if.end.i270.drop_crit_edge, label %pskb_may_pull.exit, !prof !49

if.end.i270.drop_crit_edge:                       ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i270
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end12_crit_edge

pskb_may_pull.exit.if.end12_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end12:                                         ; preds = %pskb_may_pull.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %82 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i, align 8
  %84 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i273 = zext i16 %85 to i32
  %add.ptr.i.i274 = getelementptr i8, ptr %83, i32 %conv.i.i273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i274, i32 0, i32 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i274, i32 0, i32 9
  %addr.0.in = select i1 %tobool14.not, ptr %daddr, ptr %saddr
  %86 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load4_noabort(i32 %86)
  %addr.0 = load i32, ptr %addr.0.in, align 4
  %xor = xor i32 %addr.0, %8
  %and17 = and i32 %xor, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else34

if.then19:                                        ; preds = %if.end12
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %87 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then19.if.end24_crit_edge, label %skb_cloned.exit.i

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

skb_cloned.exit.i:                                ; preds = %if.then19
  %88 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #8
  %90 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %91, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end24_crit_edge, label %land.lhs.true.i

skb_cloned.exit.i.if.end24_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true.i:                                  ; preds = %skb_cloned.exit.i
  %92 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i

land.lhs.true.i.skb_clone_writable.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_clone_writable.exit.i

skb_header_cloned.exit.i.i:                       ; preds = %land.lhs.true.i
  %93 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #8
  %95 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %96, 65535
  %shr.i.i.i = ashr i32 %96, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge

skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_try_make_writable.exit

skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_clone_writable.exit.i

skb_clone_writable.exit.i:                        ; preds = %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge
  %97 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i, align 4
  %99 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i.i.i = add i32 %add, %sub.ptr.lhs.cast.i.i.i
  %add.i.i276 = sub i32 %sub.ptr.sub.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %hdr_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %101 = ptrtoint ptr %hdr_len.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %hdr_len.i.i, align 2
  %conv.i.i277 = zext i16 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i276, i32 %conv.i.i277)
  %cmp.i7.not.i = icmp ugt i32 %add.i.i276, %conv.i.i277
  br i1 %cmp.i7.not.i, label %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, label %skb_clone_writable.exit.i.if.end24_crit_edge

skb_clone_writable.exit.i.if.end24_crit_edge:     ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_try_make_writable.exit

skb_try_make_writable.exit:                       ; preds = %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge
  %call3.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %skb_try_make_writable.exit.if.end24_crit_edge, label %skb_try_make_writable.exit.drop_crit_edge

skb_try_make_writable.exit.drop_crit_edge:        ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

skb_try_make_writable.exit.if.end24_crit_edge:    ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %skb_try_make_writable.exit.if.end24_crit_edge, %skb_clone_writable.exit.i.if.end24_crit_edge, %skb_cloned.exit.i.if.end24_crit_edge, %if.then19.if.end24_crit_edge
  %and25 = and i32 %12, %10
  %neg = xor i32 %12, -1
  %and26 = and i32 %addr.0, %neg
  %or = or i32 %and26, %and25
  %103 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %head.i.i, align 8
  %105 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i280 = zext i16 %106 to i32
  %add.ptr.i.i281 = getelementptr i8, ptr %104, i32 %conv.i.i280
  %daddr32 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i281, i32 0, i32 9
  %saddr30 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i281, i32 0, i32 8
  %daddr32.sink = select i1 %tobool14.not, ptr %daddr32, ptr %saddr30
  %107 = ptrtoint ptr %daddr32.sink to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or, ptr %daddr32.sink, align 4
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i281, i32 0, i32 7
  %108 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %check, align 2
  %conv.i.i = zext i16 %109 to i32
  %neg.i = xor i32 %conv.i.i, -1
  %neg.i.i = xor i32 %addr.0, -1
  %add.i.i.i = add i32 %neg.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %neg.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %neg.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %or
  %add.i.i = add i32 %add1.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %or)
  %cmp.i.i = icmp ult i32 %add.i.i, %or
  %conv.i5.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i5.i
  %110 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #11, !srcloc !57
  %neg.i6.i = xor i32 %110, -1
  %shr.i.i = lshr i32 %neg.i6.i, 16
  %conv.i7.i = trunc i32 %shr.i.i to i16
  %111 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv.i7.i, ptr %check, align 2
  br label %if.end42

if.else34:                                        ; preds = %if.end12
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i274, i32 0, i32 4
  %112 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %frag_off, align 2
  %114 = and i16 %113, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool36.not = icmp eq i16 %114, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %if.else34.cleanup153_crit_edge

if.else34.cleanup153_crit_edge:                   ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

lor.lhs.false:                                    ; preds = %if.else34
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i274, i32 0, i32 6
  %115 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp38.not = icmp eq i8 %116, 1
  br i1 %cmp38.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.cleanup153_crit_edge

lor.lhs.false.cleanup153_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end42:                                         ; preds = %lor.lhs.false.if.end42_crit_edge, %if.end24
  %iph.0 = phi ptr [ %add.ptr.i.i274, %lor.lhs.false.if.end42_crit_edge ], [ %add.ptr.i.i281, %if.end24 ]
  %new_addr.0 = phi i32 [ %10, %lor.lhs.false.if.end42_crit_edge ], [ %or, %if.end24 ]
  %117 = ptrtoint ptr %iph.0 to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load = load i8, ptr %iph.0, align 4
  %bf.clear = shl i8 %bf.load, 2
  %118 = and i8 %bf.clear, 60
  %mul = zext i8 %118 to i32
  %frag_off44 = getelementptr inbounds %struct.iphdr, ptr %iph.0, i32 0, i32 4
  %119 = ptrtoint ptr %frag_off44 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %frag_off44, align 2
  %121 = and i16 %120, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool47.not = icmp eq i16 %121, 0
  br i1 %tobool47.not, label %cond.end, label %if.end42.cleanup153_crit_edge

if.end42.cleanup153_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

cond.end:                                         ; preds = %if.end42
  %protocol48 = getelementptr inbounds %struct.iphdr, ptr %iph.0, i32 0, i32 6
  %122 = ptrtoint ptr %protocol48 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %protocol48, align 1
  %124 = zext i8 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values)
  switch i8 %123, label %cond.end.cleanup153_crit_edge [
    i8 6, label %sw.bb
    i8 17, label %sw.bb62
    i8 1, label %sw.bb94
  ]

cond.end.cleanup153_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

sw.bb:                                            ; preds = %cond.end
  %add50 = add i32 %sub.ptr.sub.i, %mul
  %add51 = add i32 %add50, 20
  %125 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len.i.i, align 4
  %127 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i284 = sub i32 %126, %128
  call void @__sanitizer_cov_trace_cmp4(i32 %add51, i32 %sub.i.i284)
  %cmp.not.i285 = icmp ugt i32 %add51, %sub.i.i284
  br i1 %cmp.not.i285, label %if.end.i287, label %sw.bb.lor.lhs.false53_crit_edge, !prof !49

sw.bb.lor.lhs.false53_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false53

if.end.i287:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %add51)
  %cmp3.i286 = icmp ult i32 %126, %add51
  br i1 %cmp3.i286, label %if.end.i287.drop_crit_edge, label %pskb_may_pull.exit293, !prof !49

if.end.i287.drop_crit_edge:                       ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

pskb_may_pull.exit293:                            ; preds = %if.end.i287
  %sub.i288 = sub i32 %add51, %sub.i.i284
  %call13.i289 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i288) #8
  %cmp14.i290.not = icmp eq ptr %call13.i289, null
  br i1 %cmp14.i290.not, label %pskb_may_pull.exit293.drop_crit_edge, label %pskb_may_pull.exit293.lor.lhs.false53_crit_edge

pskb_may_pull.exit293.lor.lhs.false53_crit_edge:  ; preds = %pskb_may_pull.exit293
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false53

pskb_may_pull.exit293.drop_crit_edge:             ; preds = %pskb_may_pull.exit293
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

lor.lhs.false53:                                  ; preds = %pskb_may_pull.exit293.lor.lhs.false53_crit_edge, %sw.bb.lor.lhs.false53_crit_edge
  %call56 = tail call fastcc i32 @skb_try_make_writable(ptr noundef %skb, i32 noundef %add51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup, label %lor.lhs.false53.drop_crit_edge

lor.lhs.false53.drop_crit_edge:                   ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

cleanup:                                          ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %head.i.i, align 8
  %131 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %network_header.i.i, align 4
  %conv.i294 = zext i16 %132 to i32
  %add.ptr.i = getelementptr i8, ptr %130, i32 %conv.i294
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %mul
  %check61 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 6
  tail call void @inet_proto_csum_replace4(ptr noundef %check61, ptr noundef %skb, i32 noundef %addr.0, i32 noundef %new_addr.0, i1 noundef zeroext true) #8
  br label %cleanup153

sw.bb62:                                          ; preds = %cond.end
  %add63 = add i32 %sub.ptr.sub.i, %mul
  %add64 = add i32 %add63, 8
  %133 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len.i.i, align 4
  %135 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i297 = sub i32 %134, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %add64, i32 %sub.i.i297)
  %cmp.not.i298 = icmp ugt i32 %add64, %sub.i.i297
  br i1 %cmp.not.i298, label %if.end.i300, label %sw.bb62.lor.lhs.false66_crit_edge, !prof !49

sw.bb62.lor.lhs.false66_crit_edge:                ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false66

if.end.i300:                                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %add64)
  %cmp3.i299 = icmp ult i32 %134, %add64
  br i1 %cmp3.i299, label %if.end.i300.drop_crit_edge, label %pskb_may_pull.exit306, !prof !49

if.end.i300.drop_crit_edge:                       ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

pskb_may_pull.exit306:                            ; preds = %if.end.i300
  %sub.i301 = sub i32 %add64, %sub.i.i297
  %call13.i302 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i301) #8
  %cmp14.i303.not = icmp eq ptr %call13.i302, null
  br i1 %cmp14.i303.not, label %pskb_may_pull.exit306.drop_crit_edge, label %pskb_may_pull.exit306.lor.lhs.false66_crit_edge

pskb_may_pull.exit306.lor.lhs.false66_crit_edge:  ; preds = %pskb_may_pull.exit306
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false66

pskb_may_pull.exit306.drop_crit_edge:             ; preds = %pskb_may_pull.exit306
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

lor.lhs.false66:                                  ; preds = %pskb_may_pull.exit306.lor.lhs.false66_crit_edge, %sw.bb62.lor.lhs.false66_crit_edge
  %call69 = tail call fastcc i32 @skb_try_make_writable(ptr noundef %skb, i32 noundef %add64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %lor.lhs.false66.drop_crit_edge

lor.lhs.false66.drop_crit_edge:                   ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end72:                                         ; preds = %lor.lhs.false66
  %137 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %head.i.i, align 8
  %139 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %network_header.i.i, align 4
  %conv.i309 = zext i16 %140 to i32
  %add.ptr.i310 = getelementptr i8, ptr %138, i32 %conv.i309
  %add.ptr74 = getelementptr i8, ptr %add.ptr.i310, i32 %mul
  %check75 = getelementptr inbounds %struct.udphdr, ptr %add.ptr74, i32 0, i32 3
  %141 = ptrtoint ptr %check75 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %check75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %tobool77.not = icmp eq i16 %142, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %if.end72.if.then84_crit_edge

if.end72.if.then84_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then84

lor.lhs.false78:                                  ; preds = %if.end72
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %143 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %143)
  %bf.load79 = load i16, ptr %ip_summed, align 8
  %144 = and i16 %bf.load79, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %144)
  %cmp82 = icmp eq i16 %144, 1536
  br i1 %cmp82, label %lor.lhs.false78.if.then84_crit_edge, label %lor.lhs.false78.cleanup153_crit_edge

lor.lhs.false78.cleanup153_crit_edge:             ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

lor.lhs.false78.if.then84_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then84

if.then84:                                        ; preds = %lor.lhs.false78.if.then84_crit_edge, %if.end72.if.then84_crit_edge
  tail call void @inet_proto_csum_replace4(ptr noundef %check75, ptr noundef %skb, i32 noundef %addr.0, i32 noundef %new_addr.0, i1 noundef zeroext true) #8
  %145 = ptrtoint ptr %check75 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %check75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool87.not = icmp eq i16 %146, 0
  br i1 %tobool87.not, label %if.then88, label %if.then84.cleanup153_crit_edge

if.then84.cleanup153_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %check75 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -1, ptr %check75, align 2
  br label %cleanup153

sw.bb94:                                          ; preds = %cond.end
  %add95 = add i32 %sub.ptr.sub.i, %mul
  %add96 = add i32 %add95, 8
  %148 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %len.i.i, align 4
  %150 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i313 = sub i32 %149, %151
  call void @__sanitizer_cov_trace_cmp4(i32 %add96, i32 %sub.i.i313)
  %cmp.not.i314 = icmp ugt i32 %add96, %sub.i.i313
  br i1 %cmp.not.i314, label %if.end.i316, label %sw.bb94.if.end99_crit_edge, !prof !49

sw.bb94.if.end99_crit_edge:                       ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end.i316:                                      ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %add96)
  %cmp3.i315 = icmp ult i32 %149, %add96
  br i1 %cmp3.i315, label %if.end.i316.drop_crit_edge, label %pskb_may_pull.exit322, !prof !49

if.end.i316.drop_crit_edge:                       ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

pskb_may_pull.exit322:                            ; preds = %if.end.i316
  %sub.i317 = sub i32 %add96, %sub.i.i313
  %call13.i318 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i317) #8
  %cmp14.i319.not = icmp eq ptr %call13.i318, null
  br i1 %cmp14.i319.not, label %pskb_may_pull.exit322.drop_crit_edge, label %pskb_may_pull.exit322.if.end99_crit_edge

pskb_may_pull.exit322.if.end99_crit_edge:         ; preds = %pskb_may_pull.exit322
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

pskb_may_pull.exit322.drop_crit_edge:             ; preds = %pskb_may_pull.exit322
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end99:                                         ; preds = %pskb_may_pull.exit322.if.end99_crit_edge, %sw.bb94.if.end99_crit_edge
  %152 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %head.i.i, align 8
  %154 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %network_header.i.i, align 4
  %conv.i325 = zext i16 %155 to i32
  %add.ptr.i326 = getelementptr i8, ptr %153, i32 %conv.i325
  %add.ptr101 = getelementptr i8, ptr %add.ptr.i326, i32 %mul
  %156 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %add.ptr101, align 4
  %158 = zext i8 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %157, label %if.end99.cleanup153_crit_edge [
    i8 3, label %if.end99.if.end105_crit_edge
    i8 4, label %if.end99.if.end105_crit_edge357
    i8 5, label %if.end99.if.end105_crit_edge358
    i8 11, label %if.end99.if.end105_crit_edge359
    i8 12, label %if.end99.if.end105_crit_edge360
  ]

if.end99.if.end105_crit_edge360:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end99.if.end105_crit_edge359:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end99.if.end105_crit_edge358:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end99.if.end105_crit_edge357:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end99.cleanup153_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

if.end105:                                        ; preds = %if.end99.if.end105_crit_edge, %if.end99.if.end105_crit_edge357, %if.end99.if.end105_crit_edge358, %if.end99.if.end105_crit_edge359, %if.end99.if.end105_crit_edge360
  %add108 = add i32 %add95, 28
  %call109 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %add108)
  br i1 %call109, label %if.end111, label %if.end105.drop_crit_edge

if.end105.drop_crit_edge:                         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end111:                                        ; preds = %if.end105
  %159 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %head.i.i, align 8
  %161 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %network_header.i.i, align 4
  %conv.i330 = zext i16 %162 to i32
  %add.ptr.i331 = getelementptr i8, ptr %160, i32 %conv.i330
  %add.ptr113 = getelementptr i8, ptr %add.ptr.i331, i32 %mul
  %add.ptr114 = getelementptr %struct.icmphdr, ptr %add.ptr113, i32 1
  %daddr117 = getelementptr inbounds %struct.iphdr, ptr %add.ptr114, i32 0, i32 9
  %saddr119 = getelementptr inbounds %struct.iphdr, ptr %add.ptr114, i32 0, i32 8
  %addr.1.in = select i1 %tobool14.not, ptr %saddr119, ptr %daddr117
  %163 = ptrtoint ptr %addr.1.in to i32
  call void @__asan_load4_noabort(i32 %163)
  %addr.1 = load i32, ptr %addr.1.in, align 4
  %xor121 = xor i32 %addr.1, %8
  %and122 = and i32 %xor121, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end111.cleanup153_crit_edge

if.end111.cleanup153_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

if.end125:                                        ; preds = %if.end111
  %call129 = tail call fastcc i32 @skb_try_make_writable(ptr noundef %skb, i32 noundef %add108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end125.drop_crit_edge

if.end125.drop_crit_edge:                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end132:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %head.i.i, align 8
  %166 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %network_header.i.i, align 4
  %conv.i334 = zext i16 %167 to i32
  %add.ptr.i335 = getelementptr i8, ptr %165, i32 %conv.i334
  %add.ptr134 = getelementptr i8, ptr %add.ptr.i335, i32 %mul
  %add.ptr135 = getelementptr %struct.icmphdr, ptr %add.ptr134, i32 1
  %and136 = and i32 %new_addr.0, %12
  %neg137 = xor i32 %12, -1
  %and138 = and i32 %addr.1, %neg137
  %or139 = or i32 %and138, %and136
  %saddr144 = getelementptr inbounds %struct.iphdr, ptr %add.ptr135, i32 0, i32 8
  %daddr142 = getelementptr inbounds %struct.iphdr, ptr %add.ptr135, i32 0, i32 9
  %saddr144.sink = select i1 %tobool14.not, ptr %saddr144, ptr %daddr142
  %168 = ptrtoint ptr %saddr144.sink to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or139, ptr %saddr144.sink, align 4
  %checksum = getelementptr inbounds %struct.icmphdr, ptr %add.ptr134, i32 0, i32 2
  tail call void @inet_proto_csum_replace4(ptr noundef %checksum, ptr noundef %skb, i32 noundef %addr.1, i32 noundef %or139, i1 noundef zeroext false) #8
  br label %cleanup153

drop:                                             ; preds = %if.end125.drop_crit_edge, %if.end105.drop_crit_edge, %pskb_may_pull.exit322.drop_crit_edge, %if.end.i316.drop_crit_edge, %lor.lhs.false66.drop_crit_edge, %pskb_may_pull.exit306.drop_crit_edge, %if.end.i300.drop_crit_edge, %lor.lhs.false53.drop_crit_edge, %pskb_may_pull.exit293.drop_crit_edge, %if.end.i287.drop_crit_edge, %skb_try_make_writable.exit.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i270.drop_crit_edge, %bstats_update.exit.drop_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock) #8
  %drops = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 2
  %169 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %drops, align 8
  %inc = add i32 %170, 1
  store i32 %inc, ptr %drops, align 8
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock) #8
  br label %cleanup153

cleanup153:                                       ; preds = %drop, %if.end132, %if.end111.cleanup153_crit_edge, %if.end99.cleanup153_crit_edge, %if.then88, %if.then84.cleanup153_crit_edge, %lor.lhs.false78.cleanup153_crit_edge, %cleanup, %cond.end.cleanup153_crit_edge, %if.end42.cleanup153_crit_edge, %lor.lhs.false.cleanup153_crit_edge, %if.else34.cleanup153_crit_edge
  %retval.0 = phi i32 [ 2, %drop ], [ %16, %cleanup ], [ %16, %cond.end.cleanup153_crit_edge ], [ %16, %if.else34.cleanup153_crit_edge ], [ %16, %lor.lhs.false.cleanup153_crit_edge ], [ %16, %lor.lhs.false78.cleanup153_crit_edge ], [ %16, %if.then88 ], [ %16, %if.then84.cleanup153_crit_edge ], [ %16, %if.end99.cleanup153_crit_edge ], [ %16, %if.end111.cleanup153_crit_edge ], [ %16, %if.end132 ], [ %16, %if.end42.cleanup153_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_nat_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %opt = alloca %struct.tc_nat, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt) #8
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %2 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcfa_index, align 4
  %4 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %opt, align 4
  %capab = getelementptr inbounds %struct.tc_nat, ptr %opt, i32 0, i32 1
  %5 = ptrtoint ptr %capab to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %capab, align 4
  %action = getelementptr inbounds %struct.tc_nat, ptr %opt, i32 0, i32 2
  %refcnt = getelementptr inbounds %struct.tc_nat, ptr %opt, i32 0, i32 3
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #8
  %6 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %7, %ref
  %8 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %refcnt, align 4
  %bindcnt = getelementptr inbounds %struct.tc_nat, ptr %opt, i32 0, i32 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #8
  %9 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %10, %bind
  %11 = ptrtoint ptr %bindcnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub5, ptr %bindcnt, align 4
  %old_addr = getelementptr inbounds %struct.tc_nat, ptr %opt, i32 0, i32 5
  %new_addr = getelementptr inbounds %struct.tc_nat, ptr %opt, i32 0, i32 6
  %mask = getelementptr inbounds %struct.tc_nat, ptr %opt, i32 0, i32 7
  %flags = getelementptr inbounds %struct.tc_nat, ptr %opt, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #8
  %12 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %13 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %14 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #8
  %old_addr7 = getelementptr inbounds %struct.tcf_nat, ptr %a, i32 0, i32 1
  %15 = ptrtoint ptr %old_addr7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old_addr7, align 16
  %17 = ptrtoint ptr %old_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old_addr, align 4
  %new_addr9 = getelementptr inbounds %struct.tcf_nat, ptr %a, i32 0, i32 2
  %18 = ptrtoint ptr %new_addr9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %new_addr9, align 4
  %20 = ptrtoint ptr %new_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %new_addr, align 4
  %mask11 = getelementptr inbounds %struct.tcf_nat, ptr %a, i32 0, i32 3
  %21 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask11, align 8
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mask, align 4
  %flags13 = getelementptr inbounds %struct.tcf_nat, ptr %a, i32 0, i32 4
  %24 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags13, align 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flags, align 4
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %27 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tcfa_action, align 8
  %29 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %action, align 4
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 36, ptr noundef nonnull %opt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %30 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tcfa_tm, align 8
  %34 = trunc i64 %33 to i32
  %conv1.i = sub i32 %31, %34
  %call.i = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #8
  %conv2.i = sext i32 %call.i to i64
  %35 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %lastuse.i, align 8
  %39 = trunc i64 %38 to i32
  %conv6.i = sub i32 %36, %39
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #8
  %conv8.i = sext i32 %call7.i to i64
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv8.i, ptr %30, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool.not.i = icmp eq i64 %42, 0
  br i1 %tobool.not.i, label %if.end.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end.tcf_tm_dump.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %44 = trunc i64 %42 to i32
  %conv13.i = sub i32 %43, %44
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #8
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv15.i, ptr %13, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %47 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #8
  %conv19.i = sext i32 %call18.i to i64
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv19.i, ptr %12, align 8
  %call19 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end22:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #8
  %tobool.not.i45 = icmp eq ptr %1, null
  br i1 %tobool.not.i45, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %52, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !49

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end22
  %retval.0 = phi i32 [ %50, %if.end22 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_nat_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nat_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_nat_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nat_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #8
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %2 = call ptr @memset(ptr %tb, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #8
  %3 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %cmp = icmp eq ptr %nla, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %4 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @nat_policy, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call12 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end7
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call17 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %12, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_nat_ops, i32 noundef %and.lobit, i1 noundef zeroext false, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then14.if.end35_crit_edge, label %if.then19

if.then14.if.end35_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %14) #8
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp21 = icmp slt i32 %call12, 1
  %brmerge = or i1 %tobool, %cmp21
  %call12.mux = select i1 %cmp21, i32 %call12, i32 0
  br i1 %brmerge, label %if.else.cleanup_crit_edge, label %if.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.else
  %and27 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a, align 4
  %call31 = call i32 @tcf_idr_release(ptr noundef %16, i1 noundef zeroext false) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end26.if.end35_crit_edge, %if.then14.if.end35_crit_edge
  %ret.0 = phi i32 [ 0, %if.end26.if.end35_crit_edge ], [ 1, %if.then14.if.end35_crit_edge ]
  %action = getelementptr i8, ptr %7, i32 12
  %17 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %action, align 4
  %call36 = call i32 @tcf_action_check_ctrlact(i32 noundef %18, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  %19 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %a, align 4
  br i1 %cmp37, label %release_idr, label %if.end40

if.end40:                                         ; preds = %if.end35
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %20, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #8
  %old_addr = getelementptr i8, ptr %7, i32 24
  %21 = ptrtoint ptr %old_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old_addr, align 4
  %old_addr41 = getelementptr inbounds %struct.tcf_nat, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %old_addr41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %old_addr41, align 16
  %new_addr = getelementptr i8, ptr %7, i32 28
  %24 = ptrtoint ptr %new_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_addr, align 4
  %new_addr42 = getelementptr inbounds %struct.tcf_nat, ptr %20, i32 0, i32 2
  %26 = ptrtoint ptr %new_addr42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %new_addr42, align 4
  %mask = getelementptr i8, ptr %7, i32 32
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask, align 4
  %mask43 = getelementptr inbounds %struct.tcf_nat, ptr %20, i32 0, i32 3
  %29 = ptrtoint ptr %mask43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mask43, align 8
  %flags44 = getelementptr i8, ptr %7, i32 36
  %30 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags44, align 4
  %flags45 = getelementptr inbounds %struct.tcf_nat, ptr %20, i32 0, i32 4
  %32 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %flags45, align 4
  %33 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %a, align 4
  %35 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %action, align 4
  %37 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %goto_ch, align 4
  %call47 = call ptr @tcf_action_set_ctrlact(ptr noundef %34, i32 noundef %36, ptr noundef %38) #8
  %39 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call47, ptr %goto_ch, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #8
  %40 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %goto_ch, align 4
  %tobool50.not = icmp eq ptr %41, null
  br i1 %tobool50.not, label %if.end40.cleanup_crit_edge, label %if.then51

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void @tcf_chain_put_by_act(ptr noundef nonnull %41) #8
  br label %cleanup

release_idr:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = call i32 @tcf_idr_release(ptr noundef %20, i1 noundef zeroext %tobool) #8
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %if.then51, %if.end40.cleanup_crit_edge, %if.then29, %if.else.cleanup_crit_edge, %if.then19, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %release_idr ], [ -17, %if.then29 ], [ %call17, %if.then19 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call12.mux, %if.else.cleanup_crit_edge ], [ %ret.0, %if.then51 ], [ %ret.0, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_nat_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nat_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #8
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !49

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !49

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #8
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_try_make_writable(ptr noundef %skb, i32 noundef %write_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %skb_cloned.exit

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.land.end_crit_edge, label %land.lhs.true

skb_cloned.exit.land.end_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %skb_cloned.exit
  %5 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %land.lhs.true.skb_clone_writable.exit_crit_edge, label %skb_header_cloned.exit.i

land.lhs.true.skb_clone_writable.exit_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_clone_writable.exit

skb_header_cloned.exit.i:                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %9, 65535
  %shr.i.i = ashr i32 %9, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.skb_clone_writable.exit_crit_edge, label %skb_header_cloned.exit.i.land.rhs_crit_edge

skb_header_cloned.exit.i.land.rhs_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

skb_header_cloned.exit.i.skb_clone_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_clone_writable.exit

skb_clone_writable.exit:                          ; preds = %skb_header_cloned.exit.i.skb_clone_writable.exit_crit_edge, %land.lhs.true.skb_clone_writable.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = add i32 %sub.ptr.lhs.cast.i.i, %write_len
  %add.i = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  %hdr_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %14 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hdr_len.i, align 2
  %conv.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i7.not = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp.i7.not, label %skb_clone_writable.exit.land.rhs_crit_edge, label %skb_clone_writable.exit.land.end_crit_edge

skb_clone_writable.exit.land.end_crit_edge:       ; preds = %skb_clone_writable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

skb_clone_writable.exit.land.rhs_crit_edge:       ; preds = %skb_clone_writable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %skb_clone_writable.exit.land.rhs_crit_edge, %skb_header_cloned.exit.i.land.rhs_crit_edge
  %call3 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4 = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %skb_clone_writable.exit.land.end_crit_edge, %skb_cloned.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i32 [ 0, %skb_clone_writable.exit.land.end_crit_edge ], [ 0, %skb_cloned.exit.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 0, %entry.land.end_crit_edge ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %8 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_check_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nat_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nat_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #12
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_nat_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @tc_action_net_init.__key) #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idr_next.i.i.i, align 4
  br label %tc_action_net_init.exit

tc_action_net_init.exit:                          ; preds = %if.end.i, %entry.tc_action_net_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.tc_action_net_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nat_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nat_net_id, align 4
  tail call void @rtnl_lock() #8
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #8
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idrinfo_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_register_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__UNIQUE_ID_description615, !1, !"__UNIQUE_ID_description615", i1 false, i1 false}
!1 = !{!"../net/sched/act_nat.c", i32 340, i32 1}
!2 = !{ptr @__UNIQUE_ID_file616, !3, !"__UNIQUE_ID_file616", i1 false, i1 false}
!3 = !{!"../net/sched/act_nat.c", i32 341, i32 1}
!4 = !{ptr @__UNIQUE_ID_license617, !3, !"__UNIQUE_ID_license617", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_act_nat__618_353_nat_init_module6, !6, !"__initcall__kmod_act_nat__618_353_nat_init_module6", i1 false, i1 false}
!6 = !{!"../net/sched/act_nat.c", i32 353, i32 1}
!7 = !{ptr @__exitcall_nat_cleanup_module, !8, !"__exitcall_nat_cleanup_module", i1 false, i1 false}
!8 = !{!"../net/sched/act_nat.c", i32 354, i32 1}
!9 = !{ptr @act_nat_ops, !10, !"act_nat_ops", i1 false, i1 false}
!10 = !{!"../net/sched/act_nat.c", i32 309, i32 29}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/net/netlink.h", i32 991, i32 3}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nat_net_id, !28, !"nat_net_id", i1 false, i1 false}
!28 = !{!"../net/sched/act_nat.c", i32 29, i32 21}
!29 = !{ptr @nat_policy, !30, !"nat_policy", i1 false, i1 false}
!30 = !{!"../net/sched/act_nat.c", i32 32, i32 32}
!31 = !{ptr @nat_net_ops, !32, !"nat_net_ops", i1 false, i1 false}
!32 = !{!"../net/sched/act_nat.c", i32 333, i32 33}
!33 = !{ptr @tc_action_net_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/net/act_api.h", i32 156, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @xa_init_flags.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2149870162}
!51 = !{i64 2149875094}
!52 = !{i64 2149896806}
!53 = !{i64 2149901698}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2149978155}
!56 = !{i64 2149978480}
!57 = !{i64 6591468}
!58 = !{i64 2149362163}
!59 = !{i64 2149362429}
