; ModuleID = '/llk/IR_all_yes/net/sched/act_police.c_pt.bc'
source_filename = "../net/sched/act_police.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.104 }
%union.anon.104 = type { i32 }
%struct.anon.105 = type { i16, i16 }
%struct.gnet_stats_rate_est64 = type { i64, i64 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcf_police = type { %struct.tc_action, ptr, [108 x i8], %struct.spinlock, i64, i64, i64, i64, [48 x i8] }
%struct.tcf_police_params = type { i32, i32, i64, i32, i64, i64, %struct.psched_ratecfg, i8, %struct.psched_ratecfg, i8, %struct.psched_pktrate, i8, %struct.callback_head }
%struct.psched_ratecfg = type { i64, i32, i16, i16, i8, i8 }
%struct.psched_pktrate = type { i64, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.tc_police = type { i32, i32, i32, i32, i32, %struct.tc_ratespec, %struct.tc_ratespec, i32, i32, i32 }
%struct.tc_ratespec = type { i8, i8, i16, i16, i16, i32 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.127, ptr }
%union.anon.127 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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

@__UNIQUE_ID_author380 = internal constant [35 x i8] c"act_police.author=Alexey Kuznetsov\00", section ".modinfo", align 1
@__UNIQUE_ID_description381 = internal constant [40 x i8] c"act_police.description=Policing actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file382 = internal constant [37 x i8] c"act_police.file=net/sched/act_police\00", section ".modinfo", align 1
@__UNIQUE_ID_license383 = internal constant [23 x i8] c"act_police.license=GPL\00", section ".modinfo", align 1
@act_police_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"police\00\00\00\00\00\00\00\00\00\00", i32 1, i32 512, ptr null, ptr @tcf_police_act, ptr @tcf_police_dump, ptr @tcf_police_cleanup, ptr @tcf_police_search, ptr @tcf_police_init, ptr @tcf_police_walker, ptr @tcf_police_stats_update, ptr null, ptr null, ptr null, ptr @tcf_police_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@police_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @police_init_net, ptr null, ptr null, ptr @police_exit_net, ptr @police_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_police__384_480_police_init_module6 = internal global ptr @police_init_module, section ".initcall6.init", align 4
@__exitcall_police_cleanup_module = internal global ptr @police_cleanup_module, section ".exitcall.exit", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcf_police_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/act_police.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@tcf_police_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@police_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tcf_police_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(to_police(*a)->tcfp_lock)\00", [36 x i8] zeroinitializer }, align 32
@tcf_police_init.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"goto chain not allowed on fallback\00", [61 x i8] zeroinitializer }, align 32
@tcf_police_init.__msg.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Both or neither packet-per-second burst and rate must be provided\00", [62 x i8] zeroinitializer }, align 32
@tcf_police_init.__msg.11 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"packet-per-second and byte-per-second rate limits not allowed in same action\00", [51 x i8] zeroinitializer }, align 32
@tcf_police_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@police_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.105 } }, { i8, i8, i16, { %struct.anon.105 } } }>, [32 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.105 } }, { i8, i8, i16, { %struct.anon.105 } } }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 1024, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 1024, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.104 zeroinitializer }, { i8, i8, i16, { %struct.anon.105 } } { i8 4, i8 0, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 1, i16 0 } } }, { i8, i8, i16, { %struct.anon.105 } } { i8 4, i8 0, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 1, i16 0 } } } }>, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tcf_police_burst.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/net/tc_act/tc_police.h\00", [33 x i8] zeroinitializer }, align 32
@tcf_police_rate_bytes_ps.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_police_burst_pkt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_police_rate_pkt_ps.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_police_tcfp_mtu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 48, i64 60]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"act_police_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 436, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"police_net_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 463, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 254, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 271, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 349, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 991, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"police_net_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 25, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 45, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 695, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 723, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 99, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 141, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 150, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 157, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"police_policy\00", align 1
@___asan_gen_.68 = private constant [26 x i8] c"../net/sched/act_police.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 38, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [34 x i8] c"../include/net/tc_act/tc_police.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 72, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 156, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 378, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author380, ptr @__UNIQUE_ID_description381, ptr @__UNIQUE_ID_file382, ptr @__UNIQUE_ID_license383, ptr @__exitcall_police_cleanup_module, ptr @__initcall__kmod_act_police__384_480_police_init_module6, ptr @police_cleanup_module, ptr @act_police_ops, ptr @police_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @police_net_id, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tcf_police_init.__key, ptr @.str.9, ptr @tcf_police_init.__msg, ptr @tcf_police_init.__msg.10, ptr @tcf_police_init.__msg.11, ptr @police_policy, ptr @.str.13, ptr @tc_action_net_init.__key, ptr @.str.14, ptr @xa_init_flags.__key, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_police_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @police_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @police_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_police_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_police_init.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_police_init.__msg.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_police_init.__msg.11 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @police_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @police_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_police_ops, ptr noundef nonnull @police_net_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @police_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_police_ops, ptr noundef nonnull @police_net_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_police_act(ptr nocapture noundef readonly %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %sample = alloca %struct.gnet_stats_rate_est64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !81

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %cpu_bstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %7 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_bstats, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

land.lhs.true.i.i.i.i:                            ; preds = %cond.end.i
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %28 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %33, ptrtoint (ptr @lockdep_recursion to i32)
  %34 = inttoptr i32 %add.i.i.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %37 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i7.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool20.not.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %41 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i.i.i = icmp eq i32 %44, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.bstats_update.exit_crit_edge

land.rhs.i.i.i.i.bstats_update.exit_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %45 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i9.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %48, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %49 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %52, ptrtoint (ptr @hardirqs_enabled to i32)
  %53 = inttoptr i32 %add47.i.i.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %56 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i12.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool54.not.i.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i207 = zext i32 %18 to i64
  %syncp.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 2
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 2, i32 0, i32 1
  %62 = tail call ptr @llvm.returnaddress(i32 0) #10
  %63 = ptrtoint ptr %62 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %63) #10
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %16, align 8
  %add.i.i.i = add i64 %65, %conv.i207
  store i64 %add.i.i.i, ptr %16, align 8
  %packets2.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %66 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %67, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %63) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %68 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %70 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %tcfa_action, align 8
  %params = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 1
  %72 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %params, align 16
  %call13 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %land.lhs.true, label %bstats_update.exit.do.end19_crit_edge

bstats_update.exit.do.end19_crit_edge:            ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

land.lhs.true:                                    ; preds = %bstats_update.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true16

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b204 = load i1, ptr @tcf_police_act.__warned, align 1
  br i1 %.b204, label %land.lhs.true16.do.end19_crit_edge, label %if.then

land.lhs.true16.do.end19_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

if.then:                                          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_police_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then, %land.lhs.true16.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %bstats_update.exit.do.end19_crit_edge
  %tcfp_ewma_rate = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %tcfp_ewma_rate to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tcfp_ewma_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool21.not = icmp eq i32 %75, 0
  br i1 %tobool21.not, label %do.end19.if.end29_crit_edge, label %if.then22

do.end19.if.end29_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then22:                                        ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sample) #10
  %tcfa_rate_est = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 11
  %76 = call ptr @memset(ptr %sample, i32 255, i32 16)
  %call24 = call zeroext i1 @gen_estimator_read(ptr noundef %tcfa_rate_est, ptr noundef nonnull %sample) #10
  br i1 %call24, label %lor.lhs.false, label %if.then22.cleanup.thread_crit_edge

if.then22.cleanup.thread_crit_edge:               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.then22
  %77 = ptrtoint ptr %sample to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %sample, align 8
  %79 = ptrtoint ptr %tcfp_ewma_rate to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tcfp_ewma_rate, align 4
  %conv = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %conv)
  %cmp.not = icmp ult i64 %78, %conv
  br i1 %cmp.not, label %cleanup, label %lor.lhs.false.cleanup.thread_crit_edge

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %if.then22.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample) #10
  br label %do.body104

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample) #10
  br label %if.end29

if.end29:                                         ; preds = %cleanup, %do.end19.if.end29_crit_edge
  %81 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cb.i.i.i, align 4
  %tcfp_mtu = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 3
  %83 = ptrtoint ptr %tcfp_mtu to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tcfp_mtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp31.not = icmp ugt i32 %82, %84
  br i1 %cmp31.not, label %if.end29.do.body104_crit_edge, label %if.then33

if.end29.do.body104_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body104

if.then33:                                        ; preds = %if.end29
  %rate_present = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 7
  %85 = ptrtoint ptr %rate_present to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rate_present, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool34.not = icmp eq i8 %86, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.then33.if.end38_crit_edge

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true35:                                  ; preds = %if.then33
  %pps_present = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 11
  %87 = ptrtoint ptr %pps_present to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pps_present, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool36.not = icmp eq i8 %88, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true35.if.end38_crit_edge

land.lhs.true35.if.end38_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %73, align 8
  br label %cleanup133

if.end38:                                         ; preds = %land.lhs.true35.if.end38_crit_edge, %if.then33.if.end38_crit_edge
  %call.i = call i64 @ktime_get() #10
  %tcfp_lock = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %tcfp_lock) #10
  %tcfp_t_c = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 7
  %91 = ptrtoint ptr %tcfp_t_c to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %tcfp_t_c, align 8
  %sub = sub i64 %call.i, %92
  %tcfp_burst = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 2
  %93 = ptrtoint ptr %tcfp_burst to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %tcfp_burst, align 8
  %95 = call i64 @llvm.smin.i64(i64 %sub, i64 %94)
  %peak_present = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 9
  %96 = ptrtoint ptr %peak_present to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %peak_present, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool43.not = icmp eq i8 %97, 0
  br i1 %tobool43.not, label %if.end38.if.end54_crit_edge, label %if.then44

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then44:                                        ; preds = %if.end38
  %tcfp_ptoks = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 5
  %98 = ptrtoint ptr %tcfp_ptoks to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %tcfp_ptoks, align 8
  %add45 = add i64 %99, %95
  %tcfp_mtu_ptoks = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 4
  %100 = ptrtoint ptr %tcfp_mtu_ptoks to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %tcfp_mtu_ptoks, align 8
  %102 = call i64 @llvm.smin.i64(i64 %add45, i64 %101)
  %103 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cb.i.i.i, align 4
  %overhead.i = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 8, i32 2
  %105 = ptrtoint ptr %overhead.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %overhead.i, align 4
  %conv.i209 = zext i16 %106 to i32
  %add.i = add i32 %104, %conv.i209
  %mpu.i = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 8, i32 3
  %107 = ptrtoint ptr %mpu.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %mpu.i, align 2
  %conv1.i = zext i16 %108 to i32
  %109 = call i32 @llvm.umax.i32(i32 %add.i, i32 %conv1.i) #10
  %linklayer.i = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 8, i32 4
  %110 = ptrtoint ptr %linklayer.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %linklayer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp6.i = icmp eq i8 %111, 2
  br i1 %cmp6.i, label %if.then9.i, label %if.then44.psched_l2t_ns.exit_crit_edge, !prof !81

if.then44.psched_l2t_ns.exit_crit_edge:           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %psched_l2t_ns.exit

if.then9.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %109, 47
  %div.i = udiv i32 %sub.i, 48
  %mul.i = mul i32 %div.i, 53
  br label %psched_l2t_ns.exit

psched_l2t_ns.exit:                               ; preds = %if.then9.i, %if.then44.psched_l2t_ns.exit_crit_edge
  %.sink.i = phi i32 [ %mul.i, %if.then9.i ], [ %109, %if.then44.psched_l2t_ns.exit_crit_edge ]
  %conv16.i = zext i32 %.sink.i to i64
  %mult17.i = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 8, i32 1
  %112 = ptrtoint ptr %mult17.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mult17.i, align 8
  %conv18.i = zext i32 %113 to i64
  %mul19.i = mul nuw i64 %conv18.i, %conv16.i
  %shift20.i = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 8, i32 5
  %114 = ptrtoint ptr %shift20.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %shift20.i, align 1
  %sh_prom22.i = zext i8 %115 to i64
  %shr23.i = lshr i64 %mul19.i, %sh_prom22.i
  %sub53 = sub i64 %102, %shr23.i
  br label %if.end54

if.end54:                                         ; preds = %psched_l2t_ns.exit, %if.end38.if.end54_crit_edge
  %ptoks.1 = phi i64 [ %sub53, %psched_l2t_ns.exit ], [ 0, %if.end38.if.end54_crit_edge ]
  %116 = ptrtoint ptr %rate_present to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %rate_present, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool56.not = icmp eq i8 %117, 0
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end54
  %tcfp_toks = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 4
  %118 = ptrtoint ptr %tcfp_toks to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %tcfp_toks, align 16
  %add58 = add i64 %119, %95
  %120 = call i64 @llvm.smin.i64(i64 %add58, i64 %94)
  %121 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cb.i.i.i, align 4
  %overhead.i211 = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 6, i32 2
  %123 = ptrtoint ptr %overhead.i211 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %overhead.i211, align 4
  %conv.i212 = zext i16 %124 to i32
  %add.i213 = add i32 %122, %conv.i212
  %mpu.i214 = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 6, i32 3
  %125 = ptrtoint ptr %mpu.i214 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %mpu.i214, align 2
  %conv1.i215 = zext i16 %126 to i32
  %127 = call i32 @llvm.umax.i32(i32 %add.i213, i32 %conv1.i215) #10
  %linklayer.i216 = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 6, i32 4
  %128 = ptrtoint ptr %linklayer.i216 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %linklayer.i216, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %129)
  %cmp6.i217 = icmp eq i8 %129, 2
  br i1 %cmp6.i217, label %if.then9.i221, label %if.then57.psched_l2t_ns.exit230_crit_edge, !prof !81

if.then57.psched_l2t_ns.exit230_crit_edge:        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %psched_l2t_ns.exit230

if.then9.i221:                                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i218 = add i32 %127, 47
  %div.i219 = udiv i32 %sub.i218, 48
  %mul.i220 = mul i32 %div.i219, 53
  br label %psched_l2t_ns.exit230

psched_l2t_ns.exit230:                            ; preds = %if.then9.i221, %if.then57.psched_l2t_ns.exit230_crit_edge
  %.sink.i222 = phi i32 [ %mul.i220, %if.then9.i221 ], [ %127, %if.then57.psched_l2t_ns.exit230_crit_edge ]
  %conv16.i223 = zext i32 %.sink.i222 to i64
  %mult17.i224 = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 6, i32 1
  %130 = ptrtoint ptr %mult17.i224 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mult17.i224, align 8
  %conv18.i225 = zext i32 %131 to i64
  %mul19.i226 = mul nuw i64 %conv18.i225, %conv16.i223
  %shift20.i227 = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 6, i32 5
  %132 = ptrtoint ptr %shift20.i227 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %shift20.i227, align 1
  %sh_prom22.i228 = zext i8 %133 to i64
  %shr23.i229 = lshr i64 %mul19.i226, %sh_prom22.i228
  %sub67 = sub i64 %120, %shr23.i229
  br label %if.end90

if.else:                                          ; preds = %if.end54
  %pps_present68 = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 11
  %134 = ptrtoint ptr %pps_present68 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %pps_present68, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool69.not = icmp eq i8 %135, 0
  br i1 %tobool69.not, label %if.else.if.end90_crit_edge, label %if.then70

if.else.if.end90_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %tcfp_pkt_burst = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 5
  %136 = ptrtoint ptr %tcfp_pkt_burst to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %tcfp_pkt_burst, align 8
  %138 = call i64 @llvm.smin.i64(i64 %sub, i64 %137)
  %tcfp_pkttoks = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 6
  %139 = ptrtoint ptr %tcfp_pkttoks to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %tcfp_pkttoks, align 64
  %add80 = add i64 %138, %140
  %141 = call i64 @llvm.smin.i64(i64 %add80, i64 %137)
  %mult.i = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 10, i32 1
  %142 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mult.i, align 8
  %conv1.i231 = zext i32 %143 to i64
  %shift.i = getelementptr inbounds %struct.tcf_police_params, ptr %73, i32 0, i32 10, i32 2
  %144 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %shift.i, align 4
  %sh_prom.i = zext i8 %145 to i64
  %shr.i = lshr i64 %conv1.i231, %sh_prom.i
  %sub88 = sub i64 %141, %shr.i
  br label %if.end90

if.end90:                                         ; preds = %if.then70, %if.else.if.end90_crit_edge, %psched_l2t_ns.exit230
  %ppstoks.1 = phi i64 [ 0, %psched_l2t_ns.exit230 ], [ %sub88, %if.then70 ], [ 0, %if.else.if.end90_crit_edge ]
  %toks.1 = phi i64 [ %sub67, %psched_l2t_ns.exit230 ], [ %95, %if.then70 ], [ %95, %if.else.if.end90_crit_edge ]
  %or = or i64 %ppstoks.1, %ptoks.1
  %or91 = or i64 %or, %toks.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or91)
  %cmp92 = icmp sgt i64 %or91, -1
  br i1 %cmp92, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %tcfp_t_c to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %call.i, ptr %tcfp_t_c, align 8
  %tcfp_toks96 = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 4
  %147 = ptrtoint ptr %tcfp_toks96 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %toks.1, ptr %tcfp_toks96, align 16
  %tcfp_ptoks97 = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 5
  %148 = ptrtoint ptr %tcfp_ptoks97 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %ptoks.1, ptr %tcfp_ptoks97, align 8
  %tcfp_pkttoks98 = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 6
  %149 = ptrtoint ptr %tcfp_pkttoks98 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %ppstoks.1, ptr %tcfp_pkttoks98, align 64
  call void @_raw_spin_unlock_bh(ptr noundef %tcfp_lock) #10
  %150 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %73, align 8
  br label %inc_drops

if.end101:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %tcfp_lock) #10
  br label %do.body104

do.body104:                                       ; preds = %if.end101, %if.end29.do.body104_crit_edge, %cleanup.thread
  %cpu_qstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %152 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cpu_qstats, align 4
  %154 = ptrtoint ptr %153 to i32
  %155 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cpu, align 4
  %arrayidx114 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %156
  %157 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx114, align 4
  %add115 = add i32 %158, %154
  %159 = inttoptr i32 %add115 to ptr
  %overlimits.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %overlimits.i, align 4
  %inc.i = add i32 %161, 1
  store i32 %inc.i, ptr %overlimits.i, align 4
  br label %inc_drops

inc_drops:                                        ; preds = %do.body104, %if.then94
  %ret.0 = phi i32 [ %71, %do.body104 ], [ %151, %if.then94 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0)
  %cmp116 = icmp eq i32 %ret.0, 2
  br i1 %cmp116, label %do.body119, label %inc_drops.cleanup133_crit_edge

inc_drops.cleanup133_crit_edge:                   ; preds = %inc_drops
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup133

do.body119:                                       ; preds = %inc_drops
  call void @__sanitizer_cov_trace_pc() #12
  %cpu_qstats126 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %162 = ptrtoint ptr %cpu_qstats126 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cpu_qstats126, align 4
  %164 = ptrtoint ptr %163 to i32
  %165 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cpu, align 4
  %arrayidx130 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx130, align 4
  %add131 = add i32 %168, %164
  %169 = inttoptr i32 %add131 to ptr
  %drops.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %drops.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %drops.i, align 4
  %inc.i232 = add i32 %171, 1
  store i32 %inc.i232, ptr %drops.i, align 4
  br label %cleanup133

cleanup133:                                       ; preds = %do.body119, %inc_drops.cleanup133_crit_edge, %if.then37
  %retval.0 = phi i32 [ 2, %do.body119 ], [ %ret.0, %inc_drops.cleanup133_crit_edge ], [ %90, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_police_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i145 = alloca i32, align 4
  %tmp.i143 = alloca i32, align 4
  %tmp.i141 = alloca i64, align 8
  %tmp.i139 = alloca i64, align 8
  %tmp.i137 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %opt = alloca %struct.tc_police, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #10
  %2 = getelementptr inbounds i8, ptr %opt, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %4 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcfa_index, align 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %opt, align 4
  %refcnt = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 7
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #10
  %7 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %8, %ref
  %9 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %refcnt, align 4
  %bindcnt = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 8
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #10
  %10 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %11, %bind
  %12 = ptrtoint ptr %bindcnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub5, ptr %bindcnt, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #10
  %13 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %14 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %15 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %16 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #10
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %17 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tcfa_action, align 8
  %action = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 1
  %19 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %action, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true13

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b128 = load i1, ptr @tcf_police_dump.__warned, align 1
  br i1 %.b128, label %land.lhs.true13.do.end_crit_edge, label %if.then

land.lhs.true13.do.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_police_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 350, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true13.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %params = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 1
  %20 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params, align 16
  %tcfp_mtu = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %tcfp_mtu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tcfp_mtu, align 8
  %mtu = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 4
  %24 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mtu, align 4
  %tcfp_burst = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %tcfp_burst to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tcfp_burst, align 8
  %27 = lshr i64 %26, 6
  %conv = trunc i64 %27 to i32
  %burst = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 3
  %28 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %burst, align 4
  %rate_present = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 7
  %29 = ptrtoint ptr %rate_present to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rate_present, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool15.not = icmp eq i8 %30, 0
  br i1 %tobool15.not, label %do.end.if.end29_crit_edge, label %if.then16

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then16:                                        ; preds = %do.end
  %rate = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 5
  %rate17 = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 6
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %rate, align 4
  %32 = ptrtoint ptr %rate17 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rate17, align 8
  %34 = tail call i64 @llvm.umin.i64(i64 %33, i64 4294967295) #10
  %35 = trunc i64 %34 to i32
  %rate.i = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 5, i32 5
  %36 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rate.i, align 4
  %overhead.i = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %overhead.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %overhead.i, align 4
  %overhead1.i = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %overhead1.i, align 2
  %mpu.i = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 6, i32 3
  %40 = ptrtoint ptr %mpu.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mpu.i, align 2
  %mpu2.i = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 5, i32 4
  %42 = ptrtoint ptr %mpu2.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %mpu2.i, align 2
  %linklayer.i = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 6, i32 4
  %43 = ptrtoint ptr %linklayer.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %linklayer.i, align 8
  %45 = and i8 %44, 15
  %linklayer5.i = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %linklayer5.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %linklayer5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %33)
  %cmp = icmp ugt i64 %33, 4294967295
  br i1 %cmp, label %land.lhs.true21, label %if.then16.if.end29_crit_edge

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true21:                                  ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #10
  %47 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %33, ptr %tmp.i, align 8
  %call.i129 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool26.not = icmp eq i32 %call.i129, 0
  br i1 %tobool26.not, label %land.lhs.true21.if.end29_crit_edge, label %land.lhs.true21.nla_put_failure_crit_edge

land.lhs.true21.nla_put_failure_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true21.if.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true21.if.end29_crit_edge, %if.then16.if.end29_crit_edge, %do.end.if.end29_crit_edge
  %peak_present = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 9
  %48 = ptrtoint ptr %peak_present to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %peak_present, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool30.not = icmp eq i8 %49, 0
  br i1 %tobool30.not, label %if.end29.if.end45_crit_edge, label %if.then31

if.end29.if.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then31:                                        ; preds = %if.end29
  %peakrate = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 6
  %peak = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 8
  %50 = ptrtoint ptr %peakrate to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 0, ptr %peakrate, align 4
  %51 = ptrtoint ptr %peak to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %peak, align 8
  %53 = call i64 @llvm.umin.i64(i64 %52, i64 4294967295) #10
  %54 = trunc i64 %53 to i32
  %rate.i130 = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 6, i32 5
  %55 = ptrtoint ptr %rate.i130 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %rate.i130, align 4
  %overhead.i131 = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 8, i32 2
  %56 = ptrtoint ptr %overhead.i131 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %overhead.i131, align 4
  %overhead1.i132 = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 6, i32 2
  %58 = ptrtoint ptr %overhead1.i132 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %overhead1.i132, align 2
  %mpu.i133 = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 8, i32 3
  %59 = ptrtoint ptr %mpu.i133 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mpu.i133, align 2
  %mpu2.i134 = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 6, i32 4
  %61 = ptrtoint ptr %mpu2.i134 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %mpu2.i134, align 2
  %linklayer.i135 = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 8, i32 4
  %62 = ptrtoint ptr %linklayer.i135 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %linklayer.i135, align 8
  %64 = and i8 %63, 15
  %linklayer5.i136 = getelementptr inbounds %struct.tc_police, ptr %opt, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %linklayer5.i136 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %linklayer5.i136, align 1
  %66 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %params, align 16
  %peak33 = getelementptr inbounds %struct.tcf_police_params, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %peak33 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %peak33, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %69)
  %cmp35 = icmp ugt i64 %69, 4294967295
  br i1 %cmp35, label %land.lhs.true37, label %if.then31.if.end45_crit_edge

if.then31.if.end45_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true37:                                  ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i137) #10
  %70 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %tmp.i137, align 8
  %call.i138 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %tmp.i137, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i137) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool42.not = icmp eq i32 %call.i138, 0
  br i1 %tobool42.not, label %land.lhs.true37.if.end45_crit_edge, label %land.lhs.true37.nla_put_failure_crit_edge

land.lhs.true37.nla_put_failure_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true37.if.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true37.if.end45_crit_edge, %if.then31.if.end45_crit_edge, %if.end29.if.end45_crit_edge
  %pps_present = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 11
  %71 = ptrtoint ptr %pps_present to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pps_present, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool46.not = icmp eq i8 %72, 0
  br i1 %tobool46.not, label %if.end45.if.end58_crit_edge, label %if.then47

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then47:                                        ; preds = %if.end45
  %73 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %params, align 16
  %ppsrate = getelementptr inbounds %struct.tcf_police_params, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %ppsrate to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ppsrate, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i139) #10
  %77 = ptrtoint ptr %tmp.i139 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %tmp.i139, align 8
  %call.i140 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 10, i32 noundef 8, ptr noundef nonnull %tmp.i139, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i139) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool50.not = icmp eq i32 %call.i140, 0
  br i1 %tobool50.not, label %if.end52, label %if.then47.nla_put_failure_crit_edge

if.then47.nla_put_failure_crit_edge:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end52:                                         ; preds = %if.then47
  %tcfp_pkt_burst = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 5
  %78 = ptrtoint ptr %tcfp_pkt_burst to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %tcfp_pkt_burst, align 8
  %shr53 = ashr i64 %79, 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i141) #10
  %80 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %shr53, ptr %tmp.i141, align 8
  %call.i142 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %tmp.i141, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i141) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool55.not = icmp eq i32 %call.i142, 0
  br i1 %tobool55.not, label %if.end52.if.end58_crit_edge, label %if.end52.nla_put_failure_crit_edge

if.end52.nla_put_failure_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58:                                         ; preds = %if.end52.if.end58_crit_edge, %if.end45.if.end58_crit_edge
  %call59 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 56, ptr noundef nonnull %opt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.nla_put_failure_crit_edge

if.end58.nla_put_failure_crit_edge:               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end62:                                         ; preds = %if.end58
  %81 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool63.not = icmp eq i32 %82, 0
  br i1 %tobool63.not, label %if.end62.if.end69_crit_edge, label %land.lhs.true64

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

land.lhs.true64:                                  ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i143) #10
  %83 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tmp.i143, align 4
  %call.i144 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i143) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i143) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool67.not = icmp eq i32 %call.i144, 0
  br i1 %tobool67.not, label %land.lhs.true64.if.end69_crit_edge, label %land.lhs.true64.nla_put_failure_crit_edge

land.lhs.true64.nla_put_failure_crit_edge:        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true64.if.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true64.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  %tcfp_ewma_rate = getelementptr inbounds %struct.tcf_police_params, ptr %21, i32 0, i32 1
  %84 = ptrtoint ptr %tcfp_ewma_rate to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tcfp_ewma_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool70.not = icmp eq i32 %85, 0
  br i1 %tobool70.not, label %if.end69.if.end76_crit_edge, label %land.lhs.true71

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.lhs.true71:                                  ; preds = %if.end69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i145) #10
  %86 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tmp.i145, align 4
  %call.i146 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i145) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i145) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool74.not = icmp eq i32 %call.i146, 0
  br i1 %tobool74.not, label %land.lhs.true71.if.end76_crit_edge, label %land.lhs.true71.nla_put_failure_crit_edge

land.lhs.true71.nla_put_failure_crit_edge:        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true71.if.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.end76:                                         ; preds = %land.lhs.true71.if.end76_crit_edge, %if.end69.if.end76_crit_edge
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %88 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %tcfa_tm, align 8
  %90 = trunc i64 %89 to i32
  %conv1.i = sub i32 %87, %90
  %call.i147 = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #10
  %conv2.i = sext i32 %call.i147 to i64
  %91 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %lastuse.i, align 8
  %95 = trunc i64 %94 to i32
  %conv6.i = sub i32 %92, %95
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #10
  %conv8.i = sext i32 %call7.i to i64
  %96 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv8.i, ptr %13, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %97 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %tobool.not.i = icmp eq i64 %98, 0
  br i1 %tobool.not.i, label %if.end76.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end76.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %100 = trunc i64 %98 to i32
  %conv13.i = sub i32 %99, %100
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #10
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end76.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end76.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %101 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv15.i, ptr %15, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %102 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %103 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #10
  %conv19.i = sext i32 %call18.i to i64
  %104 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv19.i, ptr %14, align 8
  %call78 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end81:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %105 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %land.lhs.true71.nla_put_failure_crit_edge, %land.lhs.true64.nla_put_failure_crit_edge, %if.end58.nla_put_failure_crit_edge, %if.end52.nla_put_failure_crit_edge, %if.then47.nla_put_failure_crit_edge, %land.lhs.true37.nla_put_failure_crit_edge, %land.lhs.true21.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %tobool.not.i148 = icmp eq ptr %1, null
  br i1 %tobool.not.i148, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %107 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %108, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !81

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %109 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %110 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end81
  %retval.0 = phi i32 [ %106, %if.end81 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_police_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.tcf_police, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.end6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.tcf_police_params, ptr %1, i32 0, i32 12
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 124 to ptr)) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_police_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @police_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_police_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tmp.i436 = alloca i64, align 8
  %tmp.i434 = alloca i64, align 8
  %tmp.i431 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %tb = alloca [12 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tb) #10
  %0 = call ptr @memset(ptr %tb, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #10
  %1 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %goto_ch, align 4
  %2 = load i32, ptr @police_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index, align 4, !annotation !90
  %cmp = icmp eq ptr %nla, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %4 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 11, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @police_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.end7.cleanup_crit_edge [
    i16 60, label %if.end7.if.end13_crit_edge
    i16 48, label %if.end7.if.end13_crit_edge443
  ]

if.end7.if.end13_crit_edge443:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7.if.end13_crit_edge, %if.end7.if.end13_crit_edge443
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call18 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end13.cleanup_crit_edge, label %if.end22

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool23.not, %tobool.not
  br i1 %brmerge, label %if.end31, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  br i1 %tobool23.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %call36 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %15, ptr noundef null, ptr noundef %a, ptr noundef nonnull @act_police_ops, i32 noundef %and.lobit, i1 noundef zeroext true, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %17) #10
  br label %cleanup

if.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a, align 4
  %tcfp_lock = getelementptr inbounds %struct.tcf_police, ptr %19, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %tcfp_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @tcf_police_init.__key, i16 noundef signext 3) #10
  br label %if.end47

if.else:                                          ; preds = %if.end31
  %and41 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %if.else.if.end47_crit_edge

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a, align 4
  %call45 = call i32 @tcf_idr_release(ptr noundef %21, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.end47:                                         ; preds = %if.else.if.end47_crit_edge, %if.end39
  %ret.0 = phi i32 [ 0, %if.else.if.end47_crit_edge ], [ 1, %if.end39 ]
  %action = getelementptr i8, ptr %7, i32 8
  %22 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %action, align 4
  %call48 = call i32 @tcf_action_check_ctrlact(i32 noundef %23, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.release_idr_crit_edge, label %if.end52

if.end47.release_idr_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_idr

if.end52:                                         ; preds = %if.end47
  %24 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %a, align 4
  %rate53 = getelementptr i8, ptr %7, i32 32
  %26 = ptrtoint ptr %rate53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rate53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool54.not = icmp eq i32 %27, 0
  br i1 %tobool54.not, label %if.end52.if.end74_crit_edge, label %if.then55

if.end52.if.end74_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then55:                                        ; preds = %if.end52
  %rate = getelementptr i8, ptr %7, i32 24
  %arrayidx57 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx57, align 4
  %call58 = call ptr @qdisc_get_rtab(ptr noundef %rate, ptr noundef %29, ptr noundef null) #10
  %cmp59 = icmp eq ptr %call58, null
  br i1 %cmp59, label %if.then55.failure_crit_edge, label %if.end62

if.then55.failure_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

if.end62:                                         ; preds = %if.then55
  %rate63 = getelementptr i8, ptr %7, i32 44
  %30 = ptrtoint ptr %rate63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rate63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool64.not = icmp eq i32 %31, 0
  br i1 %tobool64.not, label %if.end62.if.end74_crit_edge, label %if.then65

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then65:                                        ; preds = %if.end62
  %peakrate = getelementptr i8, ptr %7, i32 36
  %arrayidx67 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx67, align 4
  %call68 = call ptr @qdisc_get_rtab(ptr noundef %peakrate, ptr noundef %33, ptr noundef null) #10
  %cmp69 = icmp eq ptr %call68, null
  br i1 %cmp69, label %if.then65.failure_crit_edge, label %if.then65.if.end74_crit_edge

if.then65.if.end74_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then65.failure_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

if.end74:                                         ; preds = %if.then65.if.end74_crit_edge, %if.end62.if.end74_crit_edge, %if.end52.if.end74_crit_edge
  %R_tab.0 = phi ptr [ %call58, %if.then65.if.end74_crit_edge ], [ %call58, %if.end62.if.end74_crit_edge ], [ null, %if.end52.if.end74_crit_edge ]
  %P_tab.0 = phi ptr [ %call68, %if.then65.if.end74_crit_edge ], [ null, %if.end62.if.end74_crit_edge ], [ null, %if.end52.if.end74_crit_edge ]
  %tobool75.not = icmp eq ptr %est, null
  br i1 %tobool75.not, label %if.else84, label %if.then76

if.then76:                                        ; preds = %if.end74
  %tcfa_bstats = getelementptr inbounds %struct.tc_action, ptr %25, i32 0, i32 8
  %cpu_bstats = getelementptr inbounds %struct.tc_action, ptr %25, i32 0, i32 13
  %34 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpu_bstats, align 4
  %tcfa_rate_est = getelementptr inbounds %struct.tc_action, ptr %25, i32 0, i32 11
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %25, i32 0, i32 12
  %call80 = call i32 @gen_replace_estimator(ptr noundef %tcfa_bstats, ptr noundef %35, ptr noundef %tcfa_rate_est, ptr noundef %tcfa_lock, i1 noundef zeroext false, ptr noundef nonnull %est) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then76.if.end95_crit_edge, label %if.then76.failure_crit_edge

if.then76.failure_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

if.then76.if.end95_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.else84:                                        ; preds = %if.end74
  %arrayidx85 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %37, null
  br i1 %tobool86.not, label %if.else84.if.end95_crit_edge, label %land.lhs.true87

if.else84.if.end95_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

land.lhs.true87:                                  ; preds = %if.else84
  br i1 %tobool23.not, label %land.lhs.true87.failure_crit_edge, label %lor.lhs.false

land.lhs.true87.failure_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

lor.lhs.false:                                    ; preds = %land.lhs.true87
  %tcfa_rate_est91 = getelementptr inbounds %struct.tc_action, ptr %25, i32 0, i32 11
  %call92 = call zeroext i1 @gen_estimator_active(ptr noundef %tcfa_rate_est91) #10
  br i1 %call92, label %lor.lhs.false.if.end95_crit_edge, label %lor.lhs.false.failure_crit_edge

lor.lhs.false.failure_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

lor.lhs.false.if.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.end95:                                         ; preds = %lor.lhs.false.if.end95_crit_edge, %if.else84.if.end95_crit_edge, %if.then76.if.end95_crit_edge
  %arrayidx96 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx96, align 4
  %tobool97.not = icmp eq ptr %39, null
  br i1 %tobool97.not, label %if.end95.if.end112_crit_edge, label %if.then98

if.end95.if.end112_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then98:                                        ; preds = %if.end95
  %add.ptr.i.i430 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i430 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i430, align 4
  %and101 = and i32 %41, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %and101)
  %cmp102 = icmp eq i32 %and101, 536870912
  br i1 %cmp102, label %do.body105, label %if.then98.if.end112_crit_edge

if.then98.if.end112_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

do.body105:                                       ; preds = %if.then98
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_police_init.__msg) #10
  %tobool106.not = icmp eq ptr %extack, null
  br i1 %tobool106.not, label %do.body105.failure_crit_edge, label %do.body105.failure.sink.split_crit_edge

do.body105.failure.sink.split_crit_edge:          ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure.sink.split

do.body105.failure_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

if.end112:                                        ; preds = %if.then98.if.end112_crit_edge, %if.end95.if.end112_crit_edge
  %tcfp_result.0 = phi i32 [ %41, %if.then98.if.end112_crit_edge ], [ 0, %if.end95.if.end112_crit_edge ]
  %arrayidx113 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 10
  %42 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx113, align 4
  %tobool114.not = icmp eq ptr %43, null
  %arrayidx122 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 11
  %44 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx122, align 4
  %tobool123.not = icmp eq ptr %45, null
  br i1 %tobool114.not, label %land.lhs.true121, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %if.end112
  br i1 %tobool123.not, label %land.lhs.true115.do.body125_crit_edge, label %if.end133

land.lhs.true115.do.body125_crit_edge:            ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body125

land.lhs.true121:                                 ; preds = %if.end112
  br i1 %tobool123.not, label %if.end133.thread, label %land.lhs.true121.do.body125_crit_edge

land.lhs.true121.do.body125_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body125

if.end133.thread:                                 ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  %tobool137.not440 = icmp eq ptr %R_tab.0, null
  br label %if.end147

do.body125:                                       ; preds = %land.lhs.true121.do.body125_crit_edge, %land.lhs.true115.do.body125_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_police_init.__msg.10) #10
  %tobool127.not = icmp eq ptr %extack, null
  br i1 %tobool127.not, label %do.body125.failure_crit_edge, label %do.body125.failure.sink.split_crit_edge

do.body125.failure.sink.split_crit_edge:          ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure.sink.split

do.body125.failure_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

if.end133:                                        ; preds = %land.lhs.true115
  %tobool137.not = icmp eq ptr %R_tab.0, null
  br i1 %tobool137.not, label %if.end133.if.end147_crit_edge, label %do.body139

if.end133.if.end147_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

do.body139:                                       ; preds = %if.end133
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_police_init.__msg.11) #10
  %tobool141.not = icmp eq ptr %extack, null
  br i1 %tobool141.not, label %do.body139.failure_crit_edge, label %do.body139.failure.sink.split_crit_edge

do.body139.failure.sink.split_crit_edge:          ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure.sink.split

do.body139.failure_crit_edge:                     ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

if.end147:                                        ; preds = %if.end133.if.end147_crit_edge, %if.end133.thread
  %tobool137.not442 = phi i1 [ %tobool137.not440, %if.end133.thread ], [ true, %if.end133.if.end147_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 136) #13
  %tobool149.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool149.not, label %if.end147.failure_crit_edge, label %if.end154, !prof !81

if.end147.failure_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

if.end154:                                        ; preds = %if.end147
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %tcfp_result.0, ptr %call7.i.i, align 8
  %mtu = getelementptr i8, ptr %7, i32 20
  %48 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mtu, align 4
  %tcfp_mtu = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %tcfp_mtu to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tcfp_mtu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool157.not = icmp eq i32 %49, 0
  br i1 %tobool157.not, label %if.then158, label %if.end154.if.end166_crit_edge

if.end154.if.end166_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then158:                                       ; preds = %if.end154
  %51 = ptrtoint ptr %tcfp_mtu to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %tcfp_mtu, align 8
  %cond429 = icmp eq ptr %R_tab.0, null
  br i1 %cond429, label %if.then158.if.else175_crit_edge, label %if.then161

if.then158.if.else175_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else175

if.then161:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %R_tab.0 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %R_tab.0, align 4
  %conv163 = zext i8 %53 to i32
  %shl = shl i32 255, %conv163
  %54 = ptrtoint ptr %tcfp_mtu to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl, ptr %tcfp_mtu, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.end154.if.end166_crit_edge
  br i1 %tobool137.not442, label %if.end166.if.else175_crit_edge, label %if.then168

if.end166.if.else175_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else175

if.then168:                                       ; preds = %if.end166
  %rate_present = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %rate_present to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %rate_present, align 8
  %arrayidx169 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 8
  %56 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx169, align 4
  %tobool170.not = icmp eq ptr %57, null
  br i1 %tobool170.not, label %if.then168.cond.end_crit_edge, label %cond.true

if.then168.cond.end_crit_edge:                    ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #10
  %58 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -1, ptr %tmp.i, align 8, !annotation !90
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %57, i32 noundef 8) #10
  %59 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then168.cond.end_crit_edge
  %cond = phi i64 [ %60, %cond.true ], [ 0, %if.then168.cond.end_crit_edge ]
  %rate173 = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 6
  call void @psched_ratecfg_precompute(ptr noundef %rate173, ptr noundef nonnull %R_tab.0, i64 noundef %cond) #10
  call void @qdisc_put_rtab(ptr noundef nonnull %R_tab.0) #10
  br label %if.end177

if.else175:                                       ; preds = %if.end166.if.else175_crit_edge, %if.then158.if.else175_crit_edge
  %rate_present176 = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %rate_present176 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %rate_present176, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.else175, %cond.end
  %tobool178.not = icmp eq ptr %P_tab.0, null
  %peak_present190 = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 9
  br i1 %tobool178.not, label %if.else189, label %if.then179

if.then179:                                       ; preds = %if.end177
  %62 = ptrtoint ptr %peak_present190 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %peak_present190, align 8
  %arrayidx180 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 9
  %63 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx180, align 4
  %tobool181.not = icmp eq ptr %64, null
  br i1 %tobool181.not, label %if.then179.cond.end186_crit_edge, label %cond.true182

if.then179.cond.end186_crit_edge:                 ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end186

cond.true182:                                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i431) #10
  %65 = ptrtoint ptr %tmp.i431 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 -1, ptr %tmp.i431, align 8, !annotation !90
  %call.i432 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i431, ptr noundef nonnull %64, i32 noundef 8) #10
  %66 = ptrtoint ptr %tmp.i431 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %tmp.i431, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i431) #10
  br label %cond.end186

cond.end186:                                      ; preds = %cond.true182, %if.then179.cond.end186_crit_edge
  %cond187 = phi i64 [ %67, %cond.true182 ], [ 0, %if.then179.cond.end186_crit_edge ]
  %peak = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 8
  call void @psched_ratecfg_precompute(ptr noundef %peak, ptr noundef nonnull %P_tab.0, i64 noundef %cond187) #10
  call void @qdisc_put_rtab(ptr noundef nonnull %P_tab.0) #10
  br label %if.end191

if.else189:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %peak_present190 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %peak_present190, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.else189, %cond.end186
  %burst = getelementptr i8, ptr %7, i32 16
  %69 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %burst, align 4
  %conv192 = zext i32 %70 to i64
  %shl193 = shl nuw nsw i64 %conv192, 6
  %tcfp_burst = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %tcfp_burst to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %shl193, ptr %tcfp_burst, align 8
  %peak_present194 = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 9
  %72 = ptrtoint ptr %peak_present194 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %peak_present194, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool195.not = icmp eq i8 %73, 0
  br i1 %tobool195.not, label %if.end191.if.end200_crit_edge, label %if.then196

if.end191.if.end200_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

if.then196:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  %peak197 = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 8
  %74 = ptrtoint ptr %tcfp_mtu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tcfp_mtu, align 8
  %call199 = call fastcc i64 @psched_l2t_ns(ptr noundef %peak197, i32 noundef %75)
  %tcfp_mtu_ptoks = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %tcfp_mtu_ptoks to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %call199, ptr %tcfp_mtu_ptoks, align 8
  br label %if.end200

if.end200:                                        ; preds = %if.then196, %if.end191.if.end200_crit_edge
  %arrayidx201 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 4
  %77 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx201, align 4
  %tobool202.not = icmp eq ptr %78, null
  br i1 %tobool202.not, label %if.end200.if.end206_crit_edge, label %if.then203

if.end200.if.end206_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i433 = getelementptr i8, ptr %78, i32 4
  %79 = ptrtoint ptr %add.ptr.i.i433 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i.i433, align 4
  %tcfp_ewma_rate = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %tcfp_ewma_rate to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %tcfp_ewma_rate, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then203, %if.end200.if.end206_crit_edge
  %82 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx113, align 4
  %tobool208.not = icmp eq ptr %83, null
  br i1 %tobool208.not, label %if.end206.if.end215_crit_edge, label %if.then209

if.end206.if.end215_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215

if.then209:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i434) #10
  %84 = ptrtoint ptr %tmp.i434 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 -1, ptr %tmp.i434, align 8, !annotation !90
  %call.i435 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i434, ptr noundef nonnull %83, i32 noundef 8) #10
  %85 = ptrtoint ptr %tmp.i434 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %tmp.i434, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i434) #10
  %arrayidx212 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 11
  %87 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx212, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i436) #10
  %89 = ptrtoint ptr %tmp.i436 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 -1, ptr %tmp.i436, align 8, !annotation !90
  %call.i437 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i436, ptr noundef %88, i32 noundef 8) #10
  %90 = ptrtoint ptr %tmp.i436 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %tmp.i436, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i436) #10
  %pps_present = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 11
  %92 = ptrtoint ptr %pps_present to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %pps_present, align 8
  %shl214 = shl i64 %91, 6
  %tcfp_pkt_burst = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 5
  %93 = ptrtoint ptr %tcfp_pkt_burst to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %shl214, ptr %tcfp_pkt_burst, align 8
  %ppsrate = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 10
  call void @psched_ppscfg_precompute(ptr noundef %ppsrate, i64 noundef %86) #10
  br label %if.end215

if.end215:                                        ; preds = %if.then209, %if.end206.if.end215_crit_edge
  %tcfa_lock217 = getelementptr inbounds %struct.tc_action, ptr %25, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock217) #10
  %tcfp_lock218 = getelementptr inbounds %struct.tcf_police, ptr %25, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %tcfp_lock218) #10
  %call.i438 = call i64 @ktime_get() #10
  %tcfp_t_c = getelementptr inbounds %struct.tcf_police, ptr %25, i32 0, i32 7
  %94 = ptrtoint ptr %tcfp_t_c to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %call.i438, ptr %tcfp_t_c, align 8
  %95 = ptrtoint ptr %tcfp_burst to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %tcfp_burst, align 8
  %tcfp_toks = getelementptr inbounds %struct.tcf_police, ptr %25, i32 0, i32 4
  %97 = ptrtoint ptr %tcfp_toks to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %tcfp_toks, align 16
  %98 = ptrtoint ptr %peak_present194 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %peak_present194, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool222.not = icmp eq i8 %99, 0
  br i1 %tobool222.not, label %if.end215.if.end225_crit_edge, label %if.then223

if.end215.if.end225_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end225

if.then223:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #12
  %tcfp_mtu_ptoks224 = getelementptr inbounds %struct.tcf_police_params, ptr %call7.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %tcfp_mtu_ptoks224 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %tcfp_mtu_ptoks224, align 8
  %tcfp_ptoks = getelementptr inbounds %struct.tcf_police, ptr %25, i32 0, i32 5
  %102 = ptrtoint ptr %tcfp_ptoks to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %tcfp_ptoks, align 8
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.end215.if.end225_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfp_lock218) #10
  %103 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %a, align 4
  %105 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %action, align 4
  %107 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %goto_ch, align 4
  %call228 = call ptr @tcf_action_set_ctrlact(ptr noundef %104, i32 noundef %106, ptr noundef %108) #10
  %109 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call228, ptr %goto_ch, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %25, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i439 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i439)
  %tobool233.not = icmp eq i32 %call.i439, 0
  br i1 %tobool233.not, label %land.lhs.true234, label %if.end225.do.end242_crit_edge

if.end225.do.end242_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end242

land.lhs.true234:                                 ; preds = %if.end225
  %call235 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %land.lhs.true234.do.end242_crit_edge, label %land.lhs.true237

land.lhs.true234.do.end242_crit_edge:             ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end242

land.lhs.true237:                                 ; preds = %land.lhs.true234
  %.b428 = load i1, ptr @tcf_police_init.__warned, align 1
  br i1 %.b428, label %land.lhs.true237.do.end242_crit_edge, label %if.then239

land.lhs.true237.do.end242_crit_edge:             ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end242

if.then239:                                       ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_police_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.3) #10
  br label %do.end242

do.end242:                                        ; preds = %if.then239, %land.lhs.true237.do.end242_crit_edge, %land.lhs.true234.do.end242_crit_edge, %if.end225.do.end242_crit_edge
  %params = getelementptr inbounds %struct.tcf_police, ptr %25, i32 0, i32 1
  %110 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %params, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  %112 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %call7.i.i, ptr %params, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock217) #10
  %113 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %goto_ch, align 4
  %tobool287.not = icmp eq ptr %114, null
  br i1 %tobool287.not, label %do.end242.if.end289_crit_edge, label %if.then288

do.end242.if.end289_crit_edge:                    ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end289

if.then288:                                       ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #12
  call void @tcf_chain_put_by_act(ptr noundef nonnull %114) #10
  br label %if.end289

if.end289:                                        ; preds = %if.then288, %do.end242.if.end289_crit_edge
  %tobool290.not = icmp eq ptr %111, null
  br i1 %tobool290.not, label %if.end289.cleanup_crit_edge, label %do.end297

if.end289.cleanup_crit_edge:                      ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end297:                                        ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.tcf_police_params, ptr %111, i32 0, i32 12
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 124 to ptr)) #10
  br label %cleanup

failure.sink.split:                               ; preds = %do.body139.failure.sink.split_crit_edge, %do.body125.failure.sink.split_crit_edge, %do.body105.failure.sink.split_crit_edge
  %tcf_police_init.__msg.11.sink = phi ptr [ @tcf_police_init.__msg, %do.body105.failure.sink.split_crit_edge ], [ @tcf_police_init.__msg.10, %do.body125.failure.sink.split_crit_edge ], [ @tcf_police_init.__msg.11, %do.body139.failure.sink.split_crit_edge ]
  %115 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %tcf_police_init.__msg.11.sink, ptr %extack, align 4
  br label %failure

failure:                                          ; preds = %failure.sink.split, %if.end147.failure_crit_edge, %do.body139.failure_crit_edge, %do.body125.failure_crit_edge, %do.body105.failure_crit_edge, %lor.lhs.false.failure_crit_edge, %land.lhs.true87.failure_crit_edge, %if.then76.failure_crit_edge, %if.then65.failure_crit_edge, %if.then55.failure_crit_edge
  %err.0 = phi i32 [ -12, %if.then55.failure_crit_edge ], [ -12, %if.then65.failure_crit_edge ], [ %call80, %if.then76.failure_crit_edge ], [ -22, %lor.lhs.false.failure_crit_edge ], [ -22, %land.lhs.true87.failure_crit_edge ], [ -22, %do.body105.failure_crit_edge ], [ -22, %do.body125.failure_crit_edge ], [ -22, %do.body139.failure_crit_edge ], [ -12, %if.end147.failure_crit_edge ], [ -22, %failure.sink.split ]
  %R_tab.1 = phi ptr [ null, %if.then55.failure_crit_edge ], [ %call58, %if.then65.failure_crit_edge ], [ %R_tab.0, %if.then76.failure_crit_edge ], [ %R_tab.0, %lor.lhs.false.failure_crit_edge ], [ %R_tab.0, %land.lhs.true87.failure_crit_edge ], [ %R_tab.0, %do.body105.failure_crit_edge ], [ %R_tab.0, %do.body125.failure_crit_edge ], [ %R_tab.0, %do.body139.failure_crit_edge ], [ %R_tab.0, %if.end147.failure_crit_edge ], [ %R_tab.0, %failure.sink.split ]
  %P_tab.1 = phi ptr [ null, %if.then55.failure_crit_edge ], [ null, %if.then65.failure_crit_edge ], [ %P_tab.0, %if.then76.failure_crit_edge ], [ %P_tab.0, %lor.lhs.false.failure_crit_edge ], [ %P_tab.0, %land.lhs.true87.failure_crit_edge ], [ %P_tab.0, %do.body105.failure_crit_edge ], [ %P_tab.0, %do.body125.failure_crit_edge ], [ %P_tab.0, %do.body139.failure_crit_edge ], [ %P_tab.0, %if.end147.failure_crit_edge ], [ %P_tab.0, %failure.sink.split ]
  call void @qdisc_put_rtab(ptr noundef %P_tab.1) #10
  call void @qdisc_put_rtab(ptr noundef %R_tab.1) #10
  %116 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %goto_ch, align 4
  %tobool302.not = icmp eq ptr %117, null
  br i1 %tobool302.not, label %failure.release_idr_crit_edge, label %if.then303

failure.release_idr_crit_edge:                    ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_idr

if.then303:                                       ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #12
  call void @tcf_chain_put_by_act(ptr noundef nonnull %117) #10
  br label %release_idr

release_idr:                                      ; preds = %if.then303, %failure.release_idr_crit_edge, %if.end47.release_idr_crit_edge
  %err.1 = phi i32 [ %call48, %if.end47.release_idr_crit_edge ], [ %err.0, %if.then303 ], [ %err.0, %failure.release_idr_crit_edge ]
  %118 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %a, align 4
  %call306 = call i32 @tcf_idr_release(ptr noundef %119, i1 noundef zeroext %tobool) #10
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %do.end297, %if.end289.cleanup_crit_edge, %if.then43, %if.then38, %if.end22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %release_idr ], [ -17, %if.then43 ], [ %call36, %if.then38 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call18, %if.end13.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ %ret.0, %do.end297 ], [ %ret.0, %if.end289.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_police_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @police_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_police_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcf_action_update_stats(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i1 noundef zeroext %hw) #10
  %lastuse1 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %lastuse1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lastuse1, align 8
  %2 = tail call i64 @llvm.umax.i64(i64 %1, i64 %lastuse)
  %3 = ptrtoint ptr %lastuse1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %lastuse1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_police_offload_act_setup(ptr noundef %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bind, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 22, ptr %entry_data, align 8
  %dep_map.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.tcf_police_burst.exit_crit_edge

if.then.tcf_police_burst.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_burst.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.tcf_police_burst.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.tcf_police_burst.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_burst.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @tcf_police_burst.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true3.i.tcf_police_burst.exit_crit_edge, label %if.then.i

land.lhs.true3.i.tcf_police_burst.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_burst.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_police_burst.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 73, ptr noundef nonnull @.str.3) #10
  br label %tcf_police_burst.exit

tcf_police_burst.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.tcf_police_burst.exit_crit_edge, %land.lhs.true.i.tcf_police_burst.exit_crit_edge, %if.then.tcf_police_burst.exit_crit_edge
  %params5.i = getelementptr inbounds %struct.tcf_police, ptr %act, i32 0, i32 1
  %1 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %params5.i, align 16
  %tcfp_burst.i = getelementptr inbounds %struct.tcf_police_params, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %tcfp_burst.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tcfp_burst.i, align 8
  %rate.i = getelementptr inbounds %struct.tcf_police_params, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %rate.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rate.i, align 8
  %mul.i = mul i64 %6, %4
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i32 0) #14, !srcloc !92
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !93
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %9 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %9, align 8
  %call.i.i18 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %tobool.not.i19 = icmp eq i32 %call.i.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i22, label %tcf_police_burst.exit.tcf_police_rate_bytes_ps.exit_crit_edge

tcf_police_burst.exit.tcf_police_rate_bytes_ps.exit_crit_edge: ; preds = %tcf_police_burst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_rate_bytes_ps.exit

land.lhs.true.i22:                                ; preds = %tcf_police_burst.exit
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %land.lhs.true.i22.tcf_police_rate_bytes_ps.exit_crit_edge, label %land.lhs.true3.i23

land.lhs.true.i22.tcf_police_rate_bytes_ps.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_rate_bytes_ps.exit

land.lhs.true3.i23:                               ; preds = %land.lhs.true.i22
  %.b7.i = load i1, ptr @tcf_police_rate_bytes_ps.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i23.tcf_police_rate_bytes_ps.exit_crit_edge, label %if.then.i24

land.lhs.true3.i23.tcf_police_rate_bytes_ps.exit_crit_edge: ; preds = %land.lhs.true3.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_rate_bytes_ps.exit

if.then.i24:                                      ; preds = %land.lhs.true3.i23
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_police_rate_bytes_ps.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 62, ptr noundef nonnull @.str.3) #10
  br label %tcf_police_rate_bytes_ps.exit

tcf_police_rate_bytes_ps.exit:                    ; preds = %if.then.i24, %land.lhs.true3.i23.tcf_police_rate_bytes_ps.exit_crit_edge, %land.lhs.true.i22.tcf_police_rate_bytes_ps.exit_crit_edge, %tcf_police_burst.exit.tcf_police_rate_bytes_ps.exit_crit_edge
  %11 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params5.i, align 16
  %rate.i26 = getelementptr inbounds %struct.tcf_police_params, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %rate.i26 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rate.i26, align 8
  %rate_bytes_ps = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %rate_bytes_ps to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %rate_bytes_ps, align 8
  %call.i.i28 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %tobool.not.i29 = icmp eq i32 %call.i.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i32, label %tcf_police_rate_bytes_ps.exit.tcf_police_burst_pkt.exit_crit_edge

tcf_police_rate_bytes_ps.exit.tcf_police_burst_pkt.exit_crit_edge: ; preds = %tcf_police_rate_bytes_ps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_burst_pkt.exit

land.lhs.true.i32:                                ; preds = %tcf_police_rate_bytes_ps.exit
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool2.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool2.not.i31, label %land.lhs.true.i32.tcf_police_burst_pkt.exit_crit_edge, label %land.lhs.true3.i34

land.lhs.true.i32.tcf_police_burst_pkt.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_burst_pkt.exit

land.lhs.true3.i34:                               ; preds = %land.lhs.true.i32
  %.b9.i33 = load i1, ptr @tcf_police_burst_pkt.__warned, align 1
  br i1 %.b9.i33, label %land.lhs.true3.i34.tcf_police_burst_pkt.exit_crit_edge, label %if.then.i35

land.lhs.true3.i34.tcf_police_burst_pkt.exit_crit_edge: ; preds = %land.lhs.true3.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_burst_pkt.exit

if.then.i35:                                      ; preds = %land.lhs.true3.i34
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_police_burst_pkt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 121, ptr noundef nonnull @.str.3) #10
  br label %tcf_police_burst_pkt.exit

tcf_police_burst_pkt.exit:                        ; preds = %if.then.i35, %land.lhs.true3.i34.tcf_police_burst_pkt.exit_crit_edge, %land.lhs.true.i32.tcf_police_burst_pkt.exit_crit_edge, %tcf_police_rate_bytes_ps.exit.tcf_police_burst_pkt.exit_crit_edge
  %16 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params5.i, align 16
  %tcfp_pkt_burst.i = getelementptr inbounds %struct.tcf_police_params, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %tcfp_pkt_burst.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tcfp_pkt_burst.i, align 8
  %ppsrate.i = getelementptr inbounds %struct.tcf_police_params, ptr %17, i32 0, i32 10
  %20 = ptrtoint ptr %ppsrate.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ppsrate.i, align 8
  %mul.i37 = mul i64 %21, %19
  %22 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i37, i32 0) #14, !srcloc !92
  %asmresult.i.i.i.i38 = extractvalue { i64, i32 } %22, 0
  %asmresult4.i.i.i.i39 = extractvalue { i64, i32 } %22, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i37, i64 %asmresult.i.i.i.i38, i32 %asmresult4.i.i.i.i39) #14, !srcloc !93
  %asmresult10.i.i.i.i40 = extractvalue { i64, i32 } %23, 0
  %div1581.i.i.i41 = lshr i64 %asmresult10.i.i.i.i40, 29
  %conv = and i64 %div1581.i.i.i41, 4294967295
  %burst_pkt = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 2
  %24 = ptrtoint ptr %burst_pkt to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %burst_pkt, align 8
  %call.i.i44 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool.not.i45 = icmp eq i32 %call.i.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i48, label %tcf_police_burst_pkt.exit.tcf_police_rate_pkt_ps.exit_crit_edge

tcf_police_burst_pkt.exit.tcf_police_rate_pkt_ps.exit_crit_edge: ; preds = %tcf_police_burst_pkt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_rate_pkt_ps.exit

land.lhs.true.i48:                                ; preds = %tcf_police_burst_pkt.exit
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %land.lhs.true.i48.tcf_police_rate_pkt_ps.exit_crit_edge, label %land.lhs.true3.i50

land.lhs.true.i48.tcf_police_rate_pkt_ps.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_rate_pkt_ps.exit

land.lhs.true3.i50:                               ; preds = %land.lhs.true.i48
  %.b7.i49 = load i1, ptr @tcf_police_rate_pkt_ps.__warned, align 1
  br i1 %.b7.i49, label %land.lhs.true3.i50.tcf_police_rate_pkt_ps.exit_crit_edge, label %if.then.i51

land.lhs.true3.i50.tcf_police_rate_pkt_ps.exit_crit_edge: ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_rate_pkt_ps.exit

if.then.i51:                                      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_police_rate_pkt_ps.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 110, ptr noundef nonnull @.str.3) #10
  br label %tcf_police_rate_pkt_ps.exit

tcf_police_rate_pkt_ps.exit:                      ; preds = %if.then.i51, %land.lhs.true3.i50.tcf_police_rate_pkt_ps.exit_crit_edge, %land.lhs.true.i48.tcf_police_rate_pkt_ps.exit_crit_edge, %tcf_police_burst_pkt.exit.tcf_police_rate_pkt_ps.exit_crit_edge
  %25 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %params5.i, align 16
  %ppsrate.i53 = getelementptr inbounds %struct.tcf_police_params, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %ppsrate.i53 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ppsrate.i53, align 8
  %rate_pkt_ps = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 3
  %29 = ptrtoint ptr %rate_pkt_ps to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %rate_pkt_ps, align 8
  %call.i.i55 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %tobool.not.i56 = icmp eq i32 %call.i.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i59, label %tcf_police_rate_pkt_ps.exit.tcf_police_tcfp_mtu.exit_crit_edge

tcf_police_rate_pkt_ps.exit.tcf_police_tcfp_mtu.exit_crit_edge: ; preds = %tcf_police_rate_pkt_ps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_tcfp_mtu.exit

land.lhs.true.i59:                                ; preds = %tcf_police_rate_pkt_ps.exit
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool2.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool2.not.i58, label %land.lhs.true.i59.tcf_police_tcfp_mtu.exit_crit_edge, label %land.lhs.true3.i61

land.lhs.true.i59.tcf_police_tcfp_mtu.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_tcfp_mtu.exit

land.lhs.true3.i61:                               ; preds = %land.lhs.true.i59
  %.b7.i60 = load i1, ptr @tcf_police_tcfp_mtu.__warned, align 1
  br i1 %.b7.i60, label %land.lhs.true3.i61.tcf_police_tcfp_mtu.exit_crit_edge, label %if.then.i62

land.lhs.true3.i61.tcf_police_tcfp_mtu.exit_crit_edge: ; preds = %land.lhs.true3.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_police_tcfp_mtu.exit

if.then.i62:                                      ; preds = %land.lhs.true3.i61
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_police_tcfp_mtu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 158, ptr noundef nonnull @.str.3) #10
  br label %tcf_police_tcfp_mtu.exit

tcf_police_tcfp_mtu.exit:                         ; preds = %if.then.i62, %land.lhs.true3.i61.tcf_police_tcfp_mtu.exit_crit_edge, %land.lhs.true.i59.tcf_police_tcfp_mtu.exit_crit_edge, %tcf_police_rate_pkt_ps.exit.tcf_police_tcfp_mtu.exit_crit_edge
  %30 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %params5.i, align 16
  %tcfp_mtu.i = getelementptr inbounds %struct.tcf_police_params, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %tcfp_mtu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tcfp_mtu.i, align 8
  %mtu = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 4
  %34 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mtu, align 8
  %35 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %index_inc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %id6 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %36 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 22, ptr %id6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %tcf_police_tcfp_mtu.exit
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gen_estimator_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @psched_l2t_ns(ptr nocapture noundef readonly %r, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %overhead = getelementptr inbounds %struct.psched_ratecfg, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %overhead to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %overhead, align 4
  %conv = zext i16 %1 to i32
  %add = add i32 %conv, %len
  %mpu = getelementptr inbounds %struct.psched_ratecfg, ptr %r, i32 0, i32 3
  %2 = ptrtoint ptr %mpu to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mpu, align 2
  %conv1 = zext i16 %3 to i32
  %4 = tail call i32 @llvm.umax.i32(i32 %add, i32 %conv1)
  %linklayer = getelementptr inbounds %struct.psched_ratecfg, ptr %r, i32 0, i32 4
  %5 = ptrtoint ptr %linklayer to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %linklayer, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp6 = icmp eq i8 %6, 2
  br i1 %cmp6, label %if.then9, label %entry.return_crit_edge, !prof !81

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add i32 %4, 47
  %div = udiv i32 %sub, 48
  %mul = mul i32 %div, 53
  br label %return

return:                                           ; preds = %if.then9, %entry.return_crit_edge
  %.sink = phi i32 [ %mul, %if.then9 ], [ %4, %entry.return_crit_edge ]
  %conv16 = zext i32 %.sink to i64
  %mult17 = getelementptr inbounds %struct.psched_ratecfg, ptr %r, i32 0, i32 1
  %7 = ptrtoint ptr %mult17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mult17, align 8
  %conv18 = zext i32 %8 to i64
  %mul19 = mul nuw i64 %conv18, %conv16
  %shift20 = getelementptr inbounds %struct.psched_ratecfg, ptr %r, i32 0, i32 5
  %9 = ptrtoint ptr %shift20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift20, align 1
  %sh_prom22 = zext i8 %10 to i64
  %shr23 = lshr i64 %mul19, %sh_prom22
  ret i64 %shr23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 45, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %8 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
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
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_get_rtab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_replace_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gen_estimator_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @psched_ratecfg_precompute(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put_rtab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @psched_ppscfg_precompute(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_action_update_stats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @police_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @police_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #13
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_police_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @tc_action_net_init.__key) #10
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
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
define internal void @police_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @police_net_id, align 4
  tail call void @rtnl_lock() #10
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #10
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #10
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !19, !20, !22, !23, !25, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !68, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__UNIQUE_ID_author380, !1, !"__UNIQUE_ID_author380", i1 false, i1 false}
!1 = !{!"../net/sched/act_police.c", i32 432, i32 1}
!2 = !{ptr @__UNIQUE_ID_description381, !3, !"__UNIQUE_ID_description381", i1 false, i1 false}
!3 = !{!"../net/sched/act_police.c", i32 433, i32 1}
!4 = !{ptr @__UNIQUE_ID_file382, !5, !"__UNIQUE_ID_file382", i1 false, i1 false}
!5 = !{!"../net/sched/act_police.c", i32 434, i32 1}
!6 = !{ptr @__UNIQUE_ID_license383, !5, !"__UNIQUE_ID_license383", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_act_police__384_480_police_init_module6, !8, !"__initcall__kmod_act_police__384_480_police_init_module6", i1 false, i1 false}
!8 = !{!"../net/sched/act_police.c", i32 480, i32 1}
!9 = !{ptr @__exitcall_police_cleanup_module, !10, !"__exitcall_police_cleanup_module", i1 false, i1 false}
!10 = !{!"../net/sched/act_police.c", i32 481, i32 1}
!11 = !{ptr @act_police_ops, !12, !"act_police_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_police.c", i32 436, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/act_police.c", i32 254, i32 6}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/sched/act_police.c", i32 349, i32 6}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/net/netlink.h", i32 991, i32 3}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/sched/act_police.c", i32 318, i32 6}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @police_net_id, !38, !"police_net_id", i1 false, i1 false}
!38 = !{!"../net/sched/act_police.c", i32 25, i32 21}
!39 = !{ptr @tcf_police_init.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../net/sched/act_police.c", i32 99, i32 3}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tcf_police_init.__msg, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../net/sched/act_police.c", i32 141, i32 4}
!44 = !{ptr @tcf_police_init.__msg.10, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/sched/act_police.c", i32 150, i32 3}
!46 = !{ptr @tcf_police_init.__msg.11, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/sched/act_police.c", i32 157, i32 3}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/sched/act_police.c", i32 220, i32 8}
!50 = !{ptr @police_policy, !51, !"police_policy", i1 false, i1 false}
!51 = !{!"../net/sched/act_police.c", i32 38, i32 32}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/net/tc_act/tc_police.h", i32 72, i32 11}
!54 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/net/tc_act/tc_police.h", i32 61, i32 11}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/net/tc_act/tc_police.h", i32 120, i32 11}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/net/tc_act/tc_police.h", i32 109, i32 11}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/net/tc_act/tc_police.h", i32 157, i32 11}
!63 = !{ptr @police_net_ops, !64, !"police_net_ops", i1 false, i1 false}
!64 = !{!"../net/sched/act_police.c", i32 463, i32 33}
!65 = !{ptr @tc_action_net_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../include/net/act_api.h", i32 156, i32 2}
!67 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @xa_init_flags.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!70 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2149875471}
!83 = !{i64 2149880403}
!84 = !{i64 2149902115}
!85 = !{i64 2149907007}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2149983464}
!88 = !{i64 2149983789}
!89 = !{i8 0, i8 2}
!90 = !{!"auto-init"}
!91 = !{i64 2156418825}
!92 = !{i64 712193, i64 712220, i64 712242, i64 712270}
!93 = !{i64 712601, i64 712628, i64 712661, i64 712682, i64 712709, i64 712735}
!94 = !{i64 2149367472}
!95 = !{i64 2149367738}
